; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdrw.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdrw.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i8* }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32, i32, i32, i64* }
%struct.TYPE_32__ = type { i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Frame is too small %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"QuickDraw version 1\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"QuickDraw version unknown (%X)\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Parsing Packbit opcode\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"bppcount %d bpp %d\0A\00", align 1
@AV_PIX_FMT_PAL8 = common dso_local global i8* null, align 8
@AV_PIX_FMT_RGB555 = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [52 x i8] c"Invalid pixel format (bppcnt %d bpp %d) in Packbit\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Error color count - %i(0x%X)\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Palette is too small %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Packbit mask region\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Parsing Directbit opcode\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Short rowbytes\00", align 1
@AV_PIX_FMT_RGB24 = common dso_local global i8* null, align 8
@AV_PIX_FMT_ARGB = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [54 x i8] c"Invalid pixel format (bppcnt %d bpp %d) in Directbit\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Pack type %d\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"DirectBit mask region\00", align 1
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"Unknown 0x%04X opcode\0A\00", align 1
@EOP = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [46 x i8] c"Missing end of picture opcode (found 0x%04X)\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Got %d trailing bytes\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [32 x i8] c"Frame contained no usable data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_35__*, i8*, i32*, %struct.TYPE_33__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_35__* %0, i8* %1, i32* %2, %struct.TYPE_33__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca %struct.TYPE_32__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_33__* %3, %struct.TYPE_33__** %9, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %26, %struct.TYPE_34__** %10, align 8
  %27 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bytestream2_init(%struct.TYPE_32__* %11, i32 %29, i32 %32)
  %34 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_32__* %11)
  %35 = icmp sge i32 %34, 552
  br i1 %35, label %36, label %46

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 512
  %40 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_32__* %11)
  %41 = sub nsw i32 %40, 512
  %42 = call i32 @check_header(i64 %39, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 @bytestream2_skip(%struct.TYPE_32__* %11, i32 512)
  br label %46

46:                                               ; preds = %44, %36, %4
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_32__* %11)
  %50 = call i32 @check_header(i64 %48, i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_32__* %11)
  %52 = icmp slt i32 %51, 40
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_32__* %11)
  %57 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %54, i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %58, i32* %5, align 4
  br label %443

59:                                               ; preds = %46
  %60 = call i32 @bytestream2_skip(%struct.TYPE_32__* %11, i32 6)
  %61 = call i32 @bytestream2_get_be16(%struct.TYPE_32__* %11)
  store i32 %61, i32* %14, align 4
  %62 = call i32 @bytestream2_get_be16(%struct.TYPE_32__* %11)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @ff_set_dimensions(%struct.TYPE_35__* %63, i32 %64, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %5, align 4
  br label %443

71:                                               ; preds = %59
  %72 = load i32, i32* %16, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %76 = call i32 (%struct.TYPE_35__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_35__* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %77, i32* %5, align 4
  br label %443

78:                                               ; preds = %71
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 2
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %83 = call i32 @bytestream2_get_be32(%struct.TYPE_32__* %11)
  %84 = call i32 (%struct.TYPE_35__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_35__* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %85, i32* %5, align 4
  br label %443

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86
  %88 = call i32 @bytestream2_skip(%struct.TYPE_32__* %11, i32 30)
  br label %89

89:                                               ; preds = %424, %87
  %90 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_32__* %11)
  %91 = icmp sge i32 %90, 4
  br i1 %91, label %92, label %425

92:                                               ; preds = %89
  %93 = call i32 @bytestream2_get_be16(%struct.TYPE_32__* %11)
  store i32 %93, i32* %22, align 4
  %94 = load i32, i32* %22, align 4
  switch i32 %94, label %392 [
    i32 133, label %95
    i32 129, label %97
    i32 128, label %97
    i32 132, label %250
    i32 131, label %250
    i32 130, label %388
  ]

95:                                               ; preds = %92
  %96 = call i32 @bytestream2_skip(%struct.TYPE_32__* %11, i32 10)
  br label %397

97:                                               ; preds = %92, %92
  %98 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %99 = load i32, i32* @AV_LOG_DEBUG, align 4
  %100 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %98, i32 %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %101 = call i32 @bytestream2_get_be16(%struct.TYPE_32__* %11)
  %102 = and i32 %101, 49152
  store i32 %102, i32* %21, align 4
  %103 = call i32 @bytestream2_skip(%struct.TYPE_32__* %11, i32 28)
  %104 = call i32 @bytestream2_get_be16(%struct.TYPE_32__* %11)
  store i32 %104, i32* %17, align 4
  %105 = call i32 @bytestream2_get_be16(%struct.TYPE_32__* %11)
  store i32 %105, i32* %18, align 4
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %107 = load i32, i32* @AV_LOG_DEBUG, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %18, align 4
  %110 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %106, i32 %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load i32, i32* %17, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %120

113:                                              ; preds = %97
  %114 = load i32, i32* %18, align 4
  %115 = icmp eq i32 %114, 8
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i8*, i8** @AV_PIX_FMT_PAL8, align 8
  %118 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  br label %152

120:                                              ; preds = %113, %97
  %121 = load i32, i32* %17, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load i32, i32* %18, align 4
  %125 = icmp eq i32 %124, 4
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %18, align 4
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %133

129:                                              ; preds = %126, %123
  %130 = load i8*, i8** @AV_PIX_FMT_PAL8, align 8
  %131 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  br label %151

133:                                              ; preds = %126, %120
  %134 = load i32, i32* %17, align 4
  %135 = icmp eq i32 %134, 3
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load i32, i32* %18, align 4
  %138 = icmp eq i32 %137, 5
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i8*, i8** @AV_PIX_FMT_RGB555, align 8
  %141 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  br label %150

143:                                              ; preds = %136, %133
  %144 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %145 = load i32, i32* @AV_LOG_ERROR, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %18, align 4
  %148 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %144, i32 %145, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %146, i32 %147)
  %149 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %149, i32* %5, align 4
  br label %443

150:                                              ; preds = %139
  br label %151

151:                                              ; preds = %150, %129
  br label %152

152:                                              ; preds = %151, %116
  %153 = call i32 @bytestream2_skip(%struct.TYPE_32__* %11, i32 18)
  %154 = call i32 @bytestream2_get_be16(%struct.TYPE_32__* %11)
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %12, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = load i32, i32* %12, align 4
  %159 = icmp sgt i32 %158, 256
  br i1 %159, label %160, label %167

160:                                              ; preds = %157, %152
  %161 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %162 = load i32, i32* @AV_LOG_ERROR, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %161, i32 %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %163, i32 %164)
  %166 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %166, i32* %5, align 4
  br label %443

167:                                              ; preds = %157
  %168 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_32__* %11)
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  %171 = mul nsw i32 %170, 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %175 = load i32, i32* @AV_LOG_ERROR, align 4
  %176 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_32__* %11)
  %177 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %174, i32 %175, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %178, i32* %5, align 4
  br label %443

179:                                              ; preds = %167
  %180 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %182 = call i32 @ff_get_buffer(%struct.TYPE_35__* %180, %struct.TYPE_34__* %181, i32 0)
  store i32 %182, i32* %15, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* %15, align 4
  store i32 %185, i32* %5, align 4
  br label %443

186:                                              ; preds = %179
  %187 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %188 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %188, i32 0, i32 3
  %190 = load i64*, i64** %189, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 1
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to i32*
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %21, align 4
  %196 = and i32 %195, 32768
  %197 = call i32 @parse_palette(%struct.TYPE_35__* %187, %struct.TYPE_32__* %11, i32* %193, i32 %194, i32 %196)
  store i32 %197, i32* %15, align 4
  %198 = load i32, i32* %15, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %186
  %201 = load i32, i32* %15, align 4
  store i32 %201, i32* %5, align 4
  br label %443

202:                                              ; preds = %186
  %203 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %203, i32 0, i32 0
  store i32 1, i32* %204, align 8
  %205 = call i32 @bytestream2_skip(%struct.TYPE_32__* %11, i32 18)
  %206 = load i32, i32* %22, align 4
  %207 = icmp eq i32 %206, 128
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = call i32 @bytestream2_skip(%struct.TYPE_32__* %11, i32 10)
  %210 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %211 = call i32 @avpriv_report_missing_feature(%struct.TYPE_35__* %210, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %212

212:                                              ; preds = %208, %202
  %213 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load i8*, i8** @AV_PIX_FMT_RGB555, align 8
  %217 = icmp eq i8* %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %220 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %221 = call i32 @decode_rle16(%struct.TYPE_35__* %219, %struct.TYPE_34__* %220, %struct.TYPE_32__* %11)
  store i32 %221, i32* %15, align 4
  br label %243

222:                                              ; preds = %212
  %223 = load i32, i32* %18, align 4
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %225, label %229

225:                                              ; preds = %222
  %226 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %227 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %228 = call i32 @decode_rle_bpp2(%struct.TYPE_35__* %226, %struct.TYPE_34__* %227, %struct.TYPE_32__* %11)
  store i32 %228, i32* %15, align 4
  br label %242

229:                                              ; preds = %222
  %230 = load i32, i32* %18, align 4
  %231 = icmp eq i32 %230, 4
  br i1 %231, label %232, label %236

232:                                              ; preds = %229
  %233 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %234 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %235 = call i32 @decode_rle_bpp4(%struct.TYPE_35__* %233, %struct.TYPE_34__* %234, %struct.TYPE_32__* %11)
  store i32 %235, i32* %15, align 4
  br label %241

236:                                              ; preds = %229
  %237 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %238 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %239 = load i32, i32* %17, align 4
  %240 = call i32 @decode_rle(%struct.TYPE_35__* %237, %struct.TYPE_34__* %238, %struct.TYPE_32__* %11, i32 %239)
  store i32 %240, i32* %15, align 4
  br label %241

241:                                              ; preds = %236, %232
  br label %242

242:                                              ; preds = %241, %225
  br label %243

243:                                              ; preds = %242, %218
  %244 = load i32, i32* %15, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = load i32, i32* %15, align 4
  store i32 %247, i32* %5, align 4
  br label %443

248:                                              ; preds = %243
  %249 = load i32*, i32** %8, align 8
  store i32 1, i32* %249, align 4
  br label %397

250:                                              ; preds = %92, %92
  %251 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %252 = load i32, i32* @AV_LOG_DEBUG, align 4
  %253 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %251, i32 %252, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %254 = call i32 @bytestream2_skip(%struct.TYPE_32__* %11, i32 4)
  %255 = call i32 @bytestream2_get_be16(%struct.TYPE_32__* %11)
  %256 = and i32 %255, 16383
  store i32 %256, i32* %19, align 4
  %257 = load i32, i32* %19, align 4
  %258 = icmp sle i32 %257, 250
  br i1 %258, label %259, label %263

259:                                              ; preds = %250
  %260 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %261 = call i32 @avpriv_report_missing_feature(%struct.TYPE_35__* %260, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %262 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %262, i32* %5, align 4
  br label %443

263:                                              ; preds = %250
  %264 = call i32 @bytestream2_skip(%struct.TYPE_32__* %11, i32 4)
  %265 = call i32 @bytestream2_get_be16(%struct.TYPE_32__* %11)
  store i32 %265, i32* %14, align 4
  %266 = call i32 @bytestream2_get_be16(%struct.TYPE_32__* %11)
  store i32 %266, i32* %13, align 4
  %267 = call i32 @bytestream2_skip(%struct.TYPE_32__* %11, i32 2)
  %268 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* %14, align 4
  %271 = call i32 @ff_set_dimensions(%struct.TYPE_35__* %268, i32 %269, i32 %270)
  store i32 %271, i32* %15, align 4
  %272 = load i32, i32* %15, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %263
  %275 = load i32, i32* %15, align 4
  store i32 %275, i32* %5, align 4
  br label %443

276:                                              ; preds = %263
  %277 = call i32 @bytestream2_get_be16(%struct.TYPE_32__* %11)
  store i32 %277, i32* %20, align 4
  %278 = call i32 @bytestream2_skip(%struct.TYPE_32__* %11, i32 16)
  %279 = call i32 @bytestream2_get_be16(%struct.TYPE_32__* %11)
  store i32 %279, i32* %17, align 4
  %280 = call i32 @bytestream2_get_be16(%struct.TYPE_32__* %11)
  store i32 %280, i32* %18, align 4
  %281 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %282 = load i32, i32* @AV_LOG_DEBUG, align 4
  %283 = load i32, i32* %17, align 4
  %284 = load i32, i32* %18, align 4
  %285 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %281, i32 %282, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %283, i32 %284)
  %286 = load i32, i32* %17, align 4
  %287 = icmp eq i32 %286, 3
  br i1 %287, label %288, label %295

288:                                              ; preds = %276
  %289 = load i32, i32* %18, align 4
  %290 = icmp eq i32 %289, 8
  br i1 %290, label %291, label %295

291:                                              ; preds = %288
  %292 = load i8*, i8** @AV_PIX_FMT_RGB24, align 8
  %293 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %293, i32 0, i32 0
  store i8* %292, i8** %294, align 8
  br label %330

295:                                              ; preds = %288, %276
  %296 = load i32, i32* %17, align 4
  %297 = icmp eq i32 %296, 3
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load i32, i32* %18, align 4
  %300 = icmp eq i32 %299, 5
  br i1 %300, label %307, label %301

301:                                              ; preds = %298, %295
  %302 = load i32, i32* %17, align 4
  %303 = icmp eq i32 %302, 2
  br i1 %303, label %304, label %311

304:                                              ; preds = %301
  %305 = load i32, i32* %18, align 4
  %306 = icmp eq i32 %305, 8
  br i1 %306, label %307, label %311

307:                                              ; preds = %304, %298
  %308 = load i8*, i8** @AV_PIX_FMT_RGB555, align 8
  %309 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %309, i32 0, i32 0
  store i8* %308, i8** %310, align 8
  br label %329

311:                                              ; preds = %304, %301
  %312 = load i32, i32* %17, align 4
  %313 = icmp eq i32 %312, 4
  br i1 %313, label %314, label %321

314:                                              ; preds = %311
  %315 = load i32, i32* %18, align 4
  %316 = icmp eq i32 %315, 8
  br i1 %316, label %317, label %321

317:                                              ; preds = %314
  %318 = load i8*, i8** @AV_PIX_FMT_ARGB, align 8
  %319 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %319, i32 0, i32 0
  store i8* %318, i8** %320, align 8
  br label %328

321:                                              ; preds = %314, %311
  %322 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %323 = load i32, i32* @AV_LOG_ERROR, align 4
  %324 = load i32, i32* %17, align 4
  %325 = load i32, i32* %18, align 4
  %326 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %322, i32 %323, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 %324, i32 %325)
  %327 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %327, i32* %5, align 4
  br label %443

328:                                              ; preds = %317
  br label %329

329:                                              ; preds = %328, %307
  br label %330

330:                                              ; preds = %329, %291
  %331 = load i32, i32* %20, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %330
  %334 = load i32, i32* %17, align 4
  store i32 %334, i32* %20, align 4
  br label %335

335:                                              ; preds = %333, %330
  %336 = load i32, i32* %20, align 4
  %337 = icmp ne i32 %336, 3
  br i1 %337, label %338, label %346

338:                                              ; preds = %335
  %339 = load i32, i32* %20, align 4
  %340 = icmp ne i32 %339, 4
  br i1 %340, label %341, label %346

341:                                              ; preds = %338
  %342 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %343 = load i32, i32* %20, align 4
  %344 = call i32 (%struct.TYPE_35__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_35__* %342, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %343)
  %345 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %345, i32* %5, align 4
  br label %443

346:                                              ; preds = %338, %335
  %347 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_32__* %11)
  %348 = icmp slt i32 %347, 30
  br i1 %348, label %349, label %351

349:                                              ; preds = %346
  %350 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %350, i32* %5, align 4
  br label %443

351:                                              ; preds = %346
  %352 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %353 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %354 = call i32 @ff_get_buffer(%struct.TYPE_35__* %352, %struct.TYPE_34__* %353, i32 0)
  store i32 %354, i32* %15, align 4
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %351
  %357 = load i32, i32* %15, align 4
  store i32 %357, i32* %5, align 4
  br label %443

358:                                              ; preds = %351
  %359 = call i32 @bytestream2_skip(%struct.TYPE_32__* %11, i32 30)
  %360 = load i32, i32* %22, align 4
  %361 = icmp eq i32 %360, 131
  br i1 %361, label %362, label %366

362:                                              ; preds = %358
  %363 = call i32 @bytestream2_skip(%struct.TYPE_32__* %11, i32 10)
  %364 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %365 = call i32 @avpriv_report_missing_feature(%struct.TYPE_35__* %364, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %366

366:                                              ; preds = %362, %358
  %367 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %367, i32 0, i32 0
  %369 = load i8*, i8** %368, align 8
  %370 = load i8*, i8** @AV_PIX_FMT_RGB555, align 8
  %371 = icmp eq i8* %369, %370
  br i1 %371, label %372, label %376

372:                                              ; preds = %366
  %373 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %374 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %375 = call i32 @decode_rle16(%struct.TYPE_35__* %373, %struct.TYPE_34__* %374, %struct.TYPE_32__* %11)
  store i32 %375, i32* %15, align 4
  br label %381

376:                                              ; preds = %366
  %377 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %378 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %379 = load i32, i32* %17, align 4
  %380 = call i32 @decode_rle(%struct.TYPE_35__* %377, %struct.TYPE_34__* %378, %struct.TYPE_32__* %11, i32 %379)
  store i32 %380, i32* %15, align 4
  br label %381

381:                                              ; preds = %376, %372
  %382 = load i32, i32* %15, align 4
  %383 = icmp slt i32 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %381
  %385 = load i32, i32* %15, align 4
  store i32 %385, i32* %5, align 4
  br label %443

386:                                              ; preds = %381
  %387 = load i32*, i32** %8, align 8
  store i32 1, i32* %387, align 4
  br label %397

388:                                              ; preds = %92
  %389 = call i32 @bytestream2_get_be16(%struct.TYPE_32__* %11)
  %390 = call i32 @bytestream2_get_be16(%struct.TYPE_32__* %11)
  %391 = call i32 @bytestream2_skip(%struct.TYPE_32__* %11, i32 %390)
  br label %397

392:                                              ; preds = %92
  %393 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %394 = load i32, i32* @AV_LOG_TRACE, align 4
  %395 = load i32, i32* %22, align 4
  %396 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %393, i32 %394, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %395)
  br label %397

397:                                              ; preds = %392, %388, %386, %248, %95
  %398 = load i32*, i32** %8, align 8
  %399 = load i32, i32* %398, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %424

401:                                              ; preds = %397
  %402 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_32__* %11)
  %403 = srem i32 %402, 2
  %404 = call i32 @bytestream2_skip(%struct.TYPE_32__* %11, i32 %403)
  %405 = call i32 @bytestream2_get_be16(%struct.TYPE_32__* %11)
  store i32 %405, i32* %23, align 4
  %406 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_32__* %11)
  store i32 %406, i32* %24, align 4
  %407 = load i32, i32* %23, align 4
  %408 = load i32, i32* @EOP, align 4
  %409 = icmp ne i32 %407, %408
  br i1 %409, label %410, label %415

410:                                              ; preds = %401
  %411 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %412 = load i32, i32* @AV_LOG_WARNING, align 4
  %413 = load i32, i32* %23, align 4
  %414 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %411, i32 %412, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 %413)
  br label %415

415:                                              ; preds = %410, %401
  %416 = load i32, i32* %24, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %423

418:                                              ; preds = %415
  %419 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %420 = load i32, i32* @AV_LOG_WARNING, align 4
  %421 = load i32, i32* %24, align 4
  %422 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %419, i32 %420, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 %421)
  br label %423

423:                                              ; preds = %418, %415
  br label %425

424:                                              ; preds = %397
  br label %89

425:                                              ; preds = %423, %89
  %426 = load i32*, i32** %8, align 8
  %427 = load i32, i32* %426, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %438

429:                                              ; preds = %425
  %430 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %431 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %432 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %431, i32 0, i32 2
  store i32 %430, i32* %432, align 8
  %433 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %434 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %433, i32 0, i32 1
  store i32 1, i32* %434, align 4
  %435 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %436 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  store i32 %437, i32* %5, align 4
  br label %443

438:                                              ; preds = %425
  %439 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %440 = load i32, i32* @AV_LOG_ERROR, align 4
  %441 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %439, i32 %440, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  %442 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %442, i32* %5, align 4
  br label %443

443:                                              ; preds = %438, %429, %384, %356, %349, %341, %321, %274, %259, %246, %200, %184, %173, %160, %143, %81, %74, %69, %53
  %444 = load i32, i32* %5, align 4
  ret i32 %444
}

declare dso_local i32 @bytestream2_init(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_32__*) #1

declare dso_local i32 @check_header(i64, i32) #1

declare dso_local i32 @bytestream2_skip(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_35__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_get_be16(%struct.TYPE_32__*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_35__*, i32, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_35__*, i8*, ...) #1

declare dso_local i32 @bytestream2_get_be32(%struct.TYPE_32__*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_35__*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @parse_palette(%struct.TYPE_35__*, %struct.TYPE_32__*, i32*, i32, i32) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_35__*, i8*) #1

declare dso_local i32 @decode_rle16(%struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_32__*) #1

declare dso_local i32 @decode_rle_bpp2(%struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_32__*) #1

declare dso_local i32 @decode_rle_bpp4(%struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_32__*) #1

declare dso_local i32 @decode_rle(%struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_32__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
