; ModuleID = '/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_android_app_destroy.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_android_app_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"android_app_destroy!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.android_app*)* @android_app_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @android_app_destroy(%struct.android_app* %0) #0 {
  %2 = alloca %struct.android_app*, align 8
  store %struct.android_app* %0, %struct.android_app** %2, align 8
  %3 = call i32 @LOGV(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.android_app*, %struct.android_app** %2, align 8
  %5 = call i32 @free_saved_state(%struct.android_app* %4)
  %6 = load %struct.android_app*, %struct.android_app** %2, align 8
  %7 = getelementptr inbounds %struct.android_app, %struct.android_app* %6, i32 0, i32 1
  %8 = call i32 @pthread_mutex_lock(i32* %7)
  %9 = load %struct.android_app*, %struct.android_app** %2, align 8
  %10 = getelementptr inbounds %struct.android_app, %struct.android_app* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.android_app*, %struct.android_app** %2, align 8
  %15 = getelementptr inbounds %struct.android_app, %struct.android_app* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @AInputQueue_detachLooper(i32* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.android_app*, %struct.android_app** %2, align 8
  %20 = getelementptr inbounds %struct.android_app, %struct.android_app* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @AConfiguration_delete(i32 %21)
  %23 = load %struct.android_app*, %struct.android_app** %2, align 8
  %24 = getelementptr inbounds %struct.android_app, %struct.android_app* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.android_app*, %struct.android_app** %2, align 8
  %26 = getelementptr inbounds %struct.android_app, %struct.android_app* %25, i32 0, i32 2
  %27 = call i32 @pthread_cond_broadcast(i32* %26)
  %28 = load %struct.android_app*, %struct.android_app** %2, align 8
  %29 = getelementptr inbounds %struct.android_app, %struct.android_app* %28, i32 0, i32 1
  %30 = call i32 @pthread_mutex_unlock(i32* %29)
  ret void
}

declare dso_local i32 @LOGV(i8*) #1

declare dso_local i32 @free_saved_state(%struct.android_app*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @AInputQueue_detachLooper(i32*) #1

declare dso_local i32 @AConfiguration_delete(i32) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
