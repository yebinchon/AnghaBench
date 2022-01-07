; ModuleID = '/home/carl/AnghaBench/disque/src/extr_job.c_loadjobCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_job.c_loadjobCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64 }

@CLIENT_AOF_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"LOADJOB is a special command only processed from AOF\00", align 1
@SER_STORAGE = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Unrecoverable error loading AOF: corrupted LOADJOB data.\00", align 1
@JOB_STATE_QUEUED = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@JOB_STATE_ACTIVE = common dso_local global i64 0, align 8
@C_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @loadjobCommand(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CLIENT_AOF_CLIENT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = call i32 @addReplyError(%struct.TYPE_13__* %12, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %72

14:                                               ; preds = %1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %17, i64 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %24, i64 1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sdslen(i32 %28)
  %30 = load i32, i32* @SER_STORAGE, align 4
  %31 = call %struct.TYPE_12__* @deserializeJob(i32 %21, i32 %29, i32* null, i32 %30)
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %3, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = icmp eq %struct.TYPE_12__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %14
  %35 = load i32, i32* @LL_WARNING, align 4
  %36 = call i32 @serverLog(i32 %35, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @JOB_STATE_QUEUED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 1), align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i64, i64* @JOB_STATE_ACTIVE, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %38
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = call i32 @freeJob(%struct.TYPE_12__* %59)
  br label %72

61:                                               ; preds = %52
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = call i64 @registerJob(%struct.TYPE_12__* %62)
  %64 = load i64, i64* @C_OK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = call i32 @enqueueJob(%struct.TYPE_12__* %70, i32 0)
  br label %72

72:                                               ; preds = %11, %58, %69, %66, %61
  ret void
}

declare dso_local i32 @addReplyError(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.TYPE_12__* @deserializeJob(i32, i32, i32*, i32) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @serverLog(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @freeJob(%struct.TYPE_12__*) #1

declare dso_local i64 @registerJob(%struct.TYPE_12__*) #1

declare dso_local i32 @enqueueJob(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
