; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq3.c_init_dequant4_coeff_table.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq3.c_init_dequant4_coeff_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32** }

@ff_h264_quant_div6 = common dso_local global i32* null, align 8
@ff_h264_quant_rem6 = common dso_local global i32* null, align 8
@ff_h264_dequant4_coeff_init = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @init_dequant4_coeff_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_dequant4_coeff_table(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 51, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %64, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 52
  br i1 %10, label %11, label %67

11:                                               ; preds = %8
  %12 = load i32*, i32** @ff_h264_quant_div6, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 2
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** @ff_h264_quant_rem6, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %60, %11
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 16
  br i1 %25, label %26, label %63

26:                                               ; preds = %23
  %27 = load i64**, i64*** @ff_h264_dequant4_coeff_init, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64*, i64** %27, i64 %29
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 1
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 2
  %36 = and i32 %35, 1
  %37 = add nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %31, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = mul nsw i32 %41, 16
  %43 = load i32, i32* %6, align 4
  %44 = shl i32 %42, %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = ashr i32 %52, 2
  %54 = load i32, i32* %4, align 4
  %55 = shl i32 %54, 2
  %56 = and i32 %55, 15
  %57 = or i32 %53, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %51, i64 %58
  store i32 %44, i32* %59, align 4
  br label %60

60:                                               ; preds = %26
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %23

63:                                               ; preds = %23
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %8

67:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
