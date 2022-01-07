; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_decode_subblock3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_decode_subblock3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@modulo_three_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32*, i32, i32, i32)* @decode_subblock3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_subblock3(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32*, i32** @modulo_three_table, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %15, align 4
  %25 = ashr i32 %24, 6
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @decode_coeff(i32* %23, i32 %25, i32 3, i32* %26, i32* %27, i32 %28)
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %15, align 4
  %34 = ashr i32 %33, 4
  %35 = and i32 %34, 3
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @decode_coeff(i32* %32, i32 %35, i32 2, i32* %36, i32* %37, i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %15, align 4
  %44 = ashr i32 %43, 2
  %45 = and i32 %44, 3
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @decode_coeff(i32* %42, i32 %45, i32 2, i32* %46, i32* %47, i32 %48)
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %15, align 4
  %54 = ashr i32 %53, 0
  %55 = and i32 %54, 3
  %56 = load i32*, i32** %10, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @decode_coeff(i32* %52, i32 %55, i32 2, i32* %56, i32* %57, i32 %58)
  ret void
}

declare dso_local i32 @decode_coeff(i32*, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
