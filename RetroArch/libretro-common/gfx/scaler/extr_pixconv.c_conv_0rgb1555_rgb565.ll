; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_pixconv.c_conv_0rgb1555_rgb565.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_pixconv.c_conv_0rgb1555_rgb565.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @conv_0rgb1555_rgb565(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %14, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %15, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 7
  store i32 %34, i32* %16, align 4
  %35 = call i32 @_mm_set1_epi16(i32 65472)
  store i32 %35, i32* %17, align 4
  %36 = call i32 @_mm_set1_epi16(i32 31)
  store i32 %36, i32* %18, align 4
  %37 = call i32 @_mm_set1_epi16(i32 32)
  store i32 %37, i32* %19, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %109, %6
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %122

42:                                               ; preds = %38
  store i32 0, i32* %20, align 4
  br label %43

43:                                               ; preds = %74, %42
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %43
  %48 = load i32*, i32** %14, align 8
  %49 = load i32, i32* %20, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @_mm_loadu_si128(i32* %51)
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %21, align 4
  %54 = call i32 @_mm_slli_epi16(i32 %53, i32 1)
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @_mm_and_si128(i32 %54, i32 %55)
  store i32 %56, i32* %22, align 4
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @_mm_and_si128(i32 %57, i32 %58)
  store i32 %59, i32* %23, align 4
  %60 = load i32, i32* %21, align 4
  %61 = call i32 @_mm_srli_epi16(i32 %60, i32 4)
  %62 = load i32, i32* %19, align 4
  %63 = call i32 @_mm_and_si128(i32 %61, i32 %62)
  store i32 %63, i32* %24, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %20, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %23, align 4
  %70 = load i32, i32* %24, align 4
  %71 = call i32 @_mm_or_si128(i32 %69, i32 %70)
  %72 = call i32 @_mm_or_si128(i32 %68, i32 %71)
  %73 = call i32 @_mm_storeu_si128(i32* %67, i32 %72)
  br label %74

74:                                               ; preds = %47
  %75 = load i32, i32* %20, align 4
  %76 = add nsw i32 %75, 8
  store i32 %76, i32* %20, align 4
  br label %43

77:                                               ; preds = %43
  br label %78

78:                                               ; preds = %105, %77
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %78
  %83 = load i32*, i32** %14, align 8
  %84 = load i32, i32* %20, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %25, align 4
  %88 = load i32, i32* %25, align 4
  %89 = shl i32 %88, 1
  %90 = and i32 %89, 65472
  store i32 %90, i32* %26, align 4
  %91 = load i32, i32* %25, align 4
  %92 = and i32 %91, 31
  store i32 %92, i32* %27, align 4
  %93 = load i32, i32* %25, align 4
  %94 = ashr i32 %93, 4
  %95 = and i32 %94, 32
  store i32 %95, i32* %28, align 4
  %96 = load i32, i32* %26, align 4
  %97 = load i32, i32* %27, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %28, align 4
  %100 = or i32 %98, %99
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* %20, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %82
  %106 = load i32, i32* %20, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %20, align 4
  br label %78

108:                                              ; preds = %78
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %11, align 4
  %113 = ashr i32 %112, 1
  %114 = load i32*, i32** %15, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %15, align 8
  %117 = load i32, i32* %12, align 4
  %118 = ashr i32 %117, 1
  %119 = load i32*, i32** %14, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %14, align 8
  br label %38

122:                                              ; preds = %38
  ret void
}

declare dso_local i32 @_mm_set1_epi16(i32) #1

declare dso_local i32 @_mm_loadu_si128(i32*) #1

declare dso_local i32 @_mm_and_si128(i32, i32) #1

declare dso_local i32 @_mm_slli_epi16(i32, i32) #1

declare dso_local i32 @_mm_srli_epi16(i32, i32) #1

declare dso_local i32 @_mm_storeu_si128(i32*, i32) #1

declare dso_local i32 @_mm_or_si128(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
