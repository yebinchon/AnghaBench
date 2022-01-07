; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph_run.c__ccv_nnc_graph_exec_run_loop.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph_run.c__ccv_nnc_graph_exec_run_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__**, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_25__*, i32, i32, i32*, i32)* @_ccv_nnc_graph_exec_run_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_graph_exec_run_loop(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1, %struct.TYPE_25__* %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_23__**, align 8
  %19 = alloca [2 x i32*], align 16
  %20 = alloca [2 x i32], align 4
  %21 = alloca %struct.TYPE_25__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_23__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_25__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_23__*, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  %35 = icmp ne %struct.TYPE_21__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %7
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  br label %43

42:                                               ; preds = %7
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i32 [ %41, %36 ], [ 0, %42 ]
  %45 = sext i32 %44 to i64
  %46 = mul i64 8, %45
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  %50 = mul i64 %49, 2
  %51 = add i64 %46, %50
  %52 = trunc i64 %51 to i32
  %53 = call i64 @ccv_nnc_graph_buffer(%struct.TYPE_24__* %31, i32 %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_23__**
  store %struct.TYPE_23__** %54, %struct.TYPE_23__*** %18, align 8
  %55 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %18, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %57, align 8
  %59 = icmp ne %struct.TYPE_21__* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %43
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  br label %67

66:                                               ; preds = %43
  br label %67

67:                                               ; preds = %66, %60
  %68 = phi i32 [ %65, %60 ], [ 0, %66 ]
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %55, i64 %69
  %71 = bitcast %struct.TYPE_23__** %70 to i32*
  %72 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 0
  store i32* %71, i32** %72, align 16
  %73 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 0
  %74 = load i32*, i32** %73, align 16
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 1
  store i32* %77, i32** %78, align 8
  %79 = bitcast [2 x i32]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %79, i8 0, i64 8, i1 false)
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %204, %67
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %207

85:                                               ; preds = %81
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i64 %88
  store %struct.TYPE_25__* %89, %struct.TYPE_25__** %21, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %16, align 4
  br label %90

90:                                               ; preds = %141, %85
  %91 = load i32, i32* %16, align 4
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %144

97:                                               ; preds = %90
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %99, align 8
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64* @SCHEDULE_STREAMS(i32 %104)
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %100, i64 %109
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %110, align 8
  %112 = icmp ne %struct.TYPE_23__* %111, null
  br i1 %112, label %113, label %140

113:                                              ; preds = %97
  %114 = load i32, i32* %15, align 4
  %115 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 0
  %116 = load i32*, i32** %115, align 16
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  store i32 %114, i32* %121, align 4
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %126, align 8
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i64* @SCHEDULE_STREAMS(i32 %131)
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %127, i64 %136
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %137, align 8
  %139 = call i32 @_ccv_nnc_graph_mark_outgoing_streams_blocked_by_task(%struct.TYPE_24__* %122, %struct.TYPE_25__* %123, %struct.TYPE_25__* %124, %struct.TYPE_23__* %138)
  store i32 1, i32* %22, align 4
  br label %140

140:                                              ; preds = %113, %97
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %16, align 4
  br label %90

144:                                              ; preds = %90
  %145 = load i32, i32* %22, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %204

148:                                              ; preds = %144
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %151 = load i32, i32* %15, align 4
  %152 = load i32*, i32** %13, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %14, align 4
  %157 = call %struct.TYPE_23__* @_ccv_nnc_graph_exec_run_task(%struct.TYPE_24__* %149, %struct.TYPE_25__* %150, i32 %151, i32* %152, i32 %155, i32 %156)
  store %struct.TYPE_23__* %157, %struct.TYPE_23__** %23, align 8
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %159 = icmp ne %struct.TYPE_23__* %158, null
  br i1 %159, label %160, label %203

160:                                              ; preds = %148
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %203, label %165

165:                                              ; preds = %160
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %167 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %18, align 8
  %168 = load i32, i32* %17, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %17, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %167, i64 %170
  store %struct.TYPE_23__* %166, %struct.TYPE_23__** %171, align 8
  store i32 0, i32* %16, align 4
  br label %172

172:                                              ; preds = %194, %165
  %173 = load i32, i32* %16, align 4
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %173, %177
  br i1 %178, label %179, label %197

179:                                              ; preds = %172
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %182, align 8
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i64* @SCHEDULE_STREAMS(i32 %187)
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %183, i64 %192
  store %struct.TYPE_23__* %180, %struct.TYPE_23__** %193, align 8
  br label %194

194:                                              ; preds = %179
  %195 = load i32, i32* %16, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %16, align 4
  br label %172

197:                                              ; preds = %172
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %202 = call i32 @_ccv_nnc_graph_mark_outgoing_streams_blocked_by_task(%struct.TYPE_24__* %198, %struct.TYPE_25__* %199, %struct.TYPE_25__* %200, %struct.TYPE_23__* %201)
  br label %203

203:                                              ; preds = %197, %160, %148
  br label %204

204:                                              ; preds = %203, %147
  %205 = load i32, i32* %15, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %15, align 4
  br label %81

207:                                              ; preds = %81
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %210 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %18, align 8
  %211 = load i32, i32* %17, align 4
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %213 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 0
  %214 = load i32*, i32** %213, align 16
  %215 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @_ccv_nnc_graph_wait_any_sub_tasks(%struct.TYPE_23__* %208, %struct.TYPE_24__* %209, %struct.TYPE_23__** %210, i32 %211, %struct.TYPE_25__* %212, i32* %214, i32 %216)
  store i32 0, i32* %24, align 4
  store i32 1, i32* %25, align 4
  br label %218

218:                                              ; preds = %369, %207
  %219 = load i32, i32* %24, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %388

224:                                              ; preds = %218
  %225 = load i32, i32* %25, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %226
  store i32 0, i32* %227, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %228

228:                                              ; preds = %366, %224
  %229 = load i32, i32* %15, align 4
  %230 = load i32, i32* %24, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = icmp slt i32 %229, %233
  br i1 %234, label %235, label %369

235:                                              ; preds = %228
  %236 = load i32, i32* %24, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 %237
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %15, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %26, align 4
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %245 = load i32, i32* %26, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i64 %246
  store %struct.TYPE_25__* %247, %struct.TYPE_25__** %27, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %16, align 4
  br label %248

248:                                              ; preds = %303, %235
  %249 = load i32, i32* %16, align 4
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %249, %253
  br i1 %254, label %255, label %306

255:                                              ; preds = %248
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %257, align 8
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i64* @SCHEDULE_STREAMS(i32 %262)
  %264 = load i32, i32* %16, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64, i64* %263, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %258, i64 %267
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %268, align 8
  %270 = icmp ne %struct.TYPE_23__* %269, null
  br i1 %270, label %271, label %302

271:                                              ; preds = %255
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %276, align 8
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i64* @SCHEDULE_STREAMS(i32 %281)
  %283 = load i32, i32* %16, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i64, i64* %282, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %277, i64 %286
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %287, align 8
  %289 = call i32 @_ccv_nnc_graph_mark_outgoing_streams_blocked_by_task(%struct.TYPE_24__* %272, %struct.TYPE_25__* %273, %struct.TYPE_25__* %274, %struct.TYPE_23__* %288)
  %290 = load i32, i32* %26, align 4
  %291 = load i32, i32* %25, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 %292
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %25, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %297, align 4
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i32, i32* %294, i64 %300
  store i32 %290, i32* %301, align 4
  store i32 1, i32* %28, align 4
  br label %302

302:                                              ; preds = %271, %255
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %16, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %16, align 4
  br label %248

306:                                              ; preds = %248
  %307 = load i32, i32* %28, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %306
  br label %366

310:                                              ; preds = %306
  %311 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %312 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %313 = load i32, i32* %26, align 4
  %314 = load i32*, i32** %13, align 8
  %315 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %14, align 4
  %319 = call %struct.TYPE_23__* @_ccv_nnc_graph_exec_run_task(%struct.TYPE_24__* %311, %struct.TYPE_25__* %312, i32 %313, i32* %314, i32 %317, i32 %318)
  store %struct.TYPE_23__* %319, %struct.TYPE_23__** %29, align 8
  %320 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %321 = icmp ne %struct.TYPE_23__* %320, null
  br i1 %321, label %322, label %365

322:                                              ; preds = %310
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %365, label %327

327:                                              ; preds = %322
  %328 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %329 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %18, align 8
  %330 = load i32, i32* %17, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %17, align 4
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %329, i64 %332
  store %struct.TYPE_23__* %328, %struct.TYPE_23__** %333, align 8
  store i32 0, i32* %16, align 4
  br label %334

334:                                              ; preds = %356, %327
  %335 = load i32, i32* %16, align 4
  %336 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %337 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = icmp slt i32 %335, %339
  br i1 %340, label %341, label %359

341:                                              ; preds = %334
  %342 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %343 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %344 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %344, align 8
  %346 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %347 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i64* @SCHEDULE_STREAMS(i32 %349)
  %351 = load i32, i32* %16, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i64, i64* %350, i64 %352
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %345, i64 %354
  store %struct.TYPE_23__* %342, %struct.TYPE_23__** %355, align 8
  br label %356

356:                                              ; preds = %341
  %357 = load i32, i32* %16, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %16, align 4
  br label %334

359:                                              ; preds = %334
  %360 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %361 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %362 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %364 = call i32 @_ccv_nnc_graph_mark_outgoing_streams_blocked_by_task(%struct.TYPE_24__* %360, %struct.TYPE_25__* %361, %struct.TYPE_25__* %362, %struct.TYPE_23__* %363)
  br label %365

365:                                              ; preds = %359, %322, %310
  br label %366

366:                                              ; preds = %365, %309
  %367 = load i32, i32* %15, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %15, align 4
  br label %228

369:                                              ; preds = %228
  %370 = load i32, i32* %24, align 4
  %371 = load i32, i32* %25, align 4
  %372 = load i32, i32* %30, align 4
  %373 = call i32 @CCV_SWAP(i32 %370, i32 %371, i32 %372)
  %374 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %375 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %376 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %18, align 8
  %377 = load i32, i32* %17, align 4
  %378 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %379 = load i32, i32* %24, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 %380
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %24, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @_ccv_nnc_graph_wait_any_sub_tasks(%struct.TYPE_23__* %374, %struct.TYPE_24__* %375, %struct.TYPE_23__** %376, i32 %377, %struct.TYPE_25__* %378, i32* %382, i32 %386)
  br label %218

388:                                              ; preds = %218
  ret void
}

declare dso_local i64 @ccv_nnc_graph_buffer(%struct.TYPE_24__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64* @SCHEDULE_STREAMS(i32) #1

declare dso_local i32 @_ccv_nnc_graph_mark_outgoing_streams_blocked_by_task(%struct.TYPE_24__*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @_ccv_nnc_graph_exec_run_task(%struct.TYPE_24__*, %struct.TYPE_25__*, i32, i32*, i32, i32) #1

declare dso_local i32 @_ccv_nnc_graph_wait_any_sub_tasks(%struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_23__**, i32, %struct.TYPE_25__*, i32*, i32) #1

declare dso_local i32 @CCV_SWAP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
