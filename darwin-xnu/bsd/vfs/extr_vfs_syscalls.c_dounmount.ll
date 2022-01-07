; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_dounmount.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_dounmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32, %struct.mount* }
%struct.mount = type { i32, i32, i32, i32, {}*, %struct.TYPE_5__*, i32, %struct.vnode*, %struct.vnode*, i32, %struct.vnode* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@NULLVP = common dso_local global %struct.vnode* null, align 8
@MNT_LUNMOUNT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MNT_FORCE = common dso_local global i32 0, align 4
@MNT_LFORCE = common dso_local global i32 0, align 4
@MNTK_UNMOUNT = common dso_local global i32 0, align 4
@MNT_ASYNC = common dso_local global i32 0, align 4
@MNT_LNOSUB = common dso_local global i32 0, align 4
@mount_generation = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@kIOMountChangeUnmount = common dso_local global i32 0, align 4
@FORCECLOSE = common dso_local global i32 0, align 4
@SKIPSWAP = common dso_local global i32 0, align 4
@SKIPSYSTEM = common dso_local global i32 0, align 4
@SKIPROOT = common dso_local global i32 0, align 4
@vfs_nummntops = common dso_local global i32 0, align 4
@VFC_VFSLOCALARGS = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@VMOUNT = common dso_local global i32 0, align 4
@VQ_UNMOUNT = common dso_local global i32 0, align 4
@MNT_LDEAD = common dso_local global i32 0, align 4
@MNT_LWAIT = common dso_local global i32 0, align 4
@NOTE_WRITE = common dso_local global i32 0, align 4
@MNT_ROOTFS = common dso_local global i32 0, align 4
@M_MOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"dounmount: no coveredvp\00", align 1
@MNT_NOBLOCK = common dso_local global i32 0, align 4
@P_NOREMOTEHANG = common dso_local global i32 0, align 4
@VTC_RELEASE = common dso_local global i32 0, align 4
@VTC_REPLACE = common dso_local global i32 0, align 4
@kernproc = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dounmount(%struct.mount* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.vnode*, align 8
  %16 = alloca %struct.vnode*, align 8
  store %struct.mount* %0, %struct.mount** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.vnode* null, %struct.vnode** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %17, %struct.vnode** %15, align 8
  %18 = load %struct.mount*, %struct.mount** %6, align 8
  %19 = call i32 @mount_lock(%struct.mount* %18)
  %20 = load %struct.mount*, %struct.mount** %6, align 8
  %21 = getelementptr inbounds %struct.mount, %struct.mount* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MNT_LUNMOUNT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.mount*, %struct.mount** %6, align 8
  %31 = call i32 @mount_drop(%struct.mount* %30, i32 1)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.mount*, %struct.mount** %6, align 8
  %34 = call i32 @mount_unlock(%struct.mount* %33)
  %35 = load i32, i32* @EBUSY, align 4
  store i32 %35, i32* %5, align 4
  br label %421

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @MNT_FORCE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  store i32 1, i32* %13, align 4
  %42 = load i32, i32* @MNT_LFORCE, align 4
  %43 = load %struct.mount*, %struct.mount** %6, align 8
  %44 = getelementptr inbounds %struct.mount, %struct.mount* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %36
  %48 = load i32, i32* @MNTK_UNMOUNT, align 4
  %49 = load %struct.mount*, %struct.mount** %6, align 8
  %50 = getelementptr inbounds %struct.mount, %struct.mount* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* @MNT_LUNMOUNT, align 4
  %54 = load %struct.mount*, %struct.mount** %6, align 8
  %55 = getelementptr inbounds %struct.mount, %struct.mount* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @MNT_ASYNC, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.mount*, %struct.mount** %6, align 8
  %61 = getelementptr inbounds %struct.mount, %struct.mount* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %65 = load %struct.mount*, %struct.mount** %6, align 8
  %66 = getelementptr inbounds %struct.mount, %struct.mount* %65, i32 0, i32 10
  store %struct.vnode* %64, %struct.vnode** %66, align 8
  %67 = load %struct.mount*, %struct.mount** %6, align 8
  %68 = call i32 @mount_unlock(%struct.mount* %67)
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %47
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @MNT_LNOSUB, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.mount*, %struct.mount** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @MNT_LNOSUB, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @dounmount_submounts(%struct.mount* %77, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %71, %47
  %84 = call i32 (...) @name_cache_lock()
  %85 = load i32, i32* @mount_generation, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @mount_generation, align 4
  %87 = call i32 (...) @name_cache_unlock()
  %88 = load %struct.mount*, %struct.mount** %6, align 8
  %89 = getelementptr inbounds %struct.mount, %struct.mount* %88, i32 0, i32 2
  %90 = call i32 @lck_rw_lock_exclusive(i32* %89)
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = load %struct.mount*, %struct.mount** %6, align 8
  %95 = call i32 @mount_drop(%struct.mount* %94, i32 0)
  br label %96

96:                                               ; preds = %93, %83
  store i32 0, i32* %11, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %138

99:                                               ; preds = %96
  %100 = load %struct.mount*, %struct.mount** %6, align 8
  %101 = call i32 @ubc_umount(%struct.mount* %100)
  %102 = load %struct.mount*, %struct.mount** %6, align 8
  %103 = getelementptr inbounds %struct.mount, %struct.mount* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MNT_RDONLY, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %137

108:                                              ; preds = %99
  %109 = load %struct.mount*, %struct.mount** %6, align 8
  %110 = load i32, i32* @MNT_WAIT, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @VFS_SYNC(%struct.mount* %109, i32 %110, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %108
  %116 = load %struct.mount*, %struct.mount** %6, align 8
  %117 = call i32 @mount_lock(%struct.mount* %116)
  %118 = load i32, i32* @MNTK_UNMOUNT, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.mount*, %struct.mount** %6, align 8
  %121 = getelementptr inbounds %struct.mount, %struct.mount* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* @MNT_LUNMOUNT, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.mount*, %struct.mount** %6, align 8
  %127 = getelementptr inbounds %struct.mount, %struct.mount* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* @MNT_LFORCE, align 4
  %131 = xor i32 %130, -1
  %132 = load %struct.mount*, %struct.mount** %6, align 8
  %133 = getelementptr inbounds %struct.mount, %struct.mount* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %340

136:                                              ; preds = %108
  br label %137

137:                                              ; preds = %136, %99
  br label %138

138:                                              ; preds = %137, %96
  %139 = load %struct.mount*, %struct.mount** %6, align 8
  %140 = call i32 @disk_conditioner_unmount(%struct.mount* %139)
  %141 = load %struct.mount*, %struct.mount** %6, align 8
  %142 = load i32, i32* @kIOMountChangeUnmount, align 4
  %143 = call i32 @IOBSDMountChange(%struct.mount* %141, i32 %142)
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load i32, i32* @FORCECLOSE, align 4
  %148 = load i32, i32* %14, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %146, %138
  %151 = load %struct.mount*, %struct.mount** %6, align 8
  %152 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %153 = load i32, i32* @SKIPSWAP, align 4
  %154 = load i32, i32* @SKIPSYSTEM, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @SKIPROOT, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* %14, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @vflush(%struct.mount* %151, %struct.vnode* %152, i32 %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %13, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %187

163:                                              ; preds = %150
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %187

166:                                              ; preds = %163
  %167 = load %struct.mount*, %struct.mount** %6, align 8
  %168 = call i32 @mount_lock(%struct.mount* %167)
  %169 = load i32, i32* @MNTK_UNMOUNT, align 4
  %170 = xor i32 %169, -1
  %171 = load %struct.mount*, %struct.mount** %6, align 8
  %172 = getelementptr inbounds %struct.mount, %struct.mount* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load i32, i32* @MNT_LUNMOUNT, align 4
  %176 = xor i32 %175, -1
  %177 = load %struct.mount*, %struct.mount** %6, align 8
  %178 = getelementptr inbounds %struct.mount, %struct.mount* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %179, %176
  store i32 %180, i32* %178, align 8
  %181 = load i32, i32* @MNT_LFORCE, align 4
  %182 = xor i32 %181, -1
  %183 = load %struct.mount*, %struct.mount** %6, align 8
  %184 = getelementptr inbounds %struct.mount, %struct.mount* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %185, %182
  store i32 %186, i32* %184, align 8
  br label %340

187:                                              ; preds = %163, %150
  %188 = load %struct.mount*, %struct.mount** %6, align 8
  %189 = call i32 @mount_iterdrain(%struct.mount* %188)
  %190 = load %struct.mount*, %struct.mount** %6, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @VFS_UNMOUNT(%struct.mount* %190, i32 %191, i32 %192)
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %219

196:                                              ; preds = %187
  %197 = load %struct.mount*, %struct.mount** %6, align 8
  %198 = call i32 @mount_iterreset(%struct.mount* %197)
  %199 = load %struct.mount*, %struct.mount** %6, align 8
  %200 = call i32 @mount_lock(%struct.mount* %199)
  %201 = load i32, i32* @MNTK_UNMOUNT, align 4
  %202 = xor i32 %201, -1
  %203 = load %struct.mount*, %struct.mount** %6, align 8
  %204 = getelementptr inbounds %struct.mount, %struct.mount* %203, i32 0, i32 9
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, %202
  store i32 %206, i32* %204, align 8
  %207 = load i32, i32* @MNT_LUNMOUNT, align 4
  %208 = xor i32 %207, -1
  %209 = load %struct.mount*, %struct.mount** %6, align 8
  %210 = getelementptr inbounds %struct.mount, %struct.mount* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, %208
  store i32 %212, i32* %210, align 8
  %213 = load i32, i32* @MNT_LFORCE, align 4
  %214 = xor i32 %213, -1
  %215 = load %struct.mount*, %struct.mount** %6, align 8
  %216 = getelementptr inbounds %struct.mount, %struct.mount* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = and i32 %217, %214
  store i32 %218, i32* %216, align 8
  br label %340

219:                                              ; preds = %187
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %219
  %223 = call i32 @OSAddAtomic(i32 1, i32* @vfs_nummntops)
  br label %224

224:                                              ; preds = %222, %219
  %225 = load %struct.mount*, %struct.mount** %6, align 8
  %226 = getelementptr inbounds %struct.mount, %struct.mount* %225, i32 0, i32 8
  %227 = load %struct.vnode*, %struct.vnode** %226, align 8
  %228 = icmp ne %struct.vnode* %227, null
  br i1 %228, label %229, label %267

229:                                              ; preds = %224
  %230 = load %struct.mount*, %struct.mount** %6, align 8
  %231 = getelementptr inbounds %struct.mount, %struct.mount* %230, i32 0, i32 5
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @VFC_VFSLOCALARGS, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %267

238:                                              ; preds = %229
  %239 = load %struct.mount*, %struct.mount** %6, align 8
  %240 = getelementptr inbounds %struct.mount, %struct.mount* %239, i32 0, i32 8
  %241 = load %struct.vnode*, %struct.vnode** %240, align 8
  store %struct.vnode* %241, %struct.vnode** %15, align 8
  %242 = load %struct.vnode*, %struct.vnode** %15, align 8
  %243 = call i32 @vnode_getalways(%struct.vnode* %242)
  %244 = load %struct.vnode*, %struct.vnode** %15, align 8
  %245 = call i32 @vnode_rele(%struct.vnode* %244)
  %246 = load %struct.vnode*, %struct.vnode** %15, align 8
  %247 = load %struct.mount*, %struct.mount** %6, align 8
  %248 = getelementptr inbounds %struct.mount, %struct.mount* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @MNT_RDONLY, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %238
  %254 = load i32, i32* @FREAD, align 4
  br label %259

255:                                              ; preds = %238
  %256 = load i32, i32* @FREAD, align 4
  %257 = load i32, i32* @FWRITE, align 4
  %258 = or i32 %256, %257
  br label %259

259:                                              ; preds = %255, %253
  %260 = phi i32 [ %254, %253 ], [ %258, %255 ]
  %261 = load i32, i32* %9, align 4
  %262 = call i32 @VNOP_CLOSE(%struct.vnode* %246, i32 %260, i32 %261)
  %263 = load %struct.vnode*, %struct.vnode** %15, align 8
  %264 = call i32 @vnode_clearmountedon(%struct.vnode* %263)
  %265 = load %struct.vnode*, %struct.vnode** %15, align 8
  %266 = call i32 @vnode_put(%struct.vnode* %265)
  br label %267

267:                                              ; preds = %259, %229, %224
  %268 = load %struct.mount*, %struct.mount** %6, align 8
  %269 = getelementptr inbounds %struct.mount, %struct.mount* %268, i32 0, i32 2
  %270 = call i32 @lck_rw_done(i32* %269)
  %271 = load %struct.mount*, %struct.mount** %6, align 8
  %272 = call i32 @mount_list_remove(%struct.mount* %271)
  %273 = load %struct.mount*, %struct.mount** %6, align 8
  %274 = getelementptr inbounds %struct.mount, %struct.mount* %273, i32 0, i32 2
  %275 = call i32 @lck_rw_lock_exclusive(i32* %274)
  %276 = load %struct.mount*, %struct.mount** %6, align 8
  %277 = getelementptr inbounds %struct.mount, %struct.mount* %276, i32 0, i32 7
  %278 = load %struct.vnode*, %struct.vnode** %277, align 8
  store %struct.vnode* %278, %struct.vnode** %10, align 8
  %279 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %280 = icmp ne %struct.vnode* %278, %279
  br i1 %280, label %281, label %301

281:                                              ; preds = %267
  %282 = load %struct.vnode*, %struct.vnode** %10, align 8
  %283 = call i32 @vnode_getalways(%struct.vnode* %282)
  %284 = load %struct.vnode*, %struct.vnode** %10, align 8
  %285 = call i32 @vnode_lock_spin(%struct.vnode* %284)
  %286 = load %struct.mount*, %struct.mount** %6, align 8
  %287 = getelementptr inbounds %struct.mount, %struct.mount* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 8
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %287, align 8
  %290 = load %struct.vnode*, %struct.vnode** %10, align 8
  %291 = getelementptr inbounds %struct.vnode, %struct.vnode* %290, i32 0, i32 2
  store %struct.mount* null, %struct.mount** %291, align 8
  %292 = load %struct.vnode*, %struct.vnode** %10, align 8
  %293 = getelementptr inbounds %struct.vnode, %struct.vnode* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @VMOUNT, align 4
  %296 = call i32 @CLR(i32 %294, i32 %295)
  %297 = load %struct.vnode*, %struct.vnode** %10, align 8
  %298 = call i32 @vnode_unlock(%struct.vnode* %297)
  %299 = load %struct.vnode*, %struct.vnode** %10, align 8
  %300 = call i32 @vnode_put(%struct.vnode* %299)
  br label %301

301:                                              ; preds = %281, %267
  %302 = call i32 (...) @mount_list_lock()
  %303 = load %struct.mount*, %struct.mount** %6, align 8
  %304 = getelementptr inbounds %struct.mount, %struct.mount* %303, i32 0, i32 5
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = add nsw i32 %307, -1
  store i32 %308, i32* %306, align 4
  %309 = call i32 (...) @mount_list_unlock()
  %310 = load %struct.mount*, %struct.mount** %6, align 8
  %311 = call i32 @cache_purgevfs(%struct.mount* %310)
  %312 = load i32, i32* @VQ_UNMOUNT, align 4
  %313 = call i32 @vfs_event_signal(i32* null, i32 %312, i64 0)
  %314 = load %struct.mount*, %struct.mount** %6, align 8
  %315 = call i32 @mount_lock(%struct.mount* %314)
  %316 = load i32, i32* @MNT_LDEAD, align 4
  %317 = load %struct.mount*, %struct.mount** %6, align 8
  %318 = getelementptr inbounds %struct.mount, %struct.mount* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = or i32 %319, %316
  store i32 %320, i32* %318, align 8
  %321 = load %struct.mount*, %struct.mount** %6, align 8
  %322 = getelementptr inbounds %struct.mount, %struct.mount* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @MNT_LWAIT, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %337

327:                                              ; preds = %301
  %328 = load i32, i32* @MNT_LWAIT, align 4
  %329 = xor i32 %328, -1
  %330 = load %struct.mount*, %struct.mount** %6, align 8
  %331 = getelementptr inbounds %struct.mount, %struct.mount* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = and i32 %332, %329
  store i32 %333, i32* %331, align 8
  %334 = load %struct.mount*, %struct.mount** %6, align 8
  %335 = ptrtoint %struct.mount* %334 to i32
  %336 = call i32 @wakeup(i32 %335)
  br label %337

337:                                              ; preds = %327, %301
  %338 = load %struct.mount*, %struct.mount** %6, align 8
  %339 = call i32 @mount_refdrain(%struct.mount* %338)
  br label %340

340:                                              ; preds = %337, %196, %166, %115
  %341 = load %struct.mount*, %struct.mount** %6, align 8
  %342 = getelementptr inbounds %struct.mount, %struct.mount* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @MNT_LWAIT, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %354

347:                                              ; preds = %340
  %348 = load i32, i32* @MNT_LWAIT, align 4
  %349 = xor i32 %348, -1
  %350 = load %struct.mount*, %struct.mount** %6, align 8
  %351 = getelementptr inbounds %struct.mount, %struct.mount* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = and i32 %352, %349
  store i32 %353, i32* %351, align 8
  store i32 1, i32* %12, align 4
  br label %354

354:                                              ; preds = %347, %340
  %355 = load %struct.mount*, %struct.mount** %6, align 8
  %356 = call i32 @mount_unlock(%struct.mount* %355)
  %357 = load %struct.mount*, %struct.mount** %6, align 8
  %358 = getelementptr inbounds %struct.mount, %struct.mount* %357, i32 0, i32 2
  %359 = call i32 @lck_rw_done(i32* %358)
  %360 = load i32, i32* %12, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %354
  %363 = load %struct.mount*, %struct.mount** %6, align 8
  %364 = ptrtoint %struct.mount* %363 to i32
  %365 = call i32 @wakeup(i32 %364)
  br label %366

366:                                              ; preds = %362, %354
  %367 = load i32, i32* %11, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %419, label %369

369:                                              ; preds = %366
  %370 = load %struct.vnode*, %struct.vnode** %10, align 8
  %371 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %372 = icmp ne %struct.vnode* %370, %371
  br i1 %372, label %373, label %401

373:                                              ; preds = %369
  %374 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %374, %struct.vnode** %16, align 8
  %375 = load %struct.vnode*, %struct.vnode** %10, align 8
  %376 = call i32 @vnode_getalways(%struct.vnode* %375)
  %377 = load %struct.mount*, %struct.mount** %6, align 8
  %378 = load %struct.vnode*, %struct.vnode** %10, align 8
  %379 = call i32 @mount_dropcrossref(%struct.mount* %377, %struct.vnode* %378, i32 0)
  %380 = load %struct.vnode*, %struct.vnode** %10, align 8
  %381 = call i32 @vnode_isrecycled(%struct.vnode* %380)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %386, label %383

383:                                              ; preds = %373
  %384 = load %struct.vnode*, %struct.vnode** %10, align 8
  %385 = call %struct.vnode* @vnode_getparent(%struct.vnode* %384)
  store %struct.vnode* %385, %struct.vnode** %16, align 8
  br label %386

386:                                              ; preds = %383, %373
  %387 = load %struct.vnode*, %struct.vnode** %10, align 8
  %388 = call i32 @vnode_rele(%struct.vnode* %387)
  %389 = load %struct.vnode*, %struct.vnode** %10, align 8
  %390 = call i32 @vnode_put(%struct.vnode* %389)
  %391 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %391, %struct.vnode** %10, align 8
  %392 = load %struct.vnode*, %struct.vnode** %16, align 8
  %393 = icmp ne %struct.vnode* %392, null
  br i1 %393, label %394, label %400

394:                                              ; preds = %386
  %395 = load %struct.vnode*, %struct.vnode** %16, align 8
  %396 = load i32, i32* @NOTE_WRITE, align 4
  %397 = call i32 @lock_vnode_and_post(%struct.vnode* %395, i32 %396)
  %398 = load %struct.vnode*, %struct.vnode** %16, align 8
  %399 = call i32 @vnode_put(%struct.vnode* %398)
  br label %400

400:                                              ; preds = %394, %386
  br label %418

401:                                              ; preds = %369
  %402 = load %struct.mount*, %struct.mount** %6, align 8
  %403 = getelementptr inbounds %struct.mount, %struct.mount* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* @MNT_ROOTFS, align 4
  %406 = and i32 %404, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %415

408:                                              ; preds = %401
  %409 = load %struct.mount*, %struct.mount** %6, align 8
  %410 = call i32 @mount_lock_destroy(%struct.mount* %409)
  %411 = load %struct.mount*, %struct.mount** %6, align 8
  %412 = ptrtoint %struct.mount* %411 to i32
  %413 = load i32, i32* @M_MOUNT, align 4
  %414 = call i32 @FREE_ZONE(i32 %412, i32 72, i32 %413)
  br label %417

415:                                              ; preds = %401
  %416 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %417

417:                                              ; preds = %415, %408
  br label %418

418:                                              ; preds = %417, %400
  br label %419

419:                                              ; preds = %418, %366
  %420 = load i32, i32* %11, align 4
  store i32 %420, i32* %5, align 4
  br label %421

421:                                              ; preds = %419, %32
  %422 = load i32, i32* %5, align 4
  ret i32 %422
}

declare dso_local i32 @mount_lock(%struct.mount*) #1

declare dso_local i32 @mount_drop(%struct.mount*, i32) #1

declare dso_local i32 @mount_unlock(%struct.mount*) #1

declare dso_local i32 @dounmount_submounts(%struct.mount*, i32, i32) #1

declare dso_local i32 @name_cache_lock(...) #1

declare dso_local i32 @name_cache_unlock(...) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local i32 @ubc_umount(%struct.mount*) #1

declare dso_local i32 @VFS_SYNC(%struct.mount*, i32, i32) #1

declare dso_local i32 @disk_conditioner_unmount(%struct.mount*) #1

declare dso_local i32 @IOBSDMountChange(%struct.mount*, i32) #1

declare dso_local i32 @vflush(%struct.mount*, %struct.vnode*, i32) #1

declare dso_local i32 @mount_iterdrain(%struct.mount*) #1

declare dso_local i32 @VFS_UNMOUNT(%struct.mount*, i32, i32) #1

declare dso_local i32 @mount_iterreset(%struct.mount*) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @vnode_getalways(%struct.vnode*) #1

declare dso_local i32 @vnode_rele(%struct.vnode*) #1

declare dso_local i32 @VNOP_CLOSE(%struct.vnode*, i32, i32) #1

declare dso_local i32 @vnode_clearmountedon(%struct.vnode*) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

declare dso_local i32 @mount_list_remove(%struct.mount*) #1

declare dso_local i32 @vnode_lock_spin(%struct.vnode*) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

declare dso_local i32 @mount_list_lock(...) #1

declare dso_local i32 @mount_list_unlock(...) #1

declare dso_local i32 @cache_purgevfs(%struct.mount*) #1

declare dso_local i32 @vfs_event_signal(i32*, i32, i64) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @mount_refdrain(%struct.mount*) #1

declare dso_local i32 @mount_dropcrossref(%struct.mount*, %struct.vnode*, i32) #1

declare dso_local i32 @vnode_isrecycled(%struct.vnode*) #1

declare dso_local %struct.vnode* @vnode_getparent(%struct.vnode*) #1

declare dso_local i32 @lock_vnode_and_post(%struct.vnode*, i32) #1

declare dso_local i32 @mount_lock_destroy(%struct.mount*) #1

declare dso_local i32 @FREE_ZONE(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
