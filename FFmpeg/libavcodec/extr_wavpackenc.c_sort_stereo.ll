; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_sort_stereo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_sort_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_17__***, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*)* @sort_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_stereo(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  store i32 1, i32* %5, align 4
  br label %9

9:                                                ; preds = %400, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %401

12:                                               ; preds = %9
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = call i32 @memcpy(%struct.TYPE_17__* %15, %struct.TYPE_17__* %18, i32 8)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %397, %12
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %26, %20
  %37 = phi i1 [ false, %20 ], [ %35, %26 ]
  br i1 %37, label %38, label %400

38:                                               ; preds = %36
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %56, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %45, %38
  br label %400

57:                                               ; preds = %45
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %65, %74
  br i1 %75, label %76, label %121

76:                                               ; preds = %57
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %80, i64 %82
  %84 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %84, i64 0
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %89, i64 %91
  %93 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %93, i64 1
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %98, i64 %101
  %103 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %103, i64 0
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %108, i64 %111
  %113 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %113, i64 1
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @decorr_stereo_buffer(%struct.TYPE_15__* %77, %struct.TYPE_17__* %86, %struct.TYPE_17__* %95, %struct.TYPE_17__* %105, %struct.TYPE_17__* %115, i32 %118, i32 %119)
  br label %397

121:                                              ; preds = %57
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i64 %126
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i64 %133
  %135 = bitcast %struct.TYPE_17__* %127 to i8*
  %136 = bitcast %struct.TYPE_17__* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %135, i8* align 8 %136, i64 8, i1 false)
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i64 %142
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i64 %148
  %150 = bitcast %struct.TYPE_17__* %143 to i8*
  %151 = bitcast %struct.TYPE_17__* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 8, i1 false)
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %216, %121
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %153
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br label %169

169:                                              ; preds = %159, %153
  %170 = phi i1 [ false, %153 ], [ %168, %159 ]
  br i1 %170, label %171, label %219

171:                                              ; preds = %169
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %175, i64 %177
  %179 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %179, i64 0
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %180, align 8
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %184, i64 %186
  %188 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %188, i64 1
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %189, align 8
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %193, i64 %196
  %198 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %198, i64 0
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %199, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %203, i64 %206
  %208 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %208, i64 1
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %209, align 8
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @decorr_stereo_buffer(%struct.TYPE_15__* %172, %struct.TYPE_17__* %181, %struct.TYPE_17__* %190, %struct.TYPE_17__* %200, %struct.TYPE_17__* %210, i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %171
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %8, align 4
  br label %153

219:                                              ; preds = %169
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %221, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %222, i64 %224
  %226 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %226, i64 0
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %227, align 8
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %230, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %231, i64 %233
  %235 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %235, i64 1
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %236, align 8
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @log2stereo(%struct.TYPE_17__* %228, %struct.TYPE_17__* %237, i32 %240, i32 %243)
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* %6, align 4
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = icmp slt i32 %245, %248
  br i1 %249, label %250, label %321

250:                                              ; preds = %219
  store i32 1, i32* %5, align 4
  %251 = load i32, i32* %6, align 4
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 2
  store i32 %251, i32* %253, align 8
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 2
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %255, align 8
  %257 = call i32 @CLEAR(%struct.TYPE_17__* %256)
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %259, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %262, align 8
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = mul i64 8, %265
  %267 = trunc i64 %266 to i32
  %268 = call i32 @memcpy(%struct.TYPE_17__* %260, %struct.TYPE_17__* %263, i32 %267)
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %270, align 8
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %271, i64 %276
  %278 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %278, i64 0
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %279, align 8
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
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = mul nsw i32 %292, 4
  %294 = call i32 @memcpy(%struct.TYPE_17__* %280, %struct.TYPE_17__* %289, i32 %293)
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %296, align 8
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = add nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %297, i64 %302
  %304 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %304, i64 1
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %305, align 8
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %308, align 8
  %310 = load i32, i32* %8, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %309, i64 %311
  %313 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %313, i64 1
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %314, align 8
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = mul nsw i32 %318, 4
  %320 = call i32 @memcpy(%struct.TYPE_17__* %306, %struct.TYPE_17__* %315, i32 %319)
  br label %396

321:                                              ; preds = %219
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %323, align 8
  %325 = load i32, i32* %7, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %324, i64 %326
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 2
  %330 = load %struct.TYPE_17__*, %struct.TYPE_17__** %329, align 8
  %331 = load i32, i32* %7, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i64 %332
  %334 = bitcast %struct.TYPE_17__* %327 to i8*
  %335 = bitcast %struct.TYPE_17__* %333 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %334, i8* align 8 %335, i64 8, i1 false)
  %336 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_17__*, %struct.TYPE_17__** %337, align 8
  %339 = load i32, i32* %7, align 4
  %340 = add nsw i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i64 %341
  %343 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %343, i32 0, i32 2
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %344, align 8
  %346 = load i32, i32* %7, align 4
  %347 = add nsw i32 %346, 1
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i64 %348
  %350 = bitcast %struct.TYPE_17__* %342 to i8*
  %351 = bitcast %struct.TYPE_17__* %349 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %350, i8* align 8 %351, i64 8, i1 false)
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %354, align 8
  %356 = load i32, i32* %7, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %355, i64 %357
  %359 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %359, i64 0
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %360, align 8
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 1
  %364 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %363, align 8
  %365 = load i32, i32* %7, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %364, i64 %366
  %368 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %368, i64 1
  %370 = load %struct.TYPE_17__*, %struct.TYPE_17__** %369, align 8
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %372, align 8
  %374 = load i32, i32* %7, align 4
  %375 = add nsw i32 %374, 1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %373, i64 %376
  %378 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %378, i64 0
  %380 = load %struct.TYPE_17__*, %struct.TYPE_17__** %379, align 8
  %381 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %381, i32 0, i32 1
  %383 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %382, align 8
  %384 = load i32, i32* %7, align 4
  %385 = add nsw i32 %384, 1
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %383, i64 %386
  %388 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %388, i64 1
  %390 = load %struct.TYPE_17__*, %struct.TYPE_17__** %389, align 8
  %391 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* %7, align 4
  %395 = call i32 @decorr_stereo_buffer(%struct.TYPE_15__* %352, %struct.TYPE_17__* %361, %struct.TYPE_17__* %370, %struct.TYPE_17__* %380, %struct.TYPE_17__* %390, i32 %393, i32 %394)
  br label %396

396:                                              ; preds = %321, %250
  br label %397

397:                                              ; preds = %396, %76
  %398 = load i32, i32* %7, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %7, align 4
  br label %20

400:                                              ; preds = %56, %36
  br label %9

401:                                              ; preds = %9
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @decorr_stereo_buffer(%struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @log2stereo(%struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @CLEAR(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
