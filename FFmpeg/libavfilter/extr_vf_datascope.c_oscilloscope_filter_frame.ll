; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_datascope.c_oscilloscope_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_datascope.c_oscilloscope_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__**, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i64*, i64, i64, i32, i32, i64, %struct.TYPE_15__*, i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)*, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64* }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@__const.oscilloscope_filter_frame.rgba = private unnamed_addr constant [4 x i8] c"RGBA", align 1
@__const.oscilloscope_filter_frame.yuva = private unnamed_addr constant [4 x i8] c"YUVA", align 1
@.str = private unnamed_addr constant [27 x i8] c"%c avg:%.1f min:%d max:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @oscilloscope_filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oscilloscope_filter_frame(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i8], align 1
  %14 = alloca [4 x i8], align 1
  %15 = alloca [128 x i8], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %5, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %6, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %24, i64 0
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %7, align 8
  %27 = bitcast [4 x float]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 16, i1 false)
  %28 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %28, i8 0, i64 16, i1 false)
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %30 = load i32, i32* @INT_MAX, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 1
  %32 = load i32, i32* @INT_MAX, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds i32, i32* %31, i64 1
  %34 = load i32, i32* @INT_MAX, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds i32, i32* %33, i64 1
  %36 = load i32, i32* @INT_MAX, align 4
  store i32 %36, i32* %35, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 20
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 19
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 18
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 17
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 12
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 1
  %60 = call i32 @draw_scope(%struct.TYPE_16__* %39, i32 %42, i32 %45, i32 %48, i32 %51, %struct.TYPE_17__* %52, %struct.TYPE_15__* %55, i32 %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 10
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 16
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 20, %91
  %93 = add nsw i32 %88, %92
  %94 = call i32 @ff_blend_rectangle(i32* %62, i32* %64, i32 %67, i32 %70, i32 %73, i32 %76, i64 %79, i64 %82, i32 %85, i32 %93)
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 15
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %226

99:                                               ; preds = %2
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp sge i32 %102, 10
  br i1 %103, label %104, label %226

104:                                              ; preds = %99
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 10
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 14
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 8
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 1
  %125 = call i32 @ff_fill_rectangle(i32* %106, i32* %108, i32 %111, i32 %114, i64 %117, i64 %120, i32 %124, i32 1)
  store i32 1, i32* %11, align 4
  br label %126

126:                                              ; preds = %159, %104
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %127, 5
  br i1 %128, label %129, label %162

129:                                              ; preds = %126
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 10
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 14
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 8
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 7
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %149, 1
  %151 = mul nsw i32 %146, %150
  %152 = sdiv i32 %151, 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %145, %153
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ff_fill_rectangle(i32* %131, i32* %133, i32 %136, i32 %139, i64 %142, i64 %154, i32 %157, i32 1)
  br label %159

159:                                              ; preds = %129
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %126

162:                                              ; preds = %126
  store i32 0, i32* %11, align 4
  br label %163

163:                                              ; preds = %196, %162
  %164 = load i32, i32* %11, align 4
  %165 = icmp slt i32 %164, 10
  br i1 %165, label %166, label %199

166:                                              ; preds = %163
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 10
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 14
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 8
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %11, align 4
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %183, 1
  %185 = mul nsw i32 %180, %184
  %186 = sdiv i32 %185, 10
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %179, %187
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 7
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @ff_fill_rectangle(i32* %168, i32* %170, i32 %173, i32 %176, i64 %188, i64 %191, i32 1, i32 %194)
  br label %196

196:                                              ; preds = %166
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %11, align 4
  br label %163

199:                                              ; preds = %163
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 10
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 14
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 8
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %212, %216
  %218 = sub nsw i64 %217, 1
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 7
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @ff_fill_rectangle(i32* %201, i32* %203, i32 %206, i32 %209, i64 %218, i64 %221, i32 1, i32 %224)
  br label %226

226:                                              ; preds = %199, %99, %2
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 13
  %229 = load i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)** %228, align 8
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %232 = call i32 %229(%struct.TYPE_16__* %230, %struct.TYPE_17__* %231)
  store i32 0, i32* %11, align 4
  br label %233

233:                                              ; preds = %333, %226
  %234 = load i32, i32* %11, align 4
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %336

239:                                              ; preds = %233
  store i32 0, i32* %12, align 4
  br label %240

240:                                              ; preds = %329, %239
  %241 = load i32, i32* %12, align 4
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = icmp slt i32 %241, %244
  br i1 %245, label %246, label %332

246:                                              ; preds = %240
  %247 = load i32, i32* %12, align 4
  %248 = shl i32 1, %247
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %248, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %328

254:                                              ; preds = %246
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 12
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %260, align 8
  %262 = load i32, i32* %11, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  %266 = load i64*, i64** %265, align 8
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 6
  %269 = load i64*, i64** %268, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i64, i64* %269, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = getelementptr inbounds i64, i64* %266, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = call i32 @FFMAX(i32 %258, i64 %275)
  %277 = load i32, i32* %12, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %278
  store i32 %276, i32* %279, align 4
  %280 = load i32, i32* %12, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 12
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %285, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 0
  %291 = load i64*, i64** %290, align 8
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 6
  %294 = load i64*, i64** %293, align 8
  %295 = load i32, i32* %12, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i64, i64* %294, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = getelementptr inbounds i64, i64* %291, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = call i32 @FFMIN(i32 %283, i64 %300)
  %302 = load i32, i32* %12, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %303
  store i32 %301, i32* %304, align 4
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 12
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %306, align 8
  %308 = load i32, i32* %11, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 0
  %312 = load i64*, i64** %311, align 8
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 6
  %315 = load i64*, i64** %314, align 8
  %316 = load i32, i32* %12, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64, i64* %315, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = getelementptr inbounds i64, i64* %312, i64 %319
  %321 = load i64, i64* %320, align 8
  %322 = sitofp i64 %321 to float
  %323 = load i32, i32* %12, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 %324
  %326 = load float, float* %325, align 4
  %327 = fadd float %326, %322
  store float %327, float* %325, align 4
  br label %328

328:                                              ; preds = %254, %246
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %12, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %12, align 4
  br label %240

332:                                              ; preds = %240
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %11, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %11, align 4
  br label %233

336:                                              ; preds = %233
  store i32 0, i32* %12, align 4
  br label %337

337:                                              ; preds = %353, %336
  %338 = load i32, i32* %12, align 4
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  %342 = icmp slt i32 %338, %341
  br i1 %342, label %343, label %356

343:                                              ; preds = %337
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = sitofp i32 %346 to float
  %348 = load i32, i32* %12, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 %349
  %351 = load float, float* %350, align 4
  %352 = fdiv float %351, %347
  store float %352, float* %350, align 4
  br label %353

353:                                              ; preds = %343
  %354 = load i32, i32* %12, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %12, align 4
  br label %337

356:                                              ; preds = %337
  %357 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %457

361:                                              ; preds = %356
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = icmp sgt i32 %364, 10
  br i1 %365, label %366, label %457

366:                                              ; preds = %361
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 5
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @av_popcount(i32 %372)
  %374 = mul nsw i32 280, %373
  %375 = icmp sgt i32 %369, %374
  br i1 %375, label %376, label %457

376:                                              ; preds = %366
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %377

377:                                              ; preds = %453, %376
  %378 = load i32, i32* %12, align 4
  %379 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 8
  %382 = icmp slt i32 %378, %381
  br i1 %382, label %383, label %456

383:                                              ; preds = %377
  %384 = load i32, i32* %12, align 4
  %385 = shl i32 1, %384
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 5
  %388 = load i32, i32* %387, align 4
  %389 = and i32 %385, %388
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %452

391:                                              ; preds = %383
  %392 = bitcast [4 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %392, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.oscilloscope_filter_frame.rgba, i32 0, i32 0), i64 4, i1 false)
  %393 = bitcast [4 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %393, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.oscilloscope_filter_frame.yuva, i32 0, i32 0), i64 4, i1 false)
  %394 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 11
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %391
  %400 = load i32, i32* %12, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %401
  %403 = load i8, i8* %402, align 1
  %404 = sext i8 %403 to i32
  br label %411

405:                                              ; preds = %391
  %406 = load i32, i32* %12, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 %407
  %409 = load i8, i8* %408, align 1
  %410 = sext i8 %409 to i32
  br label %411

411:                                              ; preds = %405, %399
  %412 = phi i32 [ %404, %399 ], [ %410, %405 ]
  %413 = trunc i32 %412 to i8
  %414 = load i32, i32* %12, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 %415
  %417 = load float, float* %416, align 4
  %418 = load i32, i32* %12, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* %12, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = call i32 @snprintf(i8* %394, i32 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8 signext %413, float %417, i32 %421, i32 %425)
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 10
  %429 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %430 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %431 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %430, i32 0, i32 9
  %432 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %432, i32 0, i32 8
  %434 = load i64, i64* %433, align 8
  %435 = add nsw i64 %434, 2
  %436 = load i32, i32* %11, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %11, align 4
  %438 = mul nsw i32 280, %436
  %439 = sext i32 %438 to i64
  %440 = add nsw i64 %435, %439
  %441 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %442 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %441, i32 0, i32 7
  %443 = load i64, i64* %442, align 8
  %444 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 8
  %447 = sext i32 %446 to i64
  %448 = add nsw i64 %443, %447
  %449 = add nsw i64 %448, 4
  %450 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %451 = call i32 @draw_text(i32* %428, %struct.TYPE_17__* %429, i32* %431, i64 %440, i64 %449, i8* %450, i32 0)
  br label %452

452:                                              ; preds = %411, %383
  br label %453

453:                                              ; preds = %452
  %454 = load i32, i32* %12, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %12, align 4
  br label %377

456:                                              ; preds = %377
  br label %457

457:                                              ; preds = %456, %366, %361, %356
  %458 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %459 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %460 = call i32 @ff_filter_frame(%struct.TYPE_18__* %458, %struct.TYPE_17__* %459)
  ret i32 %460
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @draw_scope(%struct.TYPE_16__*, i32, i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_15__*, i32) #2

declare dso_local i32 @ff_blend_rectangle(i32*, i32*, i32, i32, i32, i32, i64, i64, i32, i32) #2

declare dso_local i32 @ff_fill_rectangle(i32*, i32*, i32, i32, i64, i64, i32, i32) #2

declare dso_local i32 @FFMAX(i32, i64) #2

declare dso_local i32 @FFMIN(i32, i64) #2

declare dso_local i32 @av_popcount(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, float, i32, i32) #2

declare dso_local i32 @draw_text(i32*, %struct.TYPE_17__*, i32*, i64, i64, i8*, i32) #2

declare dso_local i32 @ff_filter_frame(%struct.TYPE_18__*, %struct.TYPE_17__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
