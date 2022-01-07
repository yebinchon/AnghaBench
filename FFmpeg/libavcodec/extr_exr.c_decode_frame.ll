; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32, i32, i32 (%struct.TYPE_24__*, i32, i32, i32*, i32)*, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i64, i32, i32, i64, i64, i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_23__*, i32*, i32, %struct.TYPE_24__*, i64, %struct.TYPE_19__, %struct.TYPE_18__*, i32, i32* }
%struct.TYPE_23__ = type { i32*, i32, i32** }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_20__ = type { i8* }

@AV_PIX_FMT_RGBA64 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YA16 = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB48 = common dso_local global i32 0, align 4
@AV_PIX_FMT_GRAY16 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Missing channel list.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVCOL_TRC_UNSPECIFIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Compression %d\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Wrong or missing size information.\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"recreating invalid scanline offset table\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@decode_block = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i8*, i32*, %struct.TYPE_22__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_24__* %0, i8* %1, i32* %2, %struct.TYPE_22__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_20__, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %9, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %25 = load i8*, i8** %7, align 8
  store i8* %25, i8** %24, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %12, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 16
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @bytestream2_init(i32* %29, i32* %32, i32 %35)
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %39 = call i32 @decode_header(%struct.TYPE_21__* %37, %struct.TYPE_23__* %38)
  store i32 %39, i32* %15, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %5, align 4
  br label %430

43:                                               ; preds = %4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %83 [
    i32 136, label %47
    i32 135, label %47
    i32 130, label %47
  ]

47:                                               ; preds = %43, %43, %43
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 22
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 21
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @AV_PIX_FMT_RGBA64, align 4
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  br label %67

63:                                               ; preds = %54
  %64 = load i32, i32* @AV_PIX_FMT_YA16, align 4
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %59
  br label %82

68:                                               ; preds = %47
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 21
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @AV_PIX_FMT_RGB48, align 4
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  br label %81

77:                                               ; preds = %68
  %78 = load i32, i32* @AV_PIX_FMT_GRAY16, align 4
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %81, %67
  br label %88

83:                                               ; preds = %43
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %85 = load i32, i32* @AV_LOG_ERROR, align 4
  %86 = call i32 @av_log(%struct.TYPE_24__* %84, i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %87, i32* %5, align 4
  br label %430

88:                                               ; preds = %82
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AVCOL_TRC_UNSPECIFIED, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %94, %88
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  switch i32 %103, label %113 [
    i32 132, label %104
    i32 131, label %104
    i32 129, label %104
    i32 133, label %107
    i32 128, label %107
    i32 134, label %110
    i32 138, label %110
    i32 137, label %110
  ]

104:                                              ; preds = %100, %100, %100
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 3
  store i32 1, i32* %106, align 4
  br label %120

107:                                              ; preds = %100, %100
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 3
  store i32 16, i32* %109, align 4
  br label %120

110:                                              ; preds = %100, %100, %100
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 3
  store i32 32, i32* %112, align 4
  br label %120

113:                                              ; preds = %100
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @avpriv_report_missing_feature(%struct.TYPE_24__* %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %119, i32* %5, align 4
  br label %430

120:                                              ; preds = %110, %107, %104
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %123, %126
  br i1 %127, label %166, label %128

128:                                              ; preds = %120
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %131, %134
  br i1 %135, label %166, label %136

136:                                              ; preds = %128
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %143, %146
  %148 = add nsw i64 %147, 1
  %149 = icmp ne i64 %140, %148
  br i1 %149, label %166, label %150

150:                                              ; preds = %136
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 9
  %156 = load i64, i64* %155, align 8
  %157 = icmp sge i64 %153, %156
  br i1 %157, label %166, label %158

158:                                              ; preds = %150
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 10
  %164 = load i32, i32* %163, align 8
  %165 = icmp sge i32 %161, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %158, %150, %136, %128, %120
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %168 = load i32, i32* @AV_LOG_ERROR, align 4
  %169 = call i32 @av_log(%struct.TYPE_24__* %167, i32 %168, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %170 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %170, i32* %5, align 4
  br label %430

171:                                              ; preds = %158
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 9
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 10
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @ff_set_dimensions(%struct.TYPE_24__* %172, i64 %175, i32 %178)
  store i32 %179, i32* %15, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %171
  %182 = load i32, i32* %15, align 4
  store i32 %182, i32* %5, align 4
  br label %430

183:                                              ; preds = %171
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = call %struct.TYPE_18__* @av_pix_fmt_desc_get(i32 %186)
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 20
  store %struct.TYPE_18__* %187, %struct.TYPE_18__** %189, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 20
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %191, align 8
  %193 = icmp ne %struct.TYPE_18__* %192, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %183
  %195 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %195, i32* %5, align 4
  br label %430

196:                                              ; preds = %183
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = mul nsw i32 %199, 2
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 20
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %200, %205
  store i32 %206, i32* %16, align 4
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 18
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %241

211:                                              ; preds = %196
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 8
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 19
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %214, %218
  %220 = sub nsw i32 %219, 1
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 19
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sdiv i32 %220, %224
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 11
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 19
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %228, %232
  %234 = sub nsw i32 %233, 1
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 19
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = sdiv i32 %234, %238
  %240 = mul nsw i32 %225, %239
  store i32 %240, i32* %17, align 4
  br label %254

241:                                              ; preds = %196
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 11
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %244, %247
  %249 = sub nsw i32 %248, 1
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = sdiv i32 %249, %252
  store i32 %253, i32* %17, align 4
  br label %254

254:                                              ; preds = %241, %211
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %256 = call i32 @ff_thread_get_buffer(%struct.TYPE_24__* %255, %struct.TYPE_20__* %11, i32 0)
  store i32 %256, i32* %15, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %254
  %259 = load i32, i32* %15, align 4
  store i32 %259, i32* %5, align 4
  br label %430

260:                                              ; preds = %254
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 16
  %263 = call i32 @bytestream2_get_bytes_left(i32* %262)
  %264 = load i32, i32* %17, align 4
  %265 = mul nsw i32 %264, 8
  %266 = icmp slt i32 %263, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %260
  %268 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %268, i32* %5, align 4
  br label %430

269:                                              ; preds = %260
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 18
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %329, label %274

274:                                              ; preds = %269
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 16
  %277 = call i64 @bytestream2_peek_le64(i32* %276)
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %329

279:                                              ; preds = %274
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 17
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %281, align 8
  %283 = load i32, i32* @AV_LOG_DEBUG, align 4
  %284 = call i32 @av_log(%struct.TYPE_24__* %282, i32 %283, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 16
  %287 = call i32 @bytestream2_tell(i32* %286)
  store i32 %287, i32* %18, align 4
  %288 = load i32, i32* %18, align 4
  %289 = load i32, i32* %17, align 4
  %290 = mul nsw i32 %289, 8
  %291 = add nsw i32 %288, %290
  store i32 %291, i32* %19, align 4
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %18, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %17, align 4
  %299 = mul nsw i32 %298, 8
  %300 = call i32 @bytestream2_init_writer(i32* %20, i32* %297, i32 %299)
  store i32 0, i32* %14, align 4
  br label %301

301:                                              ; preds = %320, %279
  %302 = load i32, i32* %14, align 4
  %303 = load i32, i32* %17, align 4
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %305, label %323

305:                                              ; preds = %301
  %306 = load i32, i32* %19, align 4
  %307 = call i32 @bytestream2_put_le64(i32* %20, i32 %306)
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %308, i32 0, i32 16
  %310 = load i32, i32* %19, align 4
  %311 = add nsw i32 %310, 4
  %312 = load i32, i32* @SEEK_SET, align 4
  %313 = call i32 @bytestream2_seek(i32* %309, i32 %311, i32 %312)
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 16
  %316 = call i32 @bytestream2_get_le32(i32* %315)
  %317 = add nsw i32 %316, 8
  %318 = load i32, i32* %19, align 4
  %319 = add nsw i32 %318, %317
  store i32 %319, i32* %19, align 4
  br label %320

320:                                              ; preds = %305
  %321 = load i32, i32* %14, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %14, align 4
  br label %301

323:                                              ; preds = %301
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %324, i32 0, i32 16
  %326 = load i32, i32* %18, align 4
  %327 = load i32, i32* @SEEK_SET, align 4
  %328 = call i32 @bytestream2_seek(i32* %325, i32 %326, i32 %327)
  br label %329

329:                                              ; preds = %323, %274, %269
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %331 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %333, i32 0, i32 15
  store i32* %332, i32** %334, align 8
  %335 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %336 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %338, i32 0, i32 12
  store i32 %337, i32* %339, align 8
  %340 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %341 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %340, i32 0, i32 2
  %342 = load i32**, i32*** %341, align 8
  %343 = getelementptr inbounds i32*, i32** %342, i64 0
  %344 = load i32*, i32** %343, align 8
  store i32* %344, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %345

345:                                              ; preds = %363, %329
  %346 = load i32, i32* %14, align 4
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %347, i32 0, i32 6
  %349 = load i32, i32* %348, align 8
  %350 = icmp slt i32 %346, %349
  br i1 %350, label %351, label %366

351:                                              ; preds = %345
  %352 = load i32*, i32** %13, align 8
  %353 = load i32, i32* %16, align 4
  %354 = call i32 @memset(i32* %352, i32 0, i32 %353)
  %355 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %356 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %355, i32 0, i32 0
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 0
  %359 = load i32, i32* %358, align 4
  %360 = load i32*, i32** %13, align 8
  %361 = sext i32 %359 to i64
  %362 = getelementptr inbounds i32, i32* %360, i64 %361
  store i32* %362, i32** %13, align 8
  br label %363

363:                                              ; preds = %351
  %364 = load i32, i32* %14, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %14, align 4
  br label %345

366:                                              ; preds = %345
  %367 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %369 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i32 0, i32 14
  store %struct.TYPE_23__* %367, %struct.TYPE_23__** %369, align 8
  %370 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %370, i32 0, i32 3
  %372 = load i32 (%struct.TYPE_24__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_24__*, i32, i32, i32*, i32)** %371, align 8
  %373 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %374 = load i32, i32* @decode_block, align 4
  %375 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %375, i32 0, i32 13
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* %17, align 4
  %379 = call i32 %372(%struct.TYPE_24__* %373, i32 %374, i32 %377, i32* null, i32 %378)
  %380 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %381 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i32 0, i32 2
  %382 = load i32**, i32*** %381, align 8
  %383 = getelementptr inbounds i32*, i32** %382, i64 0
  %384 = load i32*, i32** %383, align 8
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %386 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %385, i32 0, i32 7
  %387 = load i32, i32* %386, align 4
  %388 = add nsw i32 %387, 1
  %389 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %390 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %389, i32 0, i32 0
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 0
  %393 = load i32, i32* %392, align 4
  %394 = mul nsw i32 %388, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %384, i64 %395
  store i32* %396, i32** %13, align 8
  %397 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %398 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %397, i32 0, i32 7
  %399 = load i32, i32* %398, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %14, align 4
  br label %401

401:                                              ; preds = %419, %366
  %402 = load i32, i32* %14, align 4
  %403 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 4
  %406 = icmp slt i32 %402, %405
  br i1 %406, label %407, label %422

407:                                              ; preds = %401
  %408 = load i32*, i32** %13, align 8
  %409 = load i32, i32* %16, align 4
  %410 = call i32 @memset(i32* %408, i32 0, i32 %409)
  %411 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %412 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %411, i32 0, i32 0
  %413 = load i32*, i32** %412, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 0
  %415 = load i32, i32* %414, align 4
  %416 = load i32*, i32** %13, align 8
  %417 = sext i32 %415 to i64
  %418 = getelementptr inbounds i32, i32* %416, i64 %417
  store i32* %418, i32** %13, align 8
  br label %419

419:                                              ; preds = %407
  %420 = load i32, i32* %14, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %14, align 4
  br label %401

422:                                              ; preds = %401
  %423 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %424 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %425 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %424, i32 0, i32 1
  store i32 %423, i32* %425, align 8
  %426 = load i32*, i32** %8, align 8
  store i32 1, i32* %426, align 4
  %427 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %428 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  store i32 %429, i32* %5, align 4
  br label %430

430:                                              ; preds = %422, %267, %258, %194, %181, %166, %113, %83, %41
  %431 = load i32, i32* %5, align 4
  ret i32 %431
}

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @decode_header(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @av_log(%struct.TYPE_24__*, i32, i8*) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_24__*, i64, i32) #1

declare dso_local %struct.TYPE_18__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @ff_thread_get_buffer(%struct.TYPE_24__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i64 @bytestream2_peek_le64(i32*) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @bytestream2_init_writer(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_put_le64(i32*, i32) #1

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
