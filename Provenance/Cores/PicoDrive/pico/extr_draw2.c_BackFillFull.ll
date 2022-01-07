; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_BackFillFull.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_BackFillFull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PicoDraw2FB = common dso_local global i64 0, align 8
@LINE_WIDTH = common dso_local global i32 0, align 4
@END_ROW = common dso_local global i32 0, align 4
@START_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @BackFillFull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BackFillFull(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 63
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = shl i32 %6, 8
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 %10, 16
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i64, i64* @PicoDraw2FB, align 8
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @LINE_WIDTH, align 4
  %18 = load i32, i32* @END_ROW, align 4
  %19 = load i32, i32* @START_ROW, align 4
  %20 = sub nsw i32 %18, %19
  %21 = mul nsw i32 %20, 8
  %22 = add nsw i32 8, %21
  %23 = mul nsw i32 %17, %22
  %24 = sdiv i32 %23, 4
  %25 = call i32 @memset32(i32* %15, i32 %16, i32 %24)
  ret void
}

declare dso_local i32 @memset32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
