; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_getattr_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_getattr_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, %struct.TYPE_26__, i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.nfs_vattr = type { i32*, i32 }
%struct.nfsmount = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 (%struct.TYPE_28__*, i32*, i32, i32)*, i32 (%struct.TYPE_28__*, i32*, i32, i32, i32, i32, %struct.nfs_vattr*, i32*)* }

@__const.nfs_getattr_internal.ts = private unnamed_addr constant %struct.timespec { i32 2, i32 0 }, align 4
@ENXIO = common dso_local global i32 0, align 4
@NACC = common dso_local global i32 0, align 4
@NUPD = common dso_local global i32 0, align 4
@NCHG = common dso_local global i32 0, align 4
@NUPDATESIZE = common dso_local global i32 0, align 4
@NGA_UNCACHED = common dso_local global i32 0, align 4
@NGA_MONITOR = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@N_DELEG_MASK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NGETATTRINPROG = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@NGETATTRWANT = common dso_local global i32 0, align 4
@PZERO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"nfsgetattrwant\00", align 1
@NGA_SOFT = common dso_local global i32 0, align 4
@NGA_ACL = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i32 0, align 4
@nfs_access_for_getattr = common dso_local global i64 0, align 8
@nfs_access_cache_timeout = common dso_local global i64 0, align 8
@NFS_ACCESS_ALL = common dso_local global i32 0, align 4
@R_SOFT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@NNEGNCENTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Purge directory 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalidate directory 0x%llx\0A\00", align 1
@V_SAVE = common dso_local global i32 0, align 4
@NFS_FATTR_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_getattr_internal(%struct.TYPE_28__* %0, %struct.nfs_vattr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.nfs_vattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfsmount*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfs_vattr, align 8
  %17 = alloca %struct.timespec, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store %struct.nfs_vattr* %1, %struct.nfs_vattr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = bitcast %struct.timespec* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.timespec* @__const.nfs_getattr_internal.ts to i8*), i64 8, i1 false)
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @FSDBG_TOP(i32 513, i32 %26, %struct.TYPE_28__* %27, i32 %31, i32 %34)
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %37 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_28__* %36)
  store %struct.nfsmount* %37, %struct.nfsmount** %10, align 8
  %38 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %39 = call i64 @nfs_mount_gone(%struct.nfsmount* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %5, align 4
  br label %524

43:                                               ; preds = %4
  %44 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %45 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %12, align 4
  %47 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %48 = icmp ne %struct.nfs_vattr* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store %struct.nfs_vattr* %16, %struct.nfs_vattr** %7, align 8
  br label %50

50:                                               ; preds = %49, %43
  %51 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %52 = call i32 @NVATTR_INIT(%struct.nfs_vattr* %51)
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NACC, align 4
  %57 = load i32, i32* @NUPD, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %50
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %63 = call i32 @nfs_node_lock_force(%struct.TYPE_28__* %62)
  %64 = load i32, i32* @NCHG, align 4
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %70 = call i32 @nfs_node_unlock(%struct.TYPE_28__* %69)
  br label %71

71:                                               ; preds = %61, %50
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NUPDATESIZE, align 4
  %76 = call i32 @ISSET(i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %80 = call i32 @nfs_data_update_size(%struct.TYPE_28__* %79, i32 0)
  br label %81

81:                                               ; preds = %78, %71
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %83 = call i32 @nfs_node_lock(%struct.TYPE_28__* %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @nfsmout_if(i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @NGA_UNCACHED, align 4
  %88 = load i32, i32* @NGA_MONITOR, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %81
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @NFS_VER4, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %163

96:                                               ; preds = %92
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @N_DELEG_MASK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %163

103:                                              ; preds = %96, %81
  br label %104

104:                                              ; preds = %103, %156
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %106 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @nfs_getattrcache(%struct.TYPE_28__* %105, %struct.nfs_vattr* %106, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @ENOENT, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111, %104
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %117 = call i32 @nfs_node_unlock(%struct.TYPE_28__* %116)
  br label %354

118:                                              ; preds = %111
  store i32 0, i32* %11, align 4
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @NGETATTRINPROG, align 4
  %123 = call i32 @ISSET(i32 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %118
  br label %157

126:                                              ; preds = %118
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @NGA_MONITOR, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32, i32* @EINPROGRESS, align 4
  store i32 %132, i32* %11, align 4
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %134 = call i32 @nfs_node_unlock(%struct.TYPE_28__* %133)
  br label %354

135:                                              ; preds = %126
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @NGETATTRWANT, align 4
  %140 = call i32 @SET(i32 %138, i32 %139)
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 8
  %144 = load i64, i64* @PZERO, align 8
  %145 = sub nsw i64 %144, 1
  %146 = call i32 @msleep(%struct.TYPE_28__* %141, i32* %143, i64 %145, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.timespec* %17)
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %148 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_28__* %147)
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @vfs_context_thread(i32 %149)
  %151 = call i32 @nfs_sigintr(%struct.nfsmount* %148, i32* null, i32 %150, i32 0)
  store i32 %151, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %135
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %155 = call i32 @nfs_node_unlock(%struct.TYPE_28__* %154)
  br label %354

156:                                              ; preds = %135
  br label %104

157:                                              ; preds = %125
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @NGETATTRINPROG, align 4
  %162 = call i32 @SET(i32 %160, i32 %161)
  store i32 1, i32* %13, align 4
  br label %185

163:                                              ; preds = %96, %92
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @NGETATTRINPROG, align 4
  %168 = call i32 @ISSET(i32 %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %163
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @NGETATTRINPROG, align 4
  %175 = call i32 @SET(i32 %173, i32 %174)
  store i32 1, i32* %13, align 4
  br label %184

176:                                              ; preds = %163
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @NGA_MONITOR, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = load i32, i32* @EINPROGRESS, align 4
  store i32 %182, i32* %11, align 4
  br label %183

183:                                              ; preds = %181, %176
  br label %184

184:                                              ; preds = %183, %170
  br label %185

185:                                              ; preds = %184, %157
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %187 = call i32 @nfs_node_unlock(%struct.TYPE_28__* %186)
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %189 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_28__* %188)
  store %struct.nfsmount* %189, %struct.nfsmount** %10, align 8
  %190 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %191 = call i64 @nfs_mount_gone(%struct.nfsmount* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %185
  %194 = load i32, i32* @ENXIO, align 4
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %193, %185
  %196 = load i32, i32* %11, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  br label %354

199:                                              ; preds = %195
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %201 = call i64 @NATTRVALID(%struct.TYPE_28__* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %199
  %204 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %205 = call i64 @nfs_use_cache(%struct.nfsmount* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = load i32, i32* @NGA_SOFT, align 4
  %209 = load i32, i32* %9, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %9, align 4
  br label %211

211:                                              ; preds = %207, %203, %199
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* @NGA_ACL, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %276, label %216

216:                                              ; preds = %211
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* @NFS_VER2, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %276

220:                                              ; preds = %216
  %221 = load i64, i64* @nfs_access_for_getattr, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %276

223:                                              ; preds = %220
  %224 = load i64, i64* @nfs_access_cache_timeout, align 8
  %225 = icmp sgt i64 %224, 0
  br i1 %225, label %226, label %276

226:                                              ; preds = %223
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %228 = call i64 @nfs_attrcachetimeout(%struct.TYPE_28__* %227)
  %229 = icmp sgt i64 %228, 0
  br i1 %229, label %230, label %275

230:                                              ; preds = %226
  %231 = load i32, i32* @NFS_ACCESS_ALL, align 4
  store i32 %231, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* @NGA_SOFT, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %230
  %237 = load i32, i32* @R_SOFT, align 4
  %238 = load i32, i32* %20, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %20, align 4
  br label %240

240:                                              ; preds = %236, %230
  %241 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %242 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %241, i32 0, i32 1
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %243, i32 0, i32 0
  %245 = load i32 (%struct.TYPE_28__*, i32*, i32, i32)*, i32 (%struct.TYPE_28__*, i32*, i32, i32)** %244, align 8
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %247 = load i32, i32* %20, align 4
  %248 = load i32, i32* %8, align 4
  %249 = call i32 %245(%struct.TYPE_28__* %246, i32* %19, i32 %247, i32 %248)
  store i32 %249, i32* %11, align 4
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* @ETIMEDOUT, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %240
  br label %305

254:                                              ; preds = %240
  %255 = load i32, i32* %11, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  br label %354

258:                                              ; preds = %254
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %260 = call i32 @nfs_node_lock_force(%struct.TYPE_28__* %259)
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %262 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %263 = load i32, i32* %9, align 4
  %264 = call i32 @nfs_getattrcache(%struct.TYPE_28__* %261, %struct.nfs_vattr* %262, i32 %263)
  store i32 %264, i32* %11, align 4
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %266 = call i32 @nfs_node_unlock(%struct.TYPE_28__* %265)
  %267 = load i32, i32* %11, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %258
  %270 = load i32, i32* %11, align 4
  %271 = load i32, i32* @ENOENT, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %269, %258
  br label %354

274:                                              ; preds = %269
  store i32 0, i32* %11, align 4
  br label %275

275:                                              ; preds = %274, %226
  br label %276

276:                                              ; preds = %275, %223, %220, %216, %211
  store i32 0, i32* %15, align 4
  br label %277

277:                                              ; preds = %351, %276
  %278 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %279 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %278, i32 0, i32 1
  %280 = load %struct.TYPE_27__*, %struct.TYPE_27__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %280, i32 0, i32 1
  %282 = load i32 (%struct.TYPE_28__*, i32*, i32, i32, i32, i32, %struct.nfs_vattr*, i32*)*, i32 (%struct.TYPE_28__*, i32*, i32, i32, i32, i32, %struct.nfs_vattr*, i32*)** %281, align 8
  %283 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i32 0, i32 7
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %287, i32 0, i32 6
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* %8, align 4
  %292 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %293 = call i32 %282(%struct.TYPE_28__* %283, i32* null, i32 %286, i32 %289, i32 %290, i32 %291, %struct.nfs_vattr* %292, i32* %18)
  store i32 %293, i32* %11, align 4
  %294 = load i32, i32* %11, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %304, label %296

296:                                              ; preds = %277
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %298 = call i32 @nfs_node_lock_force(%struct.TYPE_28__* %297)
  %299 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %300 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %301 = call i32 @nfs_loadattrcache(%struct.TYPE_28__* %299, %struct.nfs_vattr* %300, i32* %18, i32 0)
  store i32 %301, i32* %11, align 4
  %302 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %303 = call i32 @nfs_node_unlock(%struct.TYPE_28__* %302)
  br label %304

304:                                              ; preds = %296, %277
  br label %305

305:                                              ; preds = %304, %253
  %306 = load i32, i32* %9, align 4
  %307 = load i32, i32* @NGA_SOFT, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %333

310:                                              ; preds = %305
  %311 = load i32, i32* %11, align 4
  %312 = load i32, i32* @ETIMEDOUT, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %333

314:                                              ; preds = %310
  %315 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %316 = call i32 @nfs_node_lock_force(%struct.TYPE_28__* %315)
  %317 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %318 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %319 = load i32, i32* %9, align 4
  %320 = call i32 @nfs_getattrcache(%struct.TYPE_28__* %317, %struct.nfs_vattr* %318, i32 %319)
  store i32 %320, i32* %11, align 4
  %321 = load i32, i32* %11, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %314
  %324 = load i32, i32* %11, align 4
  %325 = load i32, i32* @ENOENT, align 4
  %326 = icmp ne i32 %324, %325
  br i1 %326, label %327, label %330

327:                                              ; preds = %323, %314
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %329 = call i32 @nfs_node_unlock(%struct.TYPE_28__* %328)
  br label %354

330:                                              ; preds = %323
  %331 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %332 = call i32 @nfs_node_unlock(%struct.TYPE_28__* %331)
  br label %333

333:                                              ; preds = %330, %310, %305
  %334 = load i32, i32* %11, align 4
  %335 = call i32 @nfsmout_if(i32 %334)
  %336 = load i32, i32* %18, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %353, label %338

338:                                              ; preds = %333
  %339 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %340 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = ashr i32 %342, 32
  %344 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 4
  %347 = call i32 (i32, i32, %struct.TYPE_28__*, i32, ...) @FSDBG(i32 513, i32 -1, %struct.TYPE_28__* %339, i32 %343, i32 %346)
  %348 = load i32, i32* %15, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %15, align 4
  %350 = icmp slt i32 %348, 20
  br i1 %350, label %351, label %352

351:                                              ; preds = %338
  br label %277

352:                                              ; preds = %338
  br label %353

353:                                              ; preds = %352, %333
  br label %354

354:                                              ; preds = %353, %327, %273, %257, %198, %153, %131, %115
  %355 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %356 = call i32 @nfs_node_lock_force(%struct.TYPE_28__* %355)
  %357 = load i32, i32* %13, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %372

359:                                              ; preds = %354
  %360 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @NGETATTRWANT, align 4
  %364 = call i32 @ISSET(i32 %362, i32 %363)
  store i32 %364, i32* %14, align 4
  %365 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @NGETATTRINPROG, align 4
  %369 = load i32, i32* @NGETATTRWANT, align 4
  %370 = or i32 %368, %369
  %371 = call i32 @CLR(i32 %367, i32 %370)
  br label %372

372:                                              ; preds = %359, %354
  %373 = load i32, i32* %11, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %471, label %375

375:                                              ; preds = %372
  %376 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %377 = call i32 @NFSTOV(%struct.TYPE_28__* %376)
  store i32 %377, i32* %21, align 4
  %378 = load i32, i32* %21, align 4
  %379 = call i32 @vnode_vtype(i32 %378)
  store i32 %379, i32* %22, align 4
  %380 = load i32, i32* %22, align 4
  %381 = load i32, i32* @VDIR, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %413

383:                                              ; preds = %375
  %384 = load i32, i32* %12, align 4
  %385 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %386 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %387 = call i64 @NFS_CHANGED_NC(i32 %384, %struct.TYPE_28__* %385, %struct.nfs_vattr* %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %413

389:                                              ; preds = %383
  %390 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %391 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %392 = call i32 (i32, i32, %struct.TYPE_28__*, i32, ...) @FSDBG(i32 513, i32 -1, %struct.TYPE_28__* %390, i32 0, %struct.TYPE_28__* %391)
  %393 = load i32, i32* @NNEGNCENTRIES, align 4
  %394 = xor i32 %393, -1
  %395 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = and i32 %397, %394
  store i32 %398, i32* %396, align 4
  %399 = load i32, i32* %21, align 4
  %400 = call i32 @cache_purge(i32 %399)
  %401 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %401, i32 0, i32 5
  %403 = load i32, i32* %402, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %402, align 4
  %405 = load i32, i32* %12, align 4
  %406 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %407 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %408 = call i32 @NFS_CHANGED_UPDATE_NC(i32 %405, %struct.TYPE_28__* %406, %struct.nfs_vattr* %407)
  %409 = load i32, i32* %21, align 4
  %410 = call i64 @VM_KERNEL_ADDRPERM(i32 %409)
  %411 = trunc i64 %410 to i32
  %412 = call i32 @NFS_VNOP_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %411)
  br label %413

413:                                              ; preds = %389, %383, %375
  %414 = load i32, i32* %12, align 4
  %415 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %416 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %417 = call i64 @NFS_CHANGED(i32 %414, %struct.TYPE_28__* %415, %struct.nfs_vattr* %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %461

419:                                              ; preds = %413
  %420 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %421 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %422 = call i32 (i32, i32, %struct.TYPE_28__*, i32, ...) @FSDBG(i32 513, i32 -1, %struct.TYPE_28__* %420, i32 -1, %struct.TYPE_28__* %421)
  %423 = load i32, i32* %22, align 4
  %424 = load i32, i32* @VDIR, align 4
  %425 = icmp eq i32 %423, %424
  br i1 %425, label %426, label %433

426:                                              ; preds = %419
  %427 = load i32, i32* %21, align 4
  %428 = call i64 @VM_KERNEL_ADDRPERM(i32 %427)
  %429 = trunc i64 %428 to i32
  %430 = call i32 @NFS_VNOP_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %429)
  %431 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %432 = call i32 @nfs_invaldir(%struct.TYPE_28__* %431)
  br label %433

433:                                              ; preds = %426, %419
  %434 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %435 = call i32 @nfs_node_unlock(%struct.TYPE_28__* %434)
  %436 = load i32, i32* %14, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %433
  %439 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %440 = call i32 @wakeup(%struct.TYPE_28__* %439)
  br label %441

441:                                              ; preds = %438, %433
  %442 = load i32, i32* %21, align 4
  %443 = load i32, i32* @V_SAVE, align 4
  %444 = load i32, i32* %8, align 4
  %445 = call i32 @nfs_vinvalbuf(i32 %442, i32 %443, i32 %444, i32 1)
  store i32 %445, i32* %11, align 4
  %446 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %447 = load i32, i32* %11, align 4
  %448 = call i32 (i32, i32, %struct.TYPE_28__*, i32, ...) @FSDBG(i32 513, i32 -1, %struct.TYPE_28__* %446, i32 -2, i32 %447)
  %449 = load i32, i32* %11, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %460, label %451

451:                                              ; preds = %441
  %452 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %453 = call i32 @nfs_node_lock_force(%struct.TYPE_28__* %452)
  %454 = load i32, i32* %12, align 4
  %455 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %456 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %457 = call i32 @NFS_CHANGED_UPDATE(i32 %454, %struct.TYPE_28__* %455, %struct.nfs_vattr* %456)
  %458 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %459 = call i32 @nfs_node_unlock(%struct.TYPE_28__* %458)
  br label %460

460:                                              ; preds = %451, %441
  br label %470

461:                                              ; preds = %413
  %462 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %463 = call i32 @nfs_node_unlock(%struct.TYPE_28__* %462)
  %464 = load i32, i32* %14, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %469

466:                                              ; preds = %461
  %467 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %468 = call i32 @wakeup(%struct.TYPE_28__* %467)
  br label %469

469:                                              ; preds = %466, %461
  br label %470

470:                                              ; preds = %469, %460
  br label %480

471:                                              ; preds = %372
  %472 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %473 = call i32 @nfs_node_unlock(%struct.TYPE_28__* %472)
  %474 = load i32, i32* %14, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %479

476:                                              ; preds = %471
  %477 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %478 = call i32 @wakeup(%struct.TYPE_28__* %477)
  br label %479

479:                                              ; preds = %476, %471
  br label %480

480:                                              ; preds = %479, %470
  %481 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %482 = icmp eq %struct.nfs_vattr* %481, %16
  br i1 %482, label %483, label %486

483:                                              ; preds = %480
  %484 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %485 = call i32 @NVATTR_CLEANUP(%struct.nfs_vattr* %484)
  br label %510

486:                                              ; preds = %480
  %487 = load i32, i32* %9, align 4
  %488 = load i32, i32* @NGA_ACL, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %509, label %491

491:                                              ; preds = %486
  %492 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %493 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 8
  %495 = load i32, i32* @NFS_FATTR_ACL, align 4
  %496 = call i32 @NFS_BITMAP_CLR(i32 %494, i32 %495)
  %497 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %498 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %497, i32 0, i32 0
  %499 = load i32*, i32** %498, align 8
  %500 = icmp ne i32* %499, null
  br i1 %500, label %501, label %508

501:                                              ; preds = %491
  %502 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %503 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %502, i32 0, i32 0
  %504 = load i32*, i32** %503, align 8
  %505 = call i32 @kauth_acl_free(i32* %504)
  %506 = load %struct.nfs_vattr*, %struct.nfs_vattr** %7, align 8
  %507 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %506, i32 0, i32 0
  store i32* null, i32** %507, align 8
  br label %508

508:                                              ; preds = %501, %491
  br label %509

509:                                              ; preds = %508, %486
  br label %510

510:                                              ; preds = %509, %483
  %511 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %512 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %511, i32 0, i32 4
  %513 = load i32, i32* %512, align 4
  %514 = load i32, i32* %11, align 4
  %515 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %516 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %515, i32 0, i32 3
  %517 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 4
  %519 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %520 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 4
  %522 = call i32 @FSDBG_BOT(i32 513, i32 %513, i32 %514, i32 %518, i32 %521)
  %523 = load i32, i32* %11, align 4
  store i32 %523, i32* %5, align 4
  br label %524

524:                                              ; preds = %510, %41
  %525 = load i32, i32* %5, align 4
  ret i32 %525
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FSDBG_TOP(i32, i32, %struct.TYPE_28__*, i32, i32) #2

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_28__*) #2

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #2

declare dso_local i32 @NVATTR_INIT(%struct.nfs_vattr*) #2

declare dso_local i32 @nfs_node_lock_force(%struct.TYPE_28__*) #2

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_28__*) #2

declare dso_local i32 @ISSET(i32, i32) #2

declare dso_local i32 @nfs_data_update_size(%struct.TYPE_28__*, i32) #2

declare dso_local i32 @nfs_node_lock(%struct.TYPE_28__*) #2

declare dso_local i32 @nfsmout_if(i32) #2

declare dso_local i32 @nfs_getattrcache(%struct.TYPE_28__*, %struct.nfs_vattr*, i32) #2

declare dso_local i32 @SET(i32, i32) #2

declare dso_local i32 @msleep(%struct.TYPE_28__*, i32*, i64, i8*, %struct.timespec*) #2

declare dso_local i32 @nfs_sigintr(%struct.nfsmount*, i32*, i32, i32) #2

declare dso_local i32 @vfs_context_thread(i32) #2

declare dso_local i64 @NATTRVALID(%struct.TYPE_28__*) #2

declare dso_local i64 @nfs_use_cache(%struct.nfsmount*) #2

declare dso_local i64 @nfs_attrcachetimeout(%struct.TYPE_28__*) #2

declare dso_local i32 @nfs_loadattrcache(%struct.TYPE_28__*, %struct.nfs_vattr*, i32*, i32) #2

declare dso_local i32 @FSDBG(i32, i32, %struct.TYPE_28__*, i32, ...) #2

declare dso_local i32 @CLR(i32, i32) #2

declare dso_local i32 @NFSTOV(%struct.TYPE_28__*) #2

declare dso_local i32 @vnode_vtype(i32) #2

declare dso_local i64 @NFS_CHANGED_NC(i32, %struct.TYPE_28__*, %struct.nfs_vattr*) #2

declare dso_local i32 @cache_purge(i32) #2

declare dso_local i32 @NFS_CHANGED_UPDATE_NC(i32, %struct.TYPE_28__*, %struct.nfs_vattr*) #2

declare dso_local i32 @NFS_VNOP_DBG(i8*, i32) #2

declare dso_local i64 @VM_KERNEL_ADDRPERM(i32) #2

declare dso_local i64 @NFS_CHANGED(i32, %struct.TYPE_28__*, %struct.nfs_vattr*) #2

declare dso_local i32 @nfs_invaldir(%struct.TYPE_28__*) #2

declare dso_local i32 @wakeup(%struct.TYPE_28__*) #2

declare dso_local i32 @nfs_vinvalbuf(i32, i32, i32, i32) #2

declare dso_local i32 @NFS_CHANGED_UPDATE(i32, %struct.TYPE_28__*, %struct.nfs_vattr*) #2

declare dso_local i32 @NVATTR_CLEANUP(%struct.nfs_vattr*) #2

declare dso_local i32 @NFS_BITMAP_CLR(i32, i32) #2

declare dso_local i32 @kauth_acl_free(i32*) #2

declare dso_local i32 @FSDBG_BOT(i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
