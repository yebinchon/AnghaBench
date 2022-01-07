; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_thr-windows.c_YabThreadStart.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_thr-windows.c_YabThreadStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, void (i8*)*, i32*, i8*, i32*, i32 }

@hnd_key_once = common dso_local global i32 0, align 4
@hnd_key = common dso_local global i32 0, align 4
@thread_handle = common dso_local global %struct.TYPE_3__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"YabThreadStart: thread %u is already started!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"CreateEvent\00", align 1
@wrapper = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"CreateThread\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YabThreadStart(i32 %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store void (i8*)* %1, void (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* @hnd_key_once, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = call i32 (...) @TlsAlloc()
  store i32 %11, i32* @hnd_key, align 4
  store i32 1, i32* @hnd_key_once, align 4
  br label %12

12:                                               ; preds = %10, %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %4, align 4
  br label %76

24:                                               ; preds = %12
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = call i32 @InitializeCriticalSection(i32* %29)
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i32, i32* @FALSE, align 4
  %33 = call i32* @CreateEvent(i32* null, i32 %31, i32 %32, i32* null)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 4
  store i32* %33, i32** %38, align 8
  %39 = icmp eq i32* %33, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %76

42:                                               ; preds = %24
  %43 = load void (i8*)*, void (i8*)** %6, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store void (i8*)* %43, void (i8*)** %48, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i8* %49, i8** %54, align 8
  %55 = load i64, i64* @wrapper, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = call i32* @CreateThread(i32* null, i32 0, i32 %56, %struct.TYPE_3__* %60, i32 0, i32* null)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i32* %61, i32** %66, align 8
  %67 = icmp eq i32* %61, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %42
  %69 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %76

70:                                               ; preds = %42
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_handle, align 8
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %70, %68, %40, %20
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @TlsAlloc(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @InitializeCriticalSection(i32*) #1

declare dso_local i32* @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32* @CreateThread(i32*, i32, i32, %struct.TYPE_3__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
