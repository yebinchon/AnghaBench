; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/otvalid/extr_otvmath.c_otv_MathVariants_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/otvalid/extr_otvmath.c_otv_MathVariants_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VCoverage = common dso_local global i32 0, align 4
@HCoverage = common dso_local global i32 0, align 4
@Offset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"MathVariants\00", align 1
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @otv_MathVariants_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_MathVariants_validate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @VCoverage, align 4
  %12 = call i32 @OTV_OPTIONAL_TABLE(i32 %11)
  %13 = load i32, i32* @HCoverage, align 4
  %14 = call i32 @OTV_OPTIONAL_TABLE(i32 %13)
  %15 = load i32, i32* @Offset, align 4
  %16 = call i32 @OTV_OPTIONAL_TABLE(i32 %15)
  %17 = call i32 @OTV_NAME_ENTER(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @OTV_LIMIT_CHECK(i32 10)
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 2
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @VCoverage, align 4
  %22 = call i32 @OTV_OPTIONAL_OFFSET(i32 %21)
  %23 = load i32, i32* @HCoverage, align 4
  %24 = call i32 @OTV_OPTIONAL_OFFSET(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @FT_NEXT_USHORT(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @FT_NEXT_USHORT(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 2, %29
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 2, %31
  %33 = add nsw i32 %30, %32
  %34 = call i32 @OTV_LIMIT_CHECK(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 2, %35
  %37 = add nsw i32 10, %36
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 2, %38
  %40 = add nsw i32 %37, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @VCoverage, align 4
  %42 = call i32 @OTV_SIZE_CHECK(i32 %41)
  %43 = load i32, i32* @VCoverage, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %2
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @VCoverage, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @otv_Coverage_validate(i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %2
  %53 = load i32, i32* @HCoverage, align 4
  %54 = call i32 @OTV_SIZE_CHECK(i32 %53)
  %55 = load i32, i32* @HCoverage, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @HCoverage, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @otv_Coverage_validate(i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %52
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %79, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = load i32, i32* @Offset, align 4
  %71 = call i32 @OTV_OPTIONAL_OFFSET(i32 %70)
  %72 = load i32, i32* @Offset, align 4
  %73 = call i32 @OTV_SIZE_CHECK(i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @Offset, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @otv_MathGlyphConstruction_validate(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %69
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %65

82:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %97, %82
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i32, i32* @Offset, align 4
  %89 = call i32 @OTV_OPTIONAL_OFFSET(i32 %88)
  %90 = load i32, i32* @Offset, align 4
  %91 = call i32 @OTV_SIZE_CHECK(i32 %90)
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @Offset, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @otv_MathGlyphConstruction_validate(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %83

100:                                              ; preds = %83
  %101 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_OPTIONAL_TABLE(i32) #1

declare dso_local i32 @OTV_NAME_ENTER(i8*) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @OTV_OPTIONAL_OFFSET(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @OTV_SIZE_CHECK(i32) #1

declare dso_local i32 @otv_Coverage_validate(i32, i32, i32) #1

declare dso_local i32 @otv_MathGlyphConstruction_validate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
