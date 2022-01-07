; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_sort_mono.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_sort_mono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__***, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*)* @sort_mono to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_mono(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  store i32 1, i32* %5, align 4
  br label %9

9:                                                ; preds = %314, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %315

12:                                               ; preds = %9
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = call i32 @memcpy(%struct.TYPE_14__* %15, %struct.TYPE_14__* %18, i32 8)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %311, %12
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %26, %20
  %37 = phi i1 [ false, %20 ], [ %35, %26 ]
  br i1 %37, label %38, label %314

38:                                               ; preds = %36
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %56, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %45, %38
  br label %314

57:                                               ; preds = %45
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %65, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %57
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %79, i64 %81
  %83 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %83, i64 0
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %88, i64 %91
  %93 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %93, i64 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @decorr_mono_buffer(%struct.TYPE_14__* %85, %struct.TYPE_14__* %95, i32 %98, %struct.TYPE_14__* %101, i32 %102)
  br label %311

104:                                              ; preds = %57
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i64 %109
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i64 %116
  %118 = bitcast %struct.TYPE_14__* %110 to i8*
  %119 = bitcast %struct.TYPE_14__* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 8, i1 false)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i64 %125
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i64 %131
  %133 = bitcast %struct.TYPE_14__* %126 to i8*
  %134 = bitcast %struct.TYPE_14__* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 8, i1 false)
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %182, %104
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %136
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br label %152

152:                                              ; preds = %142, %136
  %153 = phi i1 [ false, %136 ], [ %151, %142 ]
  br i1 %153, label %154, label %185

154:                                              ; preds = %152
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %157, i64 %159
  %161 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %161, i64 0
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %166, i64 %169
  %171 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %171, i64 0
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @decorr_mono_buffer(%struct.TYPE_14__* %163, %struct.TYPE_14__* %173, i32 %176, %struct.TYPE_14__* %179, i32 %180)
  br label %182

182:                                              ; preds = %154
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %136

185:                                              ; preds = %152
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %188, i64 %190
  %192 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %192, i64 0
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %193, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @log2mono(%struct.TYPE_14__* %194, i32 %197, i32 %200)
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* %6, align 4
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %252

207:                                              ; preds = %185
  store i32 1, i32* %5, align 4
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = call i32 @CLEAR(%struct.TYPE_14__* %213)
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %216, align 8
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = mul i64 8, %222
  %224 = trunc i64 %223 to i32
  %225 = call i32 @memcpy(%struct.TYPE_14__* %217, %struct.TYPE_14__* %220, i32 %224)
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %227, align 8
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %228, i64 %233
  %235 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %235, i64 0
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %236, align 8
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %239, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %240, i64 %242
  %244 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %244, i64 0
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %245, align 8
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = mul nsw i32 %249, 4
  %251 = call i32 @memcpy(%struct.TYPE_14__* %237, %struct.TYPE_14__* %246, i32 %250)
  br label %310

252:                                              ; preds = %185
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %254, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i64 %257
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %260, align 8
  %262 = load i32, i32* %7, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i64 %263
  %265 = bitcast %struct.TYPE_14__* %258 to i8*
  %266 = bitcast %struct.TYPE_14__* %264 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %265, i8* align 8 %266, i64 8, i1 false)
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %268, align 8
  %270 = load i32, i32* %7, align 4
  %271 = add nsw i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i64 %272
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %275, align 8
  %277 = load i32, i32* %7, align 4
  %278 = add nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i64 %279
  %281 = bitcast %struct.TYPE_14__* %273 to i8*
  %282 = bitcast %struct.TYPE_14__* %280 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %281, i8* align 8 %282, i64 8, i1 false)
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 1
  %285 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %284, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %285, i64 %287
  %289 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %289, i64 0
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %290, align 8
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %293, align 8
  %295 = load i32, i32* %7, align 4
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %294, i64 %297
  %299 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %299, i64 0
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %300, align 8
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 1
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %306, align 8
  %308 = load i32, i32* %7, align 4
  %309 = call i32 @decorr_mono_buffer(%struct.TYPE_14__* %291, %struct.TYPE_14__* %301, i32 %304, %struct.TYPE_14__* %307, i32 %308)
  br label %310

310:                                              ; preds = %252, %207
  br label %311

311:                                              ; preds = %310, %76
  %312 = load i32, i32* %7, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %7, align 4
  br label %20

314:                                              ; preds = %56, %36
  br label %9

315:                                              ; preds = %9
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @decorr_mono_buffer(%struct.TYPE_14__*, %struct.TYPE_14__*, i32, %struct.TYPE_14__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @log2mono(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @CLEAR(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
