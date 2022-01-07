; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_JSON_Writer_OutputNumber.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_JSON_Writer_OutputNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEXING_WHITESPACE = common dso_local global i64 0, align 8
@LEXER_ERROR = common dso_local global i64 0, align 8
@JSON_Error_InvalidNumber = common dso_local global i32 0, align 4
@JSON_Failure = common dso_local global i32 0, align 4
@JSON_Error_InvalidEncodingSequence = common dso_local global i32 0, align 4
@EOF_CODEPOINT = common dso_local global i32 0, align 4
@JSON_Success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, i32)* @JSON_Writer_OutputNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSON_Writer_OutputNumber(i32 %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i64, i64* @LEXING_WHITESPACE, align 8
  store i64 %17, i64* %12, align 8
  %18 = call i32 @Decoder_Reset(i32* %10)
  %19 = call i32 @WriteBuffer_Reset(i32* %11)
  store i64 0, i64* %13, align 8
  br label %20

20:                                               ; preds = %73, %4
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %76

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @Decoder_ProcessByte(i32* %10, i32 %25, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @DECODER_RESULT_CODE(i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  switch i32 %33, label %72 [
    i32 128, label %34
    i32 131, label %35
    i32 129, label %62
    i32 130, label %62
  ]

34:                                               ; preds = %24
  br label %72

35:                                               ; preds = %24
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @DECODER_CODEPOINT(i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call i64 @LexNumberCharacter(i64 %38, i32 %39)
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @LEXER_ERROR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @WriteBuffer_Flush(i32* %11, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @JSON_Error_InvalidNumber, align 4
  %51 = call i32 @JSON_Writer_SetError(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @JSON_Failure, align 4
  store i32 %53, i32* %5, align 4
  br label %103

54:                                               ; preds = %35
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @WriteBuffer_WriteCodepoint(i32* %11, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @JSON_Failure, align 4
  store i32 %60, i32* %5, align 4
  br label %103

61:                                               ; preds = %54
  br label %72

62:                                               ; preds = %24, %24
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @WriteBuffer_Flush(i32* %11, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @JSON_Error_InvalidEncodingSequence, align 4
  %69 = call i32 @JSON_Writer_SetError(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* @JSON_Failure, align 4
  store i32 %71, i32* %5, align 4
  br label %103

72:                                               ; preds = %24, %61, %34
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %13, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %13, align 8
  br label %20

76:                                               ; preds = %20
  %77 = load i32, i32* %6, align 4
  %78 = call i64 @WriteBuffer_Flush(i32* %11, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @JSON_Failure, align 4
  store i32 %81, i32* %5, align 4
  br label %103

82:                                               ; preds = %76
  %83 = call i64 @Decoder_SequencePending(i32* %10)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @JSON_Error_InvalidEncodingSequence, align 4
  %88 = call i32 @JSON_Writer_SetError(i32 %86, i32 %87)
  %89 = load i32, i32* @JSON_Failure, align 4
  store i32 %89, i32* %5, align 4
  br label %103

90:                                               ; preds = %82
  %91 = load i64, i64* %12, align 8
  %92 = load i32, i32* @EOF_CODEPOINT, align 4
  %93 = call i64 @LexNumberCharacter(i64 %91, i32 %92)
  %94 = load i64, i64* @LEXER_ERROR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @JSON_Error_InvalidNumber, align 4
  %99 = call i32 @JSON_Writer_SetError(i32 %97, i32 %98)
  %100 = load i32, i32* @JSON_Failure, align 4
  store i32 %100, i32* %5, align 4
  br label %103

101:                                              ; preds = %90
  %102 = load i32, i32* @JSON_Success, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %96, %85, %80, %70, %59, %52
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @Decoder_Reset(i32*) #1

declare dso_local i32 @WriteBuffer_Reset(i32*) #1

declare dso_local i32 @Decoder_ProcessByte(i32*, i32, i32) #1

declare dso_local i32 @DECODER_RESULT_CODE(i32) #1

declare dso_local i32 @DECODER_CODEPOINT(i32) #1

declare dso_local i64 @LexNumberCharacter(i64, i32) #1

declare dso_local i64 @WriteBuffer_Flush(i32*, i32) #1

declare dso_local i32 @JSON_Writer_SetError(i32, i32) #1

declare dso_local i32 @WriteBuffer_WriteCodepoint(i32*, i32, i32) #1

declare dso_local i64 @Decoder_SequencePending(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
