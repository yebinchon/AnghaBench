; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_johab_hangul.h_johab_hangul_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_johab_hangul.h_johab_hangul_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@johab_hangul_page31 = common dso_local global i16* null, align 8
@jamo_initial_index_inverse = common dso_local global i32* null, align 8
@jamo_medial_index_inverse = common dso_local global i32* null, align 8
@jamo_final_index_inverse = common dso_local global i32* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @johab_hangul_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @johab_hangul_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %97

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 12593
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 12644
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load i16*, i16** @johab_hangul_page31, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 12593
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %25, i64 %28
  %30 = load i16, i16* %29, align 2
  store i16 %30, i16* %10, align 2
  %31 = load i16, i16* %10, align 2
  %32 = zext i16 %31 to i32
  %33 = ashr i32 %32, 8
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 %34, i8* %36, align 1
  %37 = load i16, i16* %10, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8 %40, i8* %42, align 1
  store i32 2, i32* %5, align 4
  br label %99

43:                                               ; preds = %21, %18
  %44 = load i32, i32* %8, align 4
  %45 = icmp sge i32 %44, 44032
  br i1 %45, label %46, label %94

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 55204
  br i1 %48, label %49, label %94

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %50, 44032
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = urem i32 %52, 28
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %15, align 4
  %55 = udiv i32 %54, 28
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = urem i32 %56, 21
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %15, align 4
  %59 = udiv i32 %58, 21
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %11, align 4
  %61 = load i32*, i32** @jamo_initial_index_inverse, align 8
  %62 = load i32, i32* %11, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = or i32 32, %65
  %67 = shl i32 %66, 5
  %68 = load i32*, i32** @jamo_medial_index_inverse, align 8
  %69 = load i32, i32* %12, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %67, %72
  %74 = shl i32 %73, 5
  %75 = load i32*, i32** @jamo_final_index_inverse, align 8
  %76 = load i32, i32* %13, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %74, %79
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* %14, align 2
  %82 = load i16, i16* %14, align 2
  %83 = zext i16 %82 to i32
  %84 = ashr i32 %83, 8
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  store i8 %85, i8* %87, align 1
  %88 = load i16, i16* %14, align 2
  %89 = zext i16 %88 to i32
  %90 = and i32 %89, 255
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  store i8 %91, i8* %93, align 1
  store i32 2, i32* %5, align 4
  br label %99

94:                                               ; preds = %46, %43
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* @RET_ILUNI, align 4
  store i32 %96, i32* %5, align 4
  br label %99

97:                                               ; preds = %4
  %98 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %97, %95, %49, %24
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
