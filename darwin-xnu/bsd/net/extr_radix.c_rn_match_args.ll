; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_radix.c_rn_match_args.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_radix.c_rn_match_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32, i32, i32, i64, i32*, i32, %struct.radix_node*, %struct.radix_mask*, %struct.radix_node*, %struct.radix_node*, %struct.radix_node* }
%struct.radix_mask = type { i32, i32, i64, %struct.radix_mask*, %struct.radix_node* }
%struct.radix_node_head = type { %struct.radix_node* }

@RNF_ROOT = common dso_local global i32 0, align 4
@RNF_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radix_node* @rn_match_args(i8* %0, %struct.radix_node_head* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.radix_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.radix_node_head*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.radix_node*, align 8
  %12 = alloca %struct.radix_node*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.radix_node*, align 8
  %17 = alloca %struct.radix_node*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.radix_mask*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.radix_node_head* %1, %struct.radix_node_head** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %10, align 8
  %27 = load %struct.radix_node_head*, %struct.radix_node_head** %7, align 8
  %28 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %27, i32 0, i32 0
  %29 = load %struct.radix_node*, %struct.radix_node** %28, align 8
  store %struct.radix_node* %29, %struct.radix_node** %11, align 8
  %30 = load i32*, i32** %10, align 8
  store i32* %30, i32** %13, align 8
  %31 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  store %struct.radix_node* %31, %struct.radix_node** %17, align 8
  %32 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %33 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %18, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %19, align 4
  br label %37

37:                                               ; preds = %63, %4
  %38 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %39 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %37
  %43 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %44 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %48 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %45, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  %56 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %57 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %56, i32 0, i32 10
  %58 = load %struct.radix_node*, %struct.radix_node** %57, align 8
  store %struct.radix_node* %58, %struct.radix_node** %11, align 8
  br label %63

59:                                               ; preds = %42
  %60 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %61 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %60, i32 0, i32 9
  %62 = load %struct.radix_node*, %struct.radix_node** %61, align 8
  store %struct.radix_node* %62, %struct.radix_node** %11, align 8
  br label %63

63:                                               ; preds = %59, %55
  br label %37

64:                                               ; preds = %37
  %65 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %66 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %71 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %19, align 4
  br label %75

75:                                               ; preds = %69, %64
  %76 = load i32, i32* %18, align 4
  %77 = load i32*, i32** %13, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %13, align 8
  %80 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %81 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32* %85, i32** %14, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32* %89, i32** %15, align 8
  br label %90

90:                                               ; preds = %102, %75
  %91 = load i32*, i32** %13, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = icmp ult i32* %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load i32*, i32** %13, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %140

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101
  %103 = load i32*, i32** %13, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %13, align 8
  %105 = load i32*, i32** %14, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %14, align 8
  br label %90

107:                                              ; preds = %90
  %108 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %109 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @RNF_ROOT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %116 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %115, i32 0, i32 6
  %117 = load %struct.radix_node*, %struct.radix_node** %116, align 8
  store %struct.radix_node* %117, %struct.radix_node** %11, align 8
  br label %118

118:                                              ; preds = %114, %107
  %119 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %120 = icmp eq %struct.radix_node* %119, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %118
  %122 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = call i64 @RN_MATCHF(%struct.radix_node* %122, i32* %123, i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121, %118
  %128 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  store %struct.radix_node* %128, %struct.radix_node** %5, align 8
  br label %311

129:                                              ; preds = %121
  %130 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %131 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %130, i32 0, i32 8
  %132 = load %struct.radix_node*, %struct.radix_node** %131, align 8
  %133 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @RNF_ROOT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  store %struct.radix_node* null, %struct.radix_node** %5, align 8
  br label %311

139:                                              ; preds = %129
  store i32 0, i32* %22, align 4
  br label %155

140:                                              ; preds = %100
  %141 = load i32*, i32** %13, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %14, align 8
  %144 = load i32, i32* %143, align 4
  %145 = xor i32 %142, %144
  %146 = and i32 %145, 255
  store i32 %146, i32* %21, align 4
  store i32 7, i32* %22, align 4
  br label %147

147:                                              ; preds = %151, %140
  %148 = load i32, i32* %21, align 4
  %149 = ashr i32 %148, 1
  store i32 %149, i32* %21, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* %22, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %22, align 4
  br label %147

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154, %139
  %156 = load i32*, i32** %13, align 8
  %157 = load i32*, i32** %10, align 8
  %158 = ptrtoint i32* %156 to i64
  %159 = ptrtoint i32* %157 to i64
  %160 = sub i64 %158, %159
  %161 = sdiv exact i64 %160, 4
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %20, align 4
  %163 = load i32, i32* %20, align 4
  %164 = shl i32 %163, 3
  %165 = load i32, i32* %22, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %22, align 4
  %167 = load i32, i32* %22, align 4
  %168 = sub nsw i32 -1, %167
  store i32 %168, i32* %23, align 4
  %169 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  store %struct.radix_node* %169, %struct.radix_node** %16, align 8
  %170 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %155
  %174 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %175 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %174, i32 0, i32 6
  %176 = load %struct.radix_node*, %struct.radix_node** %175, align 8
  store %struct.radix_node* %176, %struct.radix_node** %11, align 8
  br label %177

177:                                              ; preds = %173, %155
  br label %178

178:                                              ; preds = %215, %177
  %179 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %180 = icmp ne %struct.radix_node* %179, null
  br i1 %180, label %181, label %219

181:                                              ; preds = %178
  %182 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %183 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @RNF_NORMAL, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %203

188:                                              ; preds = %181
  %189 = load i32, i32* %23, align 4
  %190 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %191 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp sle i32 %189, %192
  br i1 %193, label %194, label %202

194:                                              ; preds = %188
  %195 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %196 = load i32*, i32** %8, align 8
  %197 = load i8*, i8** %9, align 8
  %198 = call i64 @RN_MATCHF(%struct.radix_node* %195, i32* %196, i8* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %194
  %201 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  store %struct.radix_node* %201, %struct.radix_node** %5, align 8
  br label %311

202:                                              ; preds = %194, %188
  br label %214

203:                                              ; preds = %181
  %204 = load i32*, i32** %10, align 8
  %205 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %206 = load i32, i32* %20, align 4
  %207 = load i32*, i32** %8, align 8
  %208 = load i8*, i8** %9, align 8
  %209 = call i64 @rn_satisfies_leaf(i32* %204, %struct.radix_node* %205, i32 %206, i32* %207, i8* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %203
  %212 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  store %struct.radix_node* %212, %struct.radix_node** %5, align 8
  br label %311

213:                                              ; preds = %203
  br label %214

214:                                              ; preds = %213, %202
  br label %215

215:                                              ; preds = %214
  %216 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %217 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %216, i32 0, i32 6
  %218 = load %struct.radix_node*, %struct.radix_node** %217, align 8
  store %struct.radix_node* %218, %struct.radix_node** %11, align 8
  br label %178

219:                                              ; preds = %178
  %220 = load %struct.radix_node*, %struct.radix_node** %16, align 8
  store %struct.radix_node* %220, %struct.radix_node** %11, align 8
  br label %221

221:                                              ; preds = %306, %219
  %222 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %223 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %222, i32 0, i32 8
  %224 = load %struct.radix_node*, %struct.radix_node** %223, align 8
  store %struct.radix_node* %224, %struct.radix_node** %11, align 8
  %225 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %226 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %225, i32 0, i32 7
  %227 = load %struct.radix_mask*, %struct.radix_mask** %226, align 8
  store %struct.radix_mask* %227, %struct.radix_mask** %24, align 8
  br label %228

228:                                              ; preds = %301, %221
  %229 = load %struct.radix_mask*, %struct.radix_mask** %24, align 8
  %230 = icmp ne %struct.radix_mask* %229, null
  br i1 %230, label %231, label %305

231:                                              ; preds = %228
  %232 = load %struct.radix_mask*, %struct.radix_mask** %24, align 8
  %233 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @RNF_NORMAL, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %257

238:                                              ; preds = %231
  %239 = load i32, i32* %23, align 4
  %240 = load %struct.radix_mask*, %struct.radix_mask** %24, align 8
  %241 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp sle i32 %239, %242
  br i1 %243, label %244, label %256

244:                                              ; preds = %238
  %245 = load %struct.radix_mask*, %struct.radix_mask** %24, align 8
  %246 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %245, i32 0, i32 4
  %247 = load %struct.radix_node*, %struct.radix_node** %246, align 8
  %248 = load i32*, i32** %8, align 8
  %249 = load i8*, i8** %9, align 8
  %250 = call i64 @RN_MATCHF(%struct.radix_node* %247, i32* %248, i8* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %244
  %253 = load %struct.radix_mask*, %struct.radix_mask** %24, align 8
  %254 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %253, i32 0, i32 4
  %255 = load %struct.radix_node*, %struct.radix_node** %254, align 8
  store %struct.radix_node* %255, %struct.radix_node** %5, align 8
  br label %311

256:                                              ; preds = %244, %238
  br label %301

257:                                              ; preds = %231
  %258 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %259 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = load i32, i32* %20, align 4
  %263 = call i32 @min(i64 %261, i32 %262)
  store i32 %263, i32* %18, align 4
  %264 = load i32*, i32** %10, align 8
  %265 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %266 = load %struct.radix_mask*, %struct.radix_mask** %24, align 8
  %267 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = call %struct.radix_node* @rn_search_m(i32* %264, %struct.radix_node* %265, i64 %268)
  store %struct.radix_node* %269, %struct.radix_node** %12, align 8
  br label %270

270:                                              ; preds = %283, %257
  %271 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %272 = icmp ne %struct.radix_node* %271, null
  br i1 %272, label %273, label %281

273:                                              ; preds = %270
  %274 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %275 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.radix_mask*, %struct.radix_mask** %24, align 8
  %278 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %276, %279
  br label %281

281:                                              ; preds = %273, %270
  %282 = phi i1 [ false, %270 ], [ %280, %273 ]
  br i1 %282, label %283, label %287

283:                                              ; preds = %281
  %284 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %285 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %284, i32 0, i32 6
  %286 = load %struct.radix_node*, %struct.radix_node** %285, align 8
  store %struct.radix_node* %286, %struct.radix_node** %12, align 8
  br label %270

287:                                              ; preds = %281
  %288 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %289 = icmp ne %struct.radix_node* %288, null
  br i1 %289, label %290, label %300

290:                                              ; preds = %287
  %291 = load i32*, i32** %10, align 8
  %292 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %293 = load i32, i32* %18, align 4
  %294 = load i32*, i32** %8, align 8
  %295 = load i8*, i8** %9, align 8
  %296 = call i64 @rn_satisfies_leaf(i32* %291, %struct.radix_node* %292, i32 %293, i32* %294, i8* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %290
  %299 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  store %struct.radix_node* %299, %struct.radix_node** %5, align 8
  br label %311

300:                                              ; preds = %290, %287
  br label %301

301:                                              ; preds = %300, %256
  %302 = load %struct.radix_mask*, %struct.radix_mask** %24, align 8
  %303 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %302, i32 0, i32 3
  %304 = load %struct.radix_mask*, %struct.radix_mask** %303, align 8
  store %struct.radix_mask* %304, %struct.radix_mask** %24, align 8
  br label %228

305:                                              ; preds = %228
  br label %306

306:                                              ; preds = %305
  %307 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %308 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %309 = icmp ne %struct.radix_node* %307, %308
  br i1 %309, label %221, label %310

310:                                              ; preds = %306
  store %struct.radix_node* null, %struct.radix_node** %5, align 8
  br label %311

311:                                              ; preds = %310, %298, %252, %211, %200, %138, %127
  %312 = load %struct.radix_node*, %struct.radix_node** %5, align 8
  ret %struct.radix_node* %312
}

declare dso_local i64 @RN_MATCHF(%struct.radix_node*, i32*, i8*) #1

declare dso_local i64 @rn_satisfies_leaf(i32*, %struct.radix_node*, i32, i32*, i8*) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local %struct.radix_node* @rn_search_m(i32*, %struct.radix_node*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
