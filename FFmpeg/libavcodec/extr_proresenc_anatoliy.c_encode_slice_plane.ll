; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_anatoliy.c_encode_slice_plane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_anatoliy.c_encode_slice_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32*, i32, i32*)* @encode_slice_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_slice_plane(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %13, align 4
  %19 = sub nsw i32 2, %18
  %20 = shl i32 %17, %19
  store i32 %20, i32* %15, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @init_put_bits(%struct.TYPE_7__* %16, i32* %21, i32 %22)
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %15, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @encode_dc_coeffs(%struct.TYPE_7__* %16, i32* %24, i32 %25, i32* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = call i32 @encode_ac_coeffs(%struct.TYPE_7__* %16, i32* %28, i32 %29, i32* %30, i32* %31)
  %33 = call i32 @flush_put_bits(%struct.TYPE_7__* %16)
  %34 = call i32 @put_bits_ptr(%struct.TYPE_7__* %16)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %34, %36
  ret i32 %37
}

declare dso_local i32 @init_put_bits(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @encode_dc_coeffs(%struct.TYPE_7__*, i32*, i32, i32*) #1

declare dso_local i32 @encode_ac_coeffs(%struct.TYPE_7__*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @flush_put_bits(%struct.TYPE_7__*) #1

declare dso_local i32 @put_bits_ptr(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
