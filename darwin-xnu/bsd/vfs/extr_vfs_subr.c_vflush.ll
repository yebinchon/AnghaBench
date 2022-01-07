; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vflush.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, i32, i32 }
%struct.vnode = type { i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, %struct.mount* }

@FORCECLOSE = common dso_local global i32 0, align 4
@MNTK_UNMOUNT_PREFLIGHT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@v_mntvnodes = common dso_local global i32 0, align 4
@VL_TERMINATE = common dso_local global i32 0, align 4
@VL_TERMWANT = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vflush\00", align 1
@VL_DEAD = common dso_local global i32 0, align 4
@SKIPSYSTEM = common dso_local global i32 0, align 4
@VSYSTEM = common dso_local global i32 0, align 4
@VNOFLUSH = common dso_local global i32 0, align 4
@SKIPSWAP = common dso_local global i32 0, align 4
@VSWAP = common dso_local global i32 0, align 4
@SKIPROOT = common dso_local global i32 0, align 4
@VROOT = common dso_local global i32 0, align 4
@WRITECLOSE = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@VBLK = common dso_local global i64 0, align 8
@VCHR = common dso_local global i64 0, align 8
@spec_vnodeop_p = common dso_local global i32 0, align 4
@VDEVFLUSH = common dso_local global i32 0, align 4
@busyprt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vflush(%struct.mount* %0, %struct.vnode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.mount*, %struct.mount** %5, align 8
  %14 = call i32 @mount_iterate_lock(%struct.mount* %13)
  %15 = load %struct.mount*, %struct.mount** %5, align 8
  %16 = call i32 @mount_lock(%struct.mount* %15)
  %17 = load %struct.mount*, %struct.mount** %5, align 8
  %18 = call i32 @vnode_iterate_setup(%struct.mount* %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @FORCECLOSE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %3
  %24 = load %struct.mount*, %struct.mount** %5, align 8
  %25 = getelementptr inbounds %struct.mount, %struct.mount* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MNTK_UNMOUNT_PREFLIGHT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %23
  %31 = load %struct.mount*, %struct.mount** %5, align 8
  %32 = load %struct.vnode*, %struct.vnode** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @vnode_umount_preflight(%struct.mount* %31, %struct.vnode* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.mount*, %struct.mount** %5, align 8
  %38 = call i32 @vnode_iterate_clear(%struct.mount* %37)
  %39 = load %struct.mount*, %struct.mount** %5, align 8
  %40 = call i32 @mount_unlock(%struct.mount* %39)
  %41 = load %struct.mount*, %struct.mount** %5, align 8
  %42 = call i32 @mount_iterate_unlock(%struct.mount* %41)
  %43 = load i32, i32* @EBUSY, align 4
  store i32 %43, i32* %4, align 4
  br label %363

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %23, %3
  br label %46

46:                                               ; preds = %344, %329, %45
  %47 = load %struct.mount*, %struct.mount** %5, align 8
  %48 = call i32 @vnode_iterate_prepare(%struct.mount* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.mount*, %struct.mount** %5, align 8
  %53 = call i32 @vnode_iterate_clear(%struct.mount* %52)
  %54 = load %struct.mount*, %struct.mount** %5, align 8
  %55 = call i32 @mount_unlock(%struct.mount* %54)
  %56 = load %struct.mount*, %struct.mount** %5, align 8
  %57 = call i32 @mount_iterate_unlock(%struct.mount* %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %363

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %311, %308, %236, %217, %196, %179, %162, %138, %89, %59
  %61 = load %struct.mount*, %struct.mount** %5, align 8
  %62 = getelementptr inbounds %struct.mount, %struct.mount* %61, i32 0, i32 2
  %63 = call i32 @TAILQ_EMPTY(i32* %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br i1 %65, label %66, label %318

66:                                               ; preds = %60
  %67 = load %struct.mount*, %struct.mount** %5, align 8
  %68 = getelementptr inbounds %struct.mount, %struct.mount* %67, i32 0, i32 2
  %69 = call %struct.vnode* @TAILQ_FIRST(i32* %68)
  store %struct.vnode* %69, %struct.vnode** %8, align 8
  %70 = load %struct.mount*, %struct.mount** %5, align 8
  %71 = getelementptr inbounds %struct.mount, %struct.mount* %70, i32 0, i32 2
  %72 = load %struct.vnode*, %struct.vnode** %8, align 8
  %73 = load i32, i32* @v_mntvnodes, align 4
  %74 = call i32 @TAILQ_REMOVE(i32* %71, %struct.vnode* %72, i32 %73)
  %75 = load %struct.mount*, %struct.mount** %5, align 8
  %76 = getelementptr inbounds %struct.mount, %struct.mount* %75, i32 0, i32 1
  %77 = load %struct.vnode*, %struct.vnode** %8, align 8
  %78 = load i32, i32* @v_mntvnodes, align 4
  %79 = call i32 @TAILQ_INSERT_TAIL(i32* %76, %struct.vnode* %77, i32 %78)
  %80 = load %struct.vnode*, %struct.vnode** %8, align 8
  %81 = getelementptr inbounds %struct.vnode, %struct.vnode* %80, i32 0, i32 10
  %82 = load %struct.mount*, %struct.mount** %81, align 8
  %83 = load %struct.mount*, %struct.mount** %5, align 8
  %84 = icmp ne %struct.mount* %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %66
  %86 = load %struct.vnode*, %struct.vnode** %8, align 8
  %87 = load %struct.vnode*, %struct.vnode** %6, align 8
  %88 = icmp eq %struct.vnode* %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %66
  br label %60

90:                                               ; preds = %85
  %91 = load %struct.vnode*, %struct.vnode** %8, align 8
  %92 = getelementptr inbounds %struct.vnode, %struct.vnode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %12, align 4
  %94 = load %struct.mount*, %struct.mount** %5, align 8
  %95 = call i32 @mount_unlock(%struct.mount* %94)
  %96 = load %struct.vnode*, %struct.vnode** %8, align 8
  %97 = call i32 @vnode_lock_spin(%struct.vnode* %96)
  br label %98

98:                                               ; preds = %113, %90
  %99 = load %struct.vnode*, %struct.vnode** %8, align 8
  %100 = getelementptr inbounds %struct.vnode, %struct.vnode* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.vnode*, %struct.vnode** %8, align 8
  %106 = getelementptr inbounds %struct.vnode, %struct.vnode* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @VL_TERMINATE, align 4
  %109 = call i64 @ISSET(i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br label %111

111:                                              ; preds = %104, %98
  %112 = phi i1 [ false, %98 ], [ %110, %104 ]
  br i1 %112, label %113, label %125

113:                                              ; preds = %111
  %114 = load i32, i32* @VL_TERMWANT, align 4
  %115 = load %struct.vnode*, %struct.vnode** %8, align 8
  %116 = getelementptr inbounds %struct.vnode, %struct.vnode* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.vnode*, %struct.vnode** %8, align 8
  %120 = getelementptr inbounds %struct.vnode, %struct.vnode* %119, i32 0, i32 7
  %121 = load %struct.vnode*, %struct.vnode** %8, align 8
  %122 = getelementptr inbounds %struct.vnode, %struct.vnode* %121, i32 0, i32 9
  %123 = load i32, i32* @PVFS, align 4
  %124 = call i32 @msleep(i32* %120, i32* %122, i32 %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %98

125:                                              ; preds = %111
  %126 = load %struct.vnode*, %struct.vnode** %8, align 8
  %127 = getelementptr inbounds %struct.vnode, %struct.vnode* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %138, label %131

131:                                              ; preds = %125
  %132 = load %struct.vnode*, %struct.vnode** %8, align 8
  %133 = getelementptr inbounds %struct.vnode, %struct.vnode* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @VL_DEAD, align 4
  %136 = call i64 @ISSET(i32 %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131, %125
  %139 = load %struct.vnode*, %struct.vnode** %8, align 8
  %140 = call i32 @vnode_unlock(%struct.vnode* %139)
  %141 = load %struct.mount*, %struct.mount** %5, align 8
  %142 = call i32 @mount_lock(%struct.mount* %141)
  br label %60

143:                                              ; preds = %131
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @SKIPSYSTEM, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %143
  %149 = load %struct.vnode*, %struct.vnode** %8, align 8
  %150 = getelementptr inbounds %struct.vnode, %struct.vnode* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @VSYSTEM, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %148
  %156 = load %struct.vnode*, %struct.vnode** %8, align 8
  %157 = getelementptr inbounds %struct.vnode, %struct.vnode* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @VNOFLUSH, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %155, %148
  %163 = load %struct.vnode*, %struct.vnode** %8, align 8
  %164 = call i32 @vnode_unlock(%struct.vnode* %163)
  %165 = load %struct.mount*, %struct.mount** %5, align 8
  %166 = call i32 @mount_lock(%struct.mount* %165)
  br label %60

167:                                              ; preds = %155, %143
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @SKIPSWAP, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %167
  %173 = load %struct.vnode*, %struct.vnode** %8, align 8
  %174 = getelementptr inbounds %struct.vnode, %struct.vnode* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @VSWAP, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load %struct.vnode*, %struct.vnode** %8, align 8
  %181 = call i32 @vnode_unlock(%struct.vnode* %180)
  %182 = load %struct.mount*, %struct.mount** %5, align 8
  %183 = call i32 @mount_lock(%struct.mount* %182)
  br label %60

184:                                              ; preds = %172, %167
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @SKIPROOT, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %184
  %190 = load %struct.vnode*, %struct.vnode** %8, align 8
  %191 = getelementptr inbounds %struct.vnode, %struct.vnode* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @VROOT, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %189
  %197 = load %struct.vnode*, %struct.vnode** %8, align 8
  %198 = call i32 @vnode_unlock(%struct.vnode* %197)
  %199 = load %struct.mount*, %struct.mount** %5, align 8
  %200 = call i32 @mount_lock(%struct.mount* %199)
  br label %60

201:                                              ; preds = %189, %184
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @WRITECLOSE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %222

206:                                              ; preds = %201
  %207 = load %struct.vnode*, %struct.vnode** %8, align 8
  %208 = getelementptr inbounds %struct.vnode, %struct.vnode* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %217, label %211

211:                                              ; preds = %206
  %212 = load %struct.vnode*, %struct.vnode** %8, align 8
  %213 = getelementptr inbounds %struct.vnode, %struct.vnode* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @VREG, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %211, %206
  %218 = load %struct.vnode*, %struct.vnode** %8, align 8
  %219 = call i32 @vnode_unlock(%struct.vnode* %218)
  %220 = load %struct.mount*, %struct.mount** %5, align 8
  %221 = call i32 @mount_lock(%struct.mount* %220)
  br label %60

222:                                              ; preds = %211, %201
  %223 = load %struct.vnode*, %struct.vnode** %8, align 8
  %224 = getelementptr inbounds %struct.vnode, %struct.vnode* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %236, label %227

227:                                              ; preds = %222
  %228 = load %struct.vnode*, %struct.vnode** %8, align 8
  %229 = getelementptr inbounds %struct.vnode, %struct.vnode* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.vnode*, %struct.vnode** %8, align 8
  %232 = getelementptr inbounds %struct.vnode, %struct.vnode* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = sub nsw i64 %230, %233
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %255

236:                                              ; preds = %227, %222
  %237 = load %struct.vnode*, %struct.vnode** %8, align 8
  %238 = call i32 @vnode_lock_convert(%struct.vnode* %237)
  %239 = load %struct.vnode*, %struct.vnode** %8, align 8
  %240 = getelementptr inbounds %struct.vnode, %struct.vnode* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 8
  %243 = load %struct.vnode*, %struct.vnode** %8, align 8
  %244 = call i32 @vnode_reclaim_internal(%struct.vnode* %243, i32 1, i32 1, i32 0)
  %245 = load %struct.vnode*, %struct.vnode** %8, align 8
  %246 = call i32 @vnode_dropiocount(%struct.vnode* %245)
  %247 = load %struct.vnode*, %struct.vnode** %8, align 8
  %248 = call i32 @vnode_list_add(%struct.vnode* %247)
  %249 = load %struct.vnode*, %struct.vnode** %8, align 8
  %250 = call i32 @vnode_unlock(%struct.vnode* %249)
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %10, align 4
  %253 = load %struct.mount*, %struct.mount** %5, align 8
  %254 = call i32 @mount_lock(%struct.mount* %253)
  br label %60

255:                                              ; preds = %227
  %256 = load i32, i32* %7, align 4
  %257 = load i32, i32* @FORCECLOSE, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %311

260:                                              ; preds = %255
  %261 = load %struct.vnode*, %struct.vnode** %8, align 8
  %262 = call i32 @vnode_lock_convert(%struct.vnode* %261)
  %263 = load %struct.vnode*, %struct.vnode** %8, align 8
  %264 = getelementptr inbounds %struct.vnode, %struct.vnode* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @VBLK, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %289

268:                                              ; preds = %260
  %269 = load %struct.vnode*, %struct.vnode** %8, align 8
  %270 = getelementptr inbounds %struct.vnode, %struct.vnode* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @VCHR, align 8
  %273 = icmp ne i64 %271, %272
  br i1 %273, label %274, label %289

274:                                              ; preds = %268
  %275 = load %struct.vnode*, %struct.vnode** %8, align 8
  %276 = getelementptr inbounds %struct.vnode, %struct.vnode* %275, i32 0, i32 8
  %277 = load i32, i32* %276, align 8
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %276, align 8
  %279 = load %struct.vnode*, %struct.vnode** %8, align 8
  %280 = call i32 @vnode_abort_advlocks(%struct.vnode* %279)
  %281 = load %struct.vnode*, %struct.vnode** %8, align 8
  %282 = call i32 @vnode_reclaim_internal(%struct.vnode* %281, i32 1, i32 1, i32 0)
  %283 = load %struct.vnode*, %struct.vnode** %8, align 8
  %284 = call i32 @vnode_dropiocount(%struct.vnode* %283)
  %285 = load %struct.vnode*, %struct.vnode** %8, align 8
  %286 = call i32 @vnode_list_add(%struct.vnode* %285)
  %287 = load %struct.vnode*, %struct.vnode** %8, align 8
  %288 = call i32 @vnode_unlock(%struct.vnode* %287)
  br label %308

289:                                              ; preds = %268, %260
  %290 = load %struct.vnode*, %struct.vnode** %8, align 8
  %291 = call i32 @vclean(%struct.vnode* %290, i32 0)
  %292 = load i32, i32* @VL_DEAD, align 4
  %293 = xor i32 %292, -1
  %294 = load %struct.vnode*, %struct.vnode** %8, align 8
  %295 = getelementptr inbounds %struct.vnode, %struct.vnode* %294, i32 0, i32 7
  %296 = load i32, i32* %295, align 4
  %297 = and i32 %296, %293
  store i32 %297, i32* %295, align 4
  %298 = load i32, i32* @spec_vnodeop_p, align 4
  %299 = load %struct.vnode*, %struct.vnode** %8, align 8
  %300 = getelementptr inbounds %struct.vnode, %struct.vnode* %299, i32 0, i32 6
  store i32 %298, i32* %300, align 8
  %301 = load i32, i32* @VDEVFLUSH, align 4
  %302 = load %struct.vnode*, %struct.vnode** %8, align 8
  %303 = getelementptr inbounds %struct.vnode, %struct.vnode* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 4
  %306 = load %struct.vnode*, %struct.vnode** %8, align 8
  %307 = call i32 @vnode_unlock(%struct.vnode* %306)
  br label %308

308:                                              ; preds = %289, %274
  %309 = load %struct.mount*, %struct.mount** %5, align 8
  %310 = call i32 @mount_lock(%struct.mount* %309)
  br label %60

311:                                              ; preds = %255
  %312 = load %struct.vnode*, %struct.vnode** %8, align 8
  %313 = call i32 @vnode_unlock(%struct.vnode* %312)
  %314 = load %struct.mount*, %struct.mount** %5, align 8
  %315 = call i32 @mount_lock(%struct.mount* %314)
  %316 = load i32, i32* %9, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %9, align 4
  br label %60

318:                                              ; preds = %60
  %319 = load i32, i32* %9, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %332

321:                                              ; preds = %318
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* @FORCECLOSE, align 4
  %324 = and i32 %322, %323
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %332

326:                                              ; preds = %321
  %327 = load i32, i32* %10, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %326
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %330 = load %struct.mount*, %struct.mount** %5, align 8
  %331 = call i64 @vnode_iterate_reloadq(%struct.mount* %330)
  br label %46

332:                                              ; preds = %326, %321, %318
  %333 = load %struct.mount*, %struct.mount** %5, align 8
  %334 = call i64 @vnode_iterate_reloadq(%struct.mount* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %346

336:                                              ; preds = %332
  %337 = load i32, i32* %9, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %336
  %340 = load i32, i32* %7, align 4
  %341 = load i32, i32* @FORCECLOSE, align 4
  %342 = and i32 %340, %341
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %345, label %344

344:                                              ; preds = %339, %336
  br label %46

345:                                              ; preds = %339
  br label %346

346:                                              ; preds = %345, %332
  %347 = load %struct.mount*, %struct.mount** %5, align 8
  %348 = call i32 @vnode_iterate_clear(%struct.mount* %347)
  %349 = load %struct.mount*, %struct.mount** %5, align 8
  %350 = call i32 @mount_unlock(%struct.mount* %349)
  %351 = load %struct.mount*, %struct.mount** %5, align 8
  %352 = call i32 @mount_iterate_unlock(%struct.mount* %351)
  %353 = load i32, i32* %9, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %362

355:                                              ; preds = %346
  %356 = load i32, i32* %7, align 4
  %357 = load i32, i32* @FORCECLOSE, align 4
  %358 = and i32 %356, %357
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %355
  %361 = load i32, i32* @EBUSY, align 4
  store i32 %361, i32* %4, align 4
  br label %363

362:                                              ; preds = %355, %346
  store i32 0, i32* %4, align 4
  br label %363

363:                                              ; preds = %362, %360, %51, %36
  %364 = load i32, i32* %4, align 4
  ret i32 %364
}

declare dso_local i32 @mount_iterate_lock(%struct.mount*) #1

declare dso_local i32 @mount_lock(%struct.mount*) #1

declare dso_local i32 @vnode_iterate_setup(%struct.mount*) #1

declare dso_local i64 @vnode_umount_preflight(%struct.mount*, %struct.vnode*, i32) #1

declare dso_local i32 @vnode_iterate_clear(%struct.mount*) #1

declare dso_local i32 @mount_unlock(%struct.mount*) #1

declare dso_local i32 @mount_iterate_unlock(%struct.mount*) #1

declare dso_local i32 @vnode_iterate_prepare(%struct.mount*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.vnode* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.vnode*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.vnode*, i32) #1

declare dso_local i32 @vnode_lock_spin(%struct.vnode*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

declare dso_local i32 @vnode_lock_convert(%struct.vnode*) #1

declare dso_local i32 @vnode_reclaim_internal(%struct.vnode*, i32, i32, i32) #1

declare dso_local i32 @vnode_dropiocount(%struct.vnode*) #1

declare dso_local i32 @vnode_list_add(%struct.vnode*) #1

declare dso_local i32 @vnode_abort_advlocks(%struct.vnode*) #1

declare dso_local i32 @vclean(%struct.vnode*, i32) #1

declare dso_local i64 @vnode_iterate_reloadq(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
