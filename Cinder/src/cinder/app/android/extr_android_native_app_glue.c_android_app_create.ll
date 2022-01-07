; ModuleID = '/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_android_app_create.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_android_app_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i64, i32, i32, i32, i32, i32, i32, i64, i32* }

@.str = private unnamed_addr constant [26 x i8] c"could not create pipe: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@android_app_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.android_app* (i32*, i8*, i64)* @android_app_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.android_app* @android_app_create(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.android_app*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.android_app*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = call i64 @malloc(i64 48)
  %12 = inttoptr i64 %11 to %struct.android_app*
  store %struct.android_app* %12, %struct.android_app** %8, align 8
  %13 = load %struct.android_app*, %struct.android_app** %8, align 8
  %14 = call i32 @memset(%struct.android_app* %13, i32 0, i32 48)
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.android_app*, %struct.android_app** %8, align 8
  %17 = getelementptr inbounds %struct.android_app, %struct.android_app* %16, i32 0, i32 8
  store i32* %15, i32** %17, align 8
  %18 = load %struct.android_app*, %struct.android_app** %8, align 8
  %19 = getelementptr inbounds %struct.android_app, %struct.android_app* %18, i32 0, i32 3
  %20 = call i32 @pthread_mutex_init(i32* %19, i32* null)
  %21 = load %struct.android_app*, %struct.android_app** %8, align 8
  %22 = getelementptr inbounds %struct.android_app, %struct.android_app* %21, i32 0, i32 4
  %23 = call i32 @pthread_cond_init(i32* %22, i32* null)
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @malloc(i64 %27)
  %29 = load %struct.android_app*, %struct.android_app** %8, align 8
  %30 = getelementptr inbounds %struct.android_app, %struct.android_app* %29, i32 0, i32 7
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.android_app*, %struct.android_app** %8, align 8
  %33 = getelementptr inbounds %struct.android_app, %struct.android_app* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.android_app*, %struct.android_app** %8, align 8
  %35 = getelementptr inbounds %struct.android_app, %struct.android_app* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @memcpy(i64 %36, i8* %37, i64 %38)
  br label %40

40:                                               ; preds = %26, %3
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %42 = call i64 @pipe(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = call i32 @LOGE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46)
  store %struct.android_app* null, %struct.android_app** %4, align 8
  br label %85

48:                                               ; preds = %40
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.android_app*, %struct.android_app** %8, align 8
  %52 = getelementptr inbounds %struct.android_app, %struct.android_app* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.android_app*, %struct.android_app** %8, align 8
  %56 = getelementptr inbounds %struct.android_app, %struct.android_app* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = call i32 @pthread_attr_init(i32* %10)
  %58 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %59 = call i32 @pthread_attr_setdetachstate(i32* %10, i32 %58)
  %60 = load %struct.android_app*, %struct.android_app** %8, align 8
  %61 = getelementptr inbounds %struct.android_app, %struct.android_app* %60, i32 0, i32 6
  %62 = load i32, i32* @android_app_entry, align 4
  %63 = load %struct.android_app*, %struct.android_app** %8, align 8
  %64 = call i32 @pthread_create(i32* %61, i32* %10, i32 %62, %struct.android_app* %63)
  %65 = load %struct.android_app*, %struct.android_app** %8, align 8
  %66 = getelementptr inbounds %struct.android_app, %struct.android_app* %65, i32 0, i32 3
  %67 = call i32 @pthread_mutex_lock(i32* %66)
  br label %68

68:                                               ; preds = %74, %48
  %69 = load %struct.android_app*, %struct.android_app** %8, align 8
  %70 = getelementptr inbounds %struct.android_app, %struct.android_app* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.android_app*, %struct.android_app** %8, align 8
  %76 = getelementptr inbounds %struct.android_app, %struct.android_app* %75, i32 0, i32 4
  %77 = load %struct.android_app*, %struct.android_app** %8, align 8
  %78 = getelementptr inbounds %struct.android_app, %struct.android_app* %77, i32 0, i32 3
  %79 = call i32 @pthread_cond_wait(i32* %76, i32* %78)
  br label %68

80:                                               ; preds = %68
  %81 = load %struct.android_app*, %struct.android_app** %8, align 8
  %82 = getelementptr inbounds %struct.android_app, %struct.android_app* %81, i32 0, i32 3
  %83 = call i32 @pthread_mutex_unlock(i32* %82)
  %84 = load %struct.android_app*, %struct.android_app** %8, align 8
  store %struct.android_app* %84, %struct.android_app** %4, align 8
  br label %85

85:                                               ; preds = %80, %44
  %86 = load %struct.android_app*, %struct.android_app** %4, align 8
  ret %struct.android_app* %86
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memset(%struct.android_app*, i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @LOGE(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.android_app*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
