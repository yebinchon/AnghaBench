; ModuleID = '/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_android_app_free.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_android_app_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i32, i32, i32, i32, i32 }

@APP_CMD_DESTROY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.android_app*)* @android_app_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @android_app_free(%struct.android_app* %0) #0 {
  %2 = alloca %struct.android_app*, align 8
  store %struct.android_app* %0, %struct.android_app** %2, align 8
  %3 = load %struct.android_app*, %struct.android_app** %2, align 8
  %4 = getelementptr inbounds %struct.android_app, %struct.android_app* %3, i32 0, i32 0
  %5 = call i32 @pthread_mutex_lock(i32* %4)
  %6 = load %struct.android_app*, %struct.android_app** %2, align 8
  %7 = load i32, i32* @APP_CMD_DESTROY, align 4
  %8 = call i32 @android_app_write_cmd(%struct.android_app* %6, i32 %7)
  br label %9

9:                                                ; preds = %15, %1
  %10 = load %struct.android_app*, %struct.android_app** %2, align 8
  %11 = getelementptr inbounds %struct.android_app, %struct.android_app* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.android_app*, %struct.android_app** %2, align 8
  %17 = getelementptr inbounds %struct.android_app, %struct.android_app* %16, i32 0, i32 1
  %18 = load %struct.android_app*, %struct.android_app** %2, align 8
  %19 = getelementptr inbounds %struct.android_app, %struct.android_app* %18, i32 0, i32 0
  %20 = call i32 @pthread_cond_wait(i32* %17, i32* %19)
  br label %9

21:                                               ; preds = %9
  %22 = load %struct.android_app*, %struct.android_app** %2, align 8
  %23 = getelementptr inbounds %struct.android_app, %struct.android_app* %22, i32 0, i32 0
  %24 = call i32 @pthread_mutex_unlock(i32* %23)
  %25 = load %struct.android_app*, %struct.android_app** %2, align 8
  %26 = getelementptr inbounds %struct.android_app, %struct.android_app* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @close(i32 %27)
  %29 = load %struct.android_app*, %struct.android_app** %2, align 8
  %30 = getelementptr inbounds %struct.android_app, %struct.android_app* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load %struct.android_app*, %struct.android_app** %2, align 8
  %34 = getelementptr inbounds %struct.android_app, %struct.android_app* %33, i32 0, i32 1
  %35 = call i32 @pthread_cond_destroy(i32* %34)
  %36 = load %struct.android_app*, %struct.android_app** %2, align 8
  %37 = getelementptr inbounds %struct.android_app, %struct.android_app* %36, i32 0, i32 0
  %38 = call i32 @pthread_mutex_destroy(i32* %37)
  %39 = load %struct.android_app*, %struct.android_app** %2, align 8
  %40 = call i32 @free(%struct.android_app* %39)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @android_app_write_cmd(%struct.android_app*, i32) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @free(%struct.android_app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
