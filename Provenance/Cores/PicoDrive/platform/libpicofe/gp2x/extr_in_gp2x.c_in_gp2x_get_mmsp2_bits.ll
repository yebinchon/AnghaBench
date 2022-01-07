; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_in_gp2x.c_in_gp2x_get_mmsp2_bits.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_in_gp2x.c_in_gp2x_get_mmsp2_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memregs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @in_gp2x_get_mmsp2_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_gp2x_get_mmsp2_bits() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @memregs, align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 2252
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 255
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp eq i32 %6, 253
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 250, i32* %1, align 4
  br label %9

9:                                                ; preds = %8, %0
  %10 = load i32, i32* %1, align 4
  %11 = icmp eq i32 %10, 247
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 235, i32* %1, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, i32* %1, align 4
  %15 = icmp eq i32 %14, 223
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 175, i32* %1, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %1, align 4
  %19 = icmp eq i32 %18, 127
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 190, i32* %1, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32*, i32** @memregs, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2242
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 65280
  %26 = load i32, i32* %1, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %1, align 4
  %28 = load i32*, i32** @memregs, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2243
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 16
  %32 = load i32, i32* %1, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %35, 146866005
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
