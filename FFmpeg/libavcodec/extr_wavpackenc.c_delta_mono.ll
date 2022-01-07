; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_delta_mono.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_delta_mono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__***, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i8*, %struct.TYPE_14__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*)* @delta_mono to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delta_mono(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %330

19:                                               ; preds = %2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %172, %19
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %175

31:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %101, %31
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %38, %32
  %49 = phi i1 [ false, %32 ], [ %47, %38 ]
  br i1 %49, label %50, label %104

50:                                               ; preds = %48
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  store i64 %58, i64* %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  store i32 %66, i32* %73, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %76, i64 %78
  %80 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %80, i64 0
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %85, i64 %88
  %90 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %90, i64 0
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @decorr_mono_buffer(%struct.TYPE_14__* %82, %struct.TYPE_14__* %92, i32 %95, %struct.TYPE_14__* %98, i32 %99)
  br label %101

101:                                              ; preds = %50
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %32

104:                                              ; preds = %48
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %107, i64 %109
  %111 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %111, i64 0
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @log2mono(%struct.TYPE_14__* %113, i32 %116, i32 %119)
  store i8* %120, i8** %8, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = icmp uge i8* %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %104
  br label %175

127:                                              ; preds = %104
  store i32 1, i32* %5, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = call i32 @CLEAR(%struct.TYPE_14__* %133)
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 16, %142
  %144 = trunc i64 %143 to i32
  %145 = call i32 @memcpy(%struct.TYPE_14__* %137, %struct.TYPE_14__* %140, i32 %144)
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %147, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %148, i64 %153
  %155 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %155, i64 0
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %160, i64 %162
  %164 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %164, i64 0
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %165, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = mul nsw i32 %169, 4
  %171 = call i32 @memcpy(%struct.TYPE_14__* %157, %struct.TYPE_14__* %166, i32 %170)
  br label %172

172:                                              ; preds = %127
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %7, align 4
  br label %28

175:                                              ; preds = %126, %28
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %327, %175
  %179 = load i32, i32* %5, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %7, align 4
  %183 = icmp sle i32 %182, 7
  br label %184

184:                                              ; preds = %181, %178
  %185 = phi i1 [ false, %178 ], [ %183, %181 ]
  br i1 %185, label %186, label %330

186:                                              ; preds = %184
  store i32 0, i32* %10, align 4
  br label %187

187:                                              ; preds = %256, %186
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %187
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br label %203

203:                                              ; preds = %193, %187
  %204 = phi i1 [ false, %187 ], [ %202, %193 ]
  br i1 %204, label %205, label %259

205:                                              ; preds = %203
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 1
  store i64 %213, i64* %220, align 8
  %221 = load i32, i32* %7, align 4
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %223, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  store i32 %221, i32* %228, align 8
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %230, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %231, i64 %233
  %235 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %235, i64 0
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %236, align 8
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %239, align 8
  %241 = load i32, i32* %10, align 4
  %242 = add nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %240, i64 %243
  %245 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %245, i64 0
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %252, align 8
  %254 = load i32, i32* %10, align 4
  %255 = call i32 @decorr_mono_buffer(%struct.TYPE_14__* %237, %struct.TYPE_14__* %247, i32 %250, %struct.TYPE_14__* %253, i32 %254)
  br label %256

256:                                              ; preds = %205
  %257 = load i32, i32* %10, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %10, align 4
  br label %187

259:                                              ; preds = %203
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %261, align 8
  %263 = load i32, i32* %10, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %262, i64 %264
  %266 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %266, i64 0
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %267, align 8
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = call i8* @log2mono(%struct.TYPE_14__* %268, i32 %271, i32 %274)
  store i8* %275, i8** %8, align 8
  %276 = load i8*, i8** %8, align 8
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 1
  %279 = load i8*, i8** %278, align 8
  %280 = icmp uge i8* %276, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %259
  br label %330

282:                                              ; preds = %259
  %283 = load i8*, i8** %8, align 8
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 1
  store i8* %283, i8** %285, align 8
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 2
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %287, align 8
  %289 = call i32 @CLEAR(%struct.TYPE_14__* %288)
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %291, align 8
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 2
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %294, align 8
  %296 = load i32, i32* %10, align 4
  %297 = sext i32 %296 to i64
  %298 = mul i64 16, %297
  %299 = trunc i64 %298 to i32
  %300 = call i32 @memcpy(%struct.TYPE_14__* %292, %struct.TYPE_14__* %295, i32 %299)
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %302, align 8
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = add nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %303, i64 %308
  %310 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %310, i64 0
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %311, align 8
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 1
  %315 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %314, align 8
  %316 = load i32, i32* %10, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %315, i64 %317
  %319 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %319, i64 0
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %320, align 8
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = mul nsw i32 %324, 4
  %326 = call i32 @memcpy(%struct.TYPE_14__* %312, %struct.TYPE_14__* %321, i32 %325)
  br label %327

327:                                              ; preds = %282
  %328 = load i32, i32* %7, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %7, align 4
  br label %178

330:                                              ; preds = %18, %281, %184
  ret void
}

declare dso_local i32 @decorr_mono_buffer(%struct.TYPE_14__*, %struct.TYPE_14__*, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i8* @log2mono(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @CLEAR(%struct.TYPE_14__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
