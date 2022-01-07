; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_crc_init_4.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_crc_init_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @crc_init_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc_init_4(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @crc_table, align 8
  %5 = load i32, i32* %2, align 4
  %6 = xor i32 %5, -1
  %7 = ashr i32 %6, 24
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %4, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, 16777215
  store i32 %11, i32* %3, align 4
  %12 = load i32*, i32** @crc_table, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = ashr i32 %14, 16
  %16 = xor i32 %13, %15
  %17 = and i32 %16, 255
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %12, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 8
  %23 = xor i32 %20, %22
  store i32 %23, i32* %3, align 4
  %24 = load i32*, i32** @crc_table, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %2, align 4
  %27 = ashr i32 %26, 8
  %28 = xor i32 %25, %27
  %29 = and i32 %28, 255
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %24, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %3, align 4
  %34 = ashr i32 %33, 8
  %35 = xor i32 %32, %34
  store i32 %35, i32* %3, align 4
  %36 = load i32*, i32** @crc_table, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %2, align 4
  %39 = xor i32 %37, %38
  %40 = and i32 %39, 255
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %3, align 4
  %45 = ashr i32 %44, 8
  %46 = xor i32 %43, %45
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
