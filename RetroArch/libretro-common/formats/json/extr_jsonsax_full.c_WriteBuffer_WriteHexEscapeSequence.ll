; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_WriteBuffer_WriteHexEscapeSequence.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_WriteBuffer_WriteHexEscapeSequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_NON_BMP_CODEPOINT = common dso_local global i32 0, align 4
@WriteBuffer_WriteHexEscapeSequence.hexDigits = internal constant [16 x i8] c"0123456789ABCDEF", align 16
@JSON_Failure = common dso_local global i32 0, align 4
@JSON_Success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @WriteBuffer_WriteHexEscapeSequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteBuffer_WriteHexEscapeSequence(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i8], align 1
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @FIRST_NON_BMP_CODEPOINT, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @SURROGATES_FROM_CODEPOINT(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %16, 16
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 16
  %20 = or i32 %17, %19
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %13, %3
  br label %22

22:                                               ; preds = %74, %21
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  store i8 92, i8* %23, align 1
  %24 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 1
  store i8 117, i8* %24, align 1
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 12
  %27 = and i32 %26, 15
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* @WriteBuffer_WriteHexEscapeSequence.hexDigits, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 2
  store i8 %30, i8* %31, align 1
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 15
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* @WriteBuffer_WriteHexEscapeSequence.hexDigits, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 3
  store i8 %37, i8* %38, align 1
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 4
  %41 = and i32 %40, 15
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* @WriteBuffer_WriteHexEscapeSequence.hexDigits, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 4
  store i8 %44, i8* %45, align 1
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 15
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* @WriteBuffer_WriteHexEscapeSequence.hexDigits, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 5
  store i8 %50, i8* %51, align 1
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %68, %22
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %54, 6
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @WriteBuffer_WriteCodepoint(i32 %57, i32 %58, i8 signext %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @JSON_Failure, align 4
  store i32 %66, i32* %4, align 4
  br label %79

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %52

71:                                               ; preds = %52
  %72 = load i32, i32* %7, align 4
  %73 = ashr i32 %72, 16
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %22, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @JSON_Success, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %65
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @SURROGATES_FROM_CODEPOINT(i32) #1

declare dso_local i32 @WriteBuffer_WriteCodepoint(i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
