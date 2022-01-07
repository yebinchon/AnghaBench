; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_camellia.c_F.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_camellia.c_F.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SP = common dso_local global i32** null, align 8
@MASK8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @F to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @F(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = xor i32 %6, %5
  store i32 %7, i32* %4, align 4
  %8 = load i32**, i32*** @SP, align 8
  %9 = getelementptr inbounds i32*, i32** %8, i64 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 56
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32**, i32*** @SP, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 48
  %21 = load i32, i32* @MASK8, align 4
  %22 = and i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %15, %25
  %27 = load i32**, i32*** @SP, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %30, 40
  %32 = load i32, i32* @MASK8, align 4
  %33 = and i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %26, %36
  %38 = load i32**, i32*** @SP, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 32
  %43 = load i32, i32* @MASK8, align 4
  %44 = and i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %37, %47
  %49 = load i32**, i32*** @SP, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 4
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = ashr i32 %52, 24
  %54 = load i32, i32* @MASK8, align 4
  %55 = and i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %48, %58
  %60 = load i32**, i32*** @SP, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 5
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = ashr i32 %63, 16
  %65 = load i32, i32* @MASK8, align 4
  %66 = and i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %59, %69
  %71 = load i32**, i32*** @SP, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 6
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = ashr i32 %74, 8
  %76 = load i32, i32* @MASK8, align 4
  %77 = and i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = xor i32 %70, %80
  %82 = load i32**, i32*** @SP, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 7
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @MASK8, align 4
  %87 = and i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %81, %90
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
