; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_redspark.c_redspark_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_redspark.c_redspark_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__* }

@HEADER_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_THP = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid sample rate: %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @redspark_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redspark_read_header(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %4, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* @HEADER_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = call %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__* %27, i32* null)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %15, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %30 = icmp ne %struct.TYPE_12__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %184

34:                                               ; preds = %1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %6, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @avio_rb32(i32* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = xor i32 %40, 1382376531
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = xor i32 %43, %42
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @AV_WB32(i32* %26, i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @rol(i32 %47, i32 11)
  store i32 %48, i32* %11, align 4
  store i32 4, i32* %8, align 4
  br label %49

49:                                               ; preds = %67, %34
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @HEADER_SIZE, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @rol(i32 %54, i32 3)
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @avio_rb32(i32* %58)
  %60 = load i32, i32* %11, align 4
  %61 = xor i32 %59, %60
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %26, i64 %63
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @AV_WB32(i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %53
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 4
  store i32 %69, i32* %8, align 4
  br label %49

70:                                               ; preds = %49
  %71 = load i32, i32* @AV_CODEC_ID_ADPCM_THP, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @HEADER_SIZE, align 4
  %78 = call i32 @bytestream2_init(i32* %7, i32* %26, i32 %77)
  %79 = load i32, i32* @SEEK_SET, align 4
  %80 = call i32 @bytestream2_seek(i32* %7, i32 60, i32 %79)
  %81 = call i32 @bytestream2_get_be32u(i32* %7)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %70
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %91, 96000
  br i1 %92, label %93, label %101

93:                                               ; preds = %88, %70
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %95 = load i32, i32* @AV_LOG_ERROR, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @av_log(%struct.TYPE_13__* %94, i32 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %100, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %184

101:                                              ; preds = %88
  %102 = call i32 @bytestream2_get_be32u(i32* %7)
  %103 = mul nsw i32 %102, 14
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = call i32 @bytestream2_skipu(i32* %7, i32 10)
  %109 = call i32 @bytestream2_get_byteu(i32* %7)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %101
  %117 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %117, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %184

118:                                              ; preds = %101
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %121, 8
  %123 = add nsw i32 84, %122
  store i32 %123, i32* %9, align 4
  %124 = call i32 @bytestream2_get_byteu(i32* %7)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 16
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %126, %118
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %133, 46
  %135 = add nsw i32 %130, %134
  %136 = load i32, i32* @HEADER_SIZE, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %139, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %184

140:                                              ; preds = %129
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 32, %144
  %146 = call i64 @ff_alloc_extradata(%struct.TYPE_14__* %141, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %140
  %149 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %149, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %184

150:                                              ; preds = %140
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @SEEK_SET, align 4
  %153 = call i32 @bytestream2_seek(i32* %7, i32 %151, i32 %152)
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %174, %150
  %155 = load i32, i32* %8, align 4
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %177

160:                                              ; preds = %154
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = mul nsw i32 %164, 32
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %163, %166
  %168 = call i32 @bytestream2_get_bufferu(i32* %7, i64 %167, i32 32)
  %169 = icmp ne i32 %168, 32
  br i1 %169, label %170, label %172

170:                                              ; preds = %160
  %171 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %171, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %184

172:                                              ; preds = %160
  %173 = call i32 @bytestream2_skipu(i32* %7, i32 14)
  br label %174

174:                                              ; preds = %172
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %154

177:                                              ; preds = %154
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %178, i32 64, i32 1, i32 %181)
  %183 = load i32, i32* %10, align 4
  store i32 %183, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %184

184:                                              ; preds = %177, %170, %148, %138, %116, %93, %31
  %185 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %185)
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__*, i32*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @avio_rb32(i32*) #2

declare dso_local i32 @AV_WB32(i32*, i32) #2

declare dso_local i32 @rol(i32, i32) #2

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #2

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #2

declare dso_local i32 @bytestream2_get_be32u(i32*) #2

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i32) #2

declare dso_local i32 @bytestream2_skipu(i32*, i32) #2

declare dso_local i32 @bytestream2_get_byteu(i32*) #2

declare dso_local i64 @ff_alloc_extradata(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @bytestream2_get_bufferu(i32*, i64, i32) #2

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_12__*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
