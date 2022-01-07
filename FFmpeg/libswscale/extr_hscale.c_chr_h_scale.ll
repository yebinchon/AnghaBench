; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_hscale.c_chr_h_scale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_hscale.c_chr_h_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 (i32*, i32*, i32)*, i32 (%struct.TYPE_18__*, i32*, i32, i32*, i32, i32, i32)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32, i32*, i32*, i32, i32)* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32** }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32** }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32)* @chr_h_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chr_h_scale(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %9, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @AV_CEIL_RSHIFT(i32 %29, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @AV_CEIL_RSHIFT(i32 %40, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  store i32** %57, i32*** %13, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = load i32**, i32*** %64, align 8
  store i32** %65, i32*** %14, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i64 2
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32**, i32*** %72, align 8
  store i32** %73, i32*** %15, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i64 2
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load i32**, i32*** %80, align 8
  store i32** %81, i32*** %16, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %82, %90
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i64 1
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %92, %100
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i64 2
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %102, %110
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i64 2
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %112, %120
  store i32 %121, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %122

122:                                              ; preds = %271, %4
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %274

126:                                              ; preds = %122
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 2
  %129 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32, i32*, i32*, i32, i32)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32, i32*, i32*, i32, i32)** %128, align 8
  %130 = icmp ne i32 (%struct.TYPE_18__*, i32*, i32*, i32, i32*, i32*, i32, i32)* %129, null
  br i1 %130, label %131, label %168

131:                                              ; preds = %126
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 2
  %134 = load i32 (%struct.TYPE_18__*, i32*, i32*, i32, i32*, i32*, i32, i32)*, i32 (%struct.TYPE_18__*, i32*, i32*, i32, i32*, i32*, i32, i32)** %133, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %136 = load i32**, i32*** %14, align 8
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %21, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %136, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = load i32**, i32*** %16, align 8
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %21, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %143, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load i32**, i32*** %13, align 8
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %21, align 4
  %154 = add nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %151, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = load i32**, i32*** %15, align 8
  %159 = load i32, i32* %19, align 4
  %160 = load i32, i32* %21, align 4
  %161 = add nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32*, i32** %158, i64 %162
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %12, align 4
  %167 = call i32 %134(%struct.TYPE_18__* %135, i32* %142, i32* %149, i32 %150, i32* %157, i32* %164, i32 %165, i32 %166)
  br label %227

168:                                              ; preds = %126
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 1
  %171 = load i32 (%struct.TYPE_18__*, i32*, i32, i32*, i32, i32, i32)*, i32 (%struct.TYPE_18__*, i32*, i32, i32*, i32, i32, i32)** %170, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %173 = load i32**, i32*** %14, align 8
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %21, align 4
  %176 = add nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %173, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %11, align 4
  %181 = load i32**, i32*** %13, align 8
  %182 = load i32, i32* %17, align 4
  %183 = load i32, i32* %21, align 4
  %184 = add nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %181, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 %171(%struct.TYPE_18__* %172, i32* %179, i32 %180, i32* %187, i32 %190, i32 %193, i32 %196)
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  %200 = load i32 (%struct.TYPE_18__*, i32*, i32, i32*, i32, i32, i32)*, i32 (%struct.TYPE_18__*, i32*, i32, i32*, i32, i32, i32)** %199, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %202 = load i32**, i32*** %16, align 8
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* %21, align 4
  %205 = add nsw i32 %203, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %202, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %11, align 4
  %210 = load i32**, i32*** %15, align 8
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %21, align 4
  %213 = add nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32*, i32** %210, i64 %214
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 %200(%struct.TYPE_18__* %201, i32* %208, i32 %209, i32* %216, i32 %219, i32 %222, i32 %225)
  br label %227

227:                                              ; preds = %168, %131
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 0
  %230 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %229, align 8
  %231 = icmp ne i32 (i32*, i32*, i32)* %230, null
  br i1 %231, label %232, label %252

232:                                              ; preds = %227
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 0
  %235 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %234, align 8
  %236 = load i32**, i32*** %14, align 8
  %237 = load i32, i32* %18, align 4
  %238 = load i32, i32* %21, align 4
  %239 = add nsw i32 %237, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32*, i32** %236, i64 %240
  %242 = load i32*, i32** %241, align 8
  %243 = load i32**, i32*** %16, align 8
  %244 = load i32, i32* %20, align 4
  %245 = load i32, i32* %21, align 4
  %246 = add nsw i32 %244, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32*, i32** %243, i64 %247
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %11, align 4
  %251 = call i32 %235(i32* %242, i32* %249, i32 %250)
  br label %252

252:                                              ; preds = %232, %227
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i64 1
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %259, align 4
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i64 2
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 4
  br label %271

271:                                              ; preds = %252
  %272 = load i32, i32* %21, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %21, align 4
  br label %122

274:                                              ; preds = %122
  %275 = load i32, i32* %8, align 4
  ret i32 %275
}

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
