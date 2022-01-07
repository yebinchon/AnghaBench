; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_hdcd.c_hdcd_process_stereo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_hdcd.c_hdcd_process_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@HDCD_TG_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32)* @hdcd_process_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdcd_process_stereo(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  store i32* %19, i32** %8, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %20, align 4
  %27 = getelementptr inbounds i32, i32* %20, i64 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %27, align 4
  store i32 0, i32* %11, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 0
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @hdcd_analyze_prepare(%struct.TYPE_8__* %42, i32* %43, i32 %44, i32 2)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 1
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @hdcd_analyze_prepare(%struct.TYPE_8__* %49, i32* %51, i32 %52, i32 2)
  br label %54

54:                                               ; preds = %38, %3
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %58 = call i32 @hdcd_control_stereo(%struct.TYPE_7__* %55, i32* %56, i32* %57)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %189, %54
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %205

63:                                               ; preds = %59
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = mul nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %69, %70
  %72 = mul nsw i32 2, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  %75 = load i32*, i32** %8, align 8
  %76 = icmp ule i32* %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @av_assert0(i32 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %11, align 4
  %85 = mul nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %11, align 4
  %90 = sub nsw i32 %88, %89
  %91 = call i32 @hdcd_scan(%struct.TYPE_7__* %79, %struct.TYPE_8__* %82, i32 2, i32* %87, i32 %90, i32 0)
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %13, align 4
  %98 = mul nsw i32 %97, 2
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32*, i32** %8, align 8
  %102 = icmp ule i32* %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @av_assert0(i32 %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %159

109:                                              ; preds = %63
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %13, align 4
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @HDCD_TG_MISMATCH, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @hdcd_analyze(i32* %110, i32 %111, i32 2, i32 %113, i32 %116, i32 %118, i32 %121, i32 %127, i32 %131)
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %132, i32* %133, align 4
  %134 = load i32*, i32** %5, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %13, align 4
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @HDCD_TG_MISMATCH, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @hdcd_analyze(i32* %135, i32 %136, i32 2, i32 %138, i32 %141, i32 %143, i32 %146, i32 %152, i32 %156)
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %157, i32* %158, align 4
  br label %189

159:                                              ; preds = %63
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @hdcd_envelope(i32* %160, i32 %161, i32 2, i32 %164, i32 %166, i32 %169, i32 %171)
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %172, i32* %173, align 4
  %174 = load i32*, i32** %5, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %13, align 4
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @hdcd_envelope(i32* %175, i32 %176, i32 2, i32 %179, i32 %181, i32 %184, i32 %186)
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %187, i32* %188, align 4
  br label %189

189:                                              ; preds = %159, %109
  %190 = load i32, i32* %13, align 4
  %191 = mul nsw i32 %190, 2
  %192 = load i32*, i32** %5, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32* %194, i32** %5, align 8
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %6, align 4
  %197 = sub nsw i32 %196, %195
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %13, align 4
  %200 = sub nsw i32 %198, %199
  store i32 %200, i32* %11, align 4
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %202 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %203 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %204 = call i32 @hdcd_control_stereo(%struct.TYPE_7__* %201, i32* %202, i32* %203)
  store i32 %204, i32* %12, align 4
  br label %59

205:                                              ; preds = %59
  %206 = load i32, i32* %11, align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %303

208:                                              ; preds = %205
  %209 = load i32*, i32** %5, align 8
  %210 = load i32, i32* %11, align 4
  %211 = mul nsw i32 %210, 2
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  %214 = load i32*, i32** %8, align 8
  %215 = icmp ule i32* %213, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @av_assert0(i32 %216)
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %272

222:                                              ; preds = %208
  %223 = load i32*, i32** %5, align 8
  %224 = load i32, i32* %11, align 4
  %225 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i64 0
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %12, align 4
  %242 = load i32, i32* @HDCD_TG_MISMATCH, align 4
  %243 = icmp eq i32 %241, %242
  %244 = zext i1 %243 to i32
  %245 = call i32 @hdcd_analyze(i32* %223, i32 %224, i32 2, i32 %226, i32 %229, i32 %231, i32 %234, i32 %240, i32 %244)
  %246 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %245, i32* %246, align 4
  %247 = load i32*, i32** %5, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  %249 = load i32, i32* %11, align 4
  %250 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i64 1
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* @HDCD_TG_MISMATCH, align 4
  %268 = icmp eq i32 %266, %267
  %269 = zext i1 %268 to i32
  %270 = call i32 @hdcd_analyze(i32* %248, i32 %249, i32 2, i32 %251, i32 %254, i32 %256, i32 %259, i32 %265, i32 %269)
  %271 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %270, i32* %271, align 4
  br label %302

272:                                              ; preds = %208
  %273 = load i32*, i32** %5, align 8
  %274 = load i32, i32* %11, align 4
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @hdcd_envelope(i32* %273, i32 %274, i32 2, i32 %277, i32 %279, i32 %282, i32 %284)
  %286 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %285, i32* %286, align 4
  %287 = load i32*, i32** %5, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 1
  %289 = load i32, i32* %11, align 4
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @hdcd_envelope(i32* %288, i32 %289, i32 2, i32 %292, i32 %294, i32 %297, i32 %299)
  %301 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %300, i32* %301, align 4
  br label %302

302:                                              ; preds = %272, %222
  br label %303

303:                                              ; preds = %302, %205
  %304 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i64 0
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  store i32 %305, i32* %310, align 4
  %311 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i64 1
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 0
  store i32 %312, i32* %317, align 4
  ret void
}

declare dso_local i32 @hdcd_analyze_prepare(%struct.TYPE_8__*, i32*, i32, i32) #1

declare dso_local i32 @hdcd_control_stereo(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @hdcd_scan(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32*, i32, i32) #1

declare dso_local i32 @hdcd_analyze(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hdcd_envelope(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
