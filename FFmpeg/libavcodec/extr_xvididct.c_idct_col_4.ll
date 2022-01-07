; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xvididct.c_idct_col_4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xvididct.c_idct_col_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAN1 = common dso_local global i32 0, align 4
@TAN3 = common dso_local global i32 0, align 4
@SQRT2 = common dso_local global i32 0, align 4
@TAN2 = common dso_local global i32 0, align 4
@COL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16*)* @idct_col_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idct_col_4(i16* %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i16* %0, i16** %2, align 8
  %12 = load i16*, i16** %2, align 8
  %13 = getelementptr inbounds i16, i16* %12, i64 8
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load i16*, i16** %2, align 8
  %17 = getelementptr inbounds i16, i16* %16, i64 24
  %18 = load i16, i16* %17, align 2
  %19 = sext i16 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @TAN1, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @MULT(i32 %20, i32 %21, i32 16)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @TAN3, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @MULT(i32 %23, i32 %24, i32 16)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @SQRT2, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @MULT(i32 %44, i32 %45, i32 16)
  %47 = mul nsw i32 2, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @SQRT2, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @MULT(i32 %48, i32 %49, i32 16)
  %51 = mul nsw i32 2, %50
  store i32 %51, i32* %8, align 4
  %52 = load i16*, i16** %2, align 8
  %53 = getelementptr inbounds i16, i16* %52, i64 0
  %54 = load i16, i16* %53, align 2
  %55 = sext i16 %54 to i32
  store i32 %55, i32* %4, align 4
  store i32 %55, i32* %3, align 4
  %56 = load i16*, i16** %2, align 8
  %57 = getelementptr inbounds i16, i16* %56, i64 16
  %58 = load i16, i16* %57, align 2
  %59 = sext i16 %58 to i32
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @TAN2, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @MULT(i32 %60, i32 %61, i32 16)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @BUTTERFLY(i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @BUTTERFLY(i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @COL_SHIFT, align 4
  %73 = ashr i32 %71, %72
  %74 = trunc i32 %73 to i16
  %75 = load i16*, i16** %2, align 8
  %76 = getelementptr inbounds i16, i16* %75, i64 0
  store i16 %74, i16* %76, align 2
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @COL_SHIFT, align 4
  %79 = ashr i32 %77, %78
  %80 = trunc i32 %79 to i16
  %81 = load i16*, i16** %2, align 8
  %82 = getelementptr inbounds i16, i16* %81, i64 56
  store i16 %80, i16* %82, align 2
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @BUTTERFLY(i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @COL_SHIFT, align 4
  %89 = ashr i32 %87, %88
  %90 = trunc i32 %89 to i16
  %91 = load i16*, i16** %2, align 8
  %92 = getelementptr inbounds i16, i16* %91, i64 24
  store i16 %90, i16* %92, align 2
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @COL_SHIFT, align 4
  %95 = ashr i32 %93, %94
  %96 = trunc i32 %95 to i16
  %97 = load i16*, i16** %2, align 8
  %98 = getelementptr inbounds i16, i16* %97, i64 32
  store i16 %96, i16* %98, align 2
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @BUTTERFLY(i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @BUTTERFLY(i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @COL_SHIFT, align 4
  %109 = ashr i32 %107, %108
  %110 = trunc i32 %109 to i16
  %111 = load i16*, i16** %2, align 8
  %112 = getelementptr inbounds i16, i16* %111, i64 8
  store i16 %110, i16* %112, align 2
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @COL_SHIFT, align 4
  %115 = ashr i32 %113, %114
  %116 = trunc i32 %115 to i16
  %117 = load i16*, i16** %2, align 8
  %118 = getelementptr inbounds i16, i16* %117, i64 48
  store i16 %116, i16* %118, align 2
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @BUTTERFLY(i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @COL_SHIFT, align 4
  %125 = ashr i32 %123, %124
  %126 = trunc i32 %125 to i16
  %127 = load i16*, i16** %2, align 8
  %128 = getelementptr inbounds i16, i16* %127, i64 16
  store i16 %126, i16* %128, align 2
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @COL_SHIFT, align 4
  %131 = ashr i32 %129, %130
  %132 = trunc i32 %131 to i16
  %133 = load i16*, i16** %2, align 8
  %134 = getelementptr inbounds i16, i16* %133, i64 40
  store i16 %132, i16* %134, align 2
  ret void
}

declare dso_local i32 @MULT(i32, i32, i32) #1

declare dso_local i32 @BUTTERFLY(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
