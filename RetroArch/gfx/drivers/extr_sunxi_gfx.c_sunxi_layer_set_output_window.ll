; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_layer_set_output_window.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_layer_set_output_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@DISP_CMD_LAYER_SET_SCN_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32, i32)* @sunxi_layer_set_output_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_layer_set_output_window(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 4
  %13 = alloca [4 x i64], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %20, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %11, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26, %5
  store i32 -1, i32* %6, align 4
  br label %56

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %42, i64* %43, align 16
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  store i64 %46, i64* %47, align 8
  %48 = ptrtoint %struct.TYPE_5__* %12 to i64
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  store i64 %48, i64* %49, align 16
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DISP_CMD_LAYER_SET_SCN_WINDOW, align 4
  %54 = bitcast [4 x i64]* %13 to i64**
  %55 = call i32 @ioctl(i32 %52, i32 %53, i64** %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %33, %32
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @ioctl(i32, i32, i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
