; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_delta_stereo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_delta_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_17__***, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_17__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*)* @delta_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delta_stereo(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %434

18:                                               ; preds = %2
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %223, %18
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %226

30:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %117, %30
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %37, %31
  %48 = phi i1 [ false, %31 ], [ %46, %37 ]
  br i1 %48, label %49, label %120

49:                                               ; preds = %47
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  store i64 %57, i64* %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  store i32 %65, i32* %72, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %76, i64 %78
  %80 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %80, i64 0
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %85, i64 %87
  %89 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %89, i64 1
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %94, i64 %97
  %99 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %99, i64 0
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %104, i64 %107
  %109 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %109, i64 1
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @decorr_stereo_buffer(%struct.TYPE_15__* %73, %struct.TYPE_17__* %82, %struct.TYPE_17__* %91, %struct.TYPE_17__* %101, %struct.TYPE_17__* %111, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %49
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %31

120:                                              ; preds = %47
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %123, i64 %125
  %127 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %127, i64 0
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %132, i64 %134
  %136 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %136, i64 1
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @log2stereo(%struct.TYPE_17__* %129, %struct.TYPE_17__* %138, i32 %141, i32 %144)
  store i64 %145, i64* %9, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp sge i64 %146, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %120
  br label %226

152:                                              ; preds = %120
  store i32 1, i32* %5, align 4
  %153 = load i64, i64* %9, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = call i32 @CLEAR(%struct.TYPE_17__* %158)
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = mul i64 16, %167
  %169 = trunc i64 %168 to i32
  %170 = call i32 @memcpy(%struct.TYPE_17__* %162, %struct.TYPE_17__* %165, i32 %169)
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %172, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %173, i64 %178
  %180 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %180, i64 0
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %181, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %185, i64 %187
  %189 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %189, i64 0
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %190, align 8
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = mul nsw i32 %194, 4
  %196 = call i32 @memcpy(%struct.TYPE_17__* %182, %struct.TYPE_17__* %191, i32 %195)
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %198, align 8
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %199, i64 %204
  %206 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %206, i64 1
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %207, align 8
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %211, i64 %213
  %215 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %215, i64 1
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %216, align 8
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = mul nsw i32 %220, 4
  %222 = call i32 @memcpy(%struct.TYPE_17__* %208, %struct.TYPE_17__* %217, i32 %221)
  br label %223

223:                                              ; preds = %152
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %7, align 4
  br label %27

226:                                              ; preds = %151, %27
  %227 = load i32, i32* %6, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %7, align 4
  br label %229

229:                                              ; preds = %431, %226
  %230 = load i32, i32* %5, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* %7, align 4
  %234 = icmp sle i32 %233, 7
  br label %235

235:                                              ; preds = %232, %229
  %236 = phi i1 [ false, %229 ], [ %234, %232 ]
  br i1 %236, label %237, label %434

237:                                              ; preds = %235
  store i32 0, i32* %8, align 4
  br label %238

238:                                              ; preds = %324, %237
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp slt i32 %239, %242
  br i1 %243, label %244, label %254

244:                                              ; preds = %238
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %246, align 8
  %248 = load i32, i32* %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br label %254

254:                                              ; preds = %244, %238
  %255 = phi i1 [ false, %238 ], [ %253, %244 ]
  br i1 %255, label %256, label %327

256:                                              ; preds = %254
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 2
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %266, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 1
  store i64 %264, i64* %271, align 8
  %272 = load i32, i32* %7, align 4
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 2
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %274, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 0
  store i32 %272, i32* %279, align 8
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %282, align 8
  %284 = load i32, i32* %8, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %283, i64 %285
  %287 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %287, i64 0
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %288, align 8
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %291, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %292, i64 %294
  %296 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %296, i64 1
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %297, align 8
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %300, align 8
  %302 = load i32, i32* %8, align 4
  %303 = add nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %301, i64 %304
  %306 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %306, i64 0
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %307, align 8
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %310, align 8
  %312 = load i32, i32* %8, align 4
  %313 = add nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %311, i64 %314
  %316 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %316, i64 1
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %317, align 8
  %319 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* %8, align 4
  %323 = call i32 @decorr_stereo_buffer(%struct.TYPE_15__* %280, %struct.TYPE_17__* %289, %struct.TYPE_17__* %298, %struct.TYPE_17__* %308, %struct.TYPE_17__* %318, i32 %321, i32 %322)
  br label %324

324:                                              ; preds = %256
  %325 = load i32, i32* %8, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %8, align 4
  br label %238

327:                                              ; preds = %254
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %329, align 8
  %331 = load i32, i32* %8, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %330, i64 %332
  %334 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %334, i64 0
  %336 = load %struct.TYPE_17__*, %struct.TYPE_17__** %335, align 8
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %339, i64 %341
  %343 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %343, i64 1
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %344, align 8
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 8
  %352 = call i64 @log2stereo(%struct.TYPE_17__* %336, %struct.TYPE_17__* %345, i32 %348, i32 %351)
  store i64 %352, i64* %9, align 8
  %353 = load i64, i64* %9, align 8
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = icmp slt i64 %353, %356
  br i1 %357, label %358, label %429

358:                                              ; preds = %327
  %359 = load i64, i64* %9, align 8
  %360 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %360, i32 0, i32 1
  store i64 %359, i64* %361, align 8
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 2
  %364 = load %struct.TYPE_17__*, %struct.TYPE_17__** %363, align 8
  %365 = call i32 @CLEAR(%struct.TYPE_17__* %364)
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 2
  %368 = load %struct.TYPE_17__*, %struct.TYPE_17__** %367, align 8
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i32 0, i32 2
  %371 = load %struct.TYPE_17__*, %struct.TYPE_17__** %370, align 8
  %372 = load i32, i32* %8, align 4
  %373 = sext i32 %372 to i64
  %374 = mul i64 16, %373
  %375 = trunc i64 %374 to i32
  %376 = call i32 @memcpy(%struct.TYPE_17__* %368, %struct.TYPE_17__* %371, i32 %375)
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 1
  %379 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %378, align 8
  %380 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = add nsw i32 %382, 1
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %379, i64 %384
  %386 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %386, i64 0
  %388 = load %struct.TYPE_17__*, %struct.TYPE_17__** %387, align 8
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 1
  %391 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %390, align 8
  %392 = load i32, i32* %8, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %391, i64 %393
  %395 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %395, i64 0
  %397 = load %struct.TYPE_17__*, %struct.TYPE_17__** %396, align 8
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = mul nsw i32 %400, 4
  %402 = call i32 @memcpy(%struct.TYPE_17__* %388, %struct.TYPE_17__* %397, i32 %401)
  %403 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %403, i32 0, i32 1
  %405 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %404, align 8
  %406 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = add nsw i32 %408, 1
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %405, i64 %410
  %412 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %412, i64 1
  %414 = load %struct.TYPE_17__*, %struct.TYPE_17__** %413, align 8
  %415 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %415, i32 0, i32 1
  %417 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %416, align 8
  %418 = load i32, i32* %8, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %417, i64 %419
  %421 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %421, i64 1
  %423 = load %struct.TYPE_17__*, %struct.TYPE_17__** %422, align 8
  %424 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = mul nsw i32 %426, 4
  %428 = call i32 @memcpy(%struct.TYPE_17__* %414, %struct.TYPE_17__* %423, i32 %427)
  br label %430

429:                                              ; preds = %327
  br label %434

430:                                              ; preds = %358
  br label %431

431:                                              ; preds = %430
  %432 = load i32, i32* %7, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %7, align 4
  br label %229

434:                                              ; preds = %17, %429, %235
  ret void
}

declare dso_local i32 @decorr_stereo_buffer(%struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @log2stereo(%struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @CLEAR(%struct.TYPE_17__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
