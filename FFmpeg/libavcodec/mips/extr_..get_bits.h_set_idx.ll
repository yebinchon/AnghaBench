; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_..get_bits.h_set_idx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_..get_bits.h_set_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, [2 x i32]*)* @set_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_idx(i32* %0, i32 %1, i32* %2, i32* %3, [2 x i32]* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [2 x i32]*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store [2 x i32]* %4, [2 x i32]** %10, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 0, %13
  %15 = load i32*, i32** %9, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @show_bits(i32* %16, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load [2 x i32]*, [2 x i32]** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 %24
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = load [2 x i32]*, [2 x i32]** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 %31
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  ret i32 %34
}

declare dso_local i32 @show_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
