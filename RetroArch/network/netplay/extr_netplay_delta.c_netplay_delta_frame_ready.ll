; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_delta.c_netplay_delta_frame_ready.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_delta.c_netplay_delta_frame_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.delta_frame = type { i32, i64, i32, i32*, i32*, i32*, i32*, i64 }

@MAX_INPUT_DEVICES = common dso_local global i64 0, align 8
@MAX_CLIENTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netplay_delta_frame_ready(%struct.TYPE_3__* %0, %struct.delta_frame* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.delta_frame*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.delta_frame* %1, %struct.delta_frame** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.delta_frame*, %struct.delta_frame** %6, align 8
  %10 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load %struct.delta_frame*, %struct.delta_frame** %6, align 8
  %15 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %84

20:                                               ; preds = %13
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.delta_frame*, %struct.delta_frame** %6, align 8
  %25 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %84

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %3
  %31 = load %struct.delta_frame*, %struct.delta_frame** %6, align 8
  %32 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.delta_frame*, %struct.delta_frame** %6, align 8
  %35 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.delta_frame*, %struct.delta_frame** %6, align 8
  %37 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  store i64 0, i64* %8, align 8
  br label %38

38:                                               ; preds = %64, %30
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @MAX_INPUT_DEVICES, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %38
  %43 = load %struct.delta_frame*, %struct.delta_frame** %6, align 8
  %44 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clear_input(i32 %48)
  %50 = load %struct.delta_frame*, %struct.delta_frame** %6, align 8
  %51 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clear_input(i32 %55)
  %57 = load %struct.delta_frame*, %struct.delta_frame** %6, align 8
  %58 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @clear_input(i32 %62)
  br label %64

64:                                               ; preds = %42
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %8, align 8
  br label %38

67:                                               ; preds = %38
  %68 = load %struct.delta_frame*, %struct.delta_frame** %6, align 8
  %69 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %68, i32 0, i32 2
  store i32 0, i32* %69, align 8
  store i64 0, i64* %8, align 8
  br label %70

70:                                               ; preds = %80, %67
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @MAX_CLIENTS, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load %struct.delta_frame*, %struct.delta_frame** %6, align 8
  %76 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %74
  %81 = load i64, i64* %8, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %8, align 8
  br label %70

83:                                               ; preds = %70
  store i32 1, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %28, %19
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @clear_input(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
