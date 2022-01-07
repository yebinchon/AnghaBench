; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xvididct.c_idct_col_8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xvididct.c_idct_col_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAN1 = common dso_local global i32 0, align 4
@TAN3 = common dso_local global i32 0, align 4
@SQRT2 = common dso_local global i32 0, align 4
@TAN2 = common dso_local global i32 0, align 4
@COL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16*)* @idct_col_8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idct_col_8(i16* %0) #0 {
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
  %13 = getelementptr inbounds i16, i16* %12, i64 56
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i16*, i16** %2, align 8
  %17 = getelementptr inbounds i16, i16* %16, i64 40
  %18 = load i16, i16* %17, align 2
  %19 = sext i16 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i16*, i16** %2, align 8
  %21 = getelementptr inbounds i16, i16* %20, i64 24
  %22 = load i16, i16* %21, align 2
  %23 = sext i16 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i16*, i16** %2, align 8
  %25 = getelementptr inbounds i16, i16* %24, i64 8
  %26 = load i16, i16* %25, align 2
  %27 = sext i16 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @TAN1, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @MULT(i32 %28, i32 %29, i32 16)
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @TAN1, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @MULT(i32 %33, i32 %34, i32 16)
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @TAN3, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @MULT(i32 %38, i32 %39, i32 16)
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @TAN3, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @MULT(i32 %43, i32 %44, i32 16)
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %4, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @SQRT2, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @MULT(i32 %66, i32 %67, i32 16)
  %69 = mul nsw i32 2, %68
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @SQRT2, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @MULT(i32 %70, i32 %71, i32 16)
  %73 = mul nsw i32 2, %72
  store i32 %73, i32* %9, align 4
  %74 = load i16*, i16** %2, align 8
  %75 = getelementptr inbounds i16, i16* %74, i64 16
  %76 = load i16, i16* %75, align 2
  %77 = sext i16 %76 to i32
  store i32 %77, i32* %4, align 4
  %78 = load i16*, i16** %2, align 8
  %79 = getelementptr inbounds i16, i16* %78, i64 48
  %80 = load i16, i16* %79, align 2
  %81 = sext i16 %80 to i32
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* @TAN2, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @MULT(i32 %82, i32 %83, i32 16)
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* @TAN2, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @MULT(i32 %87, i32 %88, i32 16)
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 %89, %90
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i16*, i16** %2, align 8
  %96 = call i32 @LOAD_BUTTERFLY(i32 %92, i32 %93, i32 0, i32 32, i32 %94, i16* %95)
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @BUTTERFLY(i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @BUTTERFLY(i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @COL_SHIFT, align 4
  %107 = ashr i32 %105, %106
  %108 = trunc i32 %107 to i16
  %109 = load i16*, i16** %2, align 8
  %110 = getelementptr inbounds i16, i16* %109, i64 0
  store i16 %108, i16* %110, align 2
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @COL_SHIFT, align 4
  %113 = ashr i32 %111, %112
  %114 = trunc i32 %113 to i16
  %115 = load i16*, i16** %2, align 8
  %116 = getelementptr inbounds i16, i16* %115, i64 56
  store i16 %114, i16* %116, align 2
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @BUTTERFLY(i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @COL_SHIFT, align 4
  %123 = ashr i32 %121, %122
  %124 = trunc i32 %123 to i16
  %125 = load i16*, i16** %2, align 8
  %126 = getelementptr inbounds i16, i16* %125, i64 24
  store i16 %124, i16* %126, align 2
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @COL_SHIFT, align 4
  %129 = ashr i32 %127, %128
  %130 = trunc i32 %129 to i16
  %131 = load i16*, i16** %2, align 8
  %132 = getelementptr inbounds i16, i16* %131, i64 32
  store i16 %130, i16* %132, align 2
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @BUTTERFLY(i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @BUTTERFLY(i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @COL_SHIFT, align 4
  %143 = ashr i32 %141, %142
  %144 = trunc i32 %143 to i16
  %145 = load i16*, i16** %2, align 8
  %146 = getelementptr inbounds i16, i16* %145, i64 8
  store i16 %144, i16* %146, align 2
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @COL_SHIFT, align 4
  %149 = ashr i32 %147, %148
  %150 = trunc i32 %149 to i16
  %151 = load i16*, i16** %2, align 8
  %152 = getelementptr inbounds i16, i16* %151, i64 48
  store i16 %150, i16* %152, align 2
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @BUTTERFLY(i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @COL_SHIFT, align 4
  %159 = ashr i32 %157, %158
  %160 = trunc i32 %159 to i16
  %161 = load i16*, i16** %2, align 8
  %162 = getelementptr inbounds i16, i16* %161, i64 16
  store i16 %160, i16* %162, align 2
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @COL_SHIFT, align 4
  %165 = ashr i32 %163, %164
  %166 = trunc i32 %165 to i16
  %167 = load i16*, i16** %2, align 8
  %168 = getelementptr inbounds i16, i16* %167, i64 40
  store i16 %166, i16* %168, align 2
  ret void
}

declare dso_local i32 @MULT(i32, i32, i32) #1

declare dso_local i32 @LOAD_BUTTERFLY(i32, i32, i32, i32, i32, i16*) #1

declare dso_local i32 @BUTTERFLY(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
