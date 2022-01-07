; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vnode_pager.c_vnode_pageout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vnode_pager.c_vnode_pageout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PAGER_SUCCESS = common dso_local global i32 0, align 4
@PAGER_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UPL_NOCOMMIT = common dso_local global i32 0, align 4
@UPL_ABORT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@UPL_VNODE_PAGER = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DBG_MACH_VM = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@VFC_VFSVNOP_PAGEOUTV2 = common dso_local global i32 0, align 4
@UPL_MSYNC = common dso_local global i32 0, align 4
@UPL_UBC_MSYNC = common dso_local global i32 0, align 4
@UPL_RET_ONLY_DIRTY = common dso_local global i32 0, align 4
@UPL_UBC_PAGEOUT = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_FILE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@UPL_COMMIT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@VT_NFS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_pageout(%struct.vnode* %0, i32* %1, i32 %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %28 = load i32, i32* @PAGER_SUCCESS, align 4
  store i32 %28, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %29 = call i32 (...) @vfs_context_current()
  store i32 %29, i32* %24, align 4
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* %19, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %7
  %34 = load i32, i32* @PAGER_ERROR, align 4
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %17, align 4
  br label %424

36:                                               ; preds = %7
  %37 = load %struct.vnode*, %struct.vnode** %8, align 8
  %38 = call i64 @UBCINFOEXISTS(%struct.vnode* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load i32, i32* @PAGER_ERROR, align 4
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %17, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @UPL_NOCOMMIT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %55 = call i32 @ubc_upl_abort_range(i32* %51, i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %45, %40
  br label %424

57:                                               ; preds = %36
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @UPL_VNODE_PAGER, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %92, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @KDEBUG_TRACE, align 4
  %64 = load i32, i32* @DBG_MACH_VM, align 4
  %65 = call i32 @MACHDBG_CODE(i32 %64, i32 1)
  %66 = load i32, i32* @DBG_FUNC_START, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %63, i32 %67, i32 %68, i32 1, i32 0, i32 0, i32 0)
  %70 = load %struct.vnode*, %struct.vnode** %8, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i64, i64* %11, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %24, align 4
  %80 = call i32 @VNOP_PAGEOUT(%struct.vnode* %70, i32* %71, i32 %72, i32 %74, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %62
  %83 = load i32, i32* @PAGER_ERROR, align 4
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %82, %62
  %85 = load i32, i32* @KDEBUG_TRACE, align 4
  %86 = load i32, i32* @DBG_MACH_VM, align 4
  %87 = call i32 @MACHDBG_CODE(i32 %86, i32 1)
  %88 = load i32, i32* @DBG_FUNC_END, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %85, i32 %89, i32 %90, i32 1, i32 0, i32 0, i32 0)
  br label %424

92:                                               ; preds = %57
  %93 = load i32*, i32** %9, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %161

95:                                               ; preds = %92
  %96 = load %struct.vnode*, %struct.vnode** %8, align 8
  %97 = getelementptr inbounds %struct.vnode, %struct.vnode* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @VFC_VFSVNOP_PAGEOUTV2, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %135

106:                                              ; preds = %95
  %107 = load i32, i32* @KDEBUG_TRACE, align 4
  %108 = load i32, i32* @DBG_MACH_VM, align 4
  %109 = call i32 @MACHDBG_CODE(i32 %108, i32 1)
  %110 = load i32, i32* @DBG_FUNC_START, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %12, align 4
  %113 = load i64, i64* %11, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %107, i32 %111, i32 %112, i32 %114, i32 0, i32 0, i32 0)
  %116 = load %struct.vnode*, %struct.vnode** %8, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i64, i64* %11, align 8
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %24, align 4
  %123 = call i32 @VNOP_PAGEOUT(%struct.vnode* %116, i32* null, i32 %117, i32 %119, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %106
  %126 = load i32, i32* @PAGER_ERROR, align 4
  store i32 %126, i32* %15, align 4
  br label %127

127:                                              ; preds = %125, %106
  %128 = load i32, i32* @KDEBUG_TRACE, align 4
  %129 = load i32, i32* @DBG_MACH_VM, align 4
  %130 = call i32 @MACHDBG_CODE(i32 %129, i32 1)
  %131 = load i32, i32* @DBG_FUNC_END, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %128, i32 %132, i32 %133, i32 0, i32 0, i32 0, i32 0)
  br label %424

135:                                              ; preds = %95
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @UPL_MSYNC, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* @UPL_UBC_MSYNC, align 4
  %142 = load i32, i32* @UPL_RET_ONLY_DIRTY, align 4
  %143 = or i32 %141, %142
  store i32 %143, i32* %25, align 4
  br label %148

144:                                              ; preds = %135
  %145 = load i32, i32* @UPL_UBC_PAGEOUT, align 4
  %146 = load i32, i32* @UPL_RET_ONLY_DIRTY, align 4
  %147 = or i32 %145, %146
  store i32 %147, i32* %25, align 4
  br label %148

148:                                              ; preds = %144, %140
  %149 = load %struct.vnode*, %struct.vnode** %8, align 8
  %150 = load i64, i64* %11, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %25, align 4
  %153 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %154 = call i64 @ubc_create_upl_kernel(%struct.vnode* %149, i64 %150, i32 %151, i32** %9, i32** %23, i32 %152, i32 %153)
  %155 = load i64, i64* @KERN_SUCCESS, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %148
  %158 = load i32, i32* @PAGER_ERROR, align 4
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* @EINVAL, align 4
  store i32 %159, i32* %17, align 4
  br label %424

160:                                              ; preds = %148
  store i32 0, i32* %10, align 4
  br label %164

161:                                              ; preds = %92
  %162 = load i32*, i32** %9, align 8
  %163 = call i32* @ubc_upl_pageinfo(i32* %162)
  store i32* %163, i32** %23, align 8
  br label %164

164:                                              ; preds = %161, %160
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @PAGE_SIZE, align 4
  %167 = sdiv i32 %165, %166
  store i32 %167, i32* %21, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %19, align 4
  %170 = add nsw i32 %168, %169
  %171 = load i32, i32* @PAGE_SIZE, align 4
  %172 = sdiv i32 %170, %171
  store i32 %172, i32* %20, align 4
  br label %173

173:                                              ; preds = %200, %164
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %21, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %201

177:                                              ; preds = %173
  %178 = load i32*, i32** %23, align 8
  %179 = load i32, i32* %20, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %20, align 4
  %181 = call i64 @upl_page_present(i32* %178, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %201

184:                                              ; preds = %177
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* %21, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %200

188:                                              ; preds = %184
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* @UPL_NOCOMMIT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %188
  %194 = load i32*, i32** %9, align 8
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %19, align 4
  %197 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %198 = call i32 @ubc_upl_abort_range(i32* %194, i32 %195, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %193, %188
  br label %424

200:                                              ; preds = %184
  br label %173

201:                                              ; preds = %183, %173
  %202 = load i32, i32* %20, align 4
  %203 = add nsw i32 %202, 1
  %204 = load i32, i32* %21, align 4
  %205 = sub nsw i32 %203, %204
  %206 = load i32, i32* @PAGE_SIZE, align 4
  %207 = mul nsw i32 %205, %206
  store i32 %207, i32* %19, align 4
  %208 = load %struct.vnode*, %struct.vnode** %8, align 8
  %209 = call i64 @ubc_getsize(%struct.vnode* %208)
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %269

211:                                              ; preds = %201
  %212 = load i32, i32* %10, align 4
  store i32 %212, i32* %22, align 4
  br label %213

213:                                              ; preds = %261, %211
  %214 = load i32, i32* %19, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %268

216:                                              ; preds = %213
  %217 = load %struct.vnode*, %struct.vnode** %8, align 8
  %218 = load i64, i64* %11, align 8
  %219 = trunc i64 %218 to i32
  %220 = call i32 @ubc_offtoblk(%struct.vnode* %217, i32 %219)
  store i32 %220, i32* %18, align 4
  %221 = load %struct.vnode*, %struct.vnode** %8, align 8
  %222 = load i32, i32* %18, align 4
  %223 = call i32 @buf_invalblkno(%struct.vnode* %221, i32 %222, i32 0)
  store i32 %223, i32* %16, align 4
  %224 = load i32, i32* %16, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %244

226:                                              ; preds = %216
  %227 = load i32, i32* %13, align 4
  %228 = load i32, i32* @UPL_NOCOMMIT, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %237, label %231

231:                                              ; preds = %226
  %232 = load i32*, i32** %9, align 8
  %233 = load i32, i32* %22, align 4
  %234 = load i32, i32* @PAGE_SIZE, align 4
  %235 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %236 = call i32 @ubc_upl_abort_range(i32* %232, i32 %233, i32 %234, i32 %235)
  br label %237

237:                                              ; preds = %231, %226
  %238 = load i32, i32* %17, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %237
  %241 = load i32, i32* %16, align 4
  store i32 %241, i32* %17, align 4
  br label %242

242:                                              ; preds = %240, %237
  %243 = load i32, i32* @PAGER_ERROR, align 4
  store i32 %243, i32* %15, align 4
  br label %256

244:                                              ; preds = %216
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* @UPL_NOCOMMIT, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %255, label %249

249:                                              ; preds = %244
  %250 = load i32*, i32** %9, align 8
  %251 = load i32, i32* %22, align 4
  %252 = load i32, i32* @PAGE_SIZE, align 4
  %253 = load i32, i32* @UPL_COMMIT_FREE_ON_EMPTY, align 4
  %254 = call i32 @ubc_upl_commit_range(i32* %250, i32 %251, i32 %252, i32 %253)
  br label %255

255:                                              ; preds = %249, %244
  br label %256

256:                                              ; preds = %255, %242
  %257 = load i32, i32* @PAGE_SIZE, align 4
  %258 = sext i32 %257 to i64
  %259 = load i64, i64* %11, align 8
  %260 = add nsw i64 %259, %258
  store i64 %260, i64* %11, align 8
  br label %261

261:                                              ; preds = %256
  %262 = load i32, i32* @PAGE_SIZE, align 4
  %263 = load i32, i32* %19, align 4
  %264 = sub nsw i32 %263, %262
  store i32 %264, i32* %19, align 4
  %265 = load i32, i32* @PAGE_SIZE, align 4
  %266 = load i32, i32* %22, align 4
  %267 = add nsw i32 %266, %265
  store i32 %267, i32* %22, align 4
  br label %213

268:                                              ; preds = %213
  br label %424

269:                                              ; preds = %201
  %270 = load i32, i32* %10, align 4
  store i32 %270, i32* %22, align 4
  %271 = load i32, i32* %21, align 4
  store i32 %271, i32* %20, align 4
  br label %272

272:                                              ; preds = %402, %338, %280, %269
  %273 = load i32, i32* %19, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %423

275:                                              ; preds = %272
  %276 = load i32*, i32** %23, align 8
  %277 = load i32, i32* %20, align 4
  %278 = call i64 @upl_page_present(i32* %276, i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %293, label %280

280:                                              ; preds = %275
  %281 = load i32, i32* @PAGE_SIZE, align 4
  %282 = sext i32 %281 to i64
  %283 = load i64, i64* %11, align 8
  %284 = add nsw i64 %283, %282
  store i64 %284, i64* %11, align 8
  %285 = load i32, i32* @PAGE_SIZE, align 4
  %286 = load i32, i32* %22, align 4
  %287 = add nsw i32 %286, %285
  store i32 %287, i32* %22, align 4
  %288 = load i32, i32* @PAGE_SIZE, align 4
  %289 = load i32, i32* %19, align 4
  %290 = sub nsw i32 %289, %288
  store i32 %290, i32* %19, align 4
  %291 = load i32, i32* %20, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %20, align 4
  br label %272

293:                                              ; preds = %275
  %294 = load i32*, i32** %23, align 8
  %295 = load i32, i32* %20, align 4
  %296 = call i32 @upl_dirty_page(i32* %294, i32 %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %351, label %298

298:                                              ; preds = %293
  %299 = load %struct.vnode*, %struct.vnode** %8, align 8
  %300 = load i64, i64* %11, align 8
  %301 = trunc i64 %300 to i32
  %302 = call i32 @ubc_offtoblk(%struct.vnode* %299, i32 %301)
  store i32 %302, i32* %18, align 4
  %303 = load %struct.vnode*, %struct.vnode** %8, align 8
  %304 = load i32, i32* %18, align 4
  %305 = call i32 @buf_invalblkno(%struct.vnode* %303, i32 %304, i32 0)
  store i32 %305, i32* %16, align 4
  %306 = load i32, i32* %16, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %326

308:                                              ; preds = %298
  %309 = load i32, i32* %13, align 4
  %310 = load i32, i32* @UPL_NOCOMMIT, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %319, label %313

313:                                              ; preds = %308
  %314 = load i32*, i32** %9, align 8
  %315 = load i32, i32* %22, align 4
  %316 = load i32, i32* @PAGE_SIZE, align 4
  %317 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %318 = call i32 @ubc_upl_abort_range(i32* %314, i32 %315, i32 %316, i32 %317)
  br label %319

319:                                              ; preds = %313, %308
  %320 = load i32, i32* %17, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %319
  %323 = load i32, i32* %16, align 4
  store i32 %323, i32* %17, align 4
  br label %324

324:                                              ; preds = %322, %319
  %325 = load i32, i32* @PAGER_ERROR, align 4
  store i32 %325, i32* %15, align 4
  br label %338

326:                                              ; preds = %298
  %327 = load i32, i32* %13, align 4
  %328 = load i32, i32* @UPL_NOCOMMIT, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %337, label %331

331:                                              ; preds = %326
  %332 = load i32*, i32** %9, align 8
  %333 = load i32, i32* %22, align 4
  %334 = load i32, i32* @PAGE_SIZE, align 4
  %335 = load i32, i32* @UPL_COMMIT_FREE_ON_EMPTY, align 4
  %336 = call i32 @ubc_upl_commit_range(i32* %332, i32 %333, i32 %334, i32 %335)
  br label %337

337:                                              ; preds = %331, %326
  br label %338

338:                                              ; preds = %337, %324
  %339 = load i32, i32* @PAGE_SIZE, align 4
  %340 = sext i32 %339 to i64
  %341 = load i64, i64* %11, align 8
  %342 = add nsw i64 %341, %340
  store i64 %342, i64* %11, align 8
  %343 = load i32, i32* @PAGE_SIZE, align 4
  %344 = load i32, i32* %22, align 4
  %345 = add nsw i32 %344, %343
  store i32 %345, i32* %22, align 4
  %346 = load i32, i32* @PAGE_SIZE, align 4
  %347 = load i32, i32* %19, align 4
  %348 = sub nsw i32 %347, %346
  store i32 %348, i32* %19, align 4
  %349 = load i32, i32* %20, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %20, align 4
  br label %272

351:                                              ; preds = %293
  store i32 1, i32* %27, align 4
  %352 = load i32, i32* %19, align 4
  %353 = load i32, i32* @PAGE_SIZE, align 4
  %354 = sub nsw i32 %352, %353
  store i32 %354, i32* %26, align 4
  br label %355

355:                                              ; preds = %366, %351
  %356 = load i32, i32* %26, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %372

358:                                              ; preds = %355
  %359 = load i32*, i32** %23, align 8
  %360 = load i32, i32* %20, align 4
  %361 = load i32, i32* %27, align 4
  %362 = add nsw i32 %360, %361
  %363 = call i32 @upl_dirty_page(i32* %359, i32 %362)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %366, label %365

365:                                              ; preds = %358
  br label %372

366:                                              ; preds = %358
  %367 = load i32, i32* %27, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %27, align 4
  %369 = load i32, i32* @PAGE_SIZE, align 4
  %370 = load i32, i32* %26, align 4
  %371 = sub nsw i32 %370, %369
  store i32 %371, i32* %26, align 4
  br label %355

372:                                              ; preds = %365, %355
  %373 = load i32, i32* %27, align 4
  %374 = load i32, i32* @PAGE_SIZE, align 4
  %375 = mul nsw i32 %373, %374
  store i32 %375, i32* %26, align 4
  %376 = load i32, i32* @KDEBUG_TRACE, align 4
  %377 = load i32, i32* @DBG_MACH_VM, align 4
  %378 = call i32 @MACHDBG_CODE(i32 %377, i32 1)
  %379 = load i32, i32* @DBG_FUNC_START, align 4
  %380 = or i32 %378, %379
  %381 = load i32, i32* %26, align 4
  %382 = load i64, i64* %11, align 8
  %383 = trunc i64 %382 to i32
  %384 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %376, i32 %380, i32 %381, i32 %383, i32 0, i32 0, i32 0)
  %385 = load %struct.vnode*, %struct.vnode** %8, align 8
  %386 = load i32*, i32** %9, align 8
  %387 = load i32, i32* %22, align 4
  %388 = load i64, i64* %11, align 8
  %389 = trunc i64 %388 to i32
  %390 = load i32, i32* %26, align 4
  %391 = load i32, i32* %13, align 4
  %392 = load i32, i32* %24, align 4
  %393 = call i32 @VNOP_PAGEOUT(%struct.vnode* %385, i32* %386, i32 %387, i32 %389, i32 %390, i32 %391, i32 %392)
  store i32 %393, i32* %16, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %402

395:                                              ; preds = %372
  %396 = load i32, i32* %17, align 4
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %395
  %399 = load i32, i32* %16, align 4
  store i32 %399, i32* %17, align 4
  br label %400

400:                                              ; preds = %398, %395
  %401 = load i32, i32* @PAGER_ERROR, align 4
  store i32 %401, i32* %15, align 4
  br label %402

402:                                              ; preds = %400, %372
  %403 = load i32, i32* @KDEBUG_TRACE, align 4
  %404 = load i32, i32* @DBG_MACH_VM, align 4
  %405 = call i32 @MACHDBG_CODE(i32 %404, i32 1)
  %406 = load i32, i32* @DBG_FUNC_END, align 4
  %407 = or i32 %405, %406
  %408 = load i32, i32* %26, align 4
  %409 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %403, i32 %407, i32 %408, i32 0, i32 0, i32 0, i32 0)
  %410 = load i32, i32* %26, align 4
  %411 = sext i32 %410 to i64
  %412 = load i64, i64* %11, align 8
  %413 = add nsw i64 %412, %411
  store i64 %413, i64* %11, align 8
  %414 = load i32, i32* %26, align 4
  %415 = load i32, i32* %22, align 4
  %416 = add nsw i32 %415, %414
  store i32 %416, i32* %22, align 4
  %417 = load i32, i32* %26, align 4
  %418 = load i32, i32* %19, align 4
  %419 = sub nsw i32 %418, %417
  store i32 %419, i32* %19, align 4
  %420 = load i32, i32* %27, align 4
  %421 = load i32, i32* %20, align 4
  %422 = add nsw i32 %421, %420
  store i32 %422, i32* %20, align 4
  br label %272

423:                                              ; preds = %272
  br label %424

424:                                              ; preds = %423, %268, %199, %157, %127, %84, %56, %33
  %425 = load i32*, i32** %14, align 8
  %426 = icmp ne i32* %425, null
  br i1 %426, label %427, label %430

427:                                              ; preds = %424
  %428 = load i32, i32* %17, align 4
  %429 = load i32*, i32** %14, align 8
  store i32 %428, i32* %429, align 4
  br label %430

430:                                              ; preds = %427, %424
  %431 = load i32, i32* %15, align 4
  ret i32 %431
}

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i64 @UBCINFOEXISTS(%struct.vnode*) #1

declare dso_local i32 @ubc_upl_abort_range(i32*, i32, i32, i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i32 @VNOP_PAGEOUT(%struct.vnode*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ubc_create_upl_kernel(%struct.vnode*, i64, i32, i32**, i32**, i32, i32) #1

declare dso_local i32* @ubc_upl_pageinfo(i32*) #1

declare dso_local i64 @upl_page_present(i32*, i32) #1

declare dso_local i64 @ubc_getsize(%struct.vnode*) #1

declare dso_local i32 @ubc_offtoblk(%struct.vnode*, i32) #1

declare dso_local i32 @buf_invalblkno(%struct.vnode*, i32, i32) #1

declare dso_local i32 @ubc_upl_commit_range(i32*, i32, i32, i32) #1

declare dso_local i32 @upl_dirty_page(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
