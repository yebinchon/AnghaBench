; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_floodfill.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_floodfill.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32*, i32*, i32, i32, i32*, i32, i64, i64, %struct.TYPE_14__*, i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32, i32)*, i64 (%struct.TYPE_16__*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32*, i32*, i32*, i32*)* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
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
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %6, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %7, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %15, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %16, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %17, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call i64 @is_inside(i32 %76, i32 %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %374

84:                                               ; preds = %2
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 11
  %87 = load i32 (%struct.TYPE_16__*, i32, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_16__*, i32, i32, i32*, i32*, i32*, i32*)** %86, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 %87(%struct.TYPE_16__* %88, i32 %91, i32 %94, i32* %12, i32* %13, i32* %14, i32* %15)
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %96, i32* %100, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  store i32 %111, i32* %115, align 4
  store i32 0, i32* %18, align 4
  br label %116

116:                                              ; preds = %140, %84
  %117 = load i32, i32* %18, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %143

122:                                              ; preds = %116
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %18, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %129, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %122
  br label %143

139:                                              ; preds = %122
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %18, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %18, align 4
  br label %116

143:                                              ; preds = %138, %116
  %144 = load i32, i32* %18, align 4
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %375

150:                                              ; preds = %143
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 10
  %153 = load i64 (%struct.TYPE_16__*, i32, i32, i32, i32, i32, i32)*, i64 (%struct.TYPE_16__*, i32, i32, i32, i32, i32, i32)** %152, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %15, align 4
  %165 = call i64 %153(%struct.TYPE_16__* %154, i32 %157, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %194

167:                                              ; preds = %150
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  store i32 %170, i32* %178, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 1
  store i32 %181, i32* %189, align 4
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %191, align 8
  br label %194

194:                                              ; preds = %167, %150
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %196 = call i32 @av_frame_make_writable(%struct.TYPE_16__* %195)
  store i32 %196, i32* %19, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i32, i32* %19, align 4
  store i32 %199, i32* %3, align 4
  br label %383

200:                                              ; preds = %194
  br label %201

201:                                              ; preds = %372, %200
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 7
  %207 = load i64, i64* %206, align 8
  %208 = icmp ugt i64 %204, %207
  br i1 %208, label %209, label %373

209:                                              ; preds = %201
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 6
  %212 = load i64, i64* %211, align 8
  %213 = add i64 %212, -1
  store i64 %213, i64* %211, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 8
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %215, align 8
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %20, align 4
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %224, align 8
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 6
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %21, align 4
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 10
  %234 = load i64 (%struct.TYPE_16__*, i32, i32, i32, i32, i32, i32)*, i64 (%struct.TYPE_16__*, i32, i32, i32, i32, i32, i32)** %233, align 8
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %236 = load i32, i32* %20, align 4
  %237 = load i32, i32* %21, align 4
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* %15, align 4
  %242 = call i64 %234(%struct.TYPE_16__* %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %372

244:                                              ; preds = %209
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 9
  %247 = load i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32, i32)** %246, align 8
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %249 = load i32, i32* %20, align 4
  %250 = load i32, i32* %21, align 4
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* %10, align 4
  %254 = load i32, i32* %11, align 4
  %255 = call i32 %247(%struct.TYPE_16__* %248, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254)
  %256 = load i32, i32* %20, align 4
  %257 = add nsw i32 %256, 1
  %258 = load i32, i32* %21, align 4
  %259 = load i32, i32* %16, align 4
  %260 = load i32, i32* %17, align 4
  %261 = call i64 @is_inside(i32 %257, i32 %258, i32 %259, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %284

263:                                              ; preds = %244
  %264 = load i32, i32* %20, align 4
  %265 = add nsw i32 %264, 1
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 8
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %267, align 8
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 6
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  store i32 %265, i32* %273, align 4
  %274 = load i32, i32* %21, align 4
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 8
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %276, align 8
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 6
  %280 = load i64, i64* %279, align 8
  %281 = add i64 %280, 1
  store i64 %281, i64* %279, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i64 %280
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 1
  store i32 %274, i32* %283, align 4
  br label %284

284:                                              ; preds = %263, %244
  %285 = load i32, i32* %20, align 4
  %286 = sub nsw i32 %285, 1
  %287 = load i32, i32* %21, align 4
  %288 = load i32, i32* %16, align 4
  %289 = load i32, i32* %17, align 4
  %290 = call i64 @is_inside(i32 %286, i32 %287, i32 %288, i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %313

292:                                              ; preds = %284
  %293 = load i32, i32* %20, align 4
  %294 = sub nsw i32 %293, 1
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 8
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %296, align 8
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 6
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 0
  store i32 %294, i32* %302, align 4
  %303 = load i32, i32* %21, align 4
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 8
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %305, align 8
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 6
  %309 = load i64, i64* %308, align 8
  %310 = add i64 %309, 1
  store i64 %310, i64* %308, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i64 %309
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 1
  store i32 %303, i32* %312, align 4
  br label %313

313:                                              ; preds = %292, %284
  %314 = load i32, i32* %20, align 4
  %315 = load i32, i32* %21, align 4
  %316 = add nsw i32 %315, 1
  %317 = load i32, i32* %16, align 4
  %318 = load i32, i32* %17, align 4
  %319 = call i64 @is_inside(i32 %314, i32 %316, i32 %317, i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %342

321:                                              ; preds = %313
  %322 = load i32, i32* %20, align 4
  %323 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 8
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %324, align 8
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 6
  %328 = load i64, i64* %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 0
  store i32 %322, i32* %330, align 4
  %331 = load i32, i32* %21, align 4
  %332 = add nsw i32 %331, 1
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 8
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %334, align 8
  %336 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i32 0, i32 6
  %338 = load i64, i64* %337, align 8
  %339 = add i64 %338, 1
  store i64 %339, i64* %337, align 8
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i64 %338
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 1
  store i32 %332, i32* %341, align 4
  br label %342

342:                                              ; preds = %321, %313
  %343 = load i32, i32* %20, align 4
  %344 = load i32, i32* %21, align 4
  %345 = sub nsw i32 %344, 1
  %346 = load i32, i32* %16, align 4
  %347 = load i32, i32* %17, align 4
  %348 = call i64 @is_inside(i32 %343, i32 %345, i32 %346, i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %371

350:                                              ; preds = %342
  %351 = load i32, i32* %20, align 4
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 8
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %353, align 8
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 6
  %357 = load i64, i64* %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 0
  store i32 %351, i32* %359, align 4
  %360 = load i32, i32* %21, align 4
  %361 = sub nsw i32 %360, 1
  %362 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %362, i32 0, i32 8
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %363, align 8
  %365 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %365, i32 0, i32 6
  %367 = load i64, i64* %366, align 8
  %368 = add i64 %367, 1
  store i64 %368, i64* %366, align 8
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i64 %367
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 1
  store i32 %361, i32* %370, align 4
  br label %371

371:                                              ; preds = %350, %342
  br label %372

372:                                              ; preds = %371, %209
  br label %201

373:                                              ; preds = %201
  br label %374

374:                                              ; preds = %373, %2
  br label %375

375:                                              ; preds = %374, %149
  %376 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %376, i32 0, i32 0
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 0
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %382 = call i32 @ff_filter_frame(i32 %380, %struct.TYPE_16__* %381)
  store i32 %382, i32* %3, align 4
  br label %383

383:                                              ; preds = %375, %198
  %384 = load i32, i32* %3, align 4
  ret i32 %384
}

declare dso_local i64 @is_inside(i32, i32, i32, i32) #1

declare dso_local i32 @av_frame_make_writable(%struct.TYPE_16__*) #1

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
