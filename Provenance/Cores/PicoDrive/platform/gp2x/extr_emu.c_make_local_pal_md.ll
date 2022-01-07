; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_make_local_pal_md.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_make_local_pal_md.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@localPal = common dso_local global i32* null, align 8
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@rendstatus = common dso_local global i32 0, align 4
@PDRAW_SONIC_MODE = common dso_local global i32 0, align 4
@HighPal = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @make_local_pal_md to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_local_pal_md(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 192, i32* %4, align 4
  %5 = load i32*, i32** @localPal, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 8
  %7 = call i32 @bgr444_to_rgb32(i32* %5, i64 %6)
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 64, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1, i32 0), align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 12
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load i32*, i32** @localPal, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 8
  %20 = call i32 @bgr444_to_rgb32_sh(i32* %18, i64 %19)
  %21 = load i32*, i32** @localPal, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 192
  store i32 49152, i32* %22, align 4
  %23 = load i32*, i32** @localPal, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 208
  store i32 12582912, i32* %24, align 4
  %25 = load i32*, i32** @localPal, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 224
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** @localPal, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 240
  store i32 16777215, i32* %28, align 4
  store i32 256, i32* %4, align 4
  br label %50

29:                                               ; preds = %11
  %30 = load i32, i32* @rendstatus, align 4
  %31 = load i32, i32* @PDRAW_SONIC_MODE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32*, i32** @localPal, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 64
  %37 = load i64, i64* @HighPal, align 8
  %38 = call i32 @bgr444_to_rgb32(i32* %36, i64 %37)
  %39 = load i32*, i32** @localPal, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 128
  %41 = load i64, i64* @HighPal, align 8
  %42 = add nsw i64 %41, 64
  %43 = call i32 @bgr444_to_rgb32(i32* %40, i64 %42)
  br label %49

44:                                               ; preds = %29
  %45 = load i32*, i32** @localPal, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 128
  %47 = load i32*, i32** @localPal, align 8
  %48 = call i32 @memcpy32(i32* %46, i32* %47, i32 64)
  br label %49

49:                                               ; preds = %44, %34
  br label %50

50:                                               ; preds = %49, %17
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @bgr444_to_rgb32(i32*, i64) #1

declare dso_local i32 @bgr444_to_rgb32_sh(i32*, i64) #1

declare dso_local i32 @memcpy32(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
