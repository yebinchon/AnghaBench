; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/src/extr_LEDproto.c_pack12bit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/src/extr_LEDproto.c_pack12bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pack12bit(i32* %0, i32 %1, i32 %2) #0 {
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
  %12 = mul nsw i32 %11, 12
  %13 = sdiv i32 %12, 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 12
  %16 = srem i32 %15, 8
  %17 = sub nsw i32 4, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 4095
  %20 = load i32, i32* %8, align 4
  %21 = shl i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 4095, %22
  %24 = xor i32 %23, -1
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = ashr i32 %25, 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %26
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 255
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %34
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %9, align 4
  %43 = ashr i32 %42, 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 255
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %51
  store i32 %58, i32* %56, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
