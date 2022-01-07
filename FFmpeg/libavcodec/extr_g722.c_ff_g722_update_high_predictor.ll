; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g722.c_ff_g722_update_high_predictor.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g722.c_ff_g722_update_high_predictor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.G722Band = type { i32, i32 }

@high_log_factor_step = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_g722_update_high_predictor(%struct.G722Band* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.G722Band*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.G722Band* %0, %struct.G722Band** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.G722Band*, %struct.G722Band** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @do_adaptive_prediction(%struct.G722Band* %7, i32 %8)
  %10 = load %struct.G722Band*, %struct.G722Band** %4, align 8
  %11 = getelementptr inbounds %struct.G722Band, %struct.G722Band* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 127
  %14 = ashr i32 %13, 7
  %15 = sext i32 %14 to i64
  %16 = load i64*, i64** @high_log_factor_step, align 8
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %15, %21
  %23 = call i32 @av_clip(i64 %22, i32 0, i32 22528)
  %24 = load %struct.G722Band*, %struct.G722Band** %4, align 8
  %25 = getelementptr inbounds %struct.G722Band, %struct.G722Band* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.G722Band*, %struct.G722Band** %4, align 8
  %27 = getelementptr inbounds %struct.G722Band, %struct.G722Band* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 20480
  %30 = call i32 @linear_scale_factor(i32 %29)
  %31 = load %struct.G722Band*, %struct.G722Band** %4, align 8
  %32 = getelementptr inbounds %struct.G722Band, %struct.G722Band* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
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
