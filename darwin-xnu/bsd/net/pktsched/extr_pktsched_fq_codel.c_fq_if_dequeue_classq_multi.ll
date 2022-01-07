; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_if_dequeue_classq_multi.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_if_dequeue_classq_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i64 }
%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@FQ_IF_ER = common dso_local global i64 0, align 8
@FQ_IF_EB = common dso_local global i64 0, align 8
@FQ_IF_IB = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fq_if_dequeue_classq_multi(%struct.ifclassq* %0, i64 %1, i64 %2, i8** %3, i8** %4, i64* %5, i64* %6, i32* %7) #0 {
  %9 = alloca %struct.ifclassq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_8__*, align 8
  %26 = alloca %struct.TYPE_9__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32 (i8*, i8*)*, align 8
  %29 = alloca i32, align 4
  store %struct.ifclassq* %0, %struct.ifclassq** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i8** %3, i8*** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i32* %7, i32** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %30 = load %struct.ifclassq*, %struct.ifclassq** %9, align 8
  %31 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %30)
  %32 = load %struct.ifclassq*, %struct.ifclassq** %9, align 8
  %33 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %25, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %40 [
    i32 128, label %39
  ]

39:                                               ; preds = %8
  store i32 (i8*, i8*)* @fq_if_append_mbuf, i32 (i8*, i8*)** %28, align 8
  br label %42

40:                                               ; preds = %8
  %41 = call i32 @VERIFY(i32 0)
  br label %42

42:                                               ; preds = %40, %39
  store i8* null, i8** %20, align 8
  store i8* null, i8** %19, align 8
  store i64 0, i64* %24, align 8
  store i64 0, i64* %23, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %16, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %292, %42
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @FQ_IF_ER, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %89

55:                                               ; preds = %47
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @FQ_IF_EB, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %55
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @FQ_IF_IB, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @FQ_IF_EB, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %69, i32* %74, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @FQ_IF_IB, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 0, i32* %79, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @FQ_IF_EB, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %63
  br label %293

88:                                               ; preds = %63
  br label %89

89:                                               ; preds = %88, %55, %47
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @FQ_IF_ER, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @pktsched_ffs(i32 %95)
  store i32 %96, i32* %27, align 4
  %97 = load i32, i32* %27, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %127

99:                                               ; preds = %89
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @FQ_IF_EB, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @pktsched_ffs(i32 %105)
  store i32 %106, i32* %27, align 4
  %107 = load i32, i32* %27, align 4
  %108 = icmp sgt i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @VERIFY(i32 %109)
  %111 = load i32, i32* %27, align 4
  %112 = sub nsw i32 %111, 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @FQ_IF_EB, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = call i32 @pktsched_bit_clr(i32 %112, i32* %117)
  %119 = load i32, i32* %27, align 4
  %120 = sub nsw i32 %119, 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @FQ_IF_ER, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = call i32 @pktsched_bit_set(i32 %120, i32* %125)
  br label %127

127:                                              ; preds = %99, %89
  %128 = load i32, i32* %27, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %27, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = load i32, i32* %27, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 %134
  store %struct.TYPE_9__* %135, %struct.TYPE_9__** %26, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp sle i64 %138, 0
  br i1 %139, label %140, label %164

140:                                              ; preds = %127
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @min(i32 %143, i32 %147)
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = mul nsw i32 %148, %151
  %153 = sext i32 %152 to i64
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, %153
  store i64 %157, i64* %155, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp sle i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %140
  br label %222

163:                                              ; preds = %140
  br label %164

164:                                              ; preds = %163, %127
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %167 = load i64, i64* %10, align 8
  %168 = load i64, i64* %23, align 8
  %169 = sub nsw i64 %167, %168
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* %24, align 8
  %172 = sub nsw i64 %170, %171
  %173 = load i32, i32* @FALSE, align 4
  %174 = call i32 @fq_if_dequeue(%struct.TYPE_8__* %165, %struct.TYPE_9__* %166, i64 %169, i64 %172, i8** %17, i8** %18, i64* %21, i64* %22, i32 %173, i32* %29)
  %175 = load i8*, i8** %17, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %221

177:                                              ; preds = %164
  %178 = load i32, i32* %29, align 4
  %179 = load i32*, i32** %16, align 8
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %178, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @ASSERT(i32 %182)
  %184 = load i64, i64* %21, align 8
  %185 = icmp sgt i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %177
  %187 = load i64, i64* %22, align 8
  %188 = icmp sgt i64 %187, 0
  br label %189

189:                                              ; preds = %186, %177
  %190 = phi i1 [ false, %177 ], [ %188, %186 ]
  %191 = zext i1 %190 to i32
  %192 = call i32 @ASSERT(i32 %191)
  %193 = load i8*, i8** %19, align 8
  %194 = icmp eq i8* %193, null
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load i8*, i8** %17, align 8
  store i8* %196, i8** %19, align 8
  %197 = load i8*, i8** %18, align 8
  store i8* %197, i8** %20, align 8
  %198 = load i64, i64* %21, align 8
  store i64 %198, i64* %23, align 8
  %199 = load i64, i64* %22, align 8
  store i64 %199, i64* %24, align 8
  br label %212

200:                                              ; preds = %189
  %201 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %28, align 8
  %202 = load i8*, i8** %20, align 8
  %203 = load i8*, i8** %17, align 8
  %204 = call i32 %201(i8* %202, i8* %203)
  %205 = load i8*, i8** %18, align 8
  store i8* %205, i8** %20, align 8
  %206 = load i64, i64* %21, align 8
  %207 = load i64, i64* %23, align 8
  %208 = add nsw i64 %207, %206
  store i64 %208, i64* %23, align 8
  %209 = load i64, i64* %22, align 8
  %210 = load i64, i64* %24, align 8
  %211 = add nsw i64 %210, %209
  store i64 %211, i64* %24, align 8
  br label %212

212:                                              ; preds = %200, %195
  %213 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %28, align 8
  %214 = load i8*, i8** %20, align 8
  %215 = call i32 %213(i8* %214, i8* null)
  %216 = load i64, i64* %22, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = sub nsw i64 %219, %216
  store i64 %220, i64* %218, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  br label %221

221:                                              ; preds = %212, %164
  br label %222

222:                                              ; preds = %221, %162
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %224 = call i32 @FQ_IF_CLASSQ_IDLE(%struct.TYPE_9__* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %247, label %226

226:                                              ; preds = %222
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp sle i64 %229, 0
  br i1 %230, label %231, label %246

231:                                              ; preds = %226
  %232 = load i32, i32* %27, align 4
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = load i64, i64* @FQ_IF_IB, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  %238 = call i32 @pktsched_bit_set(i32 %232, i32* %237)
  %239 = load i32, i32* %27, align 4
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load i64, i64* @FQ_IF_ER, align 8
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  %245 = call i32 @pktsched_bit_clr(i32 %239, i32* %244)
  br label %246

246:                                              ; preds = %231, %226
  br label %283

247:                                              ; preds = %222
  %248 = load i32, i32* %27, align 4
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load i64, i64* @FQ_IF_ER, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  %254 = call i32 @pktsched_bit_clr(i32 %248, i32* %253)
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = load i64, i64* @FQ_IF_ER, align 8
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = load i64, i64* @FQ_IF_EB, align 8
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %260, %266
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = load i64, i64* @FQ_IF_IB, align 8
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = or i32 %267, %273
  %275 = load i32, i32* %27, align 4
  %276 = shl i32 1, %275
  %277 = and i32 %274, %276
  %278 = icmp eq i32 %277, 0
  %279 = zext i1 %278 to i32
  %280 = call i32 @VERIFY(i32 %279)
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 0
  store i64 0, i64* %282, align 8
  br label %283

283:                                              ; preds = %247, %246
  %284 = load i64, i64* %23, align 8
  %285 = load i64, i64* %10, align 8
  %286 = icmp sge i64 %284, %285
  br i1 %286, label %291, label %287

287:                                              ; preds = %283
  %288 = load i64, i64* %24, align 8
  %289 = load i64, i64* %11, align 8
  %290 = icmp sge i64 %288, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %287, %283
  br label %293

292:                                              ; preds = %287
  br label %47

293:                                              ; preds = %291, %87
  %294 = load i8*, i8** %19, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %325

296:                                              ; preds = %293
  %297 = load i8**, i8*** %12, align 8
  %298 = icmp ne i8** %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load i8*, i8** %19, align 8
  %301 = load i8**, i8*** %12, align 8
  store i8* %300, i8** %301, align 8
  br label %302

302:                                              ; preds = %299, %296
  %303 = load i8**, i8*** %13, align 8
  %304 = icmp ne i8** %303, null
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = load i8*, i8** %20, align 8
  %307 = load i8**, i8*** %13, align 8
  store i8* %306, i8** %307, align 8
  br label %308

308:                                              ; preds = %305, %302
  %309 = load i64*, i64** %14, align 8
  %310 = icmp ne i64* %309, null
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = load i64, i64* %23, align 8
  %313 = load i64*, i64** %14, align 8
  store i64 %312, i64* %313, align 8
  br label %314

314:                                              ; preds = %311, %308
  %315 = load i64*, i64** %15, align 8
  %316 = icmp ne i64* %315, null
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = load i64, i64* %24, align 8
  %319 = load i64*, i64** %15, align 8
  store i64 %318, i64* %319, align 8
  br label %320

320:                                              ; preds = %317, %314
  %321 = load %struct.ifclassq*, %struct.ifclassq** %9, align 8
  %322 = load i64, i64* %23, align 8
  %323 = load i64, i64* %24, align 8
  %324 = call i32 @IFCQ_XMIT_ADD(%struct.ifclassq* %321, i64 %322, i64 %323)
  br label %346

325:                                              ; preds = %293
  %326 = load i8**, i8*** %12, align 8
  %327 = icmp ne i8** %326, null
  br i1 %327, label %328, label %330

328:                                              ; preds = %325
  %329 = load i8**, i8*** %12, align 8
  store i8* null, i8** %329, align 8
  br label %330

330:                                              ; preds = %328, %325
  %331 = load i8**, i8*** %13, align 8
  %332 = icmp ne i8** %331, null
  br i1 %332, label %333, label %335

333:                                              ; preds = %330
  %334 = load i8**, i8*** %13, align 8
  store i8* null, i8** %334, align 8
  br label %335

335:                                              ; preds = %333, %330
  %336 = load i64*, i64** %14, align 8
  %337 = icmp ne i64* %336, null
  br i1 %337, label %338, label %340

338:                                              ; preds = %335
  %339 = load i64*, i64** %14, align 8
  store i64 0, i64* %339, align 8
  br label %340

340:                                              ; preds = %338, %335
  %341 = load i64*, i64** %15, align 8
  %342 = icmp ne i64* %341, null
  br i1 %342, label %343, label %345

343:                                              ; preds = %340
  %344 = load i64*, i64** %15, align 8
  store i64 0, i64* %344, align 8
  br label %345

345:                                              ; preds = %343, %340
  br label %346

346:                                              ; preds = %345, %320
  ret i32 0
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @fq_if_append_mbuf(i8*, i8*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @pktsched_ffs(i32) #1

declare dso_local i32 @pktsched_bit_clr(i32, i32*) #1

declare dso_local i32 @pktsched_bit_set(i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @fq_if_dequeue(%struct.TYPE_8__*, %struct.TYPE_9__*, i64, i64, i8**, i8**, i64*, i64*, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @FQ_IF_CLASSQ_IDLE(%struct.TYPE_9__*) #1

declare dso_local i32 @IFCQ_XMIT_ADD(%struct.ifclassq*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
