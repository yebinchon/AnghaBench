; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imm4.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imm4.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_21__*, i8*, i8*, i64, %struct.TYPE_22__, i32, i32 }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_22__ = type { i32 (i32*, i32*, i32)* }
%struct.TYPE_24__ = type { i32, i32* }
%struct.TYPE_25__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@AVCOL_RANGE_JPEG = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"type %X\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Frame size change is unsupported.\0A\00", align 1
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Missing reference frame.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i8*, i32*, %struct.TYPE_24__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_26__* %0, i8* %1, i32* %2, %struct.TYPE_24__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %9, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %10, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 6
  store i32* %23, i32** %11, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %25, %struct.TYPE_25__** %12, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %28, 32
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %5, align 4
  br label %256

32:                                               ; preds = %4
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @FFALIGN(i32 %39, i32 4)
  %41 = call i32 @av_fast_padded_malloc(i64* %34, i32* %36, i32 %40)
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %32
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %5, align 4
  br label %256

49:                                               ; preds = %32
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %52, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 3
  %65 = ashr i32 %64, 2
  %66 = call i32 %53(i32* %57, i32* %60, i32 %65)
  %67 = load i32*, i32** %11, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @FFALIGN(i32 %73, i32 4)
  %75 = call i32 @init_get_bits8(i32* %67, i64 %70, i32 %74)
  store i32 %75, i32* %16, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %49
  %78 = load i32, i32* %16, align 4
  store i32 %78, i32* %5, align 4
  br label %256

79:                                               ; preds = %49
  %80 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @AVCOL_RANGE_JPEG, align 4
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %13, align 4
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %14, align 4
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 8
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp slt i32 %97, 2
  br i1 %98, label %99, label %113

99:                                               ; preds = %79
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 10
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  switch i32 %105, label %111 [
    i32 1, label %106
    i32 2, label %107
    i32 4, label %108
    i32 17, label %109
    i32 18, label %110
  ]

106:                                              ; preds = %99
  store i32 352, i32* %13, align 4
  store i32 240, i32* %14, align 4
  br label %112

107:                                              ; preds = %99
  store i32 704, i32* %13, align 4
  store i32 240, i32* %14, align 4
  br label %112

108:                                              ; preds = %99
  store i32 480, i32* %13, align 4
  store i32 704, i32* %14, align 4
  br label %112

109:                                              ; preds = %99
  store i32 352, i32* %13, align 4
  store i32 288, i32* %14, align 4
  br label %112

110:                                              ; preds = %99
  store i32 704, i32* %13, align 4
  store i32 288, i32* %14, align 4
  br label %112

111:                                              ; preds = %99
  store i32 704, i32* %13, align 4
  store i32 576, i32* %14, align 4
  br label %112

112:                                              ; preds = %111, %110, %109, %108, %107, %106
  br label %113

113:                                              ; preds = %112, %79
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @skip_bits_long(i32* %114, i32 192)
  %116 = load i32*, i32** %11, align 8
  %117 = call i32 @get_bits_long(i32* %116, i32 32)
  store i32 %117, i32* %15, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = call i8* @get_bits(i32* %118, i32 16)
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = call i8* @get_bits(i32* %122, i32 16)
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* %15, align 4
  switch i32 %126, label %139 [
    i32 427301239, label %127
    i32 304417062, label %133
  ]

127:                                              ; preds = %113
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  store i32 1, i32* %129, align 4
  %130 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  br label %144

133:                                              ; preds = %113
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 0
  store i32 0, i32* %135, align 4
  %136 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  br label %144

139:                                              ; preds = %113
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @avpriv_request_sample(%struct.TYPE_26__* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %143, i32* %5, align 4
  br label %256

144:                                              ; preds = %133, %127
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %156, label %150

150:                                              ; preds = %144
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %171

156:                                              ; preds = %150, %144
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %163 = load i32, i32* @AV_LOG_ERROR, align 4
  %164 = call i32 @av_log(%struct.TYPE_26__* %162, i32 %163, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %165 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %165, i32* %5, align 4
  br label %256

166:                                              ; preds = %156
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %168, align 8
  %170 = call i32 @av_frame_unref(%struct.TYPE_21__* %169)
  br label %171

171:                                              ; preds = %166, %150
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @ff_set_dimensions(%struct.TYPE_26__* %172, i32 %173, i32 %174)
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %16, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = load i32, i32* %16, align 4
  store i32 %179, i32* %5, align 4
  br label %256

180:                                              ; preds = %171
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %180
  %188 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  br label %190

189:                                              ; preds = %180
  br label %190

190:                                              ; preds = %189, %187
  %191 = phi i32 [ %188, %187 ], [ 0, %189 ]
  %192 = call i32 @ff_get_buffer(%struct.TYPE_26__* %181, %struct.TYPE_25__* %182, i32 %191)
  store i32 %192, i32* %16, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i32, i32* %16, align 4
  store i32 %195, i32* %5, align 4
  br label %256

196:                                              ; preds = %190
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %224

201:                                              ; preds = %196
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %203 = load i32*, i32** %11, align 8
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %205 = call i32 @decode_intra(%struct.TYPE_26__* %202, i32* %203, %struct.TYPE_25__* %204)
  store i32 %205, i32* %16, align 4
  %206 = load i32, i32* %16, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %201
  %209 = load i32, i32* %16, align 4
  store i32 %209, i32* %5, align 4
  br label %256

210:                                              ; preds = %201
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %212, align 8
  %214 = call i32 @av_frame_unref(%struct.TYPE_21__* %213)
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %216, align 8
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %219 = call i32 @av_frame_ref(%struct.TYPE_21__* %217, %struct.TYPE_25__* %218)
  store i32 %219, i32* %16, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %210
  %222 = load i32, i32* %16, align 4
  store i32 %222, i32* %5, align 4
  br label %256

223:                                              ; preds = %210
  br label %251

224:                                              ; preds = %196
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %224
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %235 = load i32, i32* @AV_LOG_ERROR, align 4
  %236 = call i32 @av_log(%struct.TYPE_26__* %234, i32 %235, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %237 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %237, i32* %5, align 4
  br label %256

238:                                              ; preds = %224
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %240 = load i32*, i32** %11, align 8
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %243, align 8
  %245 = call i32 @decode_inter(%struct.TYPE_26__* %239, i32* %240, %struct.TYPE_25__* %241, %struct.TYPE_21__* %244)
  store i32 %245, i32* %16, align 4
  %246 = load i32, i32* %16, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %238
  %249 = load i32, i32* %16, align 4
  store i32 %249, i32* %5, align 4
  br label %256

250:                                              ; preds = %238
  br label %251

251:                                              ; preds = %250, %223
  %252 = load i32*, i32** %8, align 8
  store i32 1, i32* %252, align 4
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  store i32 %255, i32* %5, align 4
  br label %256

256:                                              ; preds = %251, %248, %233, %221, %208, %194, %178, %161, %139, %77, %46, %30
  %257 = load i32, i32* %5, align 4
  ret i32 %257
}

declare dso_local i32 @av_fast_padded_malloc(i64*, i32*, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @init_get_bits8(i32*, i64, i32) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_26__*, i32, i8*) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_21__*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_26__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @decode_intra(%struct.TYPE_26__*, i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @av_frame_ref(%struct.TYPE_21__*, %struct.TYPE_25__*) #1

declare dso_local i32 @decode_inter(%struct.TYPE_26__*, i32*, %struct.TYPE_25__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
