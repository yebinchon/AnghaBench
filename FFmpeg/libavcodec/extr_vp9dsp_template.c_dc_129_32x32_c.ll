; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9dsp_template.c_dc_129_32x32_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9dsp_template.c_dc_129_32x32_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIT_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32*)* @dc_129_32x32_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_129_32x32_c(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %9, align 8
  %13 = load i32, i32* @BIT_DEPTH, align 4
  %14 = sub nsw i32 %13, 8
  %15 = shl i32 128, %14
  %16 = add nsw i32 %15, 1
  %17 = call i32 @PIXEL_SPLAT_X4(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %62, %4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 32
  br i1 %24, label %25, label %65

25:                                               ; preds = %22
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @AV_WN4PA(i32* %27, i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @AV_WN4PA(i32* %31, i32 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @AV_WN4PA(i32* %35, i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 12
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @AV_WN4PA(i32* %39, i32 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 16
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @AV_WN4PA(i32* %43, i32 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 20
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @AV_WN4PA(i32* %47, i32 %48)
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 24
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @AV_WN4PA(i32* %51, i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 28
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @AV_WN4PA(i32* %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %9, align 8
  br label %62

62:                                               ; preds = %25
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %22

65:                                               ; preds = %22
  ret void
}

declare dso_local i32 @PIXEL_SPLAT_X4(i32) #1

declare dso_local i32 @AV_WN4PA(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
