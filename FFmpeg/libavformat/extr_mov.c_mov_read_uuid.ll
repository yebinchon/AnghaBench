; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_uuid.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@mov_read_uuid.uuid_isml_manifest = internal constant [16 x i32] [i32 165, i32 212, i32 11, i32 48, i32 232, i32 20, i32 17, i32 221, i32 186, i32 47, i32 8, i32 0, i32 32, i32 12, i32 154, i32 102], align 16
@mov_read_uuid.uuid_xmp = internal constant [16 x i32] [i32 190, i32 122, i32 207, i32 203, i32 151, i32 169, i32 66, i32 232, i32 156, i32 113, i32 153, i32 148, i32 145, i32 227, i32 175, i32 172], align 16
@mov_read_uuid.uuid_spherical = internal constant [16 x i32] [i32 255, i32 204, i32 130, i32 99, i32 248, i32 85, i32 74, i32 147, i32 136, i32 20, i32 88, i32 122, i32 2, i32 82, i32 31, i32 221], align 16
@INT_MAX = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"systemBitrate=\22\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"xmp\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Invalid spherical metadata found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32)* @mov_read_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_uuid(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [16 x i32], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i32 %2, i32* %19, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 64
  br i1 %23, label %31, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @INT_MAX, align 4
  %28 = load i32, i32* @SIZE_MAX, align 4
  %29 = call i32 @FFMIN(i32 %27, i32 %28)
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24, %3
  %32 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %32, i32* %4, align 4
  br label %288

33:                                               ; preds = %24
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %288

41:                                               ; preds = %33
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %45, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %46, i64 %53
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %8, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %9, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %61 = call i32 @avio_read(i32* %59, i32* %60, i64 64)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %41
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %288

66:                                               ; preds = %41
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 64
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %71, i32* %4, align 4
  br label %288

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %75 = call i32 @memcmp(i32* %74, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @mov_read_uuid.uuid_isml_manifest, i64 0, i64 0), i32 64)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %191, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = sub i64 %80, 64
  store i64 %81, i64* %15, align 8
  %82 = load i64, i64* %15, align 8
  %83 = icmp ult i64 %82, 4
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %85, i32* %4, align 4
  br label %288

86:                                               ; preds = %77
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @avio_skip(i32* %87, i64 4)
  store i32 %88, i32* %10, align 4
  %89 = load i64, i64* %15, align 8
  %90 = sub i64 %89, 4
  store i64 %90, i64* %15, align 8
  %91 = load i64, i64* %15, align 8
  %92 = add i64 %91, 1
  %93 = call i32* @av_mallocz(i64 %92)
  store i32* %93, i32** %12, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %86
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = call i32 @AVERROR(i32 %97)
  store i32 %98, i32* %4, align 4
  br label %288

99:                                               ; preds = %86
  %100 = load i32*, i32** %7, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = load i64, i64* %15, align 8
  %103 = call i32 @avio_read(i32* %100, i32* %101, i64 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @av_free(i32* %107)
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %4, align 4
  br label %288

110:                                              ; preds = %99
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %15, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32*, i32** %12, align 8
  %117 = call i32 @av_free(i32* %116)
  %118 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %118, i32* %4, align 4
  br label %288

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119
  %121 = load i32*, i32** %12, align 8
  store i32* %121, i32** %13, align 8
  br label %122

122:                                              ; preds = %187, %120
  %123 = load i32*, i32** %13, align 8
  %124 = call i32* @av_stristr(i32* %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32* %124, i32** %13, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %188

126:                                              ; preds = %122
  %127 = load i32*, i32** %13, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 15
  store i32* %128, i32** %13, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32* @av_realloc_f(i32* %135, i32 %138, i32 4)
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  store i32* %139, i32** %141, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %153, label %146

146:                                              ; preds = %126
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  %149 = load i32*, i32** %12, align 8
  %150 = call i32 @av_free(i32* %149)
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = call i32 @AVERROR(i32 %151)
  store i32 %152, i32* %4, align 4
  br label %288

153:                                              ; preds = %126
  store i64 0, i64* @errno, align 8
  %154 = load i32*, i32** %13, align 8
  %155 = call i32 @strtol(i32* %154, i8** %14, i32 10)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %153
  %159 = load i64, i64* @errno, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %158
  %162 = load i8*, i8** %14, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 34
  br i1 %165, label %166, label %176

166:                                              ; preds = %161, %158, %153
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %169, i64 %174
  store i32 0, i32* %175, align 4
  br label %187

176:                                              ; preds = %161
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %180, i64 %185
  store i32 %177, i32* %186, align 4
  br label %187

187:                                              ; preds = %176, %166
  br label %122

188:                                              ; preds = %122
  %189 = load i32*, i32** %12, align 8
  %190 = call i32 @av_free(i32* %189)
  br label %287

191:                                              ; preds = %73
  %192 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %193 = call i32 @memcmp(i32* %192, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @mov_read_uuid.uuid_xmp, i64 0, i64 0), i32 64)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %256, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = sub i64 %198, 64
  store i64 %199, i64* %17, align 8
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %246

204:                                              ; preds = %195
  %205 = load i64, i64* %17, align 8
  %206 = add i64 %205, 1
  %207 = call i32* @av_mallocz(i64 %206)
  store i32* %207, i32** %16, align 8
  %208 = load i32*, i32** %16, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %204
  %211 = load i32, i32* @ENOMEM, align 4
  %212 = call i32 @AVERROR(i32 %211)
  store i32 %212, i32* %4, align 4
  br label %288

213:                                              ; preds = %204
  %214 = load i32*, i32** %7, align 8
  %215 = load i32*, i32** %16, align 8
  %216 = load i64, i64* %17, align 8
  %217 = call i32 @avio_read(i32* %214, i32* %215, i64 %216)
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* %10, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %213
  %221 = load i32*, i32** %16, align 8
  %222 = call i32 @av_free(i32* %221)
  %223 = load i32, i32* %10, align 4
  store i32 %223, i32* %4, align 4
  br label %288

224:                                              ; preds = %213
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = load i64, i64* %17, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %224
  %230 = load i32*, i32** %16, align 8
  %231 = call i32 @av_free(i32* %230)
  %232 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %232, i32* %4, align 4
  br label %288

233:                                              ; preds = %224
  br label %234

234:                                              ; preds = %233
  %235 = load i32*, i32** %16, align 8
  %236 = load i64, i64* %17, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  store i32 0, i32* %237, align 4
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 1
  %242 = load i32*, i32** %16, align 8
  %243 = call i32 @av_dict_set(i32* %241, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %242, i32 0)
  %244 = load i32*, i32** %16, align 8
  %245 = call i32 @av_free(i32* %244)
  br label %255

246:                                              ; preds = %195
  %247 = load i32*, i32** %7, align 8
  %248 = load i64, i64* %17, align 8
  %249 = call i32 @avio_skip(i32* %247, i64 %248)
  store i32 %249, i32* %10, align 4
  %250 = load i32, i32* %10, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %246
  %253 = load i32, i32* %10, align 4
  store i32 %253, i32* %4, align 4
  br label %288

254:                                              ; preds = %246
  br label %255

255:                                              ; preds = %254, %234
  br label %286

256:                                              ; preds = %191
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %258 = call i32 @memcmp(i32* %257, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @mov_read_uuid.uuid_spherical, i64 0, i64 0), i32 64)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %285, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = sub i64 %263, 64
  store i64 %264, i64* %18, align 8
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %266 = load i32*, i32** %7, align 8
  %267 = load i64, i64* %18, align 8
  %268 = call i32 @mov_parse_uuid_spherical(%struct.TYPE_9__* %265, i32* %266, i64 %267)
  store i32 %268, i32* %10, align 4
  %269 = load i32, i32* %10, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %260
  %272 = load i32, i32* %10, align 4
  store i32 %272, i32* %4, align 4
  br label %288

273:                                              ; preds = %260
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %284, label %278

278:                                              ; preds = %273
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 2
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %280, align 8
  %282 = load i32, i32* @AV_LOG_WARNING, align 4
  %283 = call i32 @av_log(%struct.TYPE_13__* %281, i32 %282, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %284

284:                                              ; preds = %278, %273
  br label %285

285:                                              ; preds = %284, %256
  br label %286

286:                                              ; preds = %285, %255
  br label %287

287:                                              ; preds = %286, %188
  store i32 0, i32* %4, align 4
  br label %288

288:                                              ; preds = %287, %271, %252, %229, %220, %210, %146, %115, %106, %96, %84, %70, %64, %40, %31
  %289 = load i32, i32* %4, align 4
  ret i32 %289
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @avio_read(i32*, i32*, i64) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @avio_skip(i32*, i64) #1

declare dso_local i32* @av_mallocz(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32* @av_stristr(i32*, i8*) #1

declare dso_local i32* @av_realloc_f(i32*, i32, i32) #1

declare dso_local i32 @strtol(i32*, i8**, i32) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i32*, i32) #1

declare dso_local i32 @mov_parse_uuid_spherical(%struct.TYPE_9__*, i32*, i64) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
