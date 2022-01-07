; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g722.c_ff_g722_update_low_predictor.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g722.c_ff_g722_update_low_predictor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.G722Band = type { i32, i32 }

@ff_g722_low_inv_quant4 = common dso_local global i32* null, align 8
@low_log_factor_step = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_g722_update_low_predictor(%struct.G722Band* %0, i32 %1) #0 {
  %3 = alloca %struct.G722Band*, align 8
  %4 = alloca i32, align 4
  store %struct.G722Band* %0, %struct.G722Band** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.G722Band*, %struct.G722Band** %3, align 8
  %6 = load %struct.G722Band*, %struct.G722Band** %3, align 8
  %7 = getelementptr inbounds %struct.G722Band, %struct.G722Band* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** @ff_g722_low_inv_quant4, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %8, %13
  %15 = ashr i32 %14, 10
  %16 = call i32 @do_adaptive_prediction(%struct.G722Band* %5, i32 %15)
  %17 = load %struct.G722Band*, %struct.G722Band** %3, align 8
  %18 = getelementptr inbounds %struct.G722Band, %struct.G722Band* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 127
  %21 = ashr i32 %20, 7
  %22 = sext i32 %21 to i64
  %23 = load i64*, i64** @low_log_factor_step, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %22, %27
  %29 = call i32 @av_clip(i64 %28, i32 0, i32 18432)
  %30 = load %struct.G722Band*, %struct.G722Band** %3, align 8
  %31 = getelementptr inbounds %struct.G722Band, %struct.G722Band* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.G722Band*, %struct.G722Band** %3, align 8
  %33 = getelementptr inbounds %struct.G722Band, %struct.G722Band* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 16384
  %36 = call i32 @linear_scale_factor(i32 %35)
  %37 = load %struct.G722Band*, %struct.G722Band** %3, align 8
  %38 = getelementptr inbounds %struct.G722Band, %struct.G722Band* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local i32 @do_adaptive_prediction(%struct.G722Band*, i32) #1

declare dso_local i32 @av_clip(i64, i32, i32) #1

declare dso_local i32 @linear_scale_factor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
