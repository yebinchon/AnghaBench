; ModuleID = '/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_android_app_set_window.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_android_app_set_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i32, i32, i32*, i32* }

@APP_CMD_TERM_WINDOW = common dso_local global i32 0, align 4
@APP_CMD_INIT_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.android_app*, i32*)* @android_app_set_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @android_app_set_window(%struct.android_app* %0, i32* %1) #0 {
  %3 = alloca %struct.android_app*, align 8
  %4 = alloca i32*, align 8
  store %struct.android_app* %0, %struct.android_app** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.android_app*, %struct.android_app** %3, align 8
  %6 = getelementptr inbounds %struct.android_app, %struct.android_app* %5, i32 0, i32 0
  %7 = call i32 @pthread_mutex_lock(i32* %6)
  %8 = load %struct.android_app*, %struct.android_app** %3, align 8
  %9 = getelementptr inbounds %struct.android_app, %struct.android_app* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.android_app*, %struct.android_app** %3, align 8
  %14 = load i32, i32* @APP_CMD_TERM_WINDOW, align 4
  %15 = call i32 @android_app_write_cmd(%struct.android_app* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.android_app*, %struct.android_app** %3, align 8
  %19 = getelementptr inbounds %struct.android_app, %struct.android_app* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.android_app*, %struct.android_app** %3, align 8
  %24 = load i32, i32* @APP_CMD_INIT_WINDOW, align 4
  %25 = call i32 @android_app_write_cmd(%struct.android_app* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %16
  br label %27

27:                                               ; preds = %35, %26
  %28 = load %struct.android_app*, %struct.android_app** %3, align 8
  %29 = getelementptr inbounds %struct.android_app, %struct.android_app* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.android_app*, %struct.android_app** %3, align 8
  %32 = getelementptr inbounds %struct.android_app, %struct.android_app* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %30, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.android_app*, %struct.android_app** %3, align 8
  %37 = getelementptr inbounds %struct.android_app, %struct.android_app* %36, i32 0, i32 1
  %38 = load %struct.android_app*, %struct.android_app** %3, align 8
  %39 = getelementptr inbounds %struct.android_app, %struct.android_app* %38, i32 0, i32 0
  %40 = call i32 @pthread_cond_wait(i32* %37, i32* %39)
  br label %27

41:                                               ; preds = %27
  %42 = load %struct.android_app*, %struct.android_app** %3, align 8
  %43 = getelementptr inbounds %struct.android_app, %struct.android_app* %42, i32 0, i32 0
  %44 = call i32 @pthread_mutex_unlock(i32* %43)
  ret void
}

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
