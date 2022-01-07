; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_JSON_Parser_FlushDecoder.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_JSON_Parser_FlushDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@JSON_UnknownEncoding = common dso_local global i64 0, align 8
@DECODER_RESET = common dso_local global i32 0, align 4
@JSON_UTF8 = common dso_local global i8* null, align 8
@JSON_UTF16LE = common dso_local global i8* null, align 8
@JSON_UTF16BE = common dso_local global i8* null, align 8
@JSON_Failure = common dso_local global i32 0, align 4
@JSON_Success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @JSON_Parser_FlushDecoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSON_Parser_FlushDecoder(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @JSON_UnknownEncoding, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %132

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DECODER_RESET, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %132

18:                                               ; preds = %11
  store i64 0, i64* %5, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 24
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 16
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 8
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %110 [
    i32 130, label %41
    i32 129, label %46
    i32 128, label %105
  ]

41:                                               ; preds = %18
  %42 = load i8*, i8** @JSON_UTF8, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  store i64 1, i64* %5, align 8
  br label %110

46:                                               ; preds = %18
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 255
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 254
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i8*, i8** @JSON_UTF16LE, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %104

59:                                               ; preds = %50, %46
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 254
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 255
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i8*, i8** @JSON_UTF16BE, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %103

72:                                               ; preds = %63, %59
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i8*, i8** @JSON_UTF8, align 8
  br label %84

82:                                               ; preds = %76
  %83 = load i8*, i8** @JSON_UTF16LE, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i8* [ %81, %80 ], [ %83, %82 ]
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %102

89:                                               ; preds = %72
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i8*, i8** @JSON_UTF16BE, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %101

98:                                               ; preds = %89
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = call i32 @JSON_Parser_HandleInvalidEncodingSequence(%struct.TYPE_7__* %99, i32 2)
  store i32 %100, i32* %2, align 4
  br label %147

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %84
  br label %103

103:                                              ; preds = %102, %67
  br label %104

104:                                              ; preds = %103, %54
  store i64 2, i64* %5, align 8
  br label %110

105:                                              ; preds = %18
  %106 = load i8*, i8** @JSON_UTF8, align 8
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  store i64 3, i64* %5, align 8
  br label %110

110:                                              ; preds = %18, %105, %104, %41
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = call i32 @JSON_Parser_CallEncodingDetectedHandler(%struct.TYPE_7__* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @JSON_Failure, align 4
  store i32 %115, i32* %2, align 4
  br label %147

116:                                              ; preds = %110
  %117 = load i32, i32* @DECODER_RESET, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  store i32 0, i32* %123, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %126 = load i64, i64* %5, align 8
  %127 = call i32 @JSON_Parser_ProcessInputBytes(%struct.TYPE_7__* %124, i32* %125, i64 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %116
  %130 = load i32, i32* @JSON_Failure, align 4
  store i32 %130, i32* %2, align 4
  br label %147

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131, %11, %1
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = call i64 @Decoder_SequencePending(%struct.TYPE_8__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @DECODER_STATE_BYTES(i32 %142)
  %144 = call i32 @JSON_Parser_HandleInvalidEncodingSequence(%struct.TYPE_7__* %138, i32 %143)
  store i32 %144, i32* %2, align 4
  br label %147

145:                                              ; preds = %132
  %146 = load i32, i32* @JSON_Success, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %137, %129, %114, %98
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @JSON_Parser_HandleInvalidEncodingSequence(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @JSON_Parser_CallEncodingDetectedHandler(%struct.TYPE_7__*) #1

declare dso_local i32 @JSON_Parser_ProcessInputBytes(%struct.TYPE_7__*, i32*, i64) #1

declare dso_local i64 @Decoder_SequencePending(%struct.TYPE_8__*) #1

declare dso_local i32 @DECODER_STATE_BYTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
