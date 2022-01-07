; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc2enc.c_encode_source_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc2enc.c_encode_source_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @encode_source_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_source_params(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @encode_frame_size(i32* %3)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @encode_sample_fmt(i32* %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @encode_scan_format(i32* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @encode_frame_rate(i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @encode_aspect_ratio(i32* %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @encode_clean_area(i32* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @encode_signal_range(i32* %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @encode_color_spec(i32* %17)
  ret void
}

declare dso_local i32 @encode_frame_size(i32*) #1

declare dso_local i32 @encode_sample_fmt(i32*) #1

declare dso_local i32 @encode_scan_format(i32*) #1

declare dso_local i32 @encode_frame_rate(i32*) #1

declare dso_local i32 @encode_aspect_ratio(i32*) #1

declare dso_local i32 @encode_clean_area(i32*) #1

declare dso_local i32 @encode_signal_range(i32*) #1

declare dso_local i32 @encode_color_spec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
