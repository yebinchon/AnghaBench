; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_JSON_Writer_OutputString.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_JSON_Writer_OutputString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@JSON_Writer_OutputString.quoteUTF = internal constant [7 x i8] c"\00\00\00\22\00\00\00", align 1
@JSON_Writer_OutputString.quoteEncodings = internal constant [5 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @JSON_Writer_OutputString.quoteUTF, i32 0, i64 3), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @JSON_Writer_OutputString.quoteUTF, i32 0, i64 3), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @JSON_Writer_OutputString.quoteUTF, i32 0, i64 2), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @JSON_Writer_OutputString.quoteUTF, i32 0, i64 3), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @JSON_Writer_OutputString.quoteUTF, i32 0, i32 0)], align 16
@JSON_Failure = common dso_local global i32 0, align 4
@WRITER_REPLACE_INVALID = common dso_local global i32 0, align 4
@REPLACEMENT_CHARACTER_CODEPOINT = common dso_local global i8 0, align 1
@JSON_Error_InvalidEncodingSequence = common dso_local global i32 0, align 4
@JSON_Success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i64, i32)* @JSON_Writer_OutputString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSON_Writer_OutputString(%struct.TYPE_9__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* @JSON_Writer_OutputString.quoteEncodings, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SHORTEST_ENCODING_SEQUENCE(i32 %28)
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %11, align 8
  store i64 0, i64* %14, align 8
  %31 = call i32 @WriteBuffer_Reset(i32* %13)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @WriteBuffer_WriteBytes(i32* %13, %struct.TYPE_9__* %32, i8* %33, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* @JSON_Failure, align 4
  store i32 %38, i32* %5, align 4
  br label %170

39:                                               ; preds = %4
  %40 = call i32 @Decoder_Reset(i32* %12)
  br label %41

41:                                               ; preds = %126, %39
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %127

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %14, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @Decoder_ProcessByte(i32* %12, i32 %46, i8 signext %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @DECODER_RESULT_CODE(i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  switch i32 %54, label %126 [
    i32 128, label %55
    i32 131, label %58
    i32 129, label %97
    i32 130, label %100
  ]

55:                                               ; preds = %45
  %56 = load i64, i64* %14, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %14, align 8
  br label %126

58:                                               ; preds = %45
  %59 = load i32, i32* %15, align 4
  %60 = call signext i8 @DECODER_CODEPOINT(i32 %59)
  store i8 %60, i8* %17, align 1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = load i8, i8* %17, align 1
  %63 = call signext i8 @JSON_Writer_GetCodepointEscapeCharacter(%struct.TYPE_9__* %61, i8 signext %62)
  store i8 %63, i8* %18, align 1
  %64 = load i8, i8* %18, align 1
  %65 = sext i8 %64 to i32
  switch i32 %65, label %82 [
    i32 0, label %66
    i32 117, label %74
  ]

66:                                               ; preds = %58
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = load i8, i8* %17, align 1
  %69 = call i32 @WriteBuffer_WriteCodepoint(i32* %13, %struct.TYPE_9__* %67, i8 signext %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @JSON_Failure, align 4
  store i32 %72, i32* %5, align 4
  br label %170

73:                                               ; preds = %66
  br label %94

74:                                               ; preds = %58
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = load i8, i8* %17, align 1
  %77 = call i32 @WriteBuffer_WriteHexEscapeSequence(i32* %13, %struct.TYPE_9__* %75, i8 signext %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @JSON_Failure, align 4
  store i32 %80, i32* %5, align 4
  br label %170

81:                                               ; preds = %74
  br label %94

82:                                               ; preds = %58
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = call i32 @WriteBuffer_WriteCodepoint(i32* %13, %struct.TYPE_9__* %83, i8 signext 92)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %88 = load i8, i8* %18, align 1
  %89 = call i32 @WriteBuffer_WriteCodepoint(i32* %13, %struct.TYPE_9__* %87, i8 signext %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %86, %82
  %92 = load i32, i32* @JSON_Failure, align 4
  store i32 %92, i32* %5, align 4
  br label %170

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %81, %73
  %95 = load i64, i64* %14, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %14, align 8
  br label %126

97:                                               ; preds = %45
  %98 = load i64, i64* %14, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %14, align 8
  br label %100

100:                                              ; preds = %45, %97
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @WRITER_REPLACE_INVALID, align 4
  %105 = call i64 @GET_FLAGS(i32 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = load i8, i8* @REPLACEMENT_CHARACTER_CODEPOINT, align 1
  %110 = call i32 @WriteBuffer_WriteHexEscapeSequence(i32* %13, %struct.TYPE_9__* %108, i8 signext %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @JSON_Failure, align 4
  store i32 %113, i32* %5, align 4
  br label %170

114:                                              ; preds = %107
  br label %125

115:                                              ; preds = %100
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %117 = call i64 @WriteBuffer_Flush(i32* %13, %struct.TYPE_9__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %121 = load i32, i32* @JSON_Error_InvalidEncodingSequence, align 4
  %122 = call i32 @JSON_Writer_SetError(%struct.TYPE_9__* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %115
  %124 = load i32, i32* @JSON_Failure, align 4
  store i32 %124, i32* %5, align 4
  br label %170

125:                                              ; preds = %114
  br label %126

126:                                              ; preds = %45, %125, %94, %55
  br label %41

127:                                              ; preds = %41
  %128 = call i64 @Decoder_SequencePending(i32* %12)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %156

130:                                              ; preds = %127
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @WRITER_REPLACE_INVALID, align 4
  %135 = call i64 @GET_FLAGS(i32 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %139 = load i8, i8* @REPLACEMENT_CHARACTER_CODEPOINT, align 1
  %140 = call i32 @WriteBuffer_WriteHexEscapeSequence(i32* %13, %struct.TYPE_9__* %138, i8 signext %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* @JSON_Failure, align 4
  store i32 %143, i32* %5, align 4
  br label %170

144:                                              ; preds = %137
  br label %155

145:                                              ; preds = %130
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %147 = call i64 @WriteBuffer_Flush(i32* %13, %struct.TYPE_9__* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %151 = load i32, i32* @JSON_Error_InvalidEncodingSequence, align 4
  %152 = call i32 @JSON_Writer_SetError(%struct.TYPE_9__* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %145
  %154 = load i32, i32* @JSON_Failure, align 4
  store i32 %154, i32* %5, align 4
  br label %170

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %155, %127
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = load i64, i64* %11, align 8
  %160 = call i32 @WriteBuffer_WriteBytes(i32* %13, %struct.TYPE_9__* %157, i8* %158, i64 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %164 = call i64 @WriteBuffer_Flush(i32* %13, %struct.TYPE_9__* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %162, %156
  %167 = load i32, i32* @JSON_Failure, align 4
  store i32 %167, i32* %5, align 4
  br label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @JSON_Success, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %168, %166, %153, %142, %123, %112, %91, %79, %71, %37
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @SHORTEST_ENCODING_SEQUENCE(i32) #1

declare dso_local i32 @WriteBuffer_Reset(i32*) #1

declare dso_local i32 @WriteBuffer_WriteBytes(i32*, %struct.TYPE_9__*, i8*, i64) #1

declare dso_local i32 @Decoder_Reset(i32*) #1

declare dso_local i32 @Decoder_ProcessByte(i32*, i32, i8 signext) #1

declare dso_local i32 @DECODER_RESULT_CODE(i32) #1

declare dso_local signext i8 @DECODER_CODEPOINT(i32) #1

declare dso_local signext i8 @JSON_Writer_GetCodepointEscapeCharacter(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @WriteBuffer_WriteCodepoint(i32*, %struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @WriteBuffer_WriteHexEscapeSequence(i32*, %struct.TYPE_9__*, i8 signext) #1

declare dso_local i64 @GET_FLAGS(i32, i32) #1

declare dso_local i64 @WriteBuffer_Flush(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @JSON_Writer_SetError(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @Decoder_SequencePending(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
