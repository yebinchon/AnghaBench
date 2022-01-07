; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_idcin.c_idcin_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_idcin.c_idcin_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"incomplete packet\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid chunk size: %u\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PKT_DATA_PALETTE = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_17__*)* @idcin_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idcin_read_packet(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca [768 x i8], align 16
  %17 = alloca [256 x i32], align 16
  %18 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %9, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %10, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = call i64 @avio_feof(%struct.TYPE_18__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %2
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  br label %45

43:                                               ; preds = %30
  %44 = load i32, i32* @AVERROR_EOF, align 4
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi i32 [ %42, %37 ], [ %44, %43 ]
  store i32 %46, i32* %3, align 4
  br label %317

47:                                               ; preds = %2
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %267

52:                                               ; preds = %47
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %54 = call i32 @avio_rl32(%struct.TYPE_18__* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EIO, align 4
  %59 = call i32 @AVERROR(i32 %58)
  store i32 %59, i32* %3, align 4
  br label %317

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %164

63:                                               ; preds = %60
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %65 = getelementptr inbounds [768 x i8], [768 x i8]* %16, i64 0, i64 0
  %66 = call i32 @avio_read(%struct.TYPE_18__* %64, i8* %65, i32 768)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %317

71:                                               ; preds = %63
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 768
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %75, i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @EIO, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %3, align 4
  br label %317

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80
  store i32 2, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %94, %81
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 768
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [768 x i8], [768 x i8]* %16, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp sgt i32 %90, 63
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 0, i32* %12, align 4
  br label %97

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %82

97:                                               ; preds = %92, %82
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %160, %97
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 256
  br i1 %100, label %101, label %163

101:                                              ; preds = %98
  %102 = load i32, i32* %11, align 4
  %103 = mul nsw i32 %102, 3
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [768 x i8], [768 x i8]* %16, i64 0, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = load i32, i32* %12, align 4
  %109 = shl i32 %107, %108
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %13, align 1
  %111 = load i32, i32* %11, align 4
  %112 = mul nsw i32 %111, 3
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [768 x i8], [768 x i8]* %16, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = load i32, i32* %12, align 4
  %119 = shl i32 %117, %118
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %14, align 1
  %121 = load i32, i32* %11, align 4
  %122 = mul nsw i32 %121, 3
  %123 = add nsw i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [768 x i8], [768 x i8]* %16, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = load i32, i32* %12, align 4
  %129 = shl i32 %127, %128
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %15, align 1
  %131 = load i8, i8* %13, align 1
  %132 = zext i8 %131 to i32
  %133 = shl i32 %132, 16
  %134 = or i32 -16777216, %133
  %135 = load i8, i8* %14, align 1
  %136 = zext i8 %135 to i32
  %137 = shl i32 %136, 8
  %138 = or i32 %134, %137
  %139 = load i8, i8* %15, align 1
  %140 = zext i8 %139 to i32
  %141 = or i32 %138, %140
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %143
  store i32 %141, i32* %144, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %159

147:                                              ; preds = %101
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = ashr i32 %151, 6
  %153 = and i32 %152, 197379
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %153
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %147, %101
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  br label %98

163:                                              ; preds = %98
  br label %164

164:                                              ; preds = %163, %60
  br label %165

165:                                              ; preds = %164
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %192

172:                                              ; preds = %165
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %174 = load i32, i32* @AV_LOG_ERROR, align 4
  %175 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %173, i32 %174, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %172
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  br label %190

188:                                              ; preds = %172
  %189 = load i32, i32* @AVERROR_EOF, align 4
  br label %190

190:                                              ; preds = %188, %182
  %191 = phi i32 [ %187, %182 ], [ %189, %188 ]
  store i32 %191, i32* %3, align 4
  br label %317

192:                                              ; preds = %165
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %194 = call i32 @avio_rl32(%struct.TYPE_18__* %193)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp ult i32 %195, 4
  br i1 %196, label %202, label %197

197:                                              ; preds = %192
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @INT_MAX, align 4
  %200 = sub nsw i32 %199, 4
  %201 = icmp ugt i32 %198, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %197, %192
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %204 = load i32, i32* @AV_LOG_ERROR, align 4
  %205 = load i32, i32* %8, align 4
  %206 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %203, i32 %204, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %207, i32* %3, align 4
  br label %317

208:                                              ; preds = %197
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %210 = call i32 @avio_skip(%struct.TYPE_18__* %209, i32 4)
  %211 = load i32, i32* %8, align 4
  %212 = sub i32 %211, 4
  store i32 %212, i32* %8, align 4
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @av_get_packet(%struct.TYPE_18__* %213, %struct.TYPE_17__* %214, i32 %215)
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %6, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %208
  %220 = load i32, i32* %6, align 4
  store i32 %220, i32* %3, align 4
  br label %317

221:                                              ; preds = %208
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %8, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %233

225:                                              ; preds = %221
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %227 = load i32, i32* @AV_LOG_ERROR, align 4
  %228 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %226, i32 %227, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %230 = call i32 @av_packet_unref(%struct.TYPE_17__* %229)
  %231 = load i32, i32* @EIO, align 4
  %232 = call i32 @AVERROR(i32 %231)
  store i32 %232, i32* %3, align 4
  br label %317

233:                                              ; preds = %221
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %7, align 4
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %259

237:                                              ; preds = %234
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %239 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %240 = load i32, i32* @AVPALETTE_SIZE, align 4
  %241 = call i32* @av_packet_new_side_data(%struct.TYPE_17__* %238, i32 %239, i32 %240)
  store i32* %241, i32** %18, align 8
  %242 = load i32*, i32** %18, align 8
  %243 = icmp ne i32* %242, null
  br i1 %243, label %249, label %244

244:                                              ; preds = %237
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %246 = call i32 @av_packet_unref(%struct.TYPE_17__* %245)
  %247 = load i32, i32* @ENOMEM, align 4
  %248 = call i32 @AVERROR(i32 %247)
  store i32 %248, i32* %3, align 4
  br label %317

249:                                              ; preds = %237
  %250 = load i32*, i32** %18, align 8
  %251 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 0
  %252 = load i32, i32* @AVPALETTE_SIZE, align 4
  %253 = call i32 @memcpy(i32* %250, i32* %251, i32 %252)
  %254 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 4
  br label %259

259:                                              ; preds = %249, %234
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 0
  store i32 1, i32* %266, align 4
  br label %306

267:                                              ; preds = %47
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %267
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  store i32 %275, i32* %8, align 4
  br label %280

276:                                              ; preds = %267
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  store i32 %279, i32* %8, align 4
  br label %280

280:                                              ; preds = %276, %272
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %283 = load i32, i32* %8, align 4
  %284 = call i32 @av_get_packet(%struct.TYPE_18__* %281, %struct.TYPE_17__* %282, i32 %283)
  store i32 %284, i32* %6, align 4
  %285 = load i32, i32* %6, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %280
  %288 = load i32, i32* %6, align 4
  store i32 %288, i32* %3, align 4
  br label %317

289:                                              ; preds = %280
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 6
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 1
  store i32 %292, i32* %294, align 4
  %295 = load i32, i32* %8, align 4
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 8
  %299 = udiv i32 %295, %298
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 0
  store i32 %299, i32* %301, align 4
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = xor i32 %304, 1
  store i32 %305, i32* %303, align 4
  br label %306

306:                                              ; preds = %289, %259
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 5
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %306
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = xor i32 %314, 1
  store i32 %315, i32* %313, align 8
  br label %316

316:                                              ; preds = %311, %306
  store i32 0, i32* %3, align 4
  br label %317

317:                                              ; preds = %316, %287, %244, %225, %219, %202, %190, %74, %69, %57, %45
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local i64 @avio_feof(%struct.TYPE_18__*) #1

declare dso_local i32 @avio_rl32(%struct.TYPE_18__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_read(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*, ...) #1

declare dso_local i32 @avio_skip(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @av_get_packet(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_17__*) #1

declare dso_local i32* @av_packet_new_side_data(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
