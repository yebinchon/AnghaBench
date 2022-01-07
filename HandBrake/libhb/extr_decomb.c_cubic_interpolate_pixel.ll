; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decomb.c_cubic_interpolate_pixel.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decomb.c_cubic_interpolate_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hb_crop_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @cubic_interpolate_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cubic_interpolate_pixel(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 %10, -3
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 %12, 23
  %14 = add nsw i32 %11, %13
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %15, 23
  %17 = add nsw i32 %14, %16
  %18 = load i32, i32* %8, align 4
  %19 = mul nsw i32 %18, -3
  %20 = add nsw i32 %17, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** @hb_crop_table, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sdiv i32 %22, 40
  %24 = add nsw i32 %23, 1024
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
