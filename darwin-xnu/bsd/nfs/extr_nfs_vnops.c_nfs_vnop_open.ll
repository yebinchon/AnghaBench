; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_open.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_open_args = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.nfsmount = type { i64, i64, i64, i32, i32, i64, i32 }
%struct.nfs_open_owner = type { i32 }
%struct.nfs_open_file = type { i32, %struct.TYPE_13__*, i32* }
%struct.TYPE_13__ = type { i32 }

@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NREVOKE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VREG = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@VLNK = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@NUPDATESIZE = common dso_local global i32 0, align 4
@NNEEDINVALIDATE = common dso_local global i32 0, align 4
@V_SAVE = common dso_local global i32 0, align 4
@V_IGNORE_WRITEERR = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@NGA_UNCACHED = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_ACCESS_READ = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_ACCESS_WRITE = common dso_local global i32 0, align 4
@O_EXLOCK = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_DENY_BOTH = common dso_local global i32 0, align 4
@O_SHLOCK = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_DENY_WRITE = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_DENY_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFS_OPEN_FILE_LOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"nfs_vnop_open: LOST %d\00", align 1
@NFS_OPEN_FILE_REOPEN = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i64 0, align 8
@NFS_OPEN_FILE_CREATE = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_ACCESS_BOTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"nfs_vnop_open: deny mode foregone on create, %d\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"nfs_vnop_open: create close error %d, %d\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"nfs_vnop_open: error %d, %d\00", align 1
@NFSSTA_SQUISHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_vnop_open(%struct.vnop_open_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_open_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.nfsmount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfs_open_owner*, align 8
  %13 = alloca %struct.nfs_open_file*, align 8
  %14 = alloca i32, align 4
  store %struct.vnop_open_args* %0, %struct.vnop_open_args** %3, align 8
  %15 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %16 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %19 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.TYPE_14__* @VTONFS(i32 %21)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %6, align 8
  store i32 0, i32* %11, align 4
  store %struct.nfs_open_owner* null, %struct.nfs_open_owner** %12, align 8
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %13, align 8
  %23 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %24 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FREAD, align 4
  %27 = load i32, i32* @FWRITE, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %2, align 4
  br label %523

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.nfsmount* @VTONMP(i32 %34)
  store %struct.nfsmount* %35, %struct.nfsmount** %7, align 8
  %36 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %37 = call i64 @nfs_mount_gone(%struct.nfsmount* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %2, align 4
  br label %523

41:                                               ; preds = %33
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NREVOKE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @EIO, align 4
  store i32 %49, i32* %2, align 4
  br label %523

50:                                               ; preds = %41
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @vnode_vtype(i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @VREG, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @VDIR, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @VLNK, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @EACCES, align 4
  store i32 %65, i32* %2, align 4
  br label %523

66:                                               ; preds = %60, %56, %50
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NUPDATESIZE, align 4
  %71 = call i64 @ISSET(i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = call i32 @nfs_data_update_size(%struct.TYPE_14__* %74, i32 0)
  br label %76

76:                                               ; preds = %73, %66
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = call i32 @nfs_node_lock(%struct.TYPE_14__* %77)
  store i32 %78, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %523

82:                                               ; preds = %76
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NNEEDINVALIDATE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %117

89:                                               ; preds = %82
  %90 = load i32, i32* @NNEEDINVALIDATE, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @VDIR, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = call i32 @nfs_invaldir(%struct.TYPE_14__* %100)
  br label %102

102:                                              ; preds = %99, %89
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = call i32 @nfs_node_unlock(%struct.TYPE_14__* %103)
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @V_SAVE, align 4
  %107 = load i32, i32* @V_IGNORE_WRITEERR, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @nfs_vinvalbuf(i32 %105, i32 %108, i32 %109, i32 1)
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = call i32 @nfs_node_lock(%struct.TYPE_14__* %111)
  store i32 %112, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %102
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %2, align 4
  br label %523

116:                                              ; preds = %102
  br label %117

117:                                              ; preds = %116, %82
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* @VREG, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  store i32 -1, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %117
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @NMODIFIED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %124
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* @VDIR, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %137 = call i32 @nfs_invaldir(%struct.TYPE_14__* %136)
  br label %138

138:                                              ; preds = %135, %131
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %140 = call i32 @nfs_node_unlock(%struct.TYPE_14__* %139)
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @V_SAVE, align 4
  %143 = load i32, i32* @V_IGNORE_WRITEERR, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @nfs_vinvalbuf(i32 %141, i32 %144, i32 %145, i32 1)
  store i32 %146, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %138
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %2, align 4
  br label %523

150:                                              ; preds = %138
  br label %154

151:                                              ; preds = %124
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %153 = call i32 @nfs_node_unlock(%struct.TYPE_14__* %152)
  br label %154

154:                                              ; preds = %151, %150
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @NGA_UNCACHED, align 4
  %158 = call i32 @nfs_getattr(%struct.TYPE_14__* %155, i32* null, i32 %156, i32 %157)
  store i32 %158, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %2, align 4
  br label %523

162:                                              ; preds = %154
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* @VREG, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %162
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 2
  %169 = call i32 @lck_mtx_lock(i32* %168)
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 2
  %176 = call i32 @lck_mtx_unlock(i32* %175)
  store i32 0, i32* %2, align 4
  br label %523

177:                                              ; preds = %162
  store i32 0, i32* %9, align 4
  %178 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %179 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @FREAD, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %177
  %185 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %186 = load i32, i32* %9, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %9, align 4
  br label %188

188:                                              ; preds = %184, %177
  %189 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %190 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @FWRITE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %188
  %196 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_WRITE, align 4
  %197 = load i32, i32* %9, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %9, align 4
  br label %199

199:                                              ; preds = %195, %188
  %200 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %201 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @O_EXLOCK, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %199
  %207 = load i32, i32* @NFS_OPEN_SHARE_DENY_BOTH, align 4
  store i32 %207, i32* %10, align 4
  br label %220

208:                                              ; preds = %199
  %209 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %210 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @O_SHLOCK, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %208
  %216 = load i32, i32* @NFS_OPEN_SHARE_DENY_WRITE, align 4
  store i32 %216, i32* %10, align 4
  br label %219

217:                                              ; preds = %208
  %218 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  store i32 %218, i32* %10, align 4
  br label %219

219:                                              ; preds = %217, %215
  br label %220

220:                                              ; preds = %219, %206
  %221 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  store i32 %221, i32* %10, align 4
  %222 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %223 = load i32, i32* %4, align 4
  %224 = call i32 @vfs_context_ucred(i32 %223)
  %225 = call %struct.nfs_open_owner* @nfs_open_owner_find(%struct.nfsmount* %222, i32 %224, i32 1)
  store %struct.nfs_open_owner* %225, %struct.nfs_open_owner** %12, align 8
  %226 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %227 = icmp ne %struct.nfs_open_owner* %226, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %220
  %229 = load i32, i32* @ENOMEM, align 4
  store i32 %229, i32* %2, align 4
  br label %523

230:                                              ; preds = %220
  br label %231

231:                                              ; preds = %459, %300, %230
  %232 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %233 = load i32, i32* %4, align 4
  %234 = call i32 @vfs_context_thread(i32 %233)
  %235 = call i32 @nfs_mount_state_in_use_start(%struct.nfsmount* %232, i32 %234)
  store i32 %235, i32* %8, align 4
  %236 = load i32, i32* %8, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %231
  %239 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %240 = call i32 @nfs_open_owner_rele(%struct.nfs_open_owner* %239)
  %241 = load i32, i32* %8, align 4
  store i32 %241, i32* %2, align 4
  br label %523

242:                                              ; preds = %231
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @NREVOKE, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %242
  %250 = load i32, i32* @EIO, align 4
  store i32 %250, i32* %8, align 4
  %251 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %252 = call i64 @nfs_mount_state_in_use_end(%struct.nfsmount* %251, i32 0)
  %253 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %254 = call i32 @nfs_open_owner_rele(%struct.nfs_open_owner* %253)
  %255 = load i32, i32* %8, align 4
  store i32 %255, i32* %2, align 4
  br label %523

256:                                              ; preds = %242
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %258 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* %10, align 4
  %261 = call i32 @nfs_open_file_find(%struct.TYPE_14__* %257, %struct.nfs_open_owner* %258, %struct.nfs_open_file** %13, i32 %259, i32 %260, i32 1)
  store i32 %261, i32* %8, align 4
  %262 = load i32, i32* %8, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %281, label %264

264:                                              ; preds = %256
  %265 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %266 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @NFS_OPEN_FILE_LOST, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %281

271:                                              ; preds = %264
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %273 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %274 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %273, i32 0, i32 1
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @kauth_cred_getuid(i32 %277)
  %279 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @NP(%struct.TYPE_14__* %272, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %278)
  %280 = load i32, i32* @EIO, align 4
  store i32 %280, i32* %8, align 4
  br label %281

281:                                              ; preds = %271, %264, %256
  %282 = load i32, i32* %8, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %302, label %284

284:                                              ; preds = %281
  %285 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %286 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @NFS_OPEN_FILE_REOPEN, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %302

291:                                              ; preds = %284
  %292 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %293 = call i64 @nfs_mount_state_in_use_end(%struct.nfsmount* %292, i32 0)
  %294 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %295 = load i32, i32* %4, align 4
  %296 = call i32 @vfs_context_thread(i32 %295)
  %297 = call i32 @nfs4_reopen(%struct.nfs_open_file* %294, i32 %296)
  store i32 %297, i32* %8, align 4
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %13, align 8
  %298 = load i32, i32* %8, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %301, label %300

300:                                              ; preds = %291
  br label %231

301:                                              ; preds = %291
  br label %302

302:                                              ; preds = %301, %284, %281
  %303 = load i32, i32* %8, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %310, label %305

305:                                              ; preds = %302
  %306 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %307 = load i32, i32* %4, align 4
  %308 = call i32 @vfs_context_thread(i32 %307)
  %309 = call i32 @nfs_open_file_set_busy(%struct.nfs_open_file* %306, i32 %308)
  store i32 %309, i32* %8, align 4
  br label %310

310:                                              ; preds = %305, %302
  %311 = load i32, i32* %8, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %13, align 8
  br label %448

314:                                              ; preds = %310
  %315 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %316 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @NFS_VER4, align 8
  %319 = icmp slt i64 %317, %318
  br i1 %319, label %320, label %325

320:                                              ; preds = %314
  %321 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %322 = load i32, i32* %9, align 4
  %323 = load i32, i32* %10, align 4
  %324 = call i32 @nfs_open_file_add_open(%struct.nfs_open_file* %321, i32 %322, i32 %323, i32 0)
  br label %448

325:                                              ; preds = %314
  %326 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %327 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @NFS_OPEN_FILE_CREATE, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %355

332:                                              ; preds = %325
  %333 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %334 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %333, i32 0, i32 2
  %335 = load i32*, i32** %334, align 8
  %336 = call i32* (...) @current_thread()
  %337 = icmp eq i32* %335, %336
  br i1 %337, label %338, label %355

338:                                              ; preds = %332
  %339 = load i32, i32* %9, align 4
  %340 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_BOTH, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %355

342:                                              ; preds = %338
  %343 = load i32, i32* %10, align 4
  %344 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %355

346:                                              ; preds = %342
  %347 = load i32, i32* @NFS_OPEN_FILE_CREATE, align 4
  %348 = xor i32 %347, -1
  %349 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %350 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = and i32 %351, %348
  store i32 %352, i32* %350, align 8
  %353 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %354 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %353, i32 0, i32 2
  store i32* null, i32** %354, align 8
  br label %447

355:                                              ; preds = %342, %338, %332, %325
  %356 = load i32, i32* %11, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %365, label %358

358:                                              ; preds = %355
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %360 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %361 = load i32, i32* %9, align 4
  %362 = load i32, i32* %10, align 4
  %363 = load i32, i32* %4, align 4
  %364 = call i32 @nfs4_open(%struct.TYPE_14__* %359, %struct.nfs_open_file* %360, i32 %361, i32 %362, i32 %363)
  store i32 %364, i32* %8, align 4
  br label %365

365:                                              ; preds = %358, %355
  %366 = load i32, i32* %8, align 4
  %367 = load i32, i32* @EACCES, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %398

369:                                              ; preds = %365
  %370 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %371 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @NFS_OPEN_FILE_CREATE, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %398

376:                                              ; preds = %369
  %377 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %378 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %377, i32 0, i32 2
  %379 = load i32*, i32** %378, align 8
  %380 = call i32* (...) @current_thread()
  %381 = icmp eq i32* %379, %380
  br i1 %381, label %382, label %398

382:                                              ; preds = %376
  %383 = load i32, i32* %10, align 4
  %384 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  %385 = icmp ne i32 %383, %384
  br i1 %385, label %386, label %395

386:                                              ; preds = %382
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %388 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %389 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %388, i32 0, i32 1
  %390 = load %struct.TYPE_13__*, %struct.TYPE_13__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @kauth_cred_getuid(i32 %392)
  %394 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @NP(%struct.TYPE_14__* %387, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %393)
  br label %395

395:                                              ; preds = %386, %382
  %396 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %397 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %396, i32 0, i32 2
  store i32* null, i32** %397, align 8
  store i32 0, i32* %8, align 4
  br label %398

398:                                              ; preds = %395, %376, %369, %365
  %399 = load i32, i32* %8, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %398
  br label %448

402:                                              ; preds = %398
  store i32 1, i32* %11, align 4
  %403 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %404 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @NFS_OPEN_FILE_CREATE, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %446

409:                                              ; preds = %402
  %410 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %411 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %410, i32 0, i32 2
  %412 = load i32*, i32** %411, align 8
  %413 = call i32* (...) @current_thread()
  %414 = icmp eq i32* %412, %413
  br i1 %414, label %415, label %446

415:                                              ; preds = %409
  %416 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %417 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %418 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_BOTH, align 4
  %419 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  %420 = load i32, i32* %4, align 4
  %421 = call i32 @nfs_close(%struct.TYPE_14__* %416, %struct.nfs_open_file* %417, i32 %418, i32 %419, i32 %420)
  store i32 %421, i32* %8, align 4
  %422 = load i32, i32* %8, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %434

424:                                              ; preds = %415
  %425 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %426 = load i32, i32* %8, align 4
  %427 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %428 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %427, i32 0, i32 1
  %429 = load %struct.TYPE_13__*, %struct.TYPE_13__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @kauth_cred_getuid(i32 %431)
  %433 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @NP(%struct.TYPE_14__* %425, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %426, i32 %432)
  br label %434

434:                                              ; preds = %424, %415
  %435 = load i32, i32* %8, align 4
  %436 = call i32 @nfs_mount_state_error_should_restart(i32 %435)
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %445, label %438

438:                                              ; preds = %434
  store i32 0, i32* %8, align 4
  %439 = load i32, i32* @NFS_OPEN_FILE_CREATE, align 4
  %440 = xor i32 %439, -1
  %441 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %442 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = and i32 %443, %440
  store i32 %444, i32* %442, align 8
  br label %445

445:                                              ; preds = %438, %434
  br label %446

446:                                              ; preds = %445, %409, %402
  br label %447

447:                                              ; preds = %446, %346
  br label %448

448:                                              ; preds = %447, %401, %320, %313
  %449 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %450 = icmp ne %struct.nfs_open_file* %449, null
  br i1 %450, label %451, label %454

451:                                              ; preds = %448
  %452 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %453 = call i32 @nfs_open_file_clear_busy(%struct.nfs_open_file* %452)
  br label %454

454:                                              ; preds = %451, %448
  %455 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %456 = load i32, i32* %8, align 4
  %457 = call i64 @nfs_mount_state_in_use_end(%struct.nfsmount* %455, i32 %456)
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %460

459:                                              ; preds = %454
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %13, align 8
  br label %231

460:                                              ; preds = %454
  %461 = load i32, i32* %8, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %471

463:                                              ; preds = %460
  %464 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %465 = load i32, i32* %8, align 4
  %466 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %467 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = call i32 @kauth_cred_getuid(i32 %468)
  %470 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @NP(%struct.TYPE_14__* %464, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %465, i32 %469)
  br label %471

471:                                              ; preds = %463, %460
  %472 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %473 = icmp ne %struct.nfs_open_owner* %472, null
  br i1 %473, label %474, label %477

474:                                              ; preds = %471
  %475 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %476 = call i32 @nfs_open_owner_rele(%struct.nfs_open_owner* %475)
  br label %477

477:                                              ; preds = %474, %471
  %478 = load i32, i32* %8, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %521, label %480

480:                                              ; preds = %477
  %481 = load i32, i32* %14, align 4
  %482 = load i32, i32* @VREG, align 4
  %483 = icmp eq i32 %481, %482
  br i1 %483, label %484, label %521

484:                                              ; preds = %480
  %485 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %486 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* @FWRITE, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %521

491:                                              ; preds = %484
  %492 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %493 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %492, i32 0, i32 3
  %494 = call i32 @lck_mtx_lock(i32* %493)
  %495 = load i32, i32* @NFSSTA_SQUISHY, align 4
  %496 = xor i32 %495, -1
  %497 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %498 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %497, i32 0, i32 6
  %499 = load i32, i32* %498, align 8
  %500 = and i32 %499, %496
  store i32 %500, i32* %498, align 8
  %501 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %502 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %501, i32 0, i32 2
  %503 = load i64, i64* %502, align 8
  %504 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %505 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %504, i32 0, i32 1
  store i64 %503, i64* %505, align 8
  %506 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %507 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %506, i32 0, i32 1
  %508 = load i64, i64* %507, align 8
  %509 = icmp sle i64 %508, 0
  br i1 %509, label %510, label %513

510:                                              ; preds = %491
  %511 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %512 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %511, i32 0, i32 5
  store i64 0, i64* %512, align 8
  br label %513

513:                                              ; preds = %510, %491
  %514 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %515 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %514, i32 0, i32 4
  %516 = load i32, i32* %515, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %515, align 4
  %518 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %519 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %518, i32 0, i32 3
  %520 = call i32 @lck_mtx_unlock(i32* %519)
  br label %521

521:                                              ; preds = %513, %484, %480, %477
  %522 = load i32, i32* %8, align 4
  store i32 %522, i32* %2, align 4
  br label %523

523:                                              ; preds = %521, %249, %238, %228, %166, %160, %148, %114, %80, %64, %48, %39, %31
  %524 = load i32, i32* %2, align 4
  ret i32 %524
}

declare dso_local %struct.TYPE_14__* @VTONFS(i32) #1

declare dso_local %struct.nfsmount* @VTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @vnode_vtype(i32) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @nfs_data_update_size(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_14__*) #1

declare dso_local i32 @nfs_invaldir(%struct.TYPE_14__*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_14__*) #1

declare dso_local i32 @nfs_vinvalbuf(i32, i32, i32, i32) #1

declare dso_local i32 @nfs_getattr(%struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local %struct.nfs_open_owner* @nfs_open_owner_find(%struct.nfsmount*, i32, i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @nfs_mount_state_in_use_start(%struct.nfsmount*, i32) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @nfs_open_owner_rele(%struct.nfs_open_owner*) #1

declare dso_local i64 @nfs_mount_state_in_use_end(%struct.nfsmount*, i32) #1

declare dso_local i32 @nfs_open_file_find(%struct.TYPE_14__*, %struct.nfs_open_owner*, %struct.nfs_open_file**, i32, i32, i32) #1

declare dso_local i32 @NP(%struct.TYPE_14__*, i8*, i32, ...) #1

declare dso_local i32 @kauth_cred_getuid(i32) #1

declare dso_local i32 @nfs4_reopen(%struct.nfs_open_file*, i32) #1

declare dso_local i32 @nfs_open_file_set_busy(%struct.nfs_open_file*, i32) #1

declare dso_local i32 @nfs_open_file_add_open(%struct.nfs_open_file*, i32, i32, i32) #1

declare dso_local i32* @current_thread(...) #1

declare dso_local i32 @nfs4_open(%struct.TYPE_14__*, %struct.nfs_open_file*, i32, i32, i32) #1

declare dso_local i32 @nfs_close(%struct.TYPE_14__*, %struct.nfs_open_file*, i32, i32, i32) #1

declare dso_local i32 @nfs_mount_state_error_should_restart(i32) #1

declare dso_local i32 @nfs_open_file_clear_busy(%struct.nfs_open_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
