; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tdsc.c_tdsc_load_cursor.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tdsc.c_tdsc_load_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i32*, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Invalid cursor position (%d.%d outside %dx%d).\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Invalid cursor dimensions %dx%d.\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Invalid hotspot position %d.%d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Cannot allocate cursor buffer.\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Cursor format %08x\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @tdsc_load_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdsc_load_cursor(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 7
  %21 = call i8* @bytestream2_get_le16(i32* %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 7
  %27 = call i8* @bytestream2_get_le16(i32* %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 7
  %33 = call i8* @bytestream2_get_le16(i32* %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 7
  %39 = call i8* @bytestream2_get_le16(i32* %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @FFALIGN(i32 %45, i32 32)
  %47 = mul nsw i32 %46, 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 7
  %52 = call i32 @bytestream2_get_le32(i32* %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %55, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %63, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %60, %1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %69, i32 %70, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %73, i64 %76, i32 %79, i64 %82)
  %84 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %84, i32* %2, align 4
  br label %464

85:                                               ; preds = %60
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %105, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 256
  br i1 %94, label %105, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 256
  br i1 %104, label %105, label %116

105:                                              ; preds = %100, %95, %90, %85
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = load i32, i32* @AV_LOG_ERROR, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %106, i32 %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %113)
  %115 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %115, i32* %2, align 4
  br label %464

116:                                              ; preds = %100
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %119, %122
  br i1 %123, label %132, label %124

124:                                              ; preds = %116
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %127, %130
  br i1 %131, label %132, label %164

132:                                              ; preds = %124, %116
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = load i32, i32* @AV_LOG_WARNING, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %133, i32 %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %137, i32 %140)
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sub nsw i32 %147, 1
  %149 = call i8* @FFMIN(i32 %144, i32 %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %158, 1
  %160 = call i8* @FFMIN(i32 %155, i32 %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %132, %124
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 6
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 %169, %172
  %174 = call i32 @av_reallocp(i32** %166, i32 %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %164
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %179 = load i32, i32* @AV_LOG_ERROR, align 4
  %180 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %178, i32 %179, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %2, align 4
  br label %464

182:                                              ; preds = %164
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 6
  %185 = load i32*, i32** %184, align 8
  store i32* %185, i32** %10, align 8
  %186 = load i32, i32* %9, align 4
  switch i32 %186, label %458 [
    i32 129, label %187
    i32 130, label %335
    i32 128, label %335
  ]

187:                                              ; preds = %182
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %240, %187
  %189 = load i32, i32* %6, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %243

194:                                              ; preds = %188
  store i32 0, i32* %5, align 4
  br label %195

195:                                              ; preds = %225, %194
  %196 = load i32, i32* %5, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %228

201:                                              ; preds = %195
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 7
  %204 = call i32 @bytestream2_get_be32(i32* %203)
  store i32 %204, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %205

205:                                              ; preds = %221, %201
  %206 = load i32, i32* %7, align 4
  %207 = icmp slt i32 %206, 32
  br i1 %207, label %208, label %224

208:                                              ; preds = %205
  %209 = load i32, i32* %11, align 4
  %210 = and i32 %209, -2147483648
  %211 = icmp ne i32 %210, 0
  %212 = xor i1 %211, true
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = load i32*, i32** %10, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  store i32 %214, i32* %216, align 4
  %217 = load i32*, i32** %10, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 4
  store i32* %218, i32** %10, align 8
  %219 = load i32, i32* %11, align 4
  %220 = shl i32 %219, 1
  store i32 %220, i32* %11, align 4
  br label %221

221:                                              ; preds = %208
  %222 = load i32, i32* %7, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %7, align 4
  br label %205

224:                                              ; preds = %205
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %5, align 4
  %227 = add nsw i32 %226, 32
  store i32 %227, i32* %5, align 4
  br label %195

228:                                              ; preds = %195
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = mul nsw i32 %234, 4
  %236 = sub nsw i32 %231, %235
  %237 = load i32*, i32** %10, align 8
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  store i32* %239, i32** %10, align 8
  br label %240

240:                                              ; preds = %228
  %241 = load i32, i32* %6, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %6, align 4
  br label %188

243:                                              ; preds = %188
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 6
  %246 = load i32*, i32** %245, align 8
  store i32* %246, i32** %10, align 8
  store i32 0, i32* %6, align 4
  br label %247

247:                                              ; preds = %331, %243
  %248 = load i32, i32* %6, align 4
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %253, label %334

253:                                              ; preds = %247
  store i32 0, i32* %5, align 4
  br label %254

254:                                              ; preds = %316, %253
  %255 = load i32, i32* %5, align 4
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = icmp slt i32 %255, %258
  br i1 %259, label %260, label %319

260:                                              ; preds = %254
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 7
  %263 = call i32 @bytestream2_get_be32(i32* %262)
  store i32 %263, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %264

264:                                              ; preds = %312, %260
  %265 = load i32, i32* %7, align 4
  %266 = icmp slt i32 %265, 32
  br i1 %266, label %267, label %315

267:                                              ; preds = %264
  %268 = load i32, i32* %12, align 4
  %269 = and i32 %268, -2147483648
  %270 = icmp ne i32 %269, 0
  %271 = xor i1 %270, true
  %272 = xor i1 %271, true
  %273 = zext i1 %272 to i32
  store i32 %273, i32* %13, align 4
  %274 = load i32*, i32** %10, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = mul nsw i32 %276, 2
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %277, %278
  switch i32 %279, label %298 [
    i32 0, label %280
    i32 1, label %289
  ]

280:                                              ; preds = %267
  %281 = load i32*, i32** %10, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  store i32 255, i32* %282, align 4
  %283 = load i32*, i32** %10, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  store i32 0, i32* %284, align 4
  %285 = load i32*, i32** %10, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 2
  store i32 0, i32* %286, align 4
  %287 = load i32*, i32** %10, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 3
  store i32 0, i32* %288, align 4
  br label %307

289:                                              ; preds = %267
  %290 = load i32*, i32** %10, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  store i32 255, i32* %291, align 4
  %292 = load i32*, i32** %10, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 1
  store i32 255, i32* %293, align 4
  %294 = load i32*, i32** %10, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 2
  store i32 255, i32* %295, align 4
  %296 = load i32*, i32** %10, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 3
  store i32 255, i32* %297, align 4
  br label %307

298:                                              ; preds = %267
  %299 = load i32*, i32** %10, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  store i32 0, i32* %300, align 4
  %301 = load i32*, i32** %10, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 1
  store i32 0, i32* %302, align 4
  %303 = load i32*, i32** %10, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 2
  store i32 0, i32* %304, align 4
  %305 = load i32*, i32** %10, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 3
  store i32 0, i32* %306, align 4
  br label %307

307:                                              ; preds = %298, %289, %280
  %308 = load i32*, i32** %10, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 4
  store i32* %309, i32** %10, align 8
  %310 = load i32, i32* %12, align 4
  %311 = shl i32 %310, 1
  store i32 %311, i32* %12, align 4
  br label %312

312:                                              ; preds = %307
  %313 = load i32, i32* %7, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %7, align 4
  br label %264

315:                                              ; preds = %264
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %5, align 4
  %318 = add nsw i32 %317, 32
  store i32 %318, i32* %5, align 4
  br label %254

319:                                              ; preds = %254
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = mul nsw i32 %325, 4
  %327 = sub nsw i32 %322, %326
  %328 = load i32*, i32** %10, align 8
  %329 = sext i32 %327 to i64
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  store i32* %330, i32** %10, align 8
  br label %331

331:                                              ; preds = %319
  %332 = load i32, i32* %6, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %6, align 4
  br label %247

334:                                              ; preds = %247
  br label %463

335:                                              ; preds = %182, %182
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 7
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @FFALIGN(i32 %343, i32 32)
  %345 = ashr i32 %344, 3
  %346 = mul nsw i32 %340, %345
  %347 = call i32 @bytestream2_skip(i32* %337, i32 %346)
  %348 = load i32, i32* %9, align 4
  %349 = and i32 %348, 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %404

351:                                              ; preds = %335
  store i32 0, i32* %6, align 4
  br label %352

352:                                              ; preds = %400, %351
  %353 = load i32, i32* %6, align 4
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = icmp slt i32 %353, %356
  br i1 %357, label %358, label %403

358:                                              ; preds = %352
  store i32 0, i32* %5, align 4
  br label %359

359:                                              ; preds = %385, %358
  %360 = load i32, i32* %5, align 4
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = icmp slt i32 %360, %363
  br i1 %364, label %365, label %388

365:                                              ; preds = %359
  %366 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 7
  %368 = call i32 @bytestream2_get_be32(i32* %367)
  store i32 %368, i32* %14, align 4
  %369 = load i32, i32* %14, align 4
  %370 = ashr i32 %369, 24
  %371 = load i32*, i32** %10, align 8
  %372 = getelementptr inbounds i32, i32* %371, i32 1
  store i32* %372, i32** %10, align 8
  store i32 %370, i32* %371, align 4
  %373 = load i32, i32* %14, align 4
  %374 = ashr i32 %373, 16
  %375 = load i32*, i32** %10, align 8
  %376 = getelementptr inbounds i32, i32* %375, i32 1
  store i32* %376, i32** %10, align 8
  store i32 %374, i32* %375, align 4
  %377 = load i32, i32* %14, align 4
  %378 = ashr i32 %377, 8
  %379 = load i32*, i32** %10, align 8
  %380 = getelementptr inbounds i32, i32* %379, i32 1
  store i32* %380, i32** %10, align 8
  store i32 %378, i32* %379, align 4
  %381 = load i32, i32* %14, align 4
  %382 = ashr i32 %381, 0
  %383 = load i32*, i32** %10, align 8
  %384 = getelementptr inbounds i32, i32* %383, i32 1
  store i32* %384, i32** %10, align 8
  store i32 %382, i32* %383, align 4
  br label %385

385:                                              ; preds = %365
  %386 = load i32, i32* %5, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %5, align 4
  br label %359

388:                                              ; preds = %359
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 4
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 8
  %395 = mul nsw i32 %394, 4
  %396 = sub nsw i32 %391, %395
  %397 = load i32*, i32** %10, align 8
  %398 = sext i32 %396 to i64
  %399 = getelementptr inbounds i32, i32* %397, i64 %398
  store i32* %399, i32** %10, align 8
  br label %400

400:                                              ; preds = %388
  %401 = load i32, i32* %6, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %6, align 4
  br label %352

403:                                              ; preds = %352
  br label %457

404:                                              ; preds = %335
  store i32 0, i32* %6, align 4
  br label %405

405:                                              ; preds = %453, %404
  %406 = load i32, i32* %6, align 4
  %407 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i32 0, i32 3
  %409 = load i32, i32* %408, align 4
  %410 = icmp slt i32 %406, %409
  br i1 %410, label %411, label %456

411:                                              ; preds = %405
  store i32 0, i32* %5, align 4
  br label %412

412:                                              ; preds = %438, %411
  %413 = load i32, i32* %5, align 4
  %414 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = icmp slt i32 %413, %416
  br i1 %417, label %418, label %441

418:                                              ; preds = %412
  %419 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 7
  %421 = call i32 @bytestream2_get_be32(i32* %420)
  store i32 %421, i32* %15, align 4
  %422 = load i32, i32* %15, align 4
  %423 = ashr i32 %422, 0
  %424 = load i32*, i32** %10, align 8
  %425 = getelementptr inbounds i32, i32* %424, i32 1
  store i32* %425, i32** %10, align 8
  store i32 %423, i32* %424, align 4
  %426 = load i32, i32* %15, align 4
  %427 = ashr i32 %426, 24
  %428 = load i32*, i32** %10, align 8
  %429 = getelementptr inbounds i32, i32* %428, i32 1
  store i32* %429, i32** %10, align 8
  store i32 %427, i32* %428, align 4
  %430 = load i32, i32* %15, align 4
  %431 = ashr i32 %430, 16
  %432 = load i32*, i32** %10, align 8
  %433 = getelementptr inbounds i32, i32* %432, i32 1
  store i32* %433, i32** %10, align 8
  store i32 %431, i32* %432, align 4
  %434 = load i32, i32* %15, align 4
  %435 = ashr i32 %434, 8
  %436 = load i32*, i32** %10, align 8
  %437 = getelementptr inbounds i32, i32* %436, i32 1
  store i32* %437, i32** %10, align 8
  store i32 %435, i32* %436, align 4
  br label %438

438:                                              ; preds = %418
  %439 = load i32, i32* %5, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %5, align 4
  br label %412

441:                                              ; preds = %412
  %442 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %442, i32 0, i32 4
  %444 = load i32, i32* %443, align 8
  %445 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 8
  %448 = mul nsw i32 %447, 4
  %449 = sub nsw i32 %444, %448
  %450 = load i32*, i32** %10, align 8
  %451 = sext i32 %449 to i64
  %452 = getelementptr inbounds i32, i32* %450, i64 %451
  store i32* %452, i32** %10, align 8
  br label %453

453:                                              ; preds = %441
  %454 = load i32, i32* %6, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %6, align 4
  br label %405

456:                                              ; preds = %405
  br label %457

457:                                              ; preds = %456, %403
  br label %463

458:                                              ; preds = %182
  %459 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %460 = load i32, i32* %9, align 4
  %461 = call i32 @avpriv_request_sample(%struct.TYPE_7__* %459, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %460)
  %462 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %462, i32* %2, align 4
  br label %464

463:                                              ; preds = %457, %334
  store i32 0, i32* %2, align 4
  br label %464

464:                                              ; preds = %463, %458, %177, %105, %68
  %465 = load i32, i32* %2, align 4
  ret i32 %465
}

declare dso_local i8* @bytestream2_get_le16(i32*) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, ...) #1

declare dso_local i8* @FFMIN(i32, i32) #1

declare dso_local i32 @av_reallocp(i32**, i32) #1

declare dso_local i32 @bytestream2_get_be32(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
