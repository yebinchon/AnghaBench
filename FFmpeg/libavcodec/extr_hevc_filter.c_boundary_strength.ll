; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_filter.c_boundary_strength.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_filter.c_boundary_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_14__ = type { i32, i64*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64* }

@PF_BI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_13__*)* @boundary_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boundary_strength(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PF_BI, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %484

19:                                               ; preds = %4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PF_BI, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %484

25:                                               ; preds = %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i64, i64* %33, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %44, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %40, %51
  br i1 %52, label %53, label %239

53:                                               ; preds = %25
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i64, i64* %61, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i64, i64* %76, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %68, %83
  br i1 %84, label %85, label %239

85:                                               ; preds = %53
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i64, i64* %89, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i64 1
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i64, i64* %100, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %96, %107
  br i1 %108, label %109, label %239

109:                                              ; preds = %85
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %115, %121
  %123 = call i32 @FFABS(i64 %122)
  %124 = icmp sge i32 %123, 4
  br i1 %124, label %173, label %125

125:                                              ; preds = %109
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %131, %137
  %139 = call i32 @FFABS(i64 %138)
  %140 = icmp sge i32 %139, 4
  br i1 %140, label %173, label %141

141:                                              ; preds = %125
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i64 1
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i64 1
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %147, %153
  %155 = call i32 @FFABS(i64 %154)
  %156 = icmp sge i32 %155, 4
  br i1 %156, label %173, label %157

157:                                              ; preds = %141
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i64 1
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i64 1
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %163, %169
  %171 = call i32 @FFABS(i64 %170)
  %172 = icmp sge i32 %171, 4
  br i1 %172, label %173, label %238

173:                                              ; preds = %157, %141, %125, %109
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i64 1
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = sub nsw i64 %179, %185
  %187 = call i32 @FFABS(i64 %186)
  %188 = icmp sge i32 %187, 4
  br i1 %188, label %237, label %189

189:                                              ; preds = %173
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i64 1
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = sub nsw i64 %195, %201
  %203 = call i32 @FFABS(i64 %202)
  %204 = icmp sge i32 %203, 4
  br i1 %204, label %237, label %205

205:                                              ; preds = %189
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i64 0
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i64 1
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = sub nsw i64 %211, %217
  %219 = call i32 @FFABS(i64 %218)
  %220 = icmp sge i32 %219, 4
  br i1 %220, label %237, label %221

221:                                              ; preds = %205
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i64 0
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 2
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i64 1
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = sub nsw i64 %227, %233
  %235 = call i32 @FFABS(i64 %234)
  %236 = icmp sge i32 %235, 4
  br i1 %236, label %237, label %238

237:                                              ; preds = %221, %205, %189, %173
  store i32 1, i32* %5, align 4
  br label %617

238:                                              ; preds = %221, %157
  store i32 0, i32* %5, align 4
  br label %617

239:                                              ; preds = %85, %53, %25
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i64 0
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  %243 = load i64*, i64** %242, align 8
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 1
  %246 = load i64*, i64** %245, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 0
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds i64, i64* %243, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i64 0
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 0
  %258 = load i64*, i64** %257, align 8
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 1
  %261 = load i64*, i64** %260, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 0
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds i64, i64* %258, i64 %263
  %265 = load i64, i64* %264, align 8
  %266 = icmp eq i64 %250, %265
  br i1 %266, label %267, label %361

267:                                              ; preds = %239
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i64 1
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 0
  %271 = load i64*, i64** %270, align 8
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 1
  %274 = load i64*, i64** %273, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 1
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds i64, i64* %271, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i64 1
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  %286 = load i64*, i64** %285, align 8
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 1
  %289 = load i64*, i64** %288, align 8
  %290 = getelementptr inbounds i64, i64* %289, i64 1
  %291 = load i64, i64* %290, align 8
  %292 = getelementptr inbounds i64, i64* %286, i64 %291
  %293 = load i64, i64* %292, align 8
  %294 = icmp eq i64 %278, %293
  br i1 %294, label %295, label %361

295:                                              ; preds = %267
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 2
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i64 0
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 2
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i64 0
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = sub nsw i64 %301, %307
  %309 = call i32 @FFABS(i64 %308)
  %310 = icmp sge i32 %309, 4
  br i1 %310, label %359, label %311

311:                                              ; preds = %295
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 2
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i64 0
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 2
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i64 0
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = sub nsw i64 %317, %323
  %325 = call i32 @FFABS(i64 %324)
  %326 = icmp sge i32 %325, 4
  br i1 %326, label %359, label %327

327:                                              ; preds = %311
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 2
  %330 = load %struct.TYPE_15__*, %struct.TYPE_15__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %330, i64 1
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 2
  %336 = load %struct.TYPE_15__*, %struct.TYPE_15__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i64 1
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = sub nsw i64 %333, %339
  %341 = call i32 @FFABS(i64 %340)
  %342 = icmp sge i32 %341, 4
  br i1 %342, label %359, label %343

343:                                              ; preds = %327
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 2
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i64 1
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 2
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i64 1
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = sub nsw i64 %349, %355
  %357 = call i32 @FFABS(i64 %356)
  %358 = icmp sge i32 %357, 4
  br i1 %358, label %359, label %360

359:                                              ; preds = %343, %327, %311, %295
  store i32 1, i32* %5, align 4
  br label %617

360:                                              ; preds = %343
  store i32 0, i32* %5, align 4
  br label %617

361:                                              ; preds = %267, %239
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i64 1
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 0
  %365 = load i64*, i64** %364, align 8
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 1
  %368 = load i64*, i64** %367, align 8
  %369 = getelementptr inbounds i64, i64* %368, i64 1
  %370 = load i64, i64* %369, align 8
  %371 = getelementptr inbounds i64, i64* %365, i64 %370
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %374 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %373, i32 0, i32 0
  %375 = load %struct.TYPE_12__*, %struct.TYPE_12__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %375, i32 0, i32 0
  %377 = load %struct.TYPE_11__*, %struct.TYPE_11__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i64 0
  %379 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %378, i32 0, i32 0
  %380 = load i64*, i64** %379, align 8
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 1
  %383 = load i64*, i64** %382, align 8
  %384 = getelementptr inbounds i64, i64* %383, i64 0
  %385 = load i64, i64* %384, align 8
  %386 = getelementptr inbounds i64, i64* %380, i64 %385
  %387 = load i64, i64* %386, align 8
  %388 = icmp eq i64 %372, %387
  br i1 %388, label %389, label %483

389:                                              ; preds = %361
  %390 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i64 0
  %392 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %391, i32 0, i32 0
  %393 = load i64*, i64** %392, align 8
  %394 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %395 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %394, i32 0, i32 1
  %396 = load i64*, i64** %395, align 8
  %397 = getelementptr inbounds i64, i64* %396, i64 0
  %398 = load i64, i64* %397, align 8
  %399 = getelementptr inbounds i64, i64* %393, i64 %398
  %400 = load i64, i64* %399, align 8
  %401 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %401, i32 0, i32 0
  %403 = load %struct.TYPE_12__*, %struct.TYPE_12__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 0
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %405, i64 1
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 0
  %408 = load i64*, i64** %407, align 8
  %409 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %409, i32 0, i32 1
  %411 = load i64*, i64** %410, align 8
  %412 = getelementptr inbounds i64, i64* %411, i64 1
  %413 = load i64, i64* %412, align 8
  %414 = getelementptr inbounds i64, i64* %408, i64 %413
  %415 = load i64, i64* %414, align 8
  %416 = icmp eq i64 %400, %415
  br i1 %416, label %417, label %483

417:                                              ; preds = %389
  %418 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %418, i32 0, i32 2
  %420 = load %struct.TYPE_15__*, %struct.TYPE_15__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %420, i64 1
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %425 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %424, i32 0, i32 2
  %426 = load %struct.TYPE_15__*, %struct.TYPE_15__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %426, i64 0
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = sub nsw i64 %423, %429
  %431 = call i32 @FFABS(i64 %430)
  %432 = icmp sge i32 %431, 4
  br i1 %432, label %481, label %433

433:                                              ; preds = %417
  %434 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %434, i32 0, i32 2
  %436 = load %struct.TYPE_15__*, %struct.TYPE_15__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %436, i64 1
  %438 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %441 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %440, i32 0, i32 2
  %442 = load %struct.TYPE_15__*, %struct.TYPE_15__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %442, i64 0
  %444 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = sub nsw i64 %439, %445
  %447 = call i32 @FFABS(i64 %446)
  %448 = icmp sge i32 %447, 4
  br i1 %448, label %481, label %449

449:                                              ; preds = %433
  %450 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 2
  %452 = load %struct.TYPE_15__*, %struct.TYPE_15__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %452, i64 0
  %454 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %453, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  %456 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %456, i32 0, i32 2
  %458 = load %struct.TYPE_15__*, %struct.TYPE_15__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %458, i64 1
  %460 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %459, i32 0, i32 1
  %461 = load i64, i64* %460, align 8
  %462 = sub nsw i64 %455, %461
  %463 = call i32 @FFABS(i64 %462)
  %464 = icmp sge i32 %463, 4
  br i1 %464, label %481, label %465

465:                                              ; preds = %449
  %466 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %467 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %466, i32 0, i32 2
  %468 = load %struct.TYPE_15__*, %struct.TYPE_15__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %468, i64 0
  %470 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %469, i32 0, i32 0
  %471 = load i64, i64* %470, align 8
  %472 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %473 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %472, i32 0, i32 2
  %474 = load %struct.TYPE_15__*, %struct.TYPE_15__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %474, i64 1
  %476 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %475, i32 0, i32 0
  %477 = load i64, i64* %476, align 8
  %478 = sub nsw i64 %471, %477
  %479 = call i32 @FFABS(i64 %478)
  %480 = icmp sge i32 %479, 4
  br i1 %480, label %481, label %482

481:                                              ; preds = %465, %449, %433, %417
  store i32 1, i32* %5, align 4
  br label %617

482:                                              ; preds = %465
  store i32 0, i32* %5, align 4
  br label %617

483:                                              ; preds = %389, %361
  store i32 1, i32* %5, align 4
  br label %617

484:                                              ; preds = %19, %4
  %485 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %486 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* @PF_BI, align 4
  %489 = icmp ne i32 %487, %488
  br i1 %489, label %490, label %615

490:                                              ; preds = %484
  %491 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %492 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = load i32, i32* @PF_BI, align 4
  %495 = icmp ne i32 %493, %494
  br i1 %495, label %496, label %615

496:                                              ; preds = %490
  %497 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %498 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = and i32 %499, 1
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %525

502:                                              ; preds = %496
  %503 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %504 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %503, i32 0, i32 2
  %505 = load %struct.TYPE_15__*, %struct.TYPE_15__** %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %505, i64 0
  %507 = bitcast %struct.TYPE_15__* %10 to i8*
  %508 = bitcast %struct.TYPE_15__* %506 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %507, i8* align 8 %508, i64 16, i1 false)
  %509 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %510 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %509, i32 0, i32 0
  %511 = load %struct.TYPE_12__*, %struct.TYPE_12__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %511, i32 0, i32 0
  %513 = load %struct.TYPE_11__*, %struct.TYPE_11__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %513, i64 0
  %515 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %514, i32 0, i32 0
  %516 = load i64*, i64** %515, align 8
  %517 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %518 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %517, i32 0, i32 1
  %519 = load i64*, i64** %518, align 8
  %520 = getelementptr inbounds i64, i64* %519, i64 0
  %521 = load i64, i64* %520, align 8
  %522 = getelementptr inbounds i64, i64* %516, i64 %521
  %523 = load i64, i64* %522, align 8
  %524 = trunc i64 %523 to i32
  store i32 %524, i32* %12, align 4
  br label %548

525:                                              ; preds = %496
  %526 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %527 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %526, i32 0, i32 2
  %528 = load %struct.TYPE_15__*, %struct.TYPE_15__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %528, i64 1
  %530 = bitcast %struct.TYPE_15__* %10 to i8*
  %531 = bitcast %struct.TYPE_15__* %529 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %530, i8* align 8 %531, i64 16, i1 false)
  %532 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %533 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %532, i32 0, i32 0
  %534 = load %struct.TYPE_12__*, %struct.TYPE_12__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %534, i32 0, i32 0
  %536 = load %struct.TYPE_11__*, %struct.TYPE_11__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %536, i64 1
  %538 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %537, i32 0, i32 0
  %539 = load i64*, i64** %538, align 8
  %540 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %541 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %540, i32 0, i32 1
  %542 = load i64*, i64** %541, align 8
  %543 = getelementptr inbounds i64, i64* %542, i64 1
  %544 = load i64, i64* %543, align 8
  %545 = getelementptr inbounds i64, i64* %539, i64 %544
  %546 = load i64, i64* %545, align 8
  %547 = trunc i64 %546 to i32
  store i32 %547, i32* %12, align 4
  br label %548

548:                                              ; preds = %525, %502
  %549 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %550 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = and i32 %551, 1
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %573

554:                                              ; preds = %548
  %555 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %556 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %555, i32 0, i32 2
  %557 = load %struct.TYPE_15__*, %struct.TYPE_15__** %556, align 8
  %558 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %557, i64 0
  %559 = bitcast %struct.TYPE_15__* %11 to i8*
  %560 = bitcast %struct.TYPE_15__* %558 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %559, i8* align 8 %560, i64 16, i1 false)
  %561 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %562 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %561, i64 0
  %563 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %562, i32 0, i32 0
  %564 = load i64*, i64** %563, align 8
  %565 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %566 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %565, i32 0, i32 1
  %567 = load i64*, i64** %566, align 8
  %568 = getelementptr inbounds i64, i64* %567, i64 0
  %569 = load i64, i64* %568, align 8
  %570 = getelementptr inbounds i64, i64* %564, i64 %569
  %571 = load i64, i64* %570, align 8
  %572 = trunc i64 %571 to i32
  store i32 %572, i32* %13, align 4
  br label %592

573:                                              ; preds = %548
  %574 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %575 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %574, i32 0, i32 2
  %576 = load %struct.TYPE_15__*, %struct.TYPE_15__** %575, align 8
  %577 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %576, i64 1
  %578 = bitcast %struct.TYPE_15__* %11 to i8*
  %579 = bitcast %struct.TYPE_15__* %577 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %578, i8* align 8 %579, i64 16, i1 false)
  %580 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %581 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %580, i64 1
  %582 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %581, i32 0, i32 0
  %583 = load i64*, i64** %582, align 8
  %584 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %585 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %584, i32 0, i32 1
  %586 = load i64*, i64** %585, align 8
  %587 = getelementptr inbounds i64, i64* %586, i64 1
  %588 = load i64, i64* %587, align 8
  %589 = getelementptr inbounds i64, i64* %583, i64 %588
  %590 = load i64, i64* %589, align 8
  %591 = trunc i64 %590 to i32
  store i32 %591, i32* %13, align 4
  br label %592

592:                                              ; preds = %573, %554
  %593 = load i32, i32* %12, align 4
  %594 = load i32, i32* %13, align 4
  %595 = icmp eq i32 %593, %594
  br i1 %595, label %596, label %614

596:                                              ; preds = %592
  %597 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %598 = load i64, i64* %597, align 8
  %599 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %600 = load i64, i64* %599, align 8
  %601 = sub nsw i64 %598, %600
  %602 = call i32 @FFABS(i64 %601)
  %603 = icmp sge i32 %602, 4
  br i1 %603, label %612, label %604

604:                                              ; preds = %596
  %605 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %606 = load i64, i64* %605, align 8
  %607 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %608 = load i64, i64* %607, align 8
  %609 = sub nsw i64 %606, %608
  %610 = call i32 @FFABS(i64 %609)
  %611 = icmp sge i32 %610, 4
  br i1 %611, label %612, label %613

612:                                              ; preds = %604, %596
  store i32 1, i32* %5, align 4
  br label %617

613:                                              ; preds = %604
  store i32 0, i32* %5, align 4
  br label %617

614:                                              ; preds = %592
  store i32 1, i32* %5, align 4
  br label %617

615:                                              ; preds = %490, %484
  br label %616

616:                                              ; preds = %615
  store i32 1, i32* %5, align 4
  br label %617

617:                                              ; preds = %616, %614, %613, %612, %483, %482, %481, %360, %359, %238, %237
  %618 = load i32, i32* %5, align 4
  ret i32 %618
}

declare dso_local i32 @FFABS(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
