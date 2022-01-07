; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tsched.c_taosScheduleTask.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tsched.c_taosScheduleTask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [38 x i8] c"sched is not ready, msg:%p is dropped\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"wait %s emptySem failed, reason:%s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"wait %s emptySem was interrupted\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"lock %s queueMutex failed, reason:%s\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"unlock %s queueMutex failed, reason:%s\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"post %s fullSem failed, reason:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosScheduleTask(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %6, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = call i32 (i8*, i32, ...) @pError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 0, i32* %3, align 4
  br label %94

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %32, %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 6
  %19 = call i64 @tsem_wait(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EINTR, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @errno, align 8
  %30 = call i32 @strerror(i64 %29)
  %31 = call i32 (i8*, i32, ...) @pError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %30)
  br label %37

32:                                               ; preds = %21
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pTrace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %16

37:                                               ; preds = %25, %16
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  %40 = call i64 @pthread_mutex_lock(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @errno, align 8
  %47 = call i32 @strerror(i64 %46)
  %48 = call i32 (i8*, i32, ...) @pError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %51, i32* %58, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = urem i64 %62, %66
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 4
  %72 = call i64 @pthread_mutex_unlock(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %49
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* @errno, align 8
  %79 = call i32 @strerror(i64 %78)
  %80 = call i32 (i8*, i32, ...) @pError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %79)
  br label %81

81:                                               ; preds = %74, %49
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = call i64 @tsem_post(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* @errno, align 8
  %91 = call i32 @strerror(i64 %90)
  %92 = call i32 (i8*, i32, ...) @pError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %89, i32 %91)
  br label %93

93:                                               ; preds = %86, %81
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %11
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @pError(i8*, i32, ...) #1

declare dso_local i64 @tsem_wait(i32*) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @pTrace(i8*, i32) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @tsem_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
