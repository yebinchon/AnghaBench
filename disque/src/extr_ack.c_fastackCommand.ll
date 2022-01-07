; ModuleID = '/home/carl/AnghaBench/disque/src/extr_ack.c_fastackCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_ack.c_fastackCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32 }

@C_ERR = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@CLUSTERMSG_TYPE_DELJOB = common dso_local global i32 0, align 4
@CLUSTERMSG_NOFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fastackCommand(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %9, i64 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  %15 = call i64 @validateJobIDs(%struct.TYPE_9__* %6, %struct.TYPE_10__** %10, i32 %14)
  %16 = load i64, i64* @C_ERR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %72

19:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %65, %19
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %68

26:                                               ; preds = %20
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %29, i64 %31
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @lookupJob(i32 %35)
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %26
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %45, i64 %47
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CLUSTERMSG_TYPE_DELJOB, align 4
  %53 = load i32, i32* @CLUSTERMSG_NOFLAGS, align 4
  %54 = call i32 @clusterBroadcastJobIDMessage(i32 %42, i32 %51, i32 %52, i32 0, i32 %53)
  br label %64

55:                                               ; preds = %26
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @clusterBroadcastDelJob(i32* %56)
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @unregisterJob(i32* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @freeJob(i32* %60)
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %55, %39
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %20

68:                                               ; preds = %20
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @addReplyLongLong(%struct.TYPE_9__* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %18
  ret void
}

declare dso_local i64 @validateJobIDs(%struct.TYPE_9__*, %struct.TYPE_10__**, i32) #1

declare dso_local i32* @lookupJob(i32) #1

declare dso_local i32 @clusterBroadcastJobIDMessage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @clusterBroadcastDelJob(i32*) #1

declare dso_local i32 @unregisterJob(i32*) #1

declare dso_local i32 @freeJob(i32*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
