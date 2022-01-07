; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_parse.c_ff_hevc_decode_extradata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_parse.c_ff_hevc_decode_extradata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Invalid NAL unit size in extradata.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Decoding nal unit %d %d from hvcC failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_hevc_decode_extradata(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_8__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  store i32 0, i32* %20, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @bytestream2_init(%struct.TYPE_8__* %21, i32* %29, i32 %30)
  %32 = load i32, i32* %12, align 4
  %33 = icmp sgt i32 %32, 3
  br i1 %33, label %34, label %116

34:                                               ; preds = %9
  %35 = load i32*, i32** %11, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %11, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %116

49:                                               ; preds = %44, %39, %34
  %50 = load i32*, i32** %15, align 8
  store i32 1, i32* %50, align 4
  %51 = call i32 @bytestream2_skip(%struct.TYPE_8__* %21, i32 21)
  %52 = call i32 @bytestream2_get_byte(%struct.TYPE_8__* %21)
  %53 = and i32 %52, 3
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %25, align 4
  %55 = call i32 @bytestream2_get_byte(%struct.TYPE_8__* %21)
  store i32 %55, i32* %24, align 4
  %56 = load i32*, i32** %16, align 8
  store i32 2, i32* %56, align 4
  store i32 0, i32* %22, align 4
  br label %57

57:                                               ; preds = %110, %49
  %58 = load i32, i32* %22, align 4
  %59 = load i32, i32* %24, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %113

61:                                               ; preds = %57
  %62 = call i32 @bytestream2_get_byte(%struct.TYPE_8__* %21)
  %63 = and i32 %62, 63
  store i32 %63, i32* %26, align 4
  %64 = call i32 @bytestream2_get_be16(%struct.TYPE_8__* %21)
  store i32 %64, i32* %27, align 4
  store i32 0, i32* %23, align 4
  br label %65

65:                                               ; preds = %106, %61
  %66 = load i32, i32* %23, align 4
  %67 = load i32, i32* %27, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %109

69:                                               ; preds = %65
  %70 = call i32 @bytestream2_peek_be16(%struct.TYPE_8__* %21)
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %28, align 4
  %72 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_8__* %21)
  %73 = load i32, i32* %28, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i8*, i8** %19, align 8
  %77 = load i32, i32* @AV_LOG_ERROR, align 4
  %78 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %76, i32 %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %79, i32* %10, align 4
  br label %137

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %28, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i8*, i8** %19, align 8
  %93 = call i32 @hevc_decode_nal_units(i32* %82, i32 %83, i32* %84, i32* %85, i32 %87, i32 %89, i32 %90, i32 %91, i8* %92)
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* %20, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %80
  %97 = load i8*, i8** %19, align 8
  %98 = load i32, i32* @AV_LOG_ERROR, align 4
  %99 = load i32, i32* %26, align 4
  %100 = load i32, i32* %22, align 4
  %101 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %97, i32 %98, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load i32, i32* %20, align 4
  store i32 %102, i32* %10, align 4
  br label %137

103:                                              ; preds = %80
  %104 = load i32, i32* %28, align 4
  %105 = call i32 @bytestream2_skip(%struct.TYPE_8__* %21, i32 %104)
  br label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %23, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %23, align 4
  br label %65

109:                                              ; preds = %65
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %22, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %22, align 4
  br label %57

113:                                              ; preds = %57
  %114 = load i32, i32* %25, align 4
  %115 = load i32*, i32** %16, align 8
  store i32 %114, i32* %115, align 4
  br label %135

116:                                              ; preds = %44, %9
  %117 = load i32*, i32** %15, align 8
  store i32 0, i32* %117, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load i32*, i32** %13, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %16, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i8*, i8** %19, align 8
  %129 = call i32 @hevc_decode_nal_units(i32* %118, i32 %119, i32* %120, i32* %121, i32 %123, i32 %125, i32 %126, i32 %127, i8* %128)
  store i32 %129, i32* %20, align 4
  %130 = load i32, i32* %20, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %116
  %133 = load i32, i32* %20, align 4
  store i32 %133, i32* %10, align 4
  br label %137

134:                                              ; preds = %116
  br label %135

135:                                              ; preds = %134, %113
  %136 = load i32, i32* %20, align 4
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %135, %132, %96, %75
  %138 = load i32, i32* %10, align 4
  ret i32 %138
}

declare dso_local i32 @bytestream2_init(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @bytestream2_skip(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @bytestream2_get_byte(%struct.TYPE_8__*) #1

declare dso_local i32 @bytestream2_get_be16(%struct.TYPE_8__*) #1

declare dso_local i32 @bytestream2_peek_be16(%struct.TYPE_8__*) #1

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_8__*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i32 @hevc_decode_nal_units(i32*, i32, i32*, i32*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
