; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/functions/extr_mbutils.c_xMBUtilGetBits.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/functions/extr_mbutils.c_xMBUtilGetBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_UCHAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xMBUtilGetBits(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @BITS_UCHAR, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @BITS_UCHAR, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sub nsw i32 %14, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 1, %19
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BITS_UCHAR, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
