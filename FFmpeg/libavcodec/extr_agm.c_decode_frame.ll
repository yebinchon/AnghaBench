; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i64, i32, i32, i64, i64, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32, i32, i32, i32, i32, i32, i64*, %struct.TYPE_31__*, i64, i64, i32, i32, i32 }
%struct.TYPE_31__ = type { i64, i64, i32* }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_32__ = type { i32, i64, i64, i64, i64, i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"fflags: %X\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Missing reference frame.\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@INT32_MIN = common dso_local global i32 0, align 4
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*, i8*, i32*, %struct.TYPE_30__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_33__* %0, i8* %1, i32* %2, %struct.TYPE_30__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_30__* %3, %struct.TYPE_30__** %9, align 8
  %23 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  store %struct.TYPE_34__* %25, %struct.TYPE_34__** %10, align 8
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 12
  store i32* %27, i32** %11, align 8
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 11
  store i32* %29, i32** %12, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %31, %struct.TYPE_32__** %13, align 8
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %517

37:                                               ; preds = %4
  %38 = load i32*, i32** %12, align 8
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bytestream2_init(i32* %38, i32 %41, i32 %44)
  %46 = load i32*, i32** %12, align 8
  %47 = call i8* @bytestream2_get_le32(i32* %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %18, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = call i8* @bytestream2_get_le32(i32* %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 536870911
  %58 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = ashr i32 %62, 29
  store i32 %63, i32* %61, align 8
  %64 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %65 = load i32, i32* @AV_LOG_DEBUG, align 4
  %66 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %64, i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 8
  %77 = icmp ult i32 %72, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %37
  %79 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %79, i32* %5, align 4
  br label %517

80:                                               ; preds = %37
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %85 = and i32 %83, %84
  %86 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %80
  %98 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  br label %101

99:                                               ; preds = %80
  %100 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %124, label %109

109:                                              ; preds = %101
  %110 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 7
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %109
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %120 = load i32, i32* @AV_LOG_ERROR, align 4
  %121 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %119, i32 %120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %122, i32* %5, align 4
  br label %517

123:                                              ; preds = %109
  br label %124

124:                                              ; preds = %123, %101
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %167

127:                                              ; preds = %124
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @MKTAG(i8 signext 65, i8 signext 71, i8 signext 77, i8 signext 48)
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @MKTAG(i8 signext 65, i8 signext 71, i8 signext 77, i8 signext 49)
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %133, %127
  %140 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %140, i32* %5, align 4
  br label %517

141:                                              ; preds = %133
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %143 = load i32, i32* %18, align 4
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sub i32 %146, %149
  %151 = sub i32 %150, 8
  %152 = call i32 @decode_huffman2(%struct.TYPE_33__* %142, i32 %143, i32 %151)
  store i32 %152, i32* %21, align 4
  br label %153

153:                                              ; preds = %141
  %154 = load i32, i32* %21, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32, i32* %21, align 4
  store i32 %157, i32* %5, align 4
  br label %517

158:                                              ; preds = %153
  %159 = load i32*, i32** %12, align 8
  %160 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @bytestream2_init(i32* %159, i32 %162, i32 %165)
  br label %176

167:                                              ; preds = %124
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %168, i32 0, i32 9
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %167
  %173 = load i32*, i32** %12, align 8
  %174 = call i32 @bytestream2_skip(i32* %173, i32 4)
  br label %175

175:                                              ; preds = %172, %167
  br label %176

176:                                              ; preds = %175, %158
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %177, i32 0, i32 9
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %350

181:                                              ; preds = %176
  %182 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %182, i32 0, i32 4
  store i32 0, i32* %183, align 8
  %184 = load i32*, i32** %12, align 8
  %185 = call i8* @bytestream2_get_le32(i32* %184)
  %186 = ptrtoint i8* %185 to i32
  store i32 %186, i32* %14, align 4
  %187 = load i32*, i32** %12, align 8
  %188 = call i8* @bytestream2_get_le32(i32* %187)
  %189 = ptrtoint i8* %188 to i32
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* @INT32_MIN, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %197, label %193

193:                                              ; preds = %181
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* @INT32_MIN, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %193, %181
  %198 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %198, i32* %5, align 4
  br label %517

199:                                              ; preds = %193
  %200 = load i32, i32* %14, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %199
  %203 = load i32, i32* %14, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %14, align 4
  %205 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, 2
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %202, %199
  %210 = load i32, i32* %15, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %209
  %213 = load i32, i32* %15, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %15, align 4
  %215 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, 1
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %212, %209
  %220 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  store i32 %222, i32* %16, align 4
  %223 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %17, align 4
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* %16, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %241, label %229

229:                                              ; preds = %219
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* %17, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %241, label %233

233:                                              ; preds = %229
  %234 = load i32, i32* %14, align 4
  %235 = and i32 %234, 7
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %233
  %238 = load i32, i32* %15, align 4
  %239 = and i32 %238, 7
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %237, %233, %229, %219
  %242 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %242, i32* %5, align 4
  br label %517

243:                                              ; preds = %237
  %244 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %245 = load i32, i32* %14, align 4
  %246 = load i32, i32* %15, align 4
  %247 = call i32 @ff_set_dimensions(%struct.TYPE_33__* %244, i32 %245, i32 %246)
  store i32 %247, i32* %21, align 4
  %248 = load i32, i32* %21, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %243
  %251 = load i32, i32* %21, align 4
  store i32 %251, i32* %5, align 4
  br label %517

252:                                              ; preds = %243
  %253 = load i32, i32* %16, align 4
  %254 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 8
  %256 = load i32, i32* %17, align 4
  %257 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 4
  %259 = load i32*, i32** %12, align 8
  %260 = call i8* @bytestream2_get_le32(i32* %259)
  %261 = ptrtoint i8* %260 to i32
  %262 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %262, i32 0, i32 5
  store i32 %261, i32* %263, align 4
  %264 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %273, label %268

268:                                              ; preds = %252
  %269 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 4
  %272 = icmp sgt i32 %271, 100
  br i1 %272, label %273, label %275

273:                                              ; preds = %268, %252
  %274 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %274, i32* %5, align 4
  br label %517

275:                                              ; preds = %268
  store i32 0, i32* %22, align 4
  br label %276

276:                                              ; preds = %289, %275
  %277 = load i32, i32* %22, align 4
  %278 = icmp slt i32 %277, 3
  br i1 %278, label %279, label %292

279:                                              ; preds = %276
  %280 = load i32*, i32** %12, align 8
  %281 = call i8* @bytestream2_get_le32(i32* %280)
  %282 = ptrtoint i8* %281 to i64
  %283 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %283, i32 0, i32 6
  %285 = load i64*, i64** %284, align 8
  %286 = load i32, i32* %22, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64, i64* %285, i64 %287
  store i64 %282, i64* %288, align 8
  br label %289

289:                                              ; preds = %279
  %290 = load i32, i32* %22, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %22, align 4
  br label %276

292:                                              ; preds = %276
  %293 = load i32, i32* %18, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %292
  %296 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %19, align 4
  store i64 8, i64* %20, align 8
  br label %303

299:                                              ; preds = %292
  %300 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  store i32 %302, i32* %19, align 4
  store i64 32, i64* %20, align 8
  br label %303

303:                                              ; preds = %299, %295
  %304 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %304, i32 0, i32 6
  %306 = load i64*, i64** %305, align 8
  %307 = getelementptr inbounds i64, i64* %306, i64 0
  %308 = load i64, i64* %307, align 8
  %309 = icmp slt i64 %308, 0
  br i1 %309, label %347, label %310

310:                                              ; preds = %303
  %311 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %311, i32 0, i32 6
  %313 = load i64*, i64** %312, align 8
  %314 = getelementptr inbounds i64, i64* %313, i64 1
  %315 = load i64, i64* %314, align 8
  %316 = icmp slt i64 %315, 0
  br i1 %316, label %347, label %317

317:                                              ; preds = %310
  %318 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %318, i32 0, i32 6
  %320 = load i64*, i64** %319, align 8
  %321 = getelementptr inbounds i64, i64* %320, i64 2
  %322 = load i64, i64* %321, align 8
  %323 = icmp slt i64 %322, 0
  br i1 %323, label %347, label %324

324:                                              ; preds = %317
  %325 = load i64, i64* %20, align 8
  %326 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %326, i32 0, i32 6
  %328 = load i64*, i64** %327, align 8
  %329 = getelementptr inbounds i64, i64* %328, i64 0
  %330 = load i64, i64* %329, align 8
  %331 = add nsw i64 %325, %330
  %332 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %333 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %332, i32 0, i32 6
  %334 = load i64*, i64** %333, align 8
  %335 = getelementptr inbounds i64, i64* %334, i64 1
  %336 = load i64, i64* %335, align 8
  %337 = add nsw i64 %331, %336
  %338 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %338, i32 0, i32 6
  %340 = load i64*, i64** %339, align 8
  %341 = getelementptr inbounds i64, i64* %340, i64 2
  %342 = load i64, i64* %341, align 8
  %343 = add nsw i64 %337, %342
  %344 = load i32, i32* %19, align 4
  %345 = zext i32 %344 to i64
  %346 = icmp sgt i64 %343, %345
  br i1 %346, label %347, label %349

347:                                              ; preds = %324, %317, %310, %303
  %348 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %348, i32* %5, align 4
  br label %517

349:                                              ; preds = %324
  br label %350

350:                                              ; preds = %349, %176
  %351 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %352 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %353 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %354 = call i32 @ff_get_buffer(%struct.TYPE_33__* %351, %struct.TYPE_32__* %352, i32 %353)
  store i32 %354, i32* %21, align 4
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %350
  %357 = load i32, i32* %21, align 4
  store i32 %357, i32* %5, align 4
  br label %517

358:                                              ; preds = %350
  %359 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %360 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %400

363:                                              ; preds = %358
  %364 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %365 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %364, i32 0, i32 9
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %378, label %368

368:                                              ; preds = %363
  %369 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %370 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %369, i32 0, i32 8
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %378, label %373

373:                                              ; preds = %368
  %374 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %375 = load i32*, i32** %12, align 8
  %376 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %377 = call i32 @decode_raw_intra(%struct.TYPE_33__* %374, i32* %375, %struct.TYPE_32__* %376)
  store i32 %377, i32* %21, align 4
  br label %399

378:                                              ; preds = %368, %363
  %379 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %380 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %379, i32 0, i32 9
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %393, label %383

383:                                              ; preds = %378
  %384 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %385 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %384, i32 0, i32 8
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %393

388:                                              ; preds = %383
  %389 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %390 = load i32*, i32** %12, align 8
  %391 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %392 = call i32 @decode_raw_intra_rgb(%struct.TYPE_33__* %389, i32* %390, %struct.TYPE_32__* %391)
  store i32 %392, i32* %21, align 4
  br label %398

393:                                              ; preds = %383, %378
  %394 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %395 = load i32*, i32** %11, align 8
  %396 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %397 = call i32 @decode_intra(%struct.TYPE_33__* %394, i32* %395, %struct.TYPE_32__* %396)
  store i32 %397, i32* %21, align 4
  br label %398

398:                                              ; preds = %393, %388
  br label %399

399:                                              ; preds = %398, %373
  br label %474

400:                                              ; preds = %358
  %401 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %402 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %401, i32 0, i32 7
  %403 = load %struct.TYPE_31__*, %struct.TYPE_31__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %407 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %405, %408
  br i1 %409, label %420, label %410

410:                                              ; preds = %400
  %411 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %412 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %411, i32 0, i32 7
  %413 = load %struct.TYPE_31__*, %struct.TYPE_31__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %417 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %416, i32 0, i32 2
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %415, %418
  br i1 %419, label %420, label %422

420:                                              ; preds = %410, %400
  %421 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %421, i32* %5, align 4
  br label %517

422:                                              ; preds = %410
  %423 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %424 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %423, i32 0, i32 4
  %425 = load i32, i32* %424, align 8
  %426 = and i32 %425, 2
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %439, label %428

428:                                              ; preds = %422
  %429 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %430 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %431 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %430, i32 0, i32 7
  %432 = load %struct.TYPE_31__*, %struct.TYPE_31__** %431, align 8
  %433 = call i32 @av_frame_copy(%struct.TYPE_32__* %429, %struct.TYPE_31__* %432)
  store i32 %433, i32* %21, align 4
  %434 = load i32, i32* %21, align 4
  %435 = icmp slt i32 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %428
  %437 = load i32, i32* %21, align 4
  store i32 %437, i32* %5, align 4
  br label %517

438:                                              ; preds = %428
  br label %439

439:                                              ; preds = %438, %422
  %440 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %441 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %440, i32 0, i32 9
  %442 = load i64, i64* %441, align 8
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %452

444:                                              ; preds = %439
  %445 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %446 = load i32*, i32** %11, align 8
  %447 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %448 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %449 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %448, i32 0, i32 7
  %450 = load %struct.TYPE_31__*, %struct.TYPE_31__** %449, align 8
  %451 = call i32 @decode_inter(%struct.TYPE_33__* %445, i32* %446, %struct.TYPE_32__* %447, %struct.TYPE_31__* %450)
  store i32 %451, i32* %21, align 4
  br label %473

452:                                              ; preds = %439
  %453 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %454 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %453, i32 0, i32 9
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %467, label %457

457:                                              ; preds = %452
  %458 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %459 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %458, i32 0, i32 8
  %460 = load i64, i64* %459, align 8
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %467, label %462

462:                                              ; preds = %457
  %463 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %464 = load i32*, i32** %12, align 8
  %465 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %466 = call i32 @decode_runlen(%struct.TYPE_33__* %463, i32* %464, %struct.TYPE_32__* %465)
  store i32 %466, i32* %21, align 4
  br label %472

467:                                              ; preds = %457, %452
  %468 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %469 = load i32*, i32** %12, align 8
  %470 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %471 = call i32 @decode_runlen_rgb(%struct.TYPE_33__* %468, i32* %469, %struct.TYPE_32__* %470)
  store i32 %471, i32* %21, align 4
  br label %472

472:                                              ; preds = %467, %462
  br label %473

473:                                              ; preds = %472, %444
  br label %474

474:                                              ; preds = %473, %399
  %475 = load i32, i32* %21, align 4
  %476 = icmp slt i32 %475, 0
  br i1 %476, label %477, label %479

477:                                              ; preds = %474
  %478 = load i32, i32* %21, align 4
  store i32 %478, i32* %5, align 4
  br label %517

479:                                              ; preds = %474
  %480 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %481 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %480, i32 0, i32 7
  %482 = load %struct.TYPE_31__*, %struct.TYPE_31__** %481, align 8
  %483 = call i32 @av_frame_unref(%struct.TYPE_31__* %482)
  %484 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %485 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %484, i32 0, i32 7
  %486 = load %struct.TYPE_31__*, %struct.TYPE_31__** %485, align 8
  %487 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %488 = call i32 @av_frame_ref(%struct.TYPE_31__* %486, %struct.TYPE_32__* %487)
  store i32 %488, i32* %21, align 4
  %489 = icmp slt i32 %488, 0
  br i1 %489, label %490, label %492

490:                                              ; preds = %479
  %491 = load i32, i32* %21, align 4
  store i32 %491, i32* %5, align 4
  br label %517

492:                                              ; preds = %479
  %493 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %494 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %493, i32 0, i32 4
  %495 = load i64, i64* %494, align 8
  %496 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %497 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %496, i32 0, i32 2
  %498 = load i32, i32* %497, align 4
  %499 = sext i32 %498 to i64
  %500 = sub nsw i64 %495, %499
  %501 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %502 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %501, i32 0, i32 4
  store i64 %500, i64* %502, align 8
  %503 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %504 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %503, i32 0, i32 3
  %505 = load i64, i64* %504, align 8
  %506 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %507 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 8
  %509 = sext i32 %508 to i64
  %510 = sub nsw i64 %505, %509
  %511 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %512 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %511, i32 0, i32 3
  store i64 %510, i64* %512, align 8
  %513 = load i32*, i32** %8, align 8
  store i32 1, i32* %513, align 4
  %514 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %515 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 4
  store i32 %516, i32* %5, align 4
  br label %517

517:                                              ; preds = %492, %490, %477, %436, %420, %356, %347, %273, %250, %241, %197, %156, %139, %118, %78, %36
  %518 = load i32, i32* %5, align 4
  ret i32 %518
}

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i8* @bytestream2_get_le32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_33__*, i32, i8*, ...) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @decode_huffman2(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_33__*, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @decode_raw_intra(%struct.TYPE_33__*, i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @decode_raw_intra_rgb(%struct.TYPE_33__*, i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @decode_intra(%struct.TYPE_33__*, i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @av_frame_copy(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i32 @decode_inter(%struct.TYPE_33__*, i32*, %struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i32 @decode_runlen(%struct.TYPE_33__*, i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @decode_runlen_rgb(%struct.TYPE_33__*, i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_31__*) #1

declare dso_local i32 @av_frame_ref(%struct.TYPE_31__*, %struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
