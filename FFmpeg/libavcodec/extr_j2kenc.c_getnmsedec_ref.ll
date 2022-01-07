; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_j2kenc.c_getnmsedec_ref.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_j2kenc.c_getnmsedec_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NMSEDEC_FRACBITS = common dso_local global i32 0, align 4
@lut_nmsedec_ref = common dso_local global i32* null, align 8
@NMSEDEC_BITS = common dso_local global i32 0, align 4
@lut_nmsedec_ref0 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @getnmsedec_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getnmsedec_ref(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @NMSEDEC_FRACBITS, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i32*, i32** @lut_nmsedec_ref, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NMSEDEC_FRACBITS, align 4
  %14 = sub nsw i32 %12, %13
  %15 = ashr i32 %11, %14
  %16 = load i32, i32* @NMSEDEC_BITS, align 4
  %17 = shl i32 1, %16
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %15, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %10, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load i32*, i32** @lut_nmsedec_ref0, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @NMSEDEC_BITS, align 4
  %27 = shl i32 1, %26
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %24, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %23, %9
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
