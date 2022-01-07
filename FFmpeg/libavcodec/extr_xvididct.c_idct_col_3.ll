; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xvididct.c_idct_col_3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xvididct.c_idct_col_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAN1 = common dso_local global i32 0, align 4
@SQRT2 = common dso_local global i32 0, align 4
@TAN2 = common dso_local global i32 0, align 4
@COL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16*)* @idct_col_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idct_col_3(i16* %0) #0 {
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
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @TAN1, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @MULT(i32 %16, i32 %17, i32 16)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @SQRT2, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @MULT(i32 %25, i32 %26, i32 16)
  %28 = mul nsw i32 2, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @SQRT2, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @MULT(i32 %29, i32 %30, i32 16)
  %32 = mul nsw i32 2, %31
  store i32 %32, i32* %8, align 4
  %33 = load i16*, i16** %2, align 8
  %34 = getelementptr inbounds i16, i16* %33, i64 0
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i32
  store i32 %36, i32* %4, align 4
  store i32 %36, i32* %3, align 4
  %37 = load i16*, i16** %2, align 8
  %38 = getelementptr inbounds i16, i16* %37, i64 16
  %39 = load i16, i16* %38, align 2
  %40 = sext i16 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @TAN2, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @MULT(i32 %41, i32 %42, i32 16)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @BUTTERFLY(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @BUTTERFLY(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @COL_SHIFT, align 4
  %54 = ashr i32 %52, %53
  %55 = trunc i32 %54 to i16
  %56 = load i16*, i16** %2, align 8
  %57 = getelementptr inbounds i16, i16* %56, i64 0
  store i16 %55, i16* %57, align 2
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @COL_SHIFT, align 4
  %60 = ashr i32 %58, %59
  %61 = trunc i32 %60 to i16
  %62 = load i16*, i16** %2, align 8
  %63 = getelementptr inbounds i16, i16* %62, i64 56
  store i16 %61, i16* %63, align 2
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @BUTTERFLY(i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @COL_SHIFT, align 4
  %70 = ashr i32 %68, %69
  %71 = trunc i32 %70 to i16
  %72 = load i16*, i16** %2, align 8
  %73 = getelementptr inbounds i16, i16* %72, i64 24
  store i16 %71, i16* %73, align 2
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @COL_SHIFT, align 4
  %76 = ashr i32 %74, %75
  %77 = trunc i32 %76 to i16
  %78 = load i16*, i16** %2, align 8
  %79 = getelementptr inbounds i16, i16* %78, i64 32
  store i16 %77, i16* %79, align 2
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @BUTTERFLY(i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @BUTTERFLY(i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @COL_SHIFT, align 4
  %90 = ashr i32 %88, %89
  %91 = trunc i32 %90 to i16
  %92 = load i16*, i16** %2, align 8
  %93 = getelementptr inbounds i16, i16* %92, i64 8
  store i16 %91, i16* %93, align 2
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @COL_SHIFT, align 4
  %96 = ashr i32 %94, %95
  %97 = trunc i32 %96 to i16
  %98 = load i16*, i16** %2, align 8
  %99 = getelementptr inbounds i16, i16* %98, i64 48
  store i16 %97, i16* %99, align 2
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @BUTTERFLY(i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @COL_SHIFT, align 4
  %106 = ashr i32 %104, %105
  %107 = trunc i32 %106 to i16
  %108 = load i16*, i16** %2, align 8
  %109 = getelementptr inbounds i16, i16* %108, i64 16
  store i16 %107, i16* %109, align 2
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @COL_SHIFT, align 4
  %112 = ashr i32 %110, %111
  %113 = trunc i32 %112 to i16
  %114 = load i16*, i16** %2, align 8
  %115 = getelementptr inbounds i16, i16* %114, i64 40
  store i16 %113, i16* %115, align 2
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
