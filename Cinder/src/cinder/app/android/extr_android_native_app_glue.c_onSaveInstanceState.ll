; ModuleID = '/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_onSaveInstanceState.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_onSaveInstanceState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.android_app = type { i64, i32, i32*, i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"SaveInstanceState: %p\0A\00", align 1
@APP_CMD_SAVE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*, i64*)* @onSaveInstanceState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @onSaveInstanceState(%struct.TYPE_4__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.android_app*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.android_app*
  store %struct.android_app* %10, %struct.android_app** %5, align 8
  store i8* null, i8** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = call i32 @LOGV(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %11)
  %13 = load %struct.android_app*, %struct.android_app** %5, align 8
  %14 = getelementptr inbounds %struct.android_app, %struct.android_app* %13, i32 0, i32 1
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  %16 = load %struct.android_app*, %struct.android_app** %5, align 8
  %17 = getelementptr inbounds %struct.android_app, %struct.android_app* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.android_app*, %struct.android_app** %5, align 8
  %19 = load i32, i32* @APP_CMD_SAVE_STATE, align 4
  %20 = call i32 @android_app_write_cmd(%struct.android_app* %18, i32 %19)
  br label %21

21:                                               ; preds = %27, %2
  %22 = load %struct.android_app*, %struct.android_app** %5, align 8
  %23 = getelementptr inbounds %struct.android_app, %struct.android_app* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.android_app*, %struct.android_app** %5, align 8
  %29 = getelementptr inbounds %struct.android_app, %struct.android_app* %28, i32 0, i32 3
  %30 = load %struct.android_app*, %struct.android_app** %5, align 8
  %31 = getelementptr inbounds %struct.android_app, %struct.android_app* %30, i32 0, i32 1
  %32 = call i32 @pthread_cond_wait(i32* %29, i32* %31)
  br label %21

33:                                               ; preds = %21
  %34 = load %struct.android_app*, %struct.android_app** %5, align 8
  %35 = getelementptr inbounds %struct.android_app, %struct.android_app* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.android_app*, %struct.android_app** %5, align 8
  %40 = getelementptr inbounds %struct.android_app, %struct.android_app* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = bitcast i32* %41 to i8*
  store i8* %42, i8** %6, align 8
  %43 = load %struct.android_app*, %struct.android_app** %5, align 8
  %44 = getelementptr inbounds %struct.android_app, %struct.android_app* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %4, align 8
  store i64 %45, i64* %46, align 8
  %47 = load %struct.android_app*, %struct.android_app** %5, align 8
  %48 = getelementptr inbounds %struct.android_app, %struct.android_app* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load %struct.android_app*, %struct.android_app** %5, align 8
  %50 = getelementptr inbounds %struct.android_app, %struct.android_app* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %38, %33
  %52 = load %struct.android_app*, %struct.android_app** %5, align 8
  %53 = getelementptr inbounds %struct.android_app, %struct.android_app* %52, i32 0, i32 1
  %54 = call i32 @pthread_mutex_unlock(i32* %53)
  %55 = load i8*, i8** %6, align 8
  ret i8* %55
}

declare dso_local i32 @LOGV(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @android_app_write_cmd(%struct.android_app*, i32) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
