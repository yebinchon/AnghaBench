; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_page_op.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_page_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i8*, i8*, i8*, i8*, i64 }
%struct.TYPE_16__ = type { i32, i64 }

@UPL_POP_PHYSICAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_INVALID_OBJECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@VM_PAGE_NULL = common dso_local global %struct.TYPE_15__* null, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@UPL_POP_SET = common dso_local global i32 0, align 4
@UPL_POP_BUSY = common dso_local global i32 0, align 4
@UPL_POP_DUMP = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@UPL_POP_DIRTY = common dso_local global i32 0, align 4
@UPL_POP_PAGEOUT = common dso_local global i32 0, align 4
@UPL_POP_PRECIOUS = common dso_local global i32 0, align 4
@UPL_POP_ABSENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@UPL_POP_CLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_object_page_op(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %14 = call i32 @vm_object_lock(%struct.TYPE_16__* %13)
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @UPL_POP_PHYSICAL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %5
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PAGE_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = load i32*, i32** %10, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %27, %24
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = call i32 @vm_object_unlock(%struct.TYPE_16__* %35)
  %37 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %37, i32* %6, align 4
  br label %310

38:                                               ; preds = %19
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = call i32 @vm_object_unlock(%struct.TYPE_16__* %39)
  %41 = load i32, i32* @KERN_INVALID_OBJECT, align 4
  store i32 %41, i32* %6, align 4
  br label %310

42:                                               ; preds = %5
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = call i32 @vm_object_unlock(%struct.TYPE_16__* %48)
  %50 = load i32, i32* @KERN_INVALID_OBJECT, align 4
  store i32 %50, i32* %6, align 4
  br label %310

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %90, %51
  %53 = load i64, i64* @TRUE, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %306

55:                                               ; preds = %52
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call %struct.TYPE_15__* @vm_page_lookup(%struct.TYPE_16__* %56, i32 %57)
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %12, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** @VM_PAGE_NULL, align 8
  %60 = icmp eq %struct.TYPE_15__* %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %63 = call i32 @vm_object_unlock(%struct.TYPE_16__* %62)
  %64 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %64, i32* %6, align 4
  br label %310

65:                                               ; preds = %55
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @UPL_POP_SET, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @UPL_POP_BUSY, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80, %75
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @UPL_POP_DUMP, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85, %80
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %93 = load i32, i32* @THREAD_UNINT, align 4
  %94 = call i32 @PAGE_SLEEP(%struct.TYPE_16__* %91, %struct.TYPE_15__* %92, i32 %93)
  br label %52

95:                                               ; preds = %85, %70
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @UPL_POP_DUMP, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TRUE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %108 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_15__* %107)
  %109 = call i32 @pmap_disconnect(i32 %108)
  br label %110

110:                                              ; preds = %106, %100
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %112 = call i32 @VM_PAGE_FREE(%struct.TYPE_15__* %111)
  br label %306

113:                                              ; preds = %95
  %114 = load i32*, i32** %11, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %168

116:                                              ; preds = %113
  %117 = load i32*, i32** %11, align 8
  store i32 0, i32* %117, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 5
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load i32, i32* @UPL_POP_DIRTY, align 4
  %124 = load i32*, i32** %11, align 8
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122, %116
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i32, i32* @UPL_POP_PAGEOUT, align 4
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %133
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %132, %127
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 3
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load i32, i32* @UPL_POP_PRECIOUS, align 4
  %144 = load i32*, i32** %11, align 8
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %143
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %142, %137
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load i32, i32* @UPL_POP_ABSENT, align 4
  %154 = load i32*, i32** %11, align 8
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %153
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %152, %147
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load i32, i32* @UPL_POP_BUSY, align 4
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %163
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %162, %157
  br label %168

168:                                              ; preds = %167, %113
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @UPL_POP_SET, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %236

173:                                              ; preds = %168
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @UPL_POP_BUSY, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br label %183

183:                                              ; preds = %178, %173
  %184 = phi i1 [ true, %173 ], [ %182, %178 ]
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @UPL_POP_DIRTY, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %183
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %193 = load i8*, i8** @FALSE, align 8
  %194 = call i32 @SET_PAGE_DIRTY(%struct.TYPE_15__* %192, i8* %193)
  br label %195

195:                                              ; preds = %191, %183
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @UPL_POP_PAGEOUT, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load i64, i64* @TRUE, align 8
  %202 = inttoptr i64 %201 to i8*
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 4
  store i8* %202, i8** %204, align 8
  br label %205

205:                                              ; preds = %200, %195
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* @UPL_POP_PRECIOUS, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load i64, i64* @TRUE, align 8
  %212 = inttoptr i64 %211 to i8*
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 3
  store i8* %212, i8** %214, align 8
  br label %215

215:                                              ; preds = %210, %205
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @UPL_POP_ABSENT, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load i64, i64* @TRUE, align 8
  %222 = inttoptr i64 %221 to i8*
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 2
  store i8* %222, i8** %224, align 8
  br label %225

225:                                              ; preds = %220, %215
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* @UPL_POP_BUSY, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %225
  %231 = load i64, i64* @TRUE, align 8
  %232 = trunc i64 %231 to i32
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  br label %235

235:                                              ; preds = %230, %225
  br label %236

236:                                              ; preds = %235, %168
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* @UPL_POP_CLR, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %294

241:                                              ; preds = %236
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @assert(i32 %244)
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* @UPL_POP_DIRTY, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %241
  %251 = load i8*, i8** @FALSE, align 8
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 5
  store i8* %251, i8** %253, align 8
  br label %254

254:                                              ; preds = %250, %241
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* @UPL_POP_PAGEOUT, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %254
  %260 = load i8*, i8** @FALSE, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 4
  store i8* %260, i8** %262, align 8
  br label %263

263:                                              ; preds = %259, %254
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* @UPL_POP_PRECIOUS, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = load i8*, i8** @FALSE, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 3
  store i8* %269, i8** %271, align 8
  br label %272

272:                                              ; preds = %268, %263
  %273 = load i32, i32* %9, align 4
  %274 = load i32, i32* @UPL_POP_ABSENT, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %272
  %278 = load i8*, i8** @FALSE, align 8
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 2
  store i8* %278, i8** %280, align 8
  br label %281

281:                                              ; preds = %277, %272
  %282 = load i32, i32* %9, align 4
  %283 = load i32, i32* @UPL_POP_BUSY, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %293

286:                                              ; preds = %281
  %287 = load i8*, i8** @FALSE, align 8
  %288 = ptrtoint i8* %287 to i32
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 0
  store i32 %288, i32* %290, align 8
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %292 = call i32 @PAGE_WAKEUP(%struct.TYPE_15__* %291)
  br label %293

293:                                              ; preds = %286, %281
  br label %294

294:                                              ; preds = %293, %236
  %295 = load i32*, i32** %10, align 8
  %296 = icmp ne i32* %295, null
  br i1 %296, label %297, label %305

297:                                              ; preds = %294
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @assert(i32 %300)
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %303 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_15__* %302)
  %304 = load i32*, i32** %10, align 8
  store i32 %303, i32* %304, align 4
  br label %305

305:                                              ; preds = %297, %294
  br label %306

306:                                              ; preds = %305, %110, %52
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %308 = call i32 @vm_object_unlock(%struct.TYPE_16__* %307)
  %309 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %309, i32* %6, align 4
  br label %310

310:                                              ; preds = %306, %61, %47, %38, %34
  %311 = load i32, i32* %6, align 4
  ret i32 %311
}

declare dso_local i32 @vm_object_lock(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @vm_page_lookup(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @PAGE_SLEEP(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @pmap_disconnect(i32) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_15__*) #1

declare dso_local i32 @VM_PAGE_FREE(%struct.TYPE_15__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SET_PAGE_DIRTY(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @PAGE_WAKEUP(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
