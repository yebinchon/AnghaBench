; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_vidtex.c_vidtex_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_vidtex.c_vidtex_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"vidtex\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Memory allocation failure\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"vidtex-dec\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Error creating semaphore\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"vidtex-drw\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Error initialising EGL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32)* @vidtex_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @vidtex_create(i32 %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = call %struct.TYPE_6__* @vcos_calloc(i32 1, i32 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %66

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = call i64 @vcos_semaphore_create(i32* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @VCOS_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %63

20:                                               ; preds = %11
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = call i64 @vcos_semaphore_create(i32* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @VCOS_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %59

29:                                               ; preds = %20
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = call i64 @vcos_mutex_create(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @VCOS_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %55

38:                                               ; preds = %29
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @vidtex_gl_init(%struct.TYPE_6__* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %51

45:                                               ; preds = %38
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %2, align 8
  br label %66

51:                                               ; preds = %43
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = call i32 @vcos_mutex_delete(i32* %53)
  br label %55

55:                                               ; preds = %51, %36
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = call i32 @vcos_semaphore_delete(i32* %57)
  br label %59

59:                                               ; preds = %55, %27
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = call i32 @vcos_semaphore_delete(i32* %61)
  br label %63

63:                                               ; preds = %59, %18
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = call i32 @vcos_free(%struct.TYPE_6__* %64)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %66

66:                                               ; preds = %63, %45, %9
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %67
}

declare dso_local %struct.TYPE_6__* @vcos_calloc(i32, i32, i8*) #1

declare dso_local i32 @vcos_log_trace(i8*) #1

declare dso_local i64 @vcos_semaphore_create(i32*, i8*, i32) #1

declare dso_local i64 @vcos_mutex_create(i32*, i8*) #1

declare dso_local i64 @vidtex_gl_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @vcos_mutex_delete(i32*) #1

declare dso_local i32 @vcos_semaphore_delete(i32*) #1

declare dso_local i32 @vcos_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
