; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/otvalid/extr_otvmath.c_otv_MathGlyphInfo_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/otvalid/extr_otvmath.c_otv_MathGlyphInfo_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"MathGlyphInfo\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ExtendedShapeCoverage\00", align 1
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @otv_MathGlyphInfo_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_MathGlyphInfo_validate(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i64, i64* %3, align 8
  store i64 %10, i64* %5, align 8
  %11 = call i32 @OTV_NAME_ENTER(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @OTV_LIMIT_CHECK(i32 8)
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @FT_NEXT_USHORT(i64 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @FT_NEXT_USHORT(i64 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @FT_NEXT_USHORT(i64 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @FT_NEXT_USHORT(i64 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32 @otv_MathItalicsCorrectionInfo_validate(i64 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %2
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @otv_MathItalicsCorrectionInfo_validate(i64 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %30
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = call i32 @OTV_NAME_ENTER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @otv_Coverage_validate(i64 %47, i32 %48, i32 -1)
  %50 = load i32, i32* @OTV_EXIT, align 4
  br label %51

51:                                               ; preds = %43, %40
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @otv_MathKernInfo_validate(i64 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_NAME_ENTER(i8*) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i64 @FT_NEXT_USHORT(i64) #1

declare dso_local i32 @otv_MathItalicsCorrectionInfo_validate(i64, i32, i32) #1

declare dso_local i32 @otv_Coverage_validate(i64, i32, i32) #1

declare dso_local i32 @otv_MathKernInfo_validate(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
