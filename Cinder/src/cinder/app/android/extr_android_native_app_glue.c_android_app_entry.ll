; ModuleID = '/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_android_app_entry.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_android_app_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i32, i32, i32, i32*, %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.android_app*, i32 }
%struct.TYPE_5__ = type { i32, %struct.android_app*, i32 }
%struct.TYPE_4__ = type { i32 }

@LOOPER_ID_MAIN = common dso_local global i32 0, align 4
@process_cmd = common dso_local global i32 0, align 4
@LOOPER_ID_INPUT = common dso_local global i32 0, align 4
@process_input = common dso_local global i32 0, align 4
@ALOOPER_PREPARE_ALLOW_NON_CALLBACKS = common dso_local global i32 0, align 4
@ALOOPER_EVENT_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @android_app_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @android_app_entry(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.android_app*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.android_app*
  store %struct.android_app* %6, %struct.android_app** %3, align 8
  %7 = call i32 (...) @AConfiguration_new()
  %8 = load %struct.android_app*, %struct.android_app** %3, align 8
  %9 = getelementptr inbounds %struct.android_app, %struct.android_app* %8, i32 0, i32 8
  store i32 %7, i32* %9, align 8
  %10 = load %struct.android_app*, %struct.android_app** %3, align 8
  %11 = getelementptr inbounds %struct.android_app, %struct.android_app* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.android_app*, %struct.android_app** %3, align 8
  %14 = getelementptr inbounds %struct.android_app, %struct.android_app* %13, i32 0, i32 7
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @AConfiguration_fromAssetManager(i32 %12, i32 %17)
  %19 = load %struct.android_app*, %struct.android_app** %3, align 8
  %20 = call i32 @print_cur_config(%struct.android_app* %19)
  %21 = load i32, i32* @LOOPER_ID_MAIN, align 4
  %22 = load %struct.android_app*, %struct.android_app** %3, align 8
  %23 = getelementptr inbounds %struct.android_app, %struct.android_app* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load %struct.android_app*, %struct.android_app** %3, align 8
  %26 = load %struct.android_app*, %struct.android_app** %3, align 8
  %27 = getelementptr inbounds %struct.android_app, %struct.android_app* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store %struct.android_app* %25, %struct.android_app** %28, align 8
  %29 = load i32, i32* @process_cmd, align 4
  %30 = load %struct.android_app*, %struct.android_app** %3, align 8
  %31 = getelementptr inbounds %struct.android_app, %struct.android_app* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @LOOPER_ID_INPUT, align 4
  %34 = load %struct.android_app*, %struct.android_app** %3, align 8
  %35 = getelementptr inbounds %struct.android_app, %struct.android_app* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load %struct.android_app*, %struct.android_app** %3, align 8
  %38 = load %struct.android_app*, %struct.android_app** %3, align 8
  %39 = getelementptr inbounds %struct.android_app, %struct.android_app* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store %struct.android_app* %37, %struct.android_app** %40, align 8
  %41 = load i32, i32* @process_input, align 4
  %42 = load %struct.android_app*, %struct.android_app** %3, align 8
  %43 = getelementptr inbounds %struct.android_app, %struct.android_app* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @ALOOPER_PREPARE_ALLOW_NON_CALLBACKS, align 4
  %46 = call i32* @ALooper_prepare(i32 %45)
  store i32* %46, i32** %4, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.android_app*, %struct.android_app** %3, align 8
  %49 = getelementptr inbounds %struct.android_app, %struct.android_app* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @LOOPER_ID_MAIN, align 4
  %52 = load i32, i32* @ALOOPER_EVENT_INPUT, align 4
  %53 = load %struct.android_app*, %struct.android_app** %3, align 8
  %54 = getelementptr inbounds %struct.android_app, %struct.android_app* %53, i32 0, i32 4
  %55 = call i32 @ALooper_addFd(i32* %47, i32 %50, i32 %51, i32 %52, i32* null, %struct.TYPE_6__* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.android_app*, %struct.android_app** %3, align 8
  %58 = getelementptr inbounds %struct.android_app, %struct.android_app* %57, i32 0, i32 3
  store i32* %56, i32** %58, align 8
  %59 = load %struct.android_app*, %struct.android_app** %3, align 8
  %60 = getelementptr inbounds %struct.android_app, %struct.android_app* %59, i32 0, i32 1
  %61 = call i32 @pthread_mutex_lock(i32* %60)
  %62 = load %struct.android_app*, %struct.android_app** %3, align 8
  %63 = getelementptr inbounds %struct.android_app, %struct.android_app* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.android_app*, %struct.android_app** %3, align 8
  %65 = getelementptr inbounds %struct.android_app, %struct.android_app* %64, i32 0, i32 2
  %66 = call i32 @pthread_cond_broadcast(i32* %65)
  %67 = load %struct.android_app*, %struct.android_app** %3, align 8
  %68 = getelementptr inbounds %struct.android_app, %struct.android_app* %67, i32 0, i32 1
  %69 = call i32 @pthread_mutex_unlock(i32* %68)
  %70 = load %struct.android_app*, %struct.android_app** %3, align 8
  %71 = call i32 @android_main(%struct.android_app* %70)
  %72 = load %struct.android_app*, %struct.android_app** %3, align 8
  %73 = call i32 @android_app_destroy(%struct.android_app* %72)
  %74 = call i32 @pthread_exit(i8* null)
  ret i8* null
}

declare dso_local i32 @AConfiguration_new(...) #1

declare dso_local i32 @AConfiguration_fromAssetManager(i32, i32) #1

declare dso_local i32 @print_cur_config(%struct.android_app*) #1

declare dso_local i32* @ALooper_prepare(i32) #1

declare dso_local i32 @ALooper_addFd(i32*, i32, i32, i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @android_main(%struct.android_app*) #1

declare dso_local i32 @android_app_destroy(%struct.android_app*) #1

declare dso_local i32 @pthread_exit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
