; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_sbr_qmf_synthesis.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_sbr_qmf_synthesis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i32*, i32*)* }
%struct.TYPE_11__ = type { i32 (i32*, i32*, i32*)*, i32 (i32*)*, i32 (i32*, i32*)* }
%struct.TYPE_13__ = type { i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)* }

@sbr_qmf_window_ds = common dso_local global i32* null, align 8
@sbr_qmf_window_us = common dso_local global i32* null, align 8
@SBR_SYNTHESIS_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_13__*, i32*, [38 x [64 x i32]]*, [64 x i32]*, i32*, i32*, i32)* @sbr_qmf_synthesis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbr_qmf_synthesis(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, %struct.TYPE_13__* %2, i32* %3, [38 x [64 x i32]]* %4, [64 x i32]* %5, i32* %6, i32* %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [38 x [64 x i32]]*, align 8
  %15 = alloca [64 x i32]*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %12, align 8
  store i32* %3, i32** %13, align 8
  store [38 x [64 x i32]]* %4, [38 x [64 x i32]]** %14, align 8
  store [64 x i32]* %5, [64 x i32]** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %9
  %28 = load i32*, i32** @sbr_qmf_window_ds, align 8
  br label %31

29:                                               ; preds = %9
  %30 = load i32*, i32** @sbr_qmf_window_us, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32* [ %28, %27 ], [ %30, %29 ]
  store i32* %32, i32** %21, align 8
  %33 = load i32, i32* %18, align 4
  %34 = ashr i32 128, %33
  store i32 %34, i32* %22, align 4
  store i32 0, i32* %19, align 4
  br label %35

35:                                               ; preds = %372, %31
  %36 = load i32, i32* %19, align 4
  %37 = icmp slt i32 %36, 32
  br i1 %37, label %38, label %375

38:                                               ; preds = %35
  %39 = load i32*, i32** %17, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %22, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %38
  %44 = load i32, i32* %18, align 4
  %45 = ashr i32 1152, %44
  store i32 %45, i32* %24, align 4
  %46 = load i32*, i32** %16, align 8
  %47 = load i32, i32* @SBR_SYNTHESIS_BUF_SIZE, align 4
  %48 = load i32, i32* %24, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32*, i32** %16, align 8
  %53 = load i32, i32* %24, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memcpy(i32* %51, i32* %52, i32 %56)
  %58 = load i32, i32* @SBR_SYNTHESIS_BUF_SIZE, align 4
  %59 = load i32, i32* %24, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* %22, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32*, i32** %17, align 8
  store i32 %62, i32* %63, align 4
  br label %69

64:                                               ; preds = %38
  %65 = load i32, i32* %22, align 4
  %66 = load i32*, i32** %17, align 8
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %43
  %70 = load i32*, i32** %16, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32* %74, i32** %23, align 8
  %75 = load i32, i32* %18, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %145

77:                                               ; preds = %69
  store i32 0, i32* %20, align 4
  br label %78

78:                                               ; preds = %119, %77
  %79 = load i32, i32* %20, align 4
  %80 = icmp slt i32 %79, 32
  br i1 %80, label %81, label %122

81:                                               ; preds = %78
  %82 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %14, align 8
  %83 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %82, i64 0
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %83, i64 0, i64 %85
  %87 = load i32, i32* %20, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [64 x i32], [64 x i32]* %86, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 0, %90
  %92 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %14, align 8
  %93 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %92, i64 0
  %94 = load i32, i32* %19, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %93, i64 0, i64 %95
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [64 x i32], [64 x i32]* %96, i64 0, i64 %98
  store i32 %91, i32* %99, align 4
  %100 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %14, align 8
  %101 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %100, i64 1
  %102 = load i32, i32* %19, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %101, i64 0, i64 %103
  %105 = load i32, i32* %20, align 4
  %106 = sub nsw i32 31, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [64 x i32], [64 x i32]* %104, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %14, align 8
  %111 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %110, i64 0
  %112 = load i32, i32* %19, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %111, i64 0, i64 %113
  %115 = load i32, i32* %20, align 4
  %116 = add nsw i32 32, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [64 x i32], [64 x i32]* %114, i64 0, i64 %117
  store i32 %109, i32* %118, align 4
  br label %119

119:                                              ; preds = %81
  %120 = load i32, i32* %20, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %20, align 4
  br label %78

122:                                              ; preds = %78
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32 (%struct.TYPE_12__*, i32*, i32*)*, i32 (%struct.TYPE_12__*, i32*, i32*)** %124, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %127 = load [64 x i32]*, [64 x i32]** %15, align 8
  %128 = getelementptr inbounds [64 x i32], [64 x i32]* %127, i64 0
  %129 = getelementptr inbounds [64 x i32], [64 x i32]* %128, i64 0, i64 0
  %130 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %14, align 8
  %131 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %130, i64 0
  %132 = load i32, i32* %19, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %131, i64 0, i64 %133
  %135 = getelementptr inbounds [64 x i32], [64 x i32]* %134, i64 0, i64 0
  %136 = call i32 %125(%struct.TYPE_12__* %126, i32* %129, i32* %135)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  %139 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %138, align 8
  %140 = load i32*, i32** %23, align 8
  %141 = load [64 x i32]*, [64 x i32]** %15, align 8
  %142 = getelementptr inbounds [64 x i32], [64 x i32]* %141, i64 0
  %143 = getelementptr inbounds [64 x i32], [64 x i32]* %142, i64 0, i64 0
  %144 = call i32 %139(i32* %140, i32* %143)
  br label %195

145:                                              ; preds = %69
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i32 (i32*)*, i32 (i32*)** %147, align 8
  %149 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %14, align 8
  %150 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %149, i64 1
  %151 = load i32, i32* %19, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %150, i64 0, i64 %152
  %154 = getelementptr inbounds [64 x i32], [64 x i32]* %153, i64 0, i64 0
  %155 = call i32 %148(i32* %154)
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32 (%struct.TYPE_12__*, i32*, i32*)*, i32 (%struct.TYPE_12__*, i32*, i32*)** %157, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %160 = load [64 x i32]*, [64 x i32]** %15, align 8
  %161 = getelementptr inbounds [64 x i32], [64 x i32]* %160, i64 0
  %162 = getelementptr inbounds [64 x i32], [64 x i32]* %161, i64 0, i64 0
  %163 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %14, align 8
  %164 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %163, i64 0
  %165 = load i32, i32* %19, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %164, i64 0, i64 %166
  %168 = getelementptr inbounds [64 x i32], [64 x i32]* %167, i64 0, i64 0
  %169 = call i32 %158(%struct.TYPE_12__* %159, i32* %162, i32* %168)
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i32 (%struct.TYPE_12__*, i32*, i32*)*, i32 (%struct.TYPE_12__*, i32*, i32*)** %171, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %174 = load [64 x i32]*, [64 x i32]** %15, align 8
  %175 = getelementptr inbounds [64 x i32], [64 x i32]* %174, i64 1
  %176 = getelementptr inbounds [64 x i32], [64 x i32]* %175, i64 0, i64 0
  %177 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %14, align 8
  %178 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %177, i64 1
  %179 = load i32, i32* %19, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %178, i64 0, i64 %180
  %182 = getelementptr inbounds [64 x i32], [64 x i32]* %181, i64 0, i64 0
  %183 = call i32 %172(%struct.TYPE_12__* %173, i32* %176, i32* %182)
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %185, align 8
  %187 = load i32*, i32** %23, align 8
  %188 = load [64 x i32]*, [64 x i32]** %15, align 8
  %189 = getelementptr inbounds [64 x i32], [64 x i32]* %188, i64 1
  %190 = getelementptr inbounds [64 x i32], [64 x i32]* %189, i64 0, i64 0
  %191 = load [64 x i32]*, [64 x i32]** %15, align 8
  %192 = getelementptr inbounds [64 x i32], [64 x i32]* %191, i64 0
  %193 = getelementptr inbounds [64 x i32], [64 x i32]* %192, i64 0, i64 0
  %194 = call i32 %186(i32* %187, i32* %190, i32* %193)
  br label %195

195:                                              ; preds = %145, %122
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = load i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)** %197, align 8
  %199 = load i32*, i32** %13, align 8
  %200 = load i32*, i32** %23, align 8
  %201 = load i32*, i32** %21, align 8
  %202 = load i32, i32* %18, align 4
  %203 = ashr i32 64, %202
  %204 = call i32 %198(i32* %199, i32* %200, i32* %201, i32 %203)
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %206, align 8
  %208 = load i32*, i32** %13, align 8
  %209 = load i32*, i32** %23, align 8
  %210 = load i32, i32* %18, align 4
  %211 = ashr i32 192, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  %214 = load i32*, i32** %21, align 8
  %215 = load i32, i32* %18, align 4
  %216 = ashr i32 64, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  %219 = load i32*, i32** %13, align 8
  %220 = load i32, i32* %18, align 4
  %221 = ashr i32 64, %220
  %222 = call i32 %207(i32* %208, i32* %213, i32* %218, i32* %219, i32 %221)
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %224, align 8
  %226 = load i32*, i32** %13, align 8
  %227 = load i32*, i32** %23, align 8
  %228 = load i32, i32* %18, align 4
  %229 = ashr i32 256, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %227, i64 %230
  %232 = load i32*, i32** %21, align 8
  %233 = load i32, i32* %18, align 4
  %234 = ashr i32 128, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = load i32*, i32** %13, align 8
  %238 = load i32, i32* %18, align 4
  %239 = ashr i32 64, %238
  %240 = call i32 %225(i32* %226, i32* %231, i32* %236, i32* %237, i32 %239)
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  %243 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %242, align 8
  %244 = load i32*, i32** %13, align 8
  %245 = load i32*, i32** %23, align 8
  %246 = load i32, i32* %18, align 4
  %247 = ashr i32 448, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = load i32*, i32** %21, align 8
  %251 = load i32, i32* %18, align 4
  %252 = ashr i32 192, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  %255 = load i32*, i32** %13, align 8
  %256 = load i32, i32* %18, align 4
  %257 = ashr i32 64, %256
  %258 = call i32 %243(i32* %244, i32* %249, i32* %254, i32* %255, i32 %257)
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  %261 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %260, align 8
  %262 = load i32*, i32** %13, align 8
  %263 = load i32*, i32** %23, align 8
  %264 = load i32, i32* %18, align 4
  %265 = ashr i32 512, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  %268 = load i32*, i32** %21, align 8
  %269 = load i32, i32* %18, align 4
  %270 = ashr i32 256, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %268, i64 %271
  %273 = load i32*, i32** %13, align 8
  %274 = load i32, i32* %18, align 4
  %275 = ashr i32 64, %274
  %276 = call i32 %261(i32* %262, i32* %267, i32* %272, i32* %273, i32 %275)
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 0
  %279 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %278, align 8
  %280 = load i32*, i32** %13, align 8
  %281 = load i32*, i32** %23, align 8
  %282 = load i32, i32* %18, align 4
  %283 = ashr i32 704, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  %286 = load i32*, i32** %21, align 8
  %287 = load i32, i32* %18, align 4
  %288 = ashr i32 320, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %286, i64 %289
  %291 = load i32*, i32** %13, align 8
  %292 = load i32, i32* %18, align 4
  %293 = ashr i32 64, %292
  %294 = call i32 %279(i32* %280, i32* %285, i32* %290, i32* %291, i32 %293)
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 0
  %297 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %296, align 8
  %298 = load i32*, i32** %13, align 8
  %299 = load i32*, i32** %23, align 8
  %300 = load i32, i32* %18, align 4
  %301 = ashr i32 768, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %299, i64 %302
  %304 = load i32*, i32** %21, align 8
  %305 = load i32, i32* %18, align 4
  %306 = ashr i32 384, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %304, i64 %307
  %309 = load i32*, i32** %13, align 8
  %310 = load i32, i32* %18, align 4
  %311 = ashr i32 64, %310
  %312 = call i32 %297(i32* %298, i32* %303, i32* %308, i32* %309, i32 %311)
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 0
  %315 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %314, align 8
  %316 = load i32*, i32** %13, align 8
  %317 = load i32*, i32** %23, align 8
  %318 = load i32, i32* %18, align 4
  %319 = ashr i32 960, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %317, i64 %320
  %322 = load i32*, i32** %21, align 8
  %323 = load i32, i32* %18, align 4
  %324 = ashr i32 448, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %322, i64 %325
  %327 = load i32*, i32** %13, align 8
  %328 = load i32, i32* %18, align 4
  %329 = ashr i32 64, %328
  %330 = call i32 %315(i32* %316, i32* %321, i32* %326, i32* %327, i32 %329)
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 0
  %333 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %332, align 8
  %334 = load i32*, i32** %13, align 8
  %335 = load i32*, i32** %23, align 8
  %336 = load i32, i32* %18, align 4
  %337 = ashr i32 1024, %336
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %335, i64 %338
  %340 = load i32*, i32** %21, align 8
  %341 = load i32, i32* %18, align 4
  %342 = ashr i32 512, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %340, i64 %343
  %345 = load i32*, i32** %13, align 8
  %346 = load i32, i32* %18, align 4
  %347 = ashr i32 64, %346
  %348 = call i32 %333(i32* %334, i32* %339, i32* %344, i32* %345, i32 %347)
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 0
  %351 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %350, align 8
  %352 = load i32*, i32** %13, align 8
  %353 = load i32*, i32** %23, align 8
  %354 = load i32, i32* %18, align 4
  %355 = ashr i32 1216, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %353, i64 %356
  %358 = load i32*, i32** %21, align 8
  %359 = load i32, i32* %18, align 4
  %360 = ashr i32 576, %359
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %358, i64 %361
  %363 = load i32*, i32** %13, align 8
  %364 = load i32, i32* %18, align 4
  %365 = ashr i32 64, %364
  %366 = call i32 %351(i32* %352, i32* %357, i32* %362, i32* %363, i32 %365)
  %367 = load i32, i32* %18, align 4
  %368 = ashr i32 64, %367
  %369 = load i32*, i32** %13, align 8
  %370 = sext i32 %368 to i64
  %371 = getelementptr inbounds i32, i32* %369, i64 %370
  store i32* %371, i32** %13, align 8
  br label %372

372:                                              ; preds = %195
  %373 = load i32, i32* %19, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %19, align 4
  br label %35

375:                                              ; preds = %35
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
