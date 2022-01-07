; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_vfr.c_hb_vfr_work.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_vfr.c_hb_vfr_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64*, i64*, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64, i64 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_FILTER_DONE = common dso_local global i32 0, align 4
@HB_FILTER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_21__**, %struct.TYPE_21__**)* @hb_vfr_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_vfr_work(%struct.TYPE_20__* %0, %struct.TYPE_21__** %1, %struct.TYPE_21__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__**, align 8
  %7 = alloca %struct.TYPE_21__**, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__** %1, %struct.TYPE_21__*** %6, align 8
  store %struct.TYPE_21__** %2, %struct.TYPE_21__*** %7, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %8, align 8
  %20 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %10, align 8
  %22 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %22, align 8
  %23 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %23, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %3
  store i32 2, i32* %13, align 4
  %32 = call %struct.TYPE_21__* @hb_buffer_list_clear(i32* %11)
  br label %33

33:                                               ; preds = %39, %31
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_21__* @hb_fifo_get(i32 %36)
  store %struct.TYPE_21__* %37, %struct.TYPE_21__** %12, align 8
  %38 = icmp ne %struct.TYPE_21__* %37, null
  br i1 %38, label %39, label %65

39:                                               ; preds = %33
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %13, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 2
  store i64 %57, i64* %60, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %63 = call %struct.TYPE_21__* @adjust_frame_rate(%struct.TYPE_19__* %61, %struct.TYPE_21__* %62)
  %64 = call i32 @hb_buffer_list_append(i32* %11, %struct.TYPE_21__* %63)
  br label %33

65:                                               ; preds = %33
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = call %struct.TYPE_21__* @flush_frames(%struct.TYPE_19__* %66)
  %68 = call i32 @hb_buffer_list_append(i32* %11, %struct.TYPE_21__* %67)
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %70 = call i32 @hb_buffer_list_append(i32* %11, %struct.TYPE_21__* %69)
  %71 = call %struct.TYPE_21__* @hb_buffer_list_clear(i32* %11)
  %72 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_21__* %71, %struct.TYPE_21__** %72, align 8
  %73 = load i32, i32* @HB_FILTER_DONE, align 4
  store i32 %73, i32* %4, align 4
  br label %364

74:                                               ; preds = %3
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @hb_fifo_size(i32 %77)
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %143

80:                                               ; preds = %74
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %84, %89
  br i1 %90, label %91, label %143

91:                                               ; preds = %80
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %95, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = sdiv i32 %103, 4
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %104
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %14, align 4
  %112 = sdiv i32 %111, 4
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, %112
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %14, align 4
  %120 = sdiv i32 %119, 4
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, %120
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = sdiv i32 %128, 4
  %130 = mul nsw i32 3, %129
  %131 = sub nsw i32 %127, %130
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %131
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %162

143:                                              ; preds = %80, %74
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp sle i64 %147, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %143
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  %159 = call i32 @hb_buffer_close(%struct.TYPE_21__** %9)
  %160 = load i32, i32* @HB_FILTER_OK, align 4
  store i32 %160, i32* %4, align 4
  br label %364

161:                                              ; preds = %143
  br label %162

162:                                              ; preds = %161, %91
  store i32 3, i32* %15, align 4
  br label %163

163:                                              ; preds = %195, %162
  %164 = load i32, i32* %15, align 4
  %165 = icmp sge i32 %164, 1
  br i1 %165, label %166, label %198

166:                                              ; preds = %163
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = load i32, i32* %15, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %169, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = load i64*, i64** %176, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  store i64 %174, i64* %180, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %183, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 1
  %191 = load i64*, i64** %190, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  store i64 %188, i64* %194, align 8
  br label %195

195:                                              ; preds = %166
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %15, align 4
  br label %163

198:                                              ; preds = %163
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @hb_fifo_size(i32 %201)
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %221

204:                                              ; preds = %198
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i64*, i64** %210, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 0
  store i64 %208, i64* %212, align 8
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 1
  %219 = load i64*, i64** %218, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 0
  store i64 %216, i64* %220, align 8
  br label %250

221:                                              ; preds = %198
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 1
  %224 = load i64*, i64** %223, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 1
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 0
  %229 = load i64*, i64** %228, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 0
  store i64 %226, i64* %230, align 8
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = load i64*, i64** %232, align 8
  %234 = getelementptr inbounds i64, i64* %233, i64 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = sub nsw i64 %239, %243
  %245 = add nsw i64 %235, %244
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 1
  %248 = load i64*, i64** %247, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 0
  store i64 %245, i64* %249, align 8
  br label %250

250:                                              ; preds = %221, %204
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %255 = call i32 @hb_fifo_push(i32 %253, %struct.TYPE_21__* %254)
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @hb_fifo_size(i32 %258)
  %260 = icmp slt i32 %259, 4
  br i1 %260, label %261, label %264

261:                                              ; preds = %250
  %262 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %262, align 8
  %263 = load i32, i32* @HB_FILTER_OK, align 4
  store i32 %263, i32* %4, align 4
  br label %364

264:                                              ; preds = %250
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 4
  %268 = call %struct.TYPE_21__* @hb_fifo_get(i32 %267)
  store %struct.TYPE_21__* %268, %struct.TYPE_21__** %10, align 8
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 2
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 3
  %273 = load i32, i32* %272, align 4
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %275, label %342

275:                                              ; preds = %264
  store i32 0, i32* %16, align 4
  store i32 3, i32* %15, align 4
  br label %276

276:                                              ; preds = %338, %275
  %277 = load i32, i32* %15, align 4
  %278 = icmp sge i32 %277, 0
  br i1 %278, label %279, label %341

279:                                              ; preds = %276
  %280 = load i32, i32* %16, align 4
  %281 = sext i32 %280 to i64
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i32 0, i32 0
  %284 = load i64*, i64** %283, align 8
  %285 = load i32, i32* %15, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i64, i64* %284, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = add nsw i64 %288, %281
  store i64 %289, i64* %287, align 8
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 2
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %15, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %16, align 4
  %298 = add nsw i32 %296, %297
  %299 = sext i32 %298 to i64
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 1
  %302 = load i64*, i64** %301, align 8
  %303 = load i32, i32* %15, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i64, i64* %302, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = add nsw i64 %306, %299
  store i64 %307, i64* %305, align 8
  %308 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 2
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %15, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 5
  %317 = load i32, i32* %316, align 8
  %318 = add nsw i32 %317, %314
  store i32 %318, i32* %316, align 8
  %319 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %319, i32 0, i32 2
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %15, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* %16, align 4
  %327 = add nsw i32 %326, %325
  store i32 %327, i32* %16, align 4
  %328 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 2
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %15, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  store i32 0, i32* %333, align 4
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %335, align 4
  br label %338

338:                                              ; preds = %279
  %339 = load i32, i32* %15, align 4
  %340 = add nsw i32 %339, -1
  store i32 %340, i32* %15, align 4
  br label %276

341:                                              ; preds = %276
  br label %342

342:                                              ; preds = %341, %264
  %343 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %343, i32 0, i32 0
  %345 = load i64*, i64** %344, align 8
  %346 = getelementptr inbounds i64, i64* %345, i64 3
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i32 0, i32 1
  store i64 %347, i64* %350, align 8
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i32 0, i32 1
  %353 = load i64*, i64** %352, align 8
  %354 = getelementptr inbounds i64, i64* %353, i64 3
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %357 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 2
  store i64 %355, i64* %358, align 8
  %359 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %360 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %361 = call %struct.TYPE_21__* @adjust_frame_rate(%struct.TYPE_19__* %359, %struct.TYPE_21__* %360)
  %362 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_21__* %361, %struct.TYPE_21__** %362, align 8
  %363 = load i32, i32* @HB_FILTER_OK, align 4
  store i32 %363, i32* %4, align 4
  br label %364

364:                                              ; preds = %342, %261, %154, %65
  %365 = load i32, i32* %4, align 4
  ret i32 %365
}

declare dso_local %struct.TYPE_21__* @hb_buffer_list_clear(i32*) #1

declare dso_local %struct.TYPE_21__* @hb_fifo_get(i32) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @adjust_frame_rate(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @flush_frames(%struct.TYPE_19__*) #1

declare dso_local i32 @hb_fifo_size(i32) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_21__**) #1

declare dso_local i32 @hb_fifo_push(i32, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
