; ModuleID = '/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_process_input.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_process_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i32, i32 (%struct.android_app*, i32*)* }
%struct.android_poll_source = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.android_app*, %struct.android_poll_source*)* @process_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_input(%struct.android_app* %0, %struct.android_poll_source* %1) #0 {
  %3 = alloca %struct.android_app*, align 8
  %4 = alloca %struct.android_poll_source*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.android_app* %0, %struct.android_app** %3, align 8
  store %struct.android_poll_source* %1, %struct.android_poll_source** %4, align 8
  store i32* null, i32** %5, align 8
  br label %7

7:                                                ; preds = %33, %20, %2
  %8 = load %struct.android_app*, %struct.android_app** %3, align 8
  %9 = getelementptr inbounds %struct.android_app, %struct.android_app* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @AInputQueue_getEvent(i32 %10, i32** %5)
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %7
  %14 = load %struct.android_app*, %struct.android_app** %3, align 8
  %15 = getelementptr inbounds %struct.android_app, %struct.android_app* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @AInputQueue_preDispatchEvent(i32 %16, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %7

21:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  %22 = load %struct.android_app*, %struct.android_app** %3, align 8
  %23 = getelementptr inbounds %struct.android_app, %struct.android_app* %22, i32 0, i32 1
  %24 = load i32 (%struct.android_app*, i32*)*, i32 (%struct.android_app*, i32*)** %23, align 8
  %25 = icmp ne i32 (%struct.android_app*, i32*)* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.android_app*, %struct.android_app** %3, align 8
  %28 = getelementptr inbounds %struct.android_app, %struct.android_app* %27, i32 0, i32 1
  %29 = load i32 (%struct.android_app*, i32*)*, i32 (%struct.android_app*, i32*)** %28, align 8
  %30 = load %struct.android_app*, %struct.android_app** %3, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 %29(%struct.android_app* %30, i32* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.android_app*, %struct.android_app** %3, align 8
  %35 = getelementptr inbounds %struct.android_app, %struct.android_app* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @AInputQueue_finishEvent(i32 %36, i32* %37, i32 %38)
  br label %7

40:                                               ; preds = %7
  ret void
}

declare dso_local i64 @AInputQueue_getEvent(i32, i32**) #1

declare dso_local i64 @AInputQueue_preDispatchEvent(i32, i32*) #1

declare dso_local i32 @AInputQueue_finishEvent(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
