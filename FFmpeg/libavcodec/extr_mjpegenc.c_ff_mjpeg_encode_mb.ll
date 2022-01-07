; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegenc.c_ff_mjpeg_encode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegenc.c_ff_mjpeg_encode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32, i32 }

@HUFFMAN_TABLE_OPTIMAL = common dso_local global i64 0, align 8
@CHROMA_444 = common dso_local global i64 0, align 8
@CHROMA_420 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_mjpeg_encode_mb(%struct.TYPE_6__* %0, [64 x i32]* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca [64 x i32]*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store [64 x i32]* %1, [64 x i32]** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HUFFMAN_TABLE_OPTIMAL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %135

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CHROMA_444, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %89

17:                                               ; preds = %11
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = load [64 x i32]*, [64 x i32]** %4, align 8
  %20 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0
  %21 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 0
  %22 = call i32 @record_block(%struct.TYPE_6__* %18, i32* %21, i32 0)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = load [64 x i32]*, [64 x i32]** %4, align 8
  %25 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 2
  %26 = getelementptr inbounds [64 x i32], [64 x i32]* %25, i64 0, i64 0
  %27 = call i32 @record_block(%struct.TYPE_6__* %23, i32* %26, i32 2)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = load [64 x i32]*, [64 x i32]** %4, align 8
  %30 = getelementptr inbounds [64 x i32], [64 x i32]* %29, i64 4
  %31 = getelementptr inbounds [64 x i32], [64 x i32]* %30, i64 0, i64 0
  %32 = call i32 @record_block(%struct.TYPE_6__* %28, i32* %31, i32 4)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = load [64 x i32]*, [64 x i32]** %4, align 8
  %35 = getelementptr inbounds [64 x i32], [64 x i32]* %34, i64 8
  %36 = getelementptr inbounds [64 x i32], [64 x i32]* %35, i64 0, i64 0
  %37 = call i32 @record_block(%struct.TYPE_6__* %33, i32* %36, i32 8)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = load [64 x i32]*, [64 x i32]** %4, align 8
  %40 = getelementptr inbounds [64 x i32], [64 x i32]* %39, i64 5
  %41 = getelementptr inbounds [64 x i32], [64 x i32]* %40, i64 0, i64 0
  %42 = call i32 @record_block(%struct.TYPE_6__* %38, i32* %41, i32 5)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = load [64 x i32]*, [64 x i32]** %4, align 8
  %45 = getelementptr inbounds [64 x i32], [64 x i32]* %44, i64 9
  %46 = getelementptr inbounds [64 x i32], [64 x i32]* %45, i64 0, i64 0
  %47 = call i32 @record_block(%struct.TYPE_6__* %43, i32* %46, i32 9)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 16, %50
  %52 = add nsw i32 %51, 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %17
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = load [64 x i32]*, [64 x i32]** %4, align 8
  %60 = getelementptr inbounds [64 x i32], [64 x i32]* %59, i64 1
  %61 = getelementptr inbounds [64 x i32], [64 x i32]* %60, i64 0, i64 0
  %62 = call i32 @record_block(%struct.TYPE_6__* %58, i32* %61, i32 1)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = load [64 x i32]*, [64 x i32]** %4, align 8
  %65 = getelementptr inbounds [64 x i32], [64 x i32]* %64, i64 3
  %66 = getelementptr inbounds [64 x i32], [64 x i32]* %65, i64 0, i64 0
  %67 = call i32 @record_block(%struct.TYPE_6__* %63, i32* %66, i32 3)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = load [64 x i32]*, [64 x i32]** %4, align 8
  %70 = getelementptr inbounds [64 x i32], [64 x i32]* %69, i64 6
  %71 = getelementptr inbounds [64 x i32], [64 x i32]* %70, i64 0, i64 0
  %72 = call i32 @record_block(%struct.TYPE_6__* %68, i32* %71, i32 6)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = load [64 x i32]*, [64 x i32]** %4, align 8
  %75 = getelementptr inbounds [64 x i32], [64 x i32]* %74, i64 10
  %76 = getelementptr inbounds [64 x i32], [64 x i32]* %75, i64 0, i64 0
  %77 = call i32 @record_block(%struct.TYPE_6__* %73, i32* %76, i32 10)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = load [64 x i32]*, [64 x i32]** %4, align 8
  %80 = getelementptr inbounds [64 x i32], [64 x i32]* %79, i64 7
  %81 = getelementptr inbounds [64 x i32], [64 x i32]* %80, i64 0, i64 0
  %82 = call i32 @record_block(%struct.TYPE_6__* %78, i32* %81, i32 7)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = load [64 x i32]*, [64 x i32]** %4, align 8
  %85 = getelementptr inbounds [64 x i32], [64 x i32]* %84, i64 11
  %86 = getelementptr inbounds [64 x i32], [64 x i32]* %85, i64 0, i64 0
  %87 = call i32 @record_block(%struct.TYPE_6__* %83, i32* %86, i32 11)
  br label %88

88:                                               ; preds = %57, %17
  br label %134

89:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %102, %89
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 5
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = load [64 x i32]*, [64 x i32]** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [64 x i32], [64 x i32]* %95, i64 %97
  %99 = getelementptr inbounds [64 x i32], [64 x i32]* %98, i64 0, i64 0
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @record_block(%struct.TYPE_6__* %94, i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %90

105:                                              ; preds = %90
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CHROMA_420, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = load [64 x i32]*, [64 x i32]** %4, align 8
  %114 = getelementptr inbounds [64 x i32], [64 x i32]* %113, i64 5
  %115 = getelementptr inbounds [64 x i32], [64 x i32]* %114, i64 0, i64 0
  %116 = call i32 @record_block(%struct.TYPE_6__* %112, i32* %115, i32 5)
  br label %133

117:                                              ; preds = %105
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = load [64 x i32]*, [64 x i32]** %4, align 8
  %120 = getelementptr inbounds [64 x i32], [64 x i32]* %119, i64 6
  %121 = getelementptr inbounds [64 x i32], [64 x i32]* %120, i64 0, i64 0
  %122 = call i32 @record_block(%struct.TYPE_6__* %118, i32* %121, i32 6)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = load [64 x i32]*, [64 x i32]** %4, align 8
  %125 = getelementptr inbounds [64 x i32], [64 x i32]* %124, i64 5
  %126 = getelementptr inbounds [64 x i32], [64 x i32]* %125, i64 0, i64 0
  %127 = call i32 @record_block(%struct.TYPE_6__* %123, i32* %126, i32 5)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %129 = load [64 x i32]*, [64 x i32]** %4, align 8
  %130 = getelementptr inbounds [64 x i32], [64 x i32]* %129, i64 7
  %131 = getelementptr inbounds [64 x i32], [64 x i32]* %130, i64 0, i64 0
  %132 = call i32 @record_block(%struct.TYPE_6__* %128, i32* %131, i32 7)
  br label %133

133:                                              ; preds = %117, %111
  br label %134

134:                                              ; preds = %133, %88
  br label %267

135:                                              ; preds = %2
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @CHROMA_444, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %213

141:                                              ; preds = %135
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %143 = load [64 x i32]*, [64 x i32]** %4, align 8
  %144 = getelementptr inbounds [64 x i32], [64 x i32]* %143, i64 0
  %145 = getelementptr inbounds [64 x i32], [64 x i32]* %144, i64 0, i64 0
  %146 = call i32 @encode_block(%struct.TYPE_6__* %142, i32* %145, i32 0)
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %148 = load [64 x i32]*, [64 x i32]** %4, align 8
  %149 = getelementptr inbounds [64 x i32], [64 x i32]* %148, i64 2
  %150 = getelementptr inbounds [64 x i32], [64 x i32]* %149, i64 0, i64 0
  %151 = call i32 @encode_block(%struct.TYPE_6__* %147, i32* %150, i32 2)
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %153 = load [64 x i32]*, [64 x i32]** %4, align 8
  %154 = getelementptr inbounds [64 x i32], [64 x i32]* %153, i64 4
  %155 = getelementptr inbounds [64 x i32], [64 x i32]* %154, i64 0, i64 0
  %156 = call i32 @encode_block(%struct.TYPE_6__* %152, i32* %155, i32 4)
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %158 = load [64 x i32]*, [64 x i32]** %4, align 8
  %159 = getelementptr inbounds [64 x i32], [64 x i32]* %158, i64 8
  %160 = getelementptr inbounds [64 x i32], [64 x i32]* %159, i64 0, i64 0
  %161 = call i32 @encode_block(%struct.TYPE_6__* %157, i32* %160, i32 8)
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %163 = load [64 x i32]*, [64 x i32]** %4, align 8
  %164 = getelementptr inbounds [64 x i32], [64 x i32]* %163, i64 5
  %165 = getelementptr inbounds [64 x i32], [64 x i32]* %164, i64 0, i64 0
  %166 = call i32 @encode_block(%struct.TYPE_6__* %162, i32* %165, i32 5)
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %168 = load [64 x i32]*, [64 x i32]** %4, align 8
  %169 = getelementptr inbounds [64 x i32], [64 x i32]* %168, i64 9
  %170 = getelementptr inbounds [64 x i32], [64 x i32]* %169, i64 0, i64 0
  %171 = call i32 @encode_block(%struct.TYPE_6__* %167, i32* %170, i32 9)
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = mul nsw i32 16, %174
  %176 = add nsw i32 %175, 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %212

181:                                              ; preds = %141
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %183 = load [64 x i32]*, [64 x i32]** %4, align 8
  %184 = getelementptr inbounds [64 x i32], [64 x i32]* %183, i64 1
  %185 = getelementptr inbounds [64 x i32], [64 x i32]* %184, i64 0, i64 0
  %186 = call i32 @encode_block(%struct.TYPE_6__* %182, i32* %185, i32 1)
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %188 = load [64 x i32]*, [64 x i32]** %4, align 8
  %189 = getelementptr inbounds [64 x i32], [64 x i32]* %188, i64 3
  %190 = getelementptr inbounds [64 x i32], [64 x i32]* %189, i64 0, i64 0
  %191 = call i32 @encode_block(%struct.TYPE_6__* %187, i32* %190, i32 3)
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %193 = load [64 x i32]*, [64 x i32]** %4, align 8
  %194 = getelementptr inbounds [64 x i32], [64 x i32]* %193, i64 6
  %195 = getelementptr inbounds [64 x i32], [64 x i32]* %194, i64 0, i64 0
  %196 = call i32 @encode_block(%struct.TYPE_6__* %192, i32* %195, i32 6)
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %198 = load [64 x i32]*, [64 x i32]** %4, align 8
  %199 = getelementptr inbounds [64 x i32], [64 x i32]* %198, i64 10
  %200 = getelementptr inbounds [64 x i32], [64 x i32]* %199, i64 0, i64 0
  %201 = call i32 @encode_block(%struct.TYPE_6__* %197, i32* %200, i32 10)
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %203 = load [64 x i32]*, [64 x i32]** %4, align 8
  %204 = getelementptr inbounds [64 x i32], [64 x i32]* %203, i64 7
  %205 = getelementptr inbounds [64 x i32], [64 x i32]* %204, i64 0, i64 0
  %206 = call i32 @encode_block(%struct.TYPE_6__* %202, i32* %205, i32 7)
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %208 = load [64 x i32]*, [64 x i32]** %4, align 8
  %209 = getelementptr inbounds [64 x i32], [64 x i32]* %208, i64 11
  %210 = getelementptr inbounds [64 x i32], [64 x i32]* %209, i64 0, i64 0
  %211 = call i32 @encode_block(%struct.TYPE_6__* %207, i32* %210, i32 11)
  br label %212

212:                                              ; preds = %181, %141
  br label %258

213:                                              ; preds = %135
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %226, %213
  %215 = load i32, i32* %5, align 4
  %216 = icmp slt i32 %215, 5
  br i1 %216, label %217, label %229

217:                                              ; preds = %214
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %219 = load [64 x i32]*, [64 x i32]** %4, align 8
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [64 x i32], [64 x i32]* %219, i64 %221
  %223 = getelementptr inbounds [64 x i32], [64 x i32]* %222, i64 0, i64 0
  %224 = load i32, i32* %5, align 4
  %225 = call i32 @encode_block(%struct.TYPE_6__* %218, i32* %223, i32 %224)
  br label %226

226:                                              ; preds = %217
  %227 = load i32, i32* %5, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %5, align 4
  br label %214

229:                                              ; preds = %214
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @CHROMA_420, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %237 = load [64 x i32]*, [64 x i32]** %4, align 8
  %238 = getelementptr inbounds [64 x i32], [64 x i32]* %237, i64 5
  %239 = getelementptr inbounds [64 x i32], [64 x i32]* %238, i64 0, i64 0
  %240 = call i32 @encode_block(%struct.TYPE_6__* %236, i32* %239, i32 5)
  br label %257

241:                                              ; preds = %229
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %243 = load [64 x i32]*, [64 x i32]** %4, align 8
  %244 = getelementptr inbounds [64 x i32], [64 x i32]* %243, i64 6
  %245 = getelementptr inbounds [64 x i32], [64 x i32]* %244, i64 0, i64 0
  %246 = call i32 @encode_block(%struct.TYPE_6__* %242, i32* %245, i32 6)
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %248 = load [64 x i32]*, [64 x i32]** %4, align 8
  %249 = getelementptr inbounds [64 x i32], [64 x i32]* %248, i64 5
  %250 = getelementptr inbounds [64 x i32], [64 x i32]* %249, i64 0, i64 0
  %251 = call i32 @encode_block(%struct.TYPE_6__* %247, i32* %250, i32 5)
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %253 = load [64 x i32]*, [64 x i32]** %4, align 8
  %254 = getelementptr inbounds [64 x i32], [64 x i32]* %253, i64 7
  %255 = getelementptr inbounds [64 x i32], [64 x i32]* %254, i64 0, i64 0
  %256 = call i32 @encode_block(%struct.TYPE_6__* %252, i32* %255, i32 7)
  br label %257

257:                                              ; preds = %241, %235
  br label %258

258:                                              ; preds = %257, %212
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %260 = call i64 @get_bits_diff(%struct.TYPE_6__* %259)
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %264, %260
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %262, align 8
  br label %267

267:                                              ; preds = %258, %134
  ret void
}

declare dso_local i32 @record_block(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @encode_block(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @get_bits_diff(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
