; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_psd.c_decode_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_psd.c_decode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_7__*, i32, i32*, i32, i8* }
%struct.TYPE_7__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Header too short to parse.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Wrong signature %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Wrong version %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Invalid channel count %d.\0A\00", align 1
@FF_COMPLIANCE_EXPERIMENTAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [92 x i8] c"Height > 30000 is experimental, add '-strict %d' if you want to try to decode the picture.\0A\00", align 1
@AVERROR_EXPERIMENTAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [91 x i8] c"Width > 30000 is experimental, add '-strict %d' if you want to try to decode the picture.\0A\00", align 1
@PSD_BITMAP = common dso_local global i32 0, align 4
@PSD_GRAYSCALE = common dso_local global i32 0, align 4
@PSD_INDEXED = common dso_local global i32 0, align 4
@PSD_RGB = common dso_local global i32 0, align 4
@PSD_CMYK = common dso_local global i32 0, align 4
@PSD_MULTICHANNEL = common dso_local global i32 0, align 4
@PSD_DUOTONE = common dso_local global i32 0, align 4
@PSD_LAB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Unknown color mode %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Negative size for color map data section.\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Incomplete file.\0A\00", align 1
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@HAVE_BIGENDIAN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [45 x i8] c"Negative size for image ressources section.\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Negative size for layers and masks data section.\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"File without image data section.\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"ZIP without predictor compression\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"ZIP with predictor compression\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Unknown compression %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @decode_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_header(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 5
  %13 = call i32 @bytestream2_get_bytes_left(i32* %12)
  %14 = icmp slt i32 %13, 30
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load i32, i32* @AV_LOG_ERROR, align 4
  %20 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %18, i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %21, i32* %2, align 4
  br label %397

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 5
  %25 = call i32 @bytestream2_get_le32(i32* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @MKTAG(i8 signext 56, i8 signext 66, i8 signext 80, i8 signext 83)
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %32, i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %2, align 4
  br label %397

37:                                               ; preds = %22
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 5
  %40 = call i8* @bytestream2_get_be16(i32* %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %47, i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %51, i32* %2, align 4
  br label %397

52:                                               ; preds = %37
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  %55 = call i32 @bytestream2_skip(i32* %54, i32 6)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 5
  %58 = call i8* @bytestream2_get_be16(i32* %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %71, label %66

66:                                               ; preds = %52
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 56
  br i1 %70, label %71, label %81

71:                                               ; preds = %66, %52
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i32, i32* @AV_LOG_ERROR, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %74, i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %80, i32* %2, align 4
  br label %397

81:                                               ; preds = %66
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 5
  %84 = call i8* @bytestream2_get_be32(i32* %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 30000
  br i1 %91, label %92, label %108

92:                                               ; preds = %81
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @FF_COMPLIANCE_EXPERIMENTAL, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %92
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i32, i32* @AV_LOG_ERROR, align 4
  %105 = load i32, i32* @FF_COMPLIANCE_EXPERIMENTAL, align 4
  %106 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %103, i32 %104, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @AVERROR_EXPERIMENTAL, align 4
  store i32 %107, i32* %2, align 4
  br label %397

108:                                              ; preds = %92, %81
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 5
  %111 = call i8* @bytestream2_get_be32(i32* %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp sgt i32 %117, 30000
  br i1 %118, label %119, label %135

119:                                              ; preds = %108
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @FF_COMPLIANCE_EXPERIMENTAL, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %119
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load i32, i32* @AV_LOG_ERROR, align 4
  %132 = load i32, i32* @FF_COMPLIANCE_EXPERIMENTAL, align 4
  %133 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %130, i32 %131, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.5, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @AVERROR_EXPERIMENTAL, align 4
  store i32 %134, i32* %2, align 4
  br label %397

135:                                              ; preds = %119, %108
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @ff_set_dimensions(%struct.TYPE_7__* %138, i32 %141, i32 %144)
  store i32 %145, i32* %8, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %135
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %2, align 4
  br label %397

149:                                              ; preds = %135
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 5
  %152 = call i8* @bytestream2_get_be16(i32* %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 8
  store i8* %152, i8** %154, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 5
  %157 = call i8* @bytestream2_get_be16(i32* %156)
  %158 = ptrtoint i8* %157 to i32
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  switch i32 %159, label %192 [
    i32 0, label %160
    i32 1, label %164
    i32 2, label %168
    i32 3, label %172
    i32 4, label %176
    i32 7, label %180
    i32 8, label %184
    i32 9, label %188
  ]

160:                                              ; preds = %149
  %161 = load i32, i32* @PSD_BITMAP, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 8
  br label %200

164:                                              ; preds = %149
  %165 = load i32, i32* @PSD_GRAYSCALE, align 4
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 7
  store i32 %165, i32* %167, align 8
  br label %200

168:                                              ; preds = %149
  %169 = load i32, i32* @PSD_INDEXED, align 4
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 7
  store i32 %169, i32* %171, align 8
  br label %200

172:                                              ; preds = %149
  %173 = load i32, i32* @PSD_RGB, align 4
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 7
  store i32 %173, i32* %175, align 8
  br label %200

176:                                              ; preds = %149
  %177 = load i32, i32* @PSD_CMYK, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 7
  store i32 %177, i32* %179, align 8
  br label %200

180:                                              ; preds = %149
  %181 = load i32, i32* @PSD_MULTICHANNEL, align 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 7
  store i32 %181, i32* %183, align 8
  br label %200

184:                                              ; preds = %149
  %185 = load i32, i32* @PSD_DUOTONE, align 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 7
  store i32 %185, i32* %187, align 8
  br label %200

188:                                              ; preds = %149
  %189 = load i32, i32* @PSD_LAB, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 7
  store i32 %189, i32* %191, align 8
  br label %200

192:                                              ; preds = %149
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %194, align 8
  %196 = load i32, i32* @AV_LOG_ERROR, align 4
  %197 = load i32, i32* %6, align 4
  %198 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %195, i32 %196, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %199, i32* %2, align 4
  br label %397

200:                                              ; preds = %188, %184, %180, %176, %172, %168, %164, %160
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 5
  %203 = call i8* @bytestream2_get_be32(i32* %202)
  %204 = ptrtoint i8* %203 to i32
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %200
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 4
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %209, align 8
  %211 = load i32, i32* @AV_LOG_ERROR, align 4
  %212 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %210, i32 %211, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %213 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %213, i32* %2, align 4
  br label %397

214:                                              ; preds = %200
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 5
  %217 = call i32 @bytestream2_get_bytes_left(i32* %216)
  %218 = load i32, i32* %7, align 4
  %219 = add nsw i32 %218, 4
  %220 = icmp slt i32 %217, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %214
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 4
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = load i32, i32* @AV_LOG_ERROR, align 4
  %226 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %224, i32 %225, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %227 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %227, i32* %2, align 4
  br label %397

228:                                              ; preds = %214
  %229 = load i32, i32* %7, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %283

231:                                              ; preds = %228
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 6
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* @AVPALETTE_SIZE, align 4
  %236 = call i32 @memset(i32* %234, i32 255, i32 %235)
  %237 = load i32, i32* @HAVE_BIGENDIAN, align 4
  store i32 %237, i32* %10, align 4
  br label %238

238:                                              ; preds = %275, %231
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* @HAVE_BIGENDIAN, align 4
  %241 = add nsw i32 3, %240
  %242 = icmp slt i32 %239, %241
  br i1 %242, label %243, label %278

243:                                              ; preds = %238
  store i32 0, i32* %9, align 4
  br label %244

244:                                              ; preds = %271, %243
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* %7, align 4
  %247 = sdiv i32 %246, 3
  %248 = call i32 @FFMIN(i32 256, i32 %247)
  %249 = icmp slt i32 %245, %248
  br i1 %249, label %250, label %274

250:                                              ; preds = %244
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 5
  %253 = call i32 @bytestream2_get_byteu(i32* %252)
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 6
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %9, align 4
  %258 = mul nsw i32 %257, 4
  %259 = load i32, i32* @HAVE_BIGENDIAN, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %250
  %262 = load i32, i32* %10, align 4
  br label %266

263:                                              ; preds = %250
  %264 = load i32, i32* %10, align 4
  %265 = sub nsw i32 2, %264
  br label %266

266:                                              ; preds = %263, %261
  %267 = phi i32 [ %262, %261 ], [ %265, %263 ]
  %268 = add nsw i32 %258, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %256, i64 %269
  store i32 %253, i32* %270, align 4
  br label %271

271:                                              ; preds = %266
  %272 = load i32, i32* %9, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %9, align 4
  br label %244

274:                                              ; preds = %244
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %10, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %10, align 4
  br label %238

278:                                              ; preds = %238
  %279 = load i32, i32* %9, align 4
  %280 = mul nsw i32 %279, 3
  %281 = load i32, i32* %7, align 4
  %282 = sub nsw i32 %281, %280
  store i32 %282, i32* %7, align 4
  br label %283

283:                                              ; preds = %278, %228
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 5
  %286 = load i32, i32* %7, align 4
  %287 = call i32 @bytestream2_skip(i32* %285, i32 %286)
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 5
  %290 = call i8* @bytestream2_get_be32(i32* %289)
  %291 = ptrtoint i8* %290 to i32
  store i32 %291, i32* %7, align 4
  %292 = load i32, i32* %7, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %283
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 4
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %296, align 8
  %298 = load i32, i32* @AV_LOG_ERROR, align 4
  %299 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %297, i32 %298, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %300 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %300, i32* %2, align 4
  br label %397

301:                                              ; preds = %283
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 5
  %304 = call i32 @bytestream2_get_bytes_left(i32* %303)
  %305 = load i32, i32* %7, align 4
  %306 = add nsw i32 %305, 4
  %307 = icmp slt i32 %304, %306
  br i1 %307, label %308, label %315

308:                                              ; preds = %301
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 4
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %310, align 8
  %312 = load i32, i32* @AV_LOG_ERROR, align 4
  %313 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %311, i32 %312, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %314 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %314, i32* %2, align 4
  br label %397

315:                                              ; preds = %301
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 5
  %318 = load i32, i32* %7, align 4
  %319 = call i32 @bytestream2_skip(i32* %317, i32 %318)
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 5
  %322 = call i8* @bytestream2_get_be32(i32* %321)
  %323 = ptrtoint i8* %322 to i32
  store i32 %323, i32* %7, align 4
  %324 = load i32, i32* %7, align 4
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %333

326:                                              ; preds = %315
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 4
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %328, align 8
  %330 = load i32, i32* @AV_LOG_ERROR, align 4
  %331 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %329, i32 %330, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  %332 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %332, i32* %2, align 4
  br label %397

333:                                              ; preds = %315
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 5
  %336 = call i32 @bytestream2_get_bytes_left(i32* %335)
  %337 = load i32, i32* %7, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %346

339:                                              ; preds = %333
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 4
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %341, align 8
  %343 = load i32, i32* @AV_LOG_ERROR, align 4
  %344 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %342, i32 %343, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %345 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %345, i32* %2, align 4
  br label %397

346:                                              ; preds = %333
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 5
  %349 = load i32, i32* %7, align 4
  %350 = call i32 @bytestream2_skip(i32* %348, i32 %349)
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 5
  %353 = call i32 @bytestream2_get_bytes_left(i32* %352)
  %354 = icmp slt i32 %353, 2
  br i1 %354, label %355, label %362

355:                                              ; preds = %346
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 4
  %358 = load %struct.TYPE_7__*, %struct.TYPE_7__** %357, align 8
  %359 = load i32, i32* @AV_LOG_ERROR, align 4
  %360 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %358, i32 %359, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %361 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %361, i32* %2, align 4
  br label %397

362:                                              ; preds = %346
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 5
  %365 = call i8* @bytestream2_get_be16(i32* %364)
  %366 = ptrtoint i8* %365 to i32
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 3
  store i32 %366, i32* %368, align 4
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 4
  switch i32 %371, label %385 [
    i32 0, label %372
    i32 1, label %372
    i32 2, label %373
    i32 3, label %379
  ]

372:                                              ; preds = %362, %362
  br label %395

373:                                              ; preds = %362
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 4
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %375, align 8
  %377 = call i32 @avpriv_request_sample(%struct.TYPE_7__* %376, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %378 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %378, i32* %2, align 4
  br label %397

379:                                              ; preds = %362
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 4
  %382 = load %struct.TYPE_7__*, %struct.TYPE_7__** %381, align 8
  %383 = call i32 @avpriv_request_sample(%struct.TYPE_7__* %382, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %384 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %384, i32* %2, align 4
  br label %397

385:                                              ; preds = %362
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 4
  %388 = load %struct.TYPE_7__*, %struct.TYPE_7__** %387, align 8
  %389 = load i32, i32* @AV_LOG_ERROR, align 4
  %390 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 4
  %393 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %388, i32 %389, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %392)
  %394 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %394, i32* %2, align 4
  br label %397

395:                                              ; preds = %372
  %396 = load i32, i32* %8, align 4
  store i32 %396, i32* %2, align 4
  br label %397

397:                                              ; preds = %395, %385, %379, %373, %355, %339, %326, %308, %294, %221, %207, %192, %147, %127, %100, %71, %44, %29, %15
  %398 = load i32, i32* %2, align 4
  ret i32 %398
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i8* @bytestream2_get_be16(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i8* @bytestream2_get_be32(i32*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
