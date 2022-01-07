; ModuleID = '/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_android_app_post_exec_cmd.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_android_app_post_exec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @android_app_post_exec_cmd(%struct.android_app* %0, i32 %1) #0 {
  %3 = alloca %struct.android_app*, align 8
  %4 = alloca i32, align 4
  store %struct.android_app* %0, %struct.android_app** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %33 [
    i32 128, label %6
    i32 129, label %18
    i32 130, label %30
  ]

6:                                                ; preds = %2
  %7 = load %struct.android_app*, %struct.android_app** %3, align 8
  %8 = getelementptr inbounds %struct.android_app, %struct.android_app* %7, i32 0, i32 1
  %9 = call i32 @pthread_mutex_lock(i32* %8)
  %10 = load %struct.android_app*, %struct.android_app** %3, align 8
  %11 = getelementptr inbounds %struct.android_app, %struct.android_app* %10, i32 0, i32 3
  store i32* null, i32** %11, align 8
  %12 = load %struct.android_app*, %struct.android_app** %3, align 8
  %13 = getelementptr inbounds %struct.android_app, %struct.android_app* %12, i32 0, i32 2
  %14 = call i32 @pthread_cond_broadcast(i32* %13)
  %15 = load %struct.android_app*, %struct.android_app** %3, align 8
  %16 = getelementptr inbounds %struct.android_app, %struct.android_app* %15, i32 0, i32 1
  %17 = call i32 @pthread_mutex_unlock(i32* %16)
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.android_app*, %struct.android_app** %3, align 8
  %20 = getelementptr inbounds %struct.android_app, %struct.android_app* %19, i32 0, i32 1
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load %struct.android_app*, %struct.android_app** %3, align 8
  %23 = getelementptr inbounds %struct.android_app, %struct.android_app* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.android_app*, %struct.android_app** %3, align 8
  %25 = getelementptr inbounds %struct.android_app, %struct.android_app* %24, i32 0, i32 2
  %26 = call i32 @pthread_cond_broadcast(i32* %25)
  %27 = load %struct.android_app*, %struct.android_app** %3, align 8
  %28 = getelementptr inbounds %struct.android_app, %struct.android_app* %27, i32 0, i32 1
  %29 = call i32 @pthread_mutex_unlock(i32* %28)
  br label %33

30:                                               ; preds = %2
  %31 = load %struct.android_app*, %struct.android_app** %3, align 8
  %32 = call i32 @free_saved_state(%struct.android_app* %31)
  br label %33

33:                                               ; preds = %2, %30, %18, %6
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @free_saved_state(%struct.android_app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
