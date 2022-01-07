; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutdec.c_decode_main_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutdec.c_decode_main_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_22__**, %struct.TYPE_22__*, i32, i8*, %struct.TYPE_21__*, i8*, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 }

@MAIN_STARTCODE = common dso_local global i32 0, align 4
@NUT_MIN_VERSION = common dso_local global i32 0, align 4
@NUT_MAX_VERSION = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Version %d not supported.\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@NUT_MAX_STREAMS = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"max_distance %d\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid time base %d/%d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"reached EOF while decoding main header\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"illegal count %d at %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"illegal stream number %d >= %d\0A\00", align 1
@FLAG_INVALID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"invalid elision header %d : %d > %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"main header checksum mismatch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @decode_main_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_main_header(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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
  %22 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 11
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  store %struct.TYPE_25__* %25, %struct.TYPE_25__** %4, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  store %struct.TYPE_24__* %28, %struct.TYPE_24__** %5, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %31 = load i32, i32* @MAIN_STARTCODE, align 4
  %32 = call i32 @get_packetheader(%struct.TYPE_23__* %29, %struct.TYPE_24__* %30, i32 1, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = call i32 @avio_tell(%struct.TYPE_24__* %33)
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %38 = call i8* @ffio_read_varlen(%struct.TYPE_24__* %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @NUT_MIN_VERSION, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %1
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @NUT_MAX_VERSION, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47, %1
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %54, i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @ENOSYS, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %2, align 4
  br label %627

62:                                               ; preds = %47
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 3
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %69 = call i8* @ffio_read_varlen(%struct.TYPE_24__* %68)
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 10
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @NUT_MAX_STREAMS, align 4
  %79 = icmp sle i32 %77, %78
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i1 [ false, %72 ], [ %79, %76 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @GET_V(i32 %73, i32 %82)
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %85 = call i8* @ffio_read_varlen(%struct.TYPE_24__* %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %91, 65536
  br i1 %92, label %93, label %102

93:                                               ; preds = %80
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %95 = load i32, i32* @AV_LOG_DEBUG, align 4
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %94, i32 %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  store i32 65536, i32* %101, align 4
  br label %102

102:                                              ; preds = %93, %80
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = load i32, i32* @INT_MAX, align 4
  %112 = sext i32 %111 to i64
  %113 = udiv i64 %112, 4
  %114 = icmp ult i64 %110, %113
  br label %115

115:                                              ; preds = %108, %102
  %116 = phi i1 [ false, %102 ], [ %114, %108 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 @GET_V(i32 %105, i32 %117)
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call %struct.TYPE_22__* @av_malloc_array(i32 %121, i32 4)
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 6
  store %struct.TYPE_22__* %122, %struct.TYPE_22__** %124, align 8
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 6
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %126, align 8
  %128 = icmp ne %struct.TYPE_22__* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %115
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = call i32 @AVERROR(i32 %130)
  store i32 %131, i32* %2, align 4
  br label %627

132:                                              ; preds = %115
  store i32 0, i32* %9, align 4
  br label %133

133:                                              ; preds = %216, %132
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp ult i32 %134, %137
  br i1 %138, label %139, label %219

139:                                              ; preds = %133
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 6
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %139
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = icmp ult i64 %152, 2147483648
  br label %154

154:                                              ; preds = %150, %139
  %155 = phi i1 [ false, %139 ], [ %153, %150 ]
  %156 = zext i1 %155 to i32
  %157 = call i32 @GET_V(i32 %147, i32 %156)
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 6
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %154
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = icmp ult i64 %170, 2147483648
  br label %172

172:                                              ; preds = %168, %154
  %173 = phi i1 [ false, %154 ], [ %171, %168 ]
  %174 = zext i1 %173 to i32
  %175 = call i32 @GET_V(i32 %165, i32 %174)
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 6
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 6
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @av_gcd(i32 %183, i32 %191)
  %193 = icmp ne i32 %192, 1
  br i1 %193, label %194, label %215

194:                                              ; preds = %172
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %196 = load i32, i32* @AV_LOG_ERROR, align 4
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 6
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 6
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %206, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %195, i32 %196, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %204, i32 %212)
  %214 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %214, i32* %12, align 4
  br label %602

215:                                              ; preds = %172
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %9, align 4
  br label %133

219:                                              ; preds = %133
  store i32 0, i32* %15, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %9, align 4
  br label %220

220:                                              ; preds = %420, %219
  %221 = load i32, i32* %9, align 4
  %222 = icmp slt i32 %221, 256
  br i1 %222, label %223, label %421

223:                                              ; preds = %220
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %225 = call i8* @ffio_read_varlen(%struct.TYPE_24__* %224)
  %226 = ptrtoint i8* %225 to i32
  store i32 %226, i32* %19, align 4
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %228 = call i8* @ffio_read_varlen(%struct.TYPE_24__* %227)
  %229 = ptrtoint i8* %228 to i32
  store i32 %229, i32* %20, align 4
  %230 = load i32, i32* %20, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %223
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %234 = call i32 @get_s(%struct.TYPE_24__* %233)
  store i32 %234, i32* %15, align 4
  br label %235

235:                                              ; preds = %232, %223
  %236 = load i32, i32* %20, align 4
  %237 = icmp sgt i32 %236, 1
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %240 = call i8* @ffio_read_varlen(%struct.TYPE_24__* %239)
  %241 = ptrtoint i8* %240 to i32
  store i32 %241, i32* %14, align 4
  br label %242

242:                                              ; preds = %238, %235
  %243 = load i32, i32* %20, align 4
  %244 = icmp sgt i32 %243, 2
  br i1 %244, label %245, label %249

245:                                              ; preds = %242
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %247 = call i8* @ffio_read_varlen(%struct.TYPE_24__* %246)
  %248 = ptrtoint i8* %247 to i32
  store i32 %248, i32* %13, align 4
  br label %249

249:                                              ; preds = %245, %242
  %250 = load i32, i32* %20, align 4
  %251 = icmp sgt i32 %250, 3
  br i1 %251, label %252, label %256

252:                                              ; preds = %249
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %254 = call i8* @ffio_read_varlen(%struct.TYPE_24__* %253)
  %255 = ptrtoint i8* %254 to i32
  store i32 %255, i32* %16, align 4
  br label %257

256:                                              ; preds = %249
  store i32 0, i32* %16, align 4
  br label %257

257:                                              ; preds = %256, %252
  %258 = load i32, i32* %20, align 4
  %259 = icmp sgt i32 %258, 4
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %262 = call i8* @ffio_read_varlen(%struct.TYPE_24__* %261)
  %263 = ptrtoint i8* %262 to i32
  store i32 %263, i32* %17, align 4
  br label %265

264:                                              ; preds = %257
  store i32 0, i32* %17, align 4
  br label %265

265:                                              ; preds = %264, %260
  %266 = load i32, i32* %20, align 4
  %267 = icmp sgt i32 %266, 5
  br i1 %267, label %268, label %272

268:                                              ; preds = %265
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %270 = call i8* @ffio_read_varlen(%struct.TYPE_24__* %269)
  %271 = ptrtoint i8* %270 to i32
  store i32 %271, i32* %11, align 4
  br label %276

272:                                              ; preds = %265
  %273 = load i32, i32* %14, align 4
  %274 = load i32, i32* %16, align 4
  %275 = sub nsw i32 %273, %274
  store i32 %275, i32* %11, align 4
  br label %276

276:                                              ; preds = %272, %268
  %277 = load i32, i32* %20, align 4
  %278 = icmp sgt i32 %277, 6
  br i1 %278, label %279, label %282

279:                                              ; preds = %276
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %281 = call i32 @get_s(%struct.TYPE_24__* %280)
  br label %282

282:                                              ; preds = %279, %276
  %283 = load i32, i32* %20, align 4
  %284 = icmp sgt i32 %283, 7
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %287 = call i8* @ffio_read_varlen(%struct.TYPE_24__* %286)
  %288 = ptrtoint i8* %287 to i32
  store i32 %288, i32* %18, align 4
  br label %289

289:                                              ; preds = %285, %282
  br label %290

290:                                              ; preds = %304, %289
  %291 = load i32, i32* %20, align 4
  %292 = add nsw i32 %291, -1
  store i32 %292, i32* %20, align 4
  %293 = icmp sgt i32 %291, 8
  br i1 %293, label %294, label %307

294:                                              ; preds = %290
  %295 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %294
  %300 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %301 = load i32, i32* @AV_LOG_ERROR, align 4
  %302 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %300, i32 %301, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %303 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %303, i32* %12, align 4
  br label %602

304:                                              ; preds = %294
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %306 = call i8* @ffio_read_varlen(%struct.TYPE_24__* %305)
  br label %290

307:                                              ; preds = %290
  %308 = load i32, i32* %11, align 4
  %309 = icmp sle i32 %308, 0
  br i1 %309, label %319, label %310

310:                                              ; preds = %307
  %311 = load i32, i32* %11, align 4
  %312 = load i32, i32* %9, align 4
  %313 = icmp sle i32 %312, 78
  %314 = zext i1 %313 to i32
  %315 = sub nsw i32 256, %314
  %316 = load i32, i32* %9, align 4
  %317 = sub nsw i32 %315, %316
  %318 = icmp sgt i32 %311, %317
  br i1 %318, label %319, label %326

319:                                              ; preds = %310, %307
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %321 = load i32, i32* @AV_LOG_ERROR, align 4
  %322 = load i32, i32* %11, align 4
  %323 = load i32, i32* %9, align 4
  %324 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %320, i32 %321, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %322, i32 %323)
  %325 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %325, i32* %12, align 4
  br label %602

326:                                              ; preds = %310
  %327 = load i32, i32* %13, align 4
  %328 = load i32, i32* %8, align 4
  %329 = icmp uge i32 %327, %328
  br i1 %329, label %330, label %337

330:                                              ; preds = %326
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %332 = load i32, i32* @AV_LOG_ERROR, align 4
  %333 = load i32, i32* %13, align 4
  %334 = load i32, i32* %8, align 4
  %335 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %331, i32 %332, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %333, i32 %334)
  %336 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %336, i32* %12, align 4
  br label %602

337:                                              ; preds = %326
  store i32 0, i32* %10, align 4
  br label %338

338:                                              ; preds = %415, %337
  %339 = load i32, i32* %10, align 4
  %340 = load i32, i32* %11, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %420

342:                                              ; preds = %338
  %343 = load i32, i32* %9, align 4
  %344 = icmp eq i32 %343, 78
  br i1 %344, label %345, label %356

345:                                              ; preds = %342
  %346 = load i32, i32* @FLAG_INVALID, align 4
  %347 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %347, i32 0, i32 9
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %348, align 8
  %350 = load i32, i32* %9, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %352, i32 0, i32 0
  store i32 %346, i32* %353, align 4
  %354 = load i32, i32* %10, align 4
  %355 = add nsw i32 %354, -1
  store i32 %355, i32* %10, align 4
  br label %415

356:                                              ; preds = %342
  %357 = load i32, i32* %19, align 4
  %358 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %358, i32 0, i32 9
  %360 = load %struct.TYPE_21__*, %struct.TYPE_21__** %359, align 8
  %361 = load i32, i32* %9, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %363, i32 0, i32 0
  store i32 %357, i32* %364, align 4
  %365 = load i32, i32* %15, align 4
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %366, i32 0, i32 9
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %367, align 8
  %369 = load i32, i32* %9, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 1
  store i32 %365, i32* %372, align 4
  %373 = load i32, i32* %13, align 4
  %374 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %374, i32 0, i32 9
  %376 = load %struct.TYPE_21__*, %struct.TYPE_21__** %375, align 8
  %377 = load i32, i32* %9, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %376, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %379, i32 0, i32 2
  store i32 %373, i32* %380, align 4
  %381 = load i32, i32* %14, align 4
  %382 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %382, i32 0, i32 9
  %384 = load %struct.TYPE_21__*, %struct.TYPE_21__** %383, align 8
  %385 = load i32, i32* %9, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %384, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %387, i32 0, i32 3
  store i32 %381, i32* %388, align 4
  %389 = load i32, i32* %16, align 4
  %390 = load i32, i32* %10, align 4
  %391 = add nsw i32 %389, %390
  %392 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %392, i32 0, i32 9
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %393, align 8
  %395 = load i32, i32* %9, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %397, i32 0, i32 4
  store i32 %391, i32* %398, align 4
  %399 = load i32, i32* %17, align 4
  %400 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %400, i32 0, i32 9
  %402 = load %struct.TYPE_21__*, %struct.TYPE_21__** %401, align 8
  %403 = load i32, i32* %9, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %405, i32 0, i32 5
  store i32 %399, i32* %406, align 4
  %407 = load i32, i32* %18, align 4
  %408 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %408, i32 0, i32 9
  %410 = load %struct.TYPE_21__*, %struct.TYPE_21__** %409, align 8
  %411 = load i32, i32* %9, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %410, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %413, i32 0, i32 6
  store i32 %407, i32* %414, align 4
  br label %415

415:                                              ; preds = %356, %345
  %416 = load i32, i32* %10, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %10, align 4
  %418 = load i32, i32* %9, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %9, align 4
  br label %338

420:                                              ; preds = %338
  br label %220

421:                                              ; preds = %220
  %422 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %422, i32 0, i32 9
  %424 = load %struct.TYPE_21__*, %struct.TYPE_21__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %424, i64 78
  %426 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* @FLAG_INVALID, align 4
  %429 = icmp eq i32 %427, %428
  %430 = zext i1 %429 to i32
  %431 = call i32 @av_assert0(i32 %430)
  %432 = load i32, i32* %7, align 4
  %433 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %434 = call i32 @avio_tell(%struct.TYPE_24__* %433)
  %435 = add nsw i32 %434, 4
  %436 = icmp sgt i32 %432, %435
  br i1 %436, label %437, label %548

437:                                              ; preds = %421
  store i32 1024, i32* %21, align 4
  %438 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %438, i32 0, i32 3
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* %6, align 4
  %442 = icmp ult i32 %441, 128
  %443 = zext i1 %442 to i32
  %444 = call i32 @GET_V(i32 %440, i32 %443)
  %445 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %446 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 4
  %448 = add i32 %447, 1
  store i32 %448, i32* %446, align 4
  store i32 1, i32* %9, align 4
  br label %449

449:                                              ; preds = %536, %437
  %450 = load i32, i32* %9, align 4
  %451 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %451, i32 0, i32 3
  %453 = load i32, i32* %452, align 4
  %454 = icmp ult i32 %450, %453
  br i1 %454, label %455, label %539

455:                                              ; preds = %449
  %456 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %456, i32 0, i32 4
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %9, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = load i32, i32* %6, align 4
  %464 = icmp sgt i32 %463, 0
  br i1 %464, label %465, label %468

465:                                              ; preds = %455
  %466 = load i32, i32* %6, align 4
  %467 = icmp slt i32 %466, 256
  br label %468

468:                                              ; preds = %465, %455
  %469 = phi i1 [ false, %455 ], [ %467, %465 ]
  %470 = zext i1 %469 to i32
  %471 = call i32 @GET_V(i32 %462, i32 %470)
  %472 = load i32, i32* %21, align 4
  %473 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %474 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %473, i32 0, i32 4
  %475 = load i32*, i32** %474, align 8
  %476 = load i32, i32* %9, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = icmp ult i32 %472, %479
  br i1 %480, label %481, label %495

481:                                              ; preds = %468
  %482 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %483 = load i32, i32* @AV_LOG_ERROR, align 4
  %484 = load i32, i32* %9, align 4
  %485 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %486 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %485, i32 0, i32 4
  %487 = load i32*, i32** %486, align 8
  %488 = load i32, i32* %9, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %487, i64 %489
  %491 = load i32, i32* %490, align 4
  %492 = load i32, i32* %21, align 4
  %493 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %482, i32 %483, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %484, i32 %491, i32 %492)
  %494 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %494, i32* %12, align 4
  br label %602

495:                                              ; preds = %468
  %496 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %497 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %496, i32 0, i32 4
  %498 = load i32*, i32** %497, align 8
  %499 = load i32, i32* %9, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %498, i64 %500
  %502 = load i32, i32* %501, align 4
  %503 = load i32, i32* %21, align 4
  %504 = sub i32 %503, %502
  store i32 %504, i32* %21, align 4
  %505 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %506 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %505, i32 0, i32 4
  %507 = load i32*, i32** %506, align 8
  %508 = load i32, i32* %9, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %507, i64 %509
  %511 = load i32, i32* %510, align 4
  %512 = call %struct.TYPE_22__* @av_malloc(i32 %511)
  store %struct.TYPE_22__* %512, %struct.TYPE_22__** %22, align 8
  %513 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %514 = icmp ne %struct.TYPE_22__* %513, null
  br i1 %514, label %518, label %515

515:                                              ; preds = %495
  %516 = load i32, i32* @ENOMEM, align 4
  %517 = call i32 @AVERROR(i32 %516)
  store i32 %517, i32* %12, align 4
  br label %602

518:                                              ; preds = %495
  %519 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %520 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %521 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %521, i32 0, i32 4
  %523 = load i32*, i32** %522, align 8
  %524 = load i32, i32* %9, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %523, i64 %525
  %527 = load i32, i32* %526, align 4
  %528 = call i32 @avio_read(%struct.TYPE_24__* %519, %struct.TYPE_22__* %520, i32 %527)
  %529 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %530 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %531 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %530, i32 0, i32 5
  %532 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %531, align 8
  %533 = load i32, i32* %9, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %532, i64 %534
  store %struct.TYPE_22__* %529, %struct.TYPE_22__** %535, align 8
  br label %536

536:                                              ; preds = %518
  %537 = load i32, i32* %9, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %9, align 4
  br label %449

539:                                              ; preds = %449
  %540 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %541 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %540, i32 0, i32 4
  %542 = load i32*, i32** %541, align 8
  %543 = getelementptr inbounds i32, i32* %542, i64 0
  %544 = load i32, i32* %543, align 4
  %545 = icmp eq i32 %544, 0
  %546 = zext i1 %545 to i32
  %547 = call i32 @av_assert0(i32 %546)
  br label %548

548:                                              ; preds = %539, %421
  %549 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %550 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = icmp sgt i32 %551, 3
  br i1 %552, label %553, label %564

553:                                              ; preds = %548
  %554 = load i32, i32* %7, align 4
  %555 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %556 = call i32 @avio_tell(%struct.TYPE_24__* %555)
  %557 = add nsw i32 %556, 4
  %558 = icmp sgt i32 %554, %557
  br i1 %558, label %559, label %564

559:                                              ; preds = %553
  %560 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %561 = call i8* @ffio_read_varlen(%struct.TYPE_24__* %560)
  %562 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %563 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %562, i32 0, i32 8
  store i8* %561, i8** %563, align 8
  br label %564

564:                                              ; preds = %559, %553, %548
  %565 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %566 = load i32, i32* %7, align 4
  %567 = call i64 @skip_reserved(%struct.TYPE_24__* %565, i32 %566)
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %573, label %569

569:                                              ; preds = %564
  %570 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %571 = call i64 @ffio_get_checksum(%struct.TYPE_24__* %570)
  %572 = icmp ne i64 %571, 0
  br i1 %572, label %573, label %578

573:                                              ; preds = %569, %564
  %574 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %575 = load i32, i32* @AV_LOG_ERROR, align 4
  %576 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %574, i32 %575, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %577 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %577, i32* %12, align 4
  br label %602

578:                                              ; preds = %569
  %579 = load i32, i32* %8, align 4
  %580 = call i32 @av_calloc(i32 %579, i32 4)
  %581 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %582 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %581, i32 0, i32 7
  store i32 %580, i32* %582, align 8
  %583 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %584 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %583, i32 0, i32 7
  %585 = load i32, i32* %584, align 8
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %590, label %587

587:                                              ; preds = %578
  %588 = load i32, i32* @ENOMEM, align 4
  %589 = call i32 @AVERROR(i32 %588)
  store i32 %589, i32* %12, align 4
  br label %602

590:                                              ; preds = %578
  store i32 0, i32* %9, align 4
  br label %591

591:                                              ; preds = %598, %590
  %592 = load i32, i32* %9, align 4
  %593 = load i32, i32* %8, align 4
  %594 = icmp ult i32 %592, %593
  br i1 %594, label %595, label %601

595:                                              ; preds = %591
  %596 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %597 = call i32 @avformat_new_stream(%struct.TYPE_25__* %596, i32* null)
  br label %598

598:                                              ; preds = %595
  %599 = load i32, i32* %9, align 4
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %9, align 4
  br label %591

601:                                              ; preds = %591
  store i32 0, i32* %2, align 4
  br label %627

602:                                              ; preds = %587, %573, %515, %481, %330, %319, %299, %194
  %603 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %604 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %603, i32 0, i32 6
  %605 = call i32 @av_freep(%struct.TYPE_22__** %604)
  store i32 1, i32* %9, align 4
  br label %606

606:                                              ; preds = %620, %602
  %607 = load i32, i32* %9, align 4
  %608 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %609 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %608, i32 0, i32 3
  %610 = load i32, i32* %609, align 4
  %611 = icmp ult i32 %607, %610
  br i1 %611, label %612, label %623

612:                                              ; preds = %606
  %613 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %614 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %613, i32 0, i32 5
  %615 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %614, align 8
  %616 = load i32, i32* %9, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %615, i64 %617
  %619 = call i32 @av_freep(%struct.TYPE_22__** %618)
  br label %620

620:                                              ; preds = %612
  %621 = load i32, i32* %9, align 4
  %622 = add nsw i32 %621, 1
  store i32 %622, i32* %9, align 4
  br label %606

623:                                              ; preds = %606
  %624 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %625 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %624, i32 0, i32 3
  store i32 0, i32* %625, align 4
  %626 = load i32, i32* %12, align 4
  store i32 %626, i32* %2, align 4
  br label %627

627:                                              ; preds = %623, %601, %129, %53
  %628 = load i32, i32* %2, align 4
  ret i32 %628
}

declare dso_local i32 @get_packetheader(%struct.TYPE_23__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @avio_tell(%struct.TYPE_24__*) #1

declare dso_local i8* @ffio_read_varlen(%struct.TYPE_24__*) #1

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @GET_V(i32, i32) #1

declare dso_local %struct.TYPE_22__* @av_malloc_array(i32, i32) #1

declare dso_local i32 @av_gcd(i32, i32) #1

declare dso_local i32 @get_s(%struct.TYPE_24__*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local %struct.TYPE_22__* @av_malloc(i32) #1

declare dso_local i32 @avio_read(%struct.TYPE_24__*, %struct.TYPE_22__*, i32) #1

declare dso_local i64 @skip_reserved(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @ffio_get_checksum(%struct.TYPE_24__*) #1

declare dso_local i32 @av_calloc(i32, i32) #1

declare dso_local i32 @avformat_new_stream(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @av_freep(%struct.TYPE_22__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
