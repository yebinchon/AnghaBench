; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_sync.c_netplay_device_client_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_sync.c_netplay_device_client_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64* }
%struct.delta_frame = type { i64, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @netplay_device_client_state(%struct.TYPE_4__* %0, %struct.delta_frame* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.delta_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store %struct.delta_frame* %1, %struct.delta_frame** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = shl i32 1, %13
  %15 = call i32 @netplay_expected_input_size(%struct.TYPE_4__* %12, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.delta_frame*, %struct.delta_frame** %7, align 8
  %17 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32* @netplay_input_state_for(i32* %21, i32 %22, i32 %23, i32 0, i32 1)
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.delta_frame*, %struct.delta_frame** %7, align 8
  %36 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32* null, i32** %5, align 8
  br label %52

40:                                               ; preds = %27
  %41 = load %struct.delta_frame*, %struct.delta_frame** %7, align 8
  %42 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32* @netplay_input_state_for(i32* %46, i32 %47, i32 %48, i32 0, i32 1)
  store i32* %49, i32** %11, align 8
  br label %50

50:                                               ; preds = %40, %4
  %51 = load i32*, i32** %11, align 8
  store i32* %51, i32** %5, align 8
  br label %52

52:                                               ; preds = %50, %39
  %53 = load i32*, i32** %5, align 8
  ret i32* %53
}

declare dso_local i32 @netplay_expected_input_size(%struct.TYPE_4__*, i32) #1

declare dso_local i32* @netplay_input_state_for(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
