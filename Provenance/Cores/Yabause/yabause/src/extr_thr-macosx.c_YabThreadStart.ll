; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_thr-macosx.c_YabThreadStart.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_thr-macosx.c_YabThreadStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, void (i8*)*, i32, i32, i32, i8* }

@hnd_key_once = common dso_local global i32 0, align 4
@make_key = common dso_local global i32 0, align 4
@thread_handle = common dso_local global %struct.TYPE_3__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"YabThreadStart: Thread %u is already started!\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"YabThreadStart: Error creating mutex\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"YabThreadStart: Error creating condvar\0A\00", align 1
@wrapper = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"YabThreadStart: Couldn't start thread\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YabThreadStart(i32 %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store void (i8*)* %1, void (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* @make_key, align 4
  %9 = call i32 @pthread_once(i32* @hnd_key_once, i32 %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 -1, i32* %4, align 4
  br label %95

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = call i64 @pthread_mutex_init(i32* %26, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %95

32:                                               ; preds = %21
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = call i64 @pthread_cond_init(i32* %37, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = call i32 @pthread_mutex_destroy(i32* %47)
  store i32 -1, i32* %4, align 4
  br label %95

49:                                               ; preds = %32
  %50 = load void (i8*)*, void (i8*)** %6, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store void (i8*)* %50, void (i8*)** %55, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  store i8* %56, i8** %61, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  %67 = load i32, i32* @wrapper, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = call i64 @pthread_create(i32* %66, i32* null, i32 %67, %struct.TYPE_3__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %49
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = call i32 @pthread_cond_destroy(i32* %81)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %84 = load i32, i32* %5, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = call i32 @pthread_mutex_destroy(i32* %87)
  store i32 -1, i32* %4, align 4
  br label %95

89:                                               ; preds = %49
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %91 = load i32, i32* %5, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %89, %74, %40, %29, %17
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @pthread_once(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
