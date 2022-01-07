; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_delta.c_netplay_delta_frame_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_delta.c_netplay_delta_frame_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_frame = type { i32*, i32*, i32*, i32* }

@MAX_INPUT_DEVICES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netplay_delta_frame_free(%struct.delta_frame* %0) #0 {
  %2 = alloca %struct.delta_frame*, align 8
  %3 = alloca i64, align 8
  store %struct.delta_frame* %0, %struct.delta_frame** %2, align 8
  %4 = load %struct.delta_frame*, %struct.delta_frame** %2, align 8
  %5 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.delta_frame*, %struct.delta_frame** %2, align 8
  %10 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @free(i32* %11)
  %13 = load %struct.delta_frame*, %struct.delta_frame** %2, align 8
  %14 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  br label %15

15:                                               ; preds = %8, %1
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %39, %15
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @MAX_INPUT_DEVICES, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load %struct.delta_frame*, %struct.delta_frame** %2, align 8
  %22 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @free_input_state(i32* %25)
  %27 = load %struct.delta_frame*, %struct.delta_frame** %2, align 8
  %28 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = call i32 @free_input_state(i32* %31)
  %33 = load %struct.delta_frame*, %struct.delta_frame** %2, align 8
  %34 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = call i32 @free_input_state(i32* %37)
  br label %39

39:                                               ; preds = %20
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %3, align 8
  br label %16

42:                                               ; preds = %16
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @free_input_state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
