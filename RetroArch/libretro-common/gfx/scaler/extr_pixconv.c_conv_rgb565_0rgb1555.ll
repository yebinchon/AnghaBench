; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_pixconv.c_conv_rgb565_0rgb1555.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_pixconv.c_conv_rgb565_0rgb1555.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @conv_rgb565_0rgb1555(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %14, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %15, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %30, 7
  store i32 %31, i32* %16, align 4
  %32 = call i32 @_mm_set1_epi16(i32 32736)
  store i32 %32, i32* %17, align 4
  %33 = call i32 @_mm_set1_epi16(i32 31)
  store i32 %33, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %94, %6
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %107

38:                                               ; preds = %34
  store i32 0, i32* %19, align 4
  br label %39

39:                                               ; preds = %64, %38
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %39
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* %19, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @_mm_loadu_si128(i32* %47)
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %20, align 4
  %50 = call i32 @_mm_slli_epi16(i32 %49, i32 1)
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @_mm_and_si128(i32 %50, i32 %51)
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %18, align 4
  %55 = call i32 @_mm_and_si128(i32 %53, i32 %54)
  store i32 %55, i32* %22, align 4
  %56 = load i32*, i32** %15, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* %22, align 4
  %62 = call i32 @_mm_or_si128(i32 %60, i32 %61)
  %63 = call i32 @_mm_storeu_si128(i32* %59, i32 %62)
  br label %64

64:                                               ; preds = %43
  %65 = load i32, i32* %19, align 4
  %66 = add nsw i32 %65, 8
  store i32 %66, i32* %19, align 4
  br label %39

67:                                               ; preds = %39
  br label %68

68:                                               ; preds = %90, %67
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %68
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %23, align 4
  %78 = load i32, i32* %23, align 4
  %79 = ashr i32 %78, 1
  %80 = and i32 %79, 32736
  store i32 %80, i32* %24, align 4
  %81 = load i32, i32* %23, align 4
  %82 = and i32 %81, 31
  store i32 %82, i32* %25, align 4
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* %25, align 4
  %85 = or i32 %83, %84
  %86 = load i32*, i32** %15, align 8
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %72
  %91 = load i32, i32* %19, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %19, align 4
  br label %68

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %11, align 4
  %98 = ashr i32 %97, 1
  %99 = load i32*, i32** %15, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %15, align 8
  %102 = load i32, i32* %12, align 4
  %103 = ashr i32 %102, 1
  %104 = load i32*, i32** %14, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %14, align 8
  br label %34

107:                                              ; preds = %34
  ret void
}

declare dso_local i32 @_mm_set1_epi16(i32) #1

declare dso_local i32 @_mm_loadu_si128(i32*) #1

declare dso_local i32 @_mm_and_si128(i32, i32) #1

declare dso_local i32 @_mm_slli_epi16(i32, i32) #1

declare dso_local i32 @_mm_storeu_si128(i32*, i32) #1

declare dso_local i32 @_mm_or_si128(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
