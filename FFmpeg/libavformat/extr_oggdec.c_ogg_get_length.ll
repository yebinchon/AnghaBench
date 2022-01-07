; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_get_length.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_get_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_17__**, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.ogg* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.ogg = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i64 }

@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@MAX_PAGE_SIZE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @ogg_get_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogg_get_length(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.ogg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 4
  %13 = load %struct.ogg*, %struct.ogg** %12, align 8
  store %struct.ogg* %13, %struct.ogg** %4, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %328

23:                                               ; preds = %1
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %328

30:                                               ; preds = %23
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = call i64 @avio_size(%struct.TYPE_15__* %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %328

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @MAX_PAGE_SIZE, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @MAX_PAGE_SIZE, align 8
  %45 = sub nsw i64 %43, %44
  br label %47

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i64 [ %45, %42 ], [ 0, %46 ]
  store i64 %48, i64* %8, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %50 = call i32 @ogg_save(%struct.TYPE_19__* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %328

55:                                               ; preds = %47
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* @SEEK_SET, align 4
  %61 = call i32 @avio_seek(%struct.TYPE_15__* %58, i64 %59, i32 %60)
  %62 = load %struct.ogg*, %struct.ogg** %4, align 8
  %63 = getelementptr inbounds %struct.ogg, %struct.ogg* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  br label %64

64:                                               ; preds = %191, %55
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %66 = call i32 @ogg_read_page(%struct.TYPE_19__* %65, i32* %5)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br i1 %68, label %69, label %192

69:                                               ; preds = %64
  %70 = load %struct.ogg*, %struct.ogg** %4, align 8
  %71 = getelementptr inbounds %struct.ogg, %struct.ogg* %70, i32 0, i32 1
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %191

79:                                               ; preds = %69
  %80 = load %struct.ogg*, %struct.ogg** %4, align 8
  %81 = getelementptr inbounds %struct.ogg, %struct.ogg* %80, i32 0, i32 1
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %191

89:                                               ; preds = %79
  %90 = load %struct.ogg*, %struct.ogg** %4, align 8
  %91 = getelementptr inbounds %struct.ogg, %struct.ogg* %90, i32 0, i32 1
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %191

99:                                               ; preds = %89
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.ogg*, %struct.ogg** %4, align 8
  %103 = getelementptr inbounds %struct.ogg, %struct.ogg* %102, i32 0, i32 1
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @ogg_gptopts(%struct.TYPE_19__* %100, i32 %101, i32 %109, i32* null)
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %113, i64 %115
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  store i64 %110, i64* %118, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %121, i64 %123
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %169

130:                                              ; preds = %99
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %133, i64 %135
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %142, i64 %144
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %148, %139
  store i64 %149, i64* %147, align 8
  %150 = load %struct.ogg*, %struct.ogg** %4, align 8
  %151 = getelementptr inbounds %struct.ogg, %struct.ogg* %150, i32 0, i32 1
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, -1
  %159 = zext i1 %158 to i32
  %160 = load i32, i32* %9, align 4
  %161 = sub nsw i32 %160, %159
  store i32 %161, i32* %9, align 4
  %162 = load %struct.ogg*, %struct.ogg** %4, align 8
  %163 = getelementptr inbounds %struct.ogg, %struct.ogg* %162, i32 0, i32 1
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 1
  store i32 1, i32* %168, align 4
  br label %190

169:                                              ; preds = %99
  %170 = load %struct.ogg*, %struct.ogg** %4, align 8
  %171 = getelementptr inbounds %struct.ogg, %struct.ogg* %170, i32 0, i32 1
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %169
  %180 = load %struct.ogg*, %struct.ogg** %4, align 8
  %181 = getelementptr inbounds %struct.ogg, %struct.ogg* %180, i32 0, i32 1
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  store i32 -1, i32* %186, align 4
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %189

189:                                              ; preds = %179, %169
  br label %190

190:                                              ; preds = %189, %130
  br label %191

191:                                              ; preds = %190, %89, %79, %69
  br label %64

192:                                              ; preds = %64
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %194 = call i32 @ogg_restore(%struct.TYPE_19__* %193)
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %196 = call i32 @ogg_save(%struct.TYPE_19__* %195)
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %6, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = load i32, i32* %6, align 4
  store i32 %200, i32* %2, align 4
  br label %328

201:                                              ; preds = %192
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 3
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %203, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* @SEEK_SET, align 4
  %211 = call i32 @avio_seek(%struct.TYPE_15__* %204, i64 %209, i32 %210)
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %213 = call i32 @ogg_reset(%struct.TYPE_19__* %212)
  br label %214

214:                                              ; preds = %324, %243, %227, %201
  %215 = load i32, i32* %9, align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %219 = call i32 @ogg_packet(%struct.TYPE_19__* %218, i32* %5, i32* null, i32* null, i32* null)
  %220 = icmp ne i32 %219, 0
  %221 = xor i1 %220, true
  br label %222

222:                                              ; preds = %217, %214
  %223 = phi i1 [ false, %214 ], [ %221, %217 ]
  br i1 %223, label %224, label %325

224:                                              ; preds = %222
  %225 = load i32, i32* %5, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %224
  br label %214

228:                                              ; preds = %224
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %230 = load i32, i32* %5, align 4
  %231 = call i64 @ogg_calc_pts(%struct.TYPE_19__* %229, i32 %230, i32* null)
  store i64 %231, i64* %10, align 8
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %233, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %234, i64 %236
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %228
  br label %214

244:                                              ; preds = %228
  %245 = load i64, i64* %10, align 8
  %246 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %291

248:                                              ; preds = %244
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %250, align 8
  %252 = load i32, i32* %5, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %251, i64 %253
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %291

260:                                              ; preds = %248
  %261 = load %struct.ogg*, %struct.ogg** %4, align 8
  %262 = getelementptr inbounds %struct.ogg, %struct.ogg* %261, i32 0, i32 1
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %262, align 8
  %264 = load i32, i32* %5, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %291, label %270

270:                                              ; preds = %260
  %271 = load i64, i64* %10, align 8
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %273, align 8
  %275 = load i32, i32* %5, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %274, i64 %276
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = sub nsw i64 %280, %271
  store i64 %281, i64* %279, align 8
  %282 = load %struct.ogg*, %struct.ogg** %4, align 8
  %283 = getelementptr inbounds %struct.ogg, %struct.ogg* %282, i32 0, i32 1
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %283, align 8
  %285 = load i32, i32* %5, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 1
  store i32 1, i32* %288, align 4
  %289 = load i32, i32* %9, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %9, align 4
  br label %324

291:                                              ; preds = %260, %248, %244
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %293, align 8
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %294, i64 %296
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %302 = icmp ne i64 %300, %301
  br i1 %302, label %303, label %323

303:                                              ; preds = %291
  %304 = load %struct.ogg*, %struct.ogg** %4, align 8
  %305 = getelementptr inbounds %struct.ogg, %struct.ogg* %304, i32 0, i32 1
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %305, align 8
  %307 = load i32, i32* %5, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %323, label %313

313:                                              ; preds = %303
  %314 = load %struct.ogg*, %struct.ogg** %4, align 8
  %315 = getelementptr inbounds %struct.ogg, %struct.ogg* %314, i32 0, i32 1
  %316 = load %struct.TYPE_18__*, %struct.TYPE_18__** %315, align 8
  %317 = load i32, i32* %5, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 1
  store i32 1, i32* %320, align 4
  %321 = load i32, i32* %9, align 4
  %322 = add nsw i32 %321, -1
  store i32 %322, i32* %9, align 4
  br label %323

323:                                              ; preds = %313, %303, %291
  br label %324

324:                                              ; preds = %323, %270
  br label %214

325:                                              ; preds = %222
  %326 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %327 = call i32 @ogg_restore(%struct.TYPE_19__* %326)
  store i32 0, i32* %2, align 4
  br label %328

328:                                              ; preds = %325, %199, %53, %37, %29, %22
  %329 = load i32, i32* %2, align 4
  ret i32 %329
}

declare dso_local i64 @avio_size(%struct.TYPE_15__*) #1

declare dso_local i32 @ogg_save(%struct.TYPE_19__*) #1

declare dso_local i32 @avio_seek(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @ogg_read_page(%struct.TYPE_19__*, i32*) #1

declare dso_local i64 @ogg_gptopts(%struct.TYPE_19__*, i32, i32, i32*) #1

declare dso_local i32 @ogg_restore(%struct.TYPE_19__*) #1

declare dso_local i32 @ogg_reset(%struct.TYPE_19__*) #1

declare dso_local i32 @ogg_packet(%struct.TYPE_19__*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @ogg_calc_pts(%struct.TYPE_19__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
