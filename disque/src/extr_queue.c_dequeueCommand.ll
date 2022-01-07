; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_dequeueCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_dequeueCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@C_ERR = common dso_local global i64 0, align 8
@JOB_STATE_QUEUED = common dso_local global i64 0, align 8
@C_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dequeueCommand(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %9, i64 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  %15 = call i64 @validateJobIDs(%struct.TYPE_10__* %6, %struct.TYPE_11__** %10, i32 %14)
  %16 = load i64, i64* @C_ERR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %62

19:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %55, %19
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %29, i64 %31
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_9__* @lookupJob(i32 %35)
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %5, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = icmp eq %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %55

40:                                               ; preds = %26
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @JOB_STATE_QUEUED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = call i64 @dequeueJob(%struct.TYPE_9__* %47)
  %49 = load i64, i64* @C_OK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %46, %40
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %20

58:                                               ; preds = %20
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @addReplyLongLong(%struct.TYPE_10__* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %18
  ret void
}

declare dso_local i64 @validateJobIDs(%struct.TYPE_10__*, %struct.TYPE_11__**, i32) #1

declare dso_local %struct.TYPE_9__* @lookupJob(i32) #1

declare dso_local i64 @dequeueJob(%struct.TYPE_9__*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
