; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_vnop_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_vnop_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_create_args = type { i32**, i32*, %struct.vnode_attr*, %struct.componentname*, i32 }
%struct.vnode_attr = type { i32, i32 }
%struct.componentname = type { i32, i32 }
%struct.nfsmount = type { i32 }
%struct.nfs_open_owner = type { i32 }
%struct.nfs_open_file = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFS_OPEN_FILE_LOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"nfs_vnop_create: LOST\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@NFS_OPEN_FILE_REOPEN = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_ACCESS_BOTH = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_DENY_NONE = common dso_local global i32 0, align 4
@NFS_OPEN_CREATE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@VA_EXCLUSIVE = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@NFS_OPEN_NOCREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"nfs4_open_rpc returned without a node?\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"nfs_open_file_find_internal failed! %d\0A\00", align 1
@NFS_OPEN_FILE_POSIXLOCK = common dso_local global i32 0, align 4
@NFS_OPEN_FILE_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_vnop_create(%struct.vnop_create_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_create_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.componentname*, align 8
  %6 = alloca %struct.vnode_attr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.nfsmount*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nfs_open_owner*, align 8
  %16 = alloca %struct.nfs_open_file*, align 8
  %17 = alloca %struct.nfs_open_file*, align 8
  %18 = alloca %struct.vnode_attr, align 4
  %19 = alloca i32, align 4
  store %struct.vnop_create_args* %0, %struct.vnop_create_args** %3, align 8
  %20 = load %struct.vnop_create_args*, %struct.vnop_create_args** %3, align 8
  %21 = getelementptr inbounds %struct.vnop_create_args, %struct.vnop_create_args* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %4, align 4
  %23 = load %struct.vnop_create_args*, %struct.vnop_create_args** %3, align 8
  %24 = getelementptr inbounds %struct.vnop_create_args, %struct.vnop_create_args* %23, i32 0, i32 3
  %25 = load %struct.componentname*, %struct.componentname** %24, align 8
  store %struct.componentname* %25, %struct.componentname** %5, align 8
  %26 = load %struct.vnop_create_args*, %struct.vnop_create_args** %3, align 8
  %27 = getelementptr inbounds %struct.vnop_create_args, %struct.vnop_create_args* %26, i32 0, i32 2
  %28 = load %struct.vnode_attr*, %struct.vnode_attr** %27, align 8
  store %struct.vnode_attr* %28, %struct.vnode_attr** %6, align 8
  %29 = load %struct.vnop_create_args*, %struct.vnop_create_args** %3, align 8
  %30 = getelementptr inbounds %struct.vnop_create_args, %struct.vnop_create_args* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %7, align 8
  %32 = load %struct.vnop_create_args*, %struct.vnop_create_args** %3, align 8
  %33 = getelementptr inbounds %struct.vnop_create_args, %struct.vnop_create_args* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  store i32** %34, i32*** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.nfs_open_owner* null, %struct.nfs_open_owner** %15, align 8
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %16, align 8
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %17, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call %struct.nfsmount* @VTONMP(i32* %35)
  store %struct.nfsmount* %36, %struct.nfsmount** %9, align 8
  %37 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %38 = call i64 @nfs_mount_gone(%struct.nfsmount* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %341

42:                                               ; preds = %1
  %43 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %44 = icmp ne %struct.vnode_attr* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = call i64 @VTONFS(i32* %46)
  %48 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @nfs_avoid_needless_id_setting_on_create(i64 %47, %struct.vnode_attr* %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  %52 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @vfs_context_ucred(i32 %53)
  %55 = call %struct.nfs_open_owner* @nfs_open_owner_find(%struct.nfsmount* %52, i32 %54, i32 1)
  store %struct.nfs_open_owner* %55, %struct.nfs_open_owner** %15, align 8
  %56 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %15, align 8
  %57 = icmp ne %struct.nfs_open_owner* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @ENOMEM, align 4
  store i32 %59, i32* %2, align 4
  br label %341

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %332, %108, %60
  %62 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32* @vfs_context_thread(i32 %63)
  %65 = call i32 @nfs_mount_state_in_use_start(%struct.nfsmount* %62, i32* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %15, align 8
  %70 = call i32 @nfs_open_owner_rele(%struct.nfs_open_owner* %69)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %2, align 4
  br label %341

72:                                               ; preds = %61
  %73 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %15, align 8
  %74 = call i32 @nfs_open_file_find(i32* null, %struct.nfs_open_owner* %73, %struct.nfs_open_file** %16, i32 0, i32 0, i32 1)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %72
  %78 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %79 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @NFS_OPEN_FILE_LOST, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @EIO, align 4
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %84, %77, %72
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %87
  %91 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %92 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @NFS_OPEN_FILE_REOPEN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %90
  %98 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %99 = call i64 @nfs_mount_state_in_use_end(%struct.nfsmount* %98, i32 0)
  %100 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32* @vfs_context_thread(i32 %101)
  %103 = call i32 @nfs4_reopen(%struct.nfs_open_file* %100, i32* %102)
  store i32 %103, i32* %11, align 4
  %104 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %105 = call i32 @nfs_open_file_destroy(%struct.nfs_open_file* %104)
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %16, align 8
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %97
  br label %61

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %90, %87
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %110
  %114 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32* @vfs_context_thread(i32 %115)
  %117 = call i32 @nfs_open_file_set_busy(%struct.nfs_open_file* %114, i32* %116)
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %113, %110
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %123 = icmp ne %struct.nfs_open_file* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %126 = call i32 @nfs_open_file_destroy(%struct.nfs_open_file* %125)
  br label %127

127:                                              ; preds = %124, %121
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %16, align 8
  br label %318

128:                                              ; preds = %118
  %129 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_BOTH, align 4
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  store i32 %130, i32* %14, align 4
  %131 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.componentname*, %struct.componentname** %5, align 8
  %134 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32**, i32*** %8, align 8
  %137 = load i32, i32* @NFS_OPEN_CREATE, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @nfs4_open_rpc(%struct.nfs_open_file* %131, i32 %132, %struct.componentname* %133, %struct.vnode_attr* %134, i32* %135, i32** %136, i32 %137, i32 %138, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @EACCES, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %240

144:                                              ; preds = %128
  %145 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %146 = icmp ne %struct.vnode_attr* %145, null
  br i1 %146, label %147, label %240

147:                                              ; preds = %144
  %148 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %149 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @VA_EXCLUSIVE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %240, label %154

154:                                              ; preds = %147
  %155 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %156 = load i32, i32* @va_mode, align 4
  %157 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %240

159:                                              ; preds = %154
  %160 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %161 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @S_IWUSR, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %240, label %166

166:                                              ; preds = %159
  %167 = load i32*, i32** %7, align 8
  %168 = call i64 @VTONFS(i32* %167)
  %169 = load %struct.componentname*, %struct.componentname** %5, align 8
  %170 = getelementptr inbounds %struct.componentname, %struct.componentname* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.componentname*, %struct.componentname** %5, align 8
  %173 = getelementptr inbounds %struct.componentname, %struct.componentname* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @nfs_lookitup(i64 %168, i32 %171, i32 %174, i32 %175, i64* %10)
  store i32 %176, i32* %19, align 4
  %177 = load i32, i32* %19, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %239, label %179

179:                                              ; preds = %166
  %180 = load i64, i64* %10, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %239

182:                                              ; preds = %179
  %183 = load i64, i64* %10, align 8
  %184 = call i32 @nfs_node_unlock(i64 %183)
  %185 = load i64, i64* %10, align 8
  %186 = call i32* @NFSTOV(i64 %185)
  %187 = load i32**, i32*** %8, align 8
  store i32* %186, i32** %187, align 8
  %188 = load i64, i64* %10, align 8
  %189 = call i32* @NFSTOV(i64 %188)
  %190 = call i64 @vnode_vtype(i32* %189)
  %191 = load i64, i64* @VREG, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %230

193:                                              ; preds = %182
  %194 = call i32 @VATTR_INIT(%struct.vnode_attr* %18)
  %195 = load i32, i32* @va_mode, align 4
  %196 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %197 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @S_IWUSR, align 4
  %200 = or i32 %198, %199
  %201 = call i32 @VATTR_SET(%struct.vnode_attr* %18, i32 %195, i32 %200)
  %202 = load i64, i64* %10, align 8
  %203 = load i32, i32* %4, align 4
  %204 = call i32 @nfs4_setattr_rpc(i64 %202, %struct.vnode_attr* %18, i32 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %229, label %206

206:                                              ; preds = %193
  %207 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %208 = load i32, i32* %4, align 4
  %209 = load %struct.componentname*, %struct.componentname** %5, align 8
  %210 = load i32*, i32** %7, align 8
  %211 = load i32**, i32*** %8, align 8
  %212 = load i32, i32* @NFS_OPEN_NOCREATE, align 4
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* %14, align 4
  %215 = call i32 @nfs4_open_rpc(%struct.nfs_open_file* %207, i32 %208, %struct.componentname* %209, %struct.vnode_attr* null, i32* %210, i32** %211, i32 %212, i32 %213, i32 %214)
  store i32 %215, i32* %19, align 4
  %216 = call i32 @VATTR_INIT(%struct.vnode_attr* %18)
  %217 = load i32, i32* @va_mode, align 4
  %218 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %219 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @VATTR_SET(%struct.vnode_attr* %18, i32 %217, i32 %220)
  %222 = load i64, i64* %10, align 8
  %223 = load i32, i32* %4, align 4
  %224 = call i32 @nfs4_setattr_rpc(i64 %222, %struct.vnode_attr* %18, i32 %223)
  %225 = load i32, i32* %19, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %206
  store i32 0, i32* %11, align 4
  br label %228

228:                                              ; preds = %227, %206
  br label %229

229:                                              ; preds = %228, %193
  br label %230

230:                                              ; preds = %229, %182
  %231 = load i32, i32* %11, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = load i32**, i32*** %8, align 8
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @vnode_put(i32* %235)
  %237 = load i32**, i32*** %8, align 8
  store i32* null, i32** %237, align 8
  br label %238

238:                                              ; preds = %233, %230
  br label %239

239:                                              ; preds = %238, %179, %166
  br label %240

240:                                              ; preds = %239, %159, %154, %147, %144, %128
  %241 = load i32, i32* %11, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %250, label %243

243:                                              ; preds = %240
  %244 = load i32**, i32*** %8, align 8
  %245 = load i32*, i32** %244, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %250, label %247

247:                                              ; preds = %243
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %249 = load i32, i32* @EIO, align 4
  store i32 %249, i32* %11, align 4
  br label %250

250:                                              ; preds = %247, %243, %240
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %250
  %254 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %255 = call i32 @nfs_open_file_clear_busy(%struct.nfs_open_file* %254)
  %256 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %257 = call i32 @nfs_open_file_destroy(%struct.nfs_open_file* %256)
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %16, align 8
  br label %318

258:                                              ; preds = %250
  %259 = load i32**, i32*** %8, align 8
  %260 = load i32*, i32** %259, align 8
  %261 = call i64 @VTONFS(i32* %260)
  store i64 %261, i64* %10, align 8
  %262 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %263 = load i32, i32* %13, align 4
  %264 = load i32, i32* %14, align 4
  %265 = call i32 @nfs_open_file_add_open(%struct.nfs_open_file* %262, i32 %263, i32 %264, i32 0)
  %266 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  store %struct.nfs_open_file* %266, %struct.nfs_open_file** %17, align 8
  %267 = load i64, i64* %10, align 8
  %268 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %15, align 8
  %269 = call i32 @nfs_open_file_find_internal(i64 %267, %struct.nfs_open_owner* %268, %struct.nfs_open_file** %17, i32 0, i32 0, i32 0)
  store i32 %269, i32* %11, align 4
  %270 = load i32, i32* %11, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %258
  %273 = load i32, i32* %11, align 4
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %273)
  br label %318

275:                                              ; preds = %258
  %276 = load %struct.nfs_open_file*, %struct.nfs_open_file** %17, align 8
  %277 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %278 = icmp ne %struct.nfs_open_file* %276, %277
  br i1 %278, label %279, label %308

279:                                              ; preds = %275
  %280 = load %struct.nfs_open_file*, %struct.nfs_open_file** %17, align 8
  %281 = call i32 @nfs_open_file_set_busy(%struct.nfs_open_file* %280, i32* null)
  store i32 %281, i32* %12, align 4
  %282 = load %struct.nfs_open_file*, %struct.nfs_open_file** %17, align 8
  %283 = load i32, i32* %13, align 4
  %284 = load i32, i32* %14, align 4
  %285 = call i32 @nfs_open_file_add_open(%struct.nfs_open_file* %282, i32 %283, i32 %284, i32 0)
  %286 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %287 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.nfs_open_file*, %struct.nfs_open_file** %17, align 8
  %290 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %289, i32 0, i32 2
  store i32 %288, i32* %290, align 4
  %291 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %292 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @NFS_OPEN_FILE_POSIXLOCK, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %279
  %298 = load i32, i32* @NFS_OPEN_FILE_POSIXLOCK, align 4
  %299 = load %struct.nfs_open_file*, %struct.nfs_open_file** %17, align 8
  %300 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = or i32 %301, %298
  store i32 %302, i32* %300, align 4
  br label %303

303:                                              ; preds = %297, %279
  %304 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %305 = call i32 @nfs_open_file_clear_busy(%struct.nfs_open_file* %304)
  %306 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %307 = call i32 @nfs_open_file_destroy(%struct.nfs_open_file* %306)
  br label %308

308:                                              ; preds = %303, %275
  br label %309

309:                                              ; preds = %308
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %16, align 8
  %310 = load i32, i32* @NFS_OPEN_FILE_CREATE, align 4
  %311 = load %struct.nfs_open_file*, %struct.nfs_open_file** %17, align 8
  %312 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %313, %310
  store i32 %314, i32* %312, align 4
  %315 = call i32 (...) @current_thread()
  %316 = load %struct.nfs_open_file*, %struct.nfs_open_file** %17, align 8
  %317 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %316, i32 0, i32 1
  store i32 %315, i32* %317, align 4
  br label %318

318:                                              ; preds = %309, %272, %253, %127
  %319 = load %struct.nfs_open_file*, %struct.nfs_open_file** %17, align 8
  %320 = icmp ne %struct.nfs_open_file* %319, null
  br i1 %320, label %321, label %327

321:                                              ; preds = %318
  %322 = load i32, i32* %12, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %327, label %324

324:                                              ; preds = %321
  %325 = load %struct.nfs_open_file*, %struct.nfs_open_file** %17, align 8
  %326 = call i32 @nfs_open_file_clear_busy(%struct.nfs_open_file* %325)
  br label %327

327:                                              ; preds = %324, %321, %318
  %328 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %329 = load i32, i32* %11, align 4
  %330 = call i64 @nfs_mount_state_in_use_end(%struct.nfsmount* %328, i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %327
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %16, align 8
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %17, align 8
  store i32 0, i32* %12, align 4
  br label %61

333:                                              ; preds = %327
  %334 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %15, align 8
  %335 = icmp ne %struct.nfs_open_owner* %334, null
  br i1 %335, label %336, label %339

336:                                              ; preds = %333
  %337 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %15, align 8
  %338 = call i32 @nfs_open_owner_rele(%struct.nfs_open_owner* %337)
  br label %339

339:                                              ; preds = %336, %333
  %340 = load i32, i32* %11, align 4
  store i32 %340, i32* %2, align 4
  br label %341

341:                                              ; preds = %339, %68, %58, %40
  %342 = load i32, i32* %2, align 4
  ret i32 %342
}

declare dso_local %struct.nfsmount* @VTONMP(i32*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs_avoid_needless_id_setting_on_create(i64, %struct.vnode_attr*, i32) #1

declare dso_local i64 @VTONFS(i32*) #1

declare dso_local %struct.nfs_open_owner* @nfs_open_owner_find(%struct.nfsmount*, i32, i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @nfs_mount_state_in_use_start(%struct.nfsmount*, i32*) #1

declare dso_local i32* @vfs_context_thread(i32) #1

declare dso_local i32 @nfs_open_owner_rele(%struct.nfs_open_owner*) #1

declare dso_local i32 @nfs_open_file_find(i32*, %struct.nfs_open_owner*, %struct.nfs_open_file**, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @nfs_mount_state_in_use_end(%struct.nfsmount*, i32) #1

declare dso_local i32 @nfs4_reopen(%struct.nfs_open_file*, i32*) #1

declare dso_local i32 @nfs_open_file_destroy(%struct.nfs_open_file*) #1

declare dso_local i32 @nfs_open_file_set_busy(%struct.nfs_open_file*, i32*) #1

declare dso_local i32 @nfs4_open_rpc(%struct.nfs_open_file*, i32, %struct.componentname*, %struct.vnode_attr*, i32*, i32**, i32, i32, i32) #1

declare dso_local i64 @VATTR_IS_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i32 @nfs_lookitup(i64, i32, i32, i32, i64*) #1

declare dso_local i32 @nfs_node_unlock(i64) #1

declare dso_local i32* @NFSTOV(i64) #1

declare dso_local i64 @vnode_vtype(i32*) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_SET(%struct.vnode_attr*, i32, i32) #1

declare dso_local i32 @nfs4_setattr_rpc(i64, %struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_put(i32*) #1

declare dso_local i32 @nfs_open_file_clear_busy(%struct.nfs_open_file*) #1

declare dso_local i32 @nfs_open_file_add_open(%struct.nfs_open_file*, i32, i32, i32) #1

declare dso_local i32 @nfs_open_file_find_internal(i64, %struct.nfs_open_owner*, %struct.nfs_open_file**, i32, i32, i32) #1

declare dso_local i32 @current_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
