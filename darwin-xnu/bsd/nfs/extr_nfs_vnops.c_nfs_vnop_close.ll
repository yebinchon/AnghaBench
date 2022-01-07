; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_close.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_close_args = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i32 }
%struct.nfsmount = type { i32, i32, i32 }
%struct.nfs_open_owner = type { i32 }
%struct.nfs_open_file = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@NUPDATESIZE = common dso_local global i32 0, align 4
@NNEEDINVALIDATE = common dso_local global i32 0, align 4
@V_SAVE = common dso_local global i32 0, align 4
@V_IGNORE_WRITEERR = common dso_local global i32 0, align 4
@VREG = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@NWRITEERR = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"nfs_vnop_close: open reference underrun\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_ACCESS_READ = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_ACCESS_WRITE = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_DENY_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [126 x i8] c"nfs_vnop_close: number of write opens for mount underrun. Node has %d opens for write. Mount has total of %d opens for write\0A\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"nfs_vnop_close: removing open writer from mount, but mount has no files open for writing\00", align 1
@EIO = common dso_local global i32 0, align 4
@NFS_OPEN_FILE_REOPEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"nfs_vnop_close: no open file for owner, error %d, %d\00", align 1
@EBADF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"nfs_vnop_close: close error %d, %d\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"nfs_vnop_close: error %d, %d\00", align 1
@FHASLOCK = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_DENY_BOTH = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_DENY_READ = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_DENY_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_vnop_close(%struct.vnop_close_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_close_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.nfsmount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nfs_open_owner*, align 8
  %16 = alloca %struct.nfs_open_file*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vnop_close_args* %0, %struct.vnop_close_args** %3, align 8
  %20 = load %struct.vnop_close_args*, %struct.vnop_close_args** %3, align 8
  %21 = getelementptr inbounds %struct.vnop_close_args, %struct.vnop_close_args* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.vnop_close_args*, %struct.vnop_close_args** %3, align 8
  %24 = getelementptr inbounds %struct.vnop_close_args, %struct.vnop_close_args* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.TYPE_13__* @VTONFS(i32 %26)
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %6, align 8
  store i32 0, i32* %8, align 4
  %28 = load %struct.vnop_close_args*, %struct.vnop_close_args** %3, align 8
  %29 = getelementptr inbounds %struct.vnop_close_args, %struct.vnop_close_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  store %struct.nfs_open_owner* null, %struct.nfs_open_owner** %15, align 8
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %16, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.nfsmount* @VTONMP(i32 %31)
  store %struct.nfsmount* %32, %struct.nfsmount** %7, align 8
  %33 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %34 = icmp ne %struct.nfsmount* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %391

37:                                               ; preds = %1
  %38 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %39 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @vnode_vtype(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @NUPDATESIZE, align 4
  %47 = call i64 @ISSET(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = call i32 @nfs_data_update_size(%struct.TYPE_13__* %50, i32 0)
  br label %52

52:                                               ; preds = %49, %37
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = call i32 @nfs_node_lock_force(%struct.TYPE_13__* %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NNEEDINVALIDATE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %52
  %62 = load i32, i32* @NNEEDINVALIDATE, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = call i32 @nfs_node_unlock(%struct.TYPE_13__* %68)
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @V_SAVE, align 4
  %72 = load i32, i32* @V_IGNORE_WRITEERR, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @nfs_vinvalbuf(i32 %70, i32 %73, i32 %74, i32 1)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = call i32 @nfs_node_lock_force(%struct.TYPE_13__* %76)
  br label %78

78:                                               ; preds = %61, %52
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @VREG, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %116

82:                                               ; preds = %78
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @NMODIFIED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %82
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @FWRITE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %89
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %96 = call i32 @nfs_node_unlock(%struct.TYPE_13__* %95)
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @NFS_VER2, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = load i32, i32* @MNT_WAIT, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @vfs_context_thread(i32 %103)
  %105 = call i32 @nfs_flush(%struct.TYPE_13__* %101, i32 %102, i32 %104, i32 0)
  store i32 %105, i32* %8, align 4
  br label %111

106:                                              ; preds = %94
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @V_SAVE, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @nfs_vinvalbuf(i32 %107, i32 %108, i32 %109, i32 1)
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %106, %100
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %113 = call i32 @nfs_node_lock_force(%struct.TYPE_13__* %112)
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = call i32 @NATTRINVALIDATE(%struct.TYPE_13__* %114)
  br label %116

116:                                              ; preds = %111, %89, %82, %78
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @NWRITEERR, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %116
  %124 = load i32, i32* @NWRITEERR, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %123, %116
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %135 = call i32 @nfs_node_unlock(%struct.TYPE_13__* %134)
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @VREG, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %180

139:                                              ; preds = %133
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  %142 = call i32 @lck_mtx_lock(i32* %141)
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %139
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @FREAD, align 4
  %150 = load i32, i32* @FWRITE, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %156 = call i32 (%struct.TYPE_13__*, i8*, ...) @NP(%struct.TYPE_13__* %155, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %157 = load i32, i32* @EINVAL, align 4
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %154, %147
  br label %175

159:                                              ; preds = %139
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @FREAD, align 4
  %162 = load i32, i32* @FWRITE, align 4
  %163 = or i32 %161, %162
  %164 = and i32 %160, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %159
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, -1
  store i64 %170, i64* %168, align 8
  br label %174

171:                                              ; preds = %159
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 2
  store i64 0, i64* %173, align 8
  br label %174

174:                                              ; preds = %171, %166
  br label %175

175:                                              ; preds = %174, %158
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 3
  %178 = call i32 @lck_mtx_unlock(i32* %177)
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %2, align 4
  br label %391

180:                                              ; preds = %133
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @FREAD, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %180
  %187 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %188 = load i32, i32* %13, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %13, align 4
  br label %190

190:                                              ; preds = %186, %180
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @FWRITE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_WRITE, align 4
  %197 = load i32, i32* %13, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %13, align 4
  br label %199

199:                                              ; preds = %195, %190
  %200 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  store i32 %200, i32* %14, align 4
  %201 = load i32, i32* %13, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %252, label %203

203:                                              ; preds = %199
  %204 = load i32, i32* %5, align 4
  %205 = call i32 @vnode_mount(i32 %204)
  store i32 %205, i32* %18, align 4
  %206 = load i32, i32* %18, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load i32, i32* %18, align 4
  %210 = call i64 @vfs_isforce(i32 %209)
  %211 = icmp ne i64 %210, 0
  br label %212

212:                                              ; preds = %208, %203
  %213 = phi i1 [ true, %203 ], [ %211, %208 ]
  %214 = zext i1 %213 to i32
  store i32 %214, i32* %19, align 4
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %216 = call i32 @nfs_no_of_open_file_writers(%struct.TYPE_13__* %215)
  store i32 %216, i32* %17, align 4
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %218 = load i32, i32* %19, align 4
  %219 = call i32 @nfs_release_open_state_for_node(%struct.TYPE_13__* %217, i32 %218)
  %220 = load i32, i32* %17, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %250

222:                                              ; preds = %212
  %223 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %224 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %223, i32 0, i32 2
  %225 = call i32 @lck_mtx_lock(i32* %224)
  %226 = load i32, i32* %17, align 4
  %227 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %228 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp sgt i32 %226, %229
  br i1 %230, label %231, label %240

231:                                              ; preds = %222
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %233 = load i32, i32* %17, align 4
  %234 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %235 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (%struct.TYPE_13__*, i8*, ...) @NP(%struct.TYPE_13__* %232, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.1, i64 0, i64 0), i32 %233, i32 %236)
  %238 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %239 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %238, i32 0, i32 1
  store i32 0, i32* %239, align 4
  br label %246

240:                                              ; preds = %222
  %241 = load i32, i32* %17, align 4
  %242 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %243 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = sub nsw i32 %244, %241
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %240, %231
  %247 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %248 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %247, i32 0, i32 2
  %249 = call i32 @lck_mtx_unlock(i32* %248)
  br label %250

250:                                              ; preds = %246, %212
  %251 = load i32, i32* %8, align 4
  store i32 %251, i32* %2, align 4
  br label %391

252:                                              ; preds = %199
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* @FWRITE, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %277

257:                                              ; preds = %252
  %258 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %259 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %258, i32 0, i32 2
  %260 = call i32 @lck_mtx_lock(i32* %259)
  %261 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %262 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %257
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %267 = call i32 (%struct.TYPE_13__*, i8*, ...) @NP(%struct.TYPE_13__* %266, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0))
  br label %273

268:                                              ; preds = %257
  %269 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %270 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, -1
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %268, %265
  %274 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %275 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %274, i32 0, i32 2
  %276 = call i32 @lck_mtx_unlock(i32* %275)
  br label %277

277:                                              ; preds = %273, %252
  br label %278

278:                                              ; preds = %277
  %279 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %280 = load i32, i32* %4, align 4
  %281 = call i32 @vfs_context_ucred(i32 %280)
  %282 = call %struct.nfs_open_owner* @nfs_open_owner_find(%struct.nfsmount* %279, i32 %281, i32 0)
  store %struct.nfs_open_owner* %282, %struct.nfs_open_owner** %15, align 8
  %283 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %15, align 8
  %284 = icmp ne %struct.nfs_open_owner* %283, null
  br i1 %284, label %287, label %285

285:                                              ; preds = %278
  %286 = load i32, i32* @EIO, align 4
  store i32 %286, i32* %2, align 4
  br label %391

287:                                              ; preds = %278
  br label %288

288:                                              ; preds = %366, %317, %287
  %289 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %290 = call i32 @nfs_mount_state_in_use_start(%struct.nfsmount* %289, i32* null)
  store i32 %290, i32* %8, align 4
  %291 = load i32, i32* %8, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %288
  %294 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %15, align 8
  %295 = call i32 @nfs_open_owner_rele(%struct.nfs_open_owner* %294)
  %296 = load i32, i32* %8, align 4
  store i32 %296, i32* %2, align 4
  br label %391

297:                                              ; preds = %288
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %299 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %15, align 8
  %300 = call i32 @nfs_open_file_find(%struct.TYPE_13__* %298, %struct.nfs_open_owner* %299, %struct.nfs_open_file** %16, i32 0, i32 0, i32 0)
  store i32 %300, i32* %8, align 4
  %301 = load i32, i32* %8, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %319, label %303

303:                                              ; preds = %297
  %304 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %305 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @NFS_OPEN_FILE_REOPEN, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %319

310:                                              ; preds = %303
  %311 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %312 = call i64 @nfs_mount_state_in_use_end(%struct.nfsmount* %311, i32 0)
  %313 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %314 = call i32 @nfs4_reopen(%struct.nfs_open_file* %313, i32* null)
  store i32 %314, i32* %8, align 4
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %16, align 8
  %315 = load i32, i32* %8, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %310
  br label %288

318:                                              ; preds = %310
  br label %319

319:                                              ; preds = %318, %303, %297
  %320 = load i32, i32* %8, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %319
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %324 = load i32, i32* %8, align 4
  %325 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %15, align 8
  %326 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @kauth_cred_getuid(i32 %327)
  %329 = call i32 (%struct.TYPE_13__*, i8*, ...) @NP(%struct.TYPE_13__* %323, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %324, i32 %328)
  %330 = load i32, i32* @EBADF, align 4
  store i32 %330, i32* %8, align 4
  br label %355

331:                                              ; preds = %319
  %332 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %333 = call i32 @nfs_open_file_set_busy(%struct.nfs_open_file* %332, i32* null)
  store i32 %333, i32* %8, align 4
  %334 = load i32, i32* %8, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %331
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %16, align 8
  br label %355

337:                                              ; preds = %331
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %339 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %340 = load i32, i32* %13, align 4
  %341 = load i32, i32* %14, align 4
  %342 = load i32, i32* %4, align 4
  %343 = call i32 @nfs_close(%struct.TYPE_13__* %338, %struct.nfs_open_file* %339, i32 %340, i32 %341, i32 %342)
  store i32 %343, i32* %8, align 4
  %344 = load i32, i32* %8, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %337
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %348 = load i32, i32* %8, align 4
  %349 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %15, align 8
  %350 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @kauth_cred_getuid(i32 %351)
  %353 = call i32 (%struct.TYPE_13__*, i8*, ...) @NP(%struct.TYPE_13__* %347, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %348, i32 %352)
  br label %354

354:                                              ; preds = %346, %337
  br label %355

355:                                              ; preds = %354, %336, %322
  %356 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %357 = icmp ne %struct.nfs_open_file* %356, null
  br i1 %357, label %358, label %361

358:                                              ; preds = %355
  %359 = load %struct.nfs_open_file*, %struct.nfs_open_file** %16, align 8
  %360 = call i32 @nfs_open_file_clear_busy(%struct.nfs_open_file* %359)
  br label %361

361:                                              ; preds = %358, %355
  %362 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %363 = load i32, i32* %8, align 4
  %364 = call i64 @nfs_mount_state_in_use_end(%struct.nfsmount* %362, i32 %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %367

366:                                              ; preds = %361
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %16, align 8
  br label %288

367:                                              ; preds = %361
  %368 = load i32, i32* %8, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %372, label %370

370:                                              ; preds = %367
  %371 = load i32, i32* %9, align 4
  store i32 %371, i32* %8, align 4
  br label %372

372:                                              ; preds = %370, %367
  %373 = load i32, i32* %8, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %383

375:                                              ; preds = %372
  %376 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %377 = load i32, i32* %8, align 4
  %378 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %15, align 8
  %379 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @kauth_cred_getuid(i32 %380)
  %382 = call i32 (%struct.TYPE_13__*, i8*, ...) @NP(%struct.TYPE_13__* %376, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %377, i32 %381)
  br label %383

383:                                              ; preds = %375, %372
  %384 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %15, align 8
  %385 = icmp ne %struct.nfs_open_owner* %384, null
  br i1 %385, label %386, label %389

386:                                              ; preds = %383
  %387 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %15, align 8
  %388 = call i32 @nfs_open_owner_rele(%struct.nfs_open_owner* %387)
  br label %389

389:                                              ; preds = %386, %383
  %390 = load i32, i32* %8, align 4
  store i32 %390, i32* %2, align 4
  br label %391

391:                                              ; preds = %389, %293, %285, %250, %175, %35
  %392 = load i32, i32* %2, align 4
  ret i32 %392
}

declare dso_local %struct.TYPE_13__* @VTONFS(i32) #1

declare dso_local %struct.nfsmount* @VTONMP(i32) #1

declare dso_local i32 @vnode_vtype(i32) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @nfs_data_update_size(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @nfs_node_lock_force(%struct.TYPE_13__*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_13__*) #1

declare dso_local i32 @nfs_vinvalbuf(i32, i32, i32, i32) #1

declare dso_local i32 @nfs_flush(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @NATTRINVALIDATE(%struct.TYPE_13__*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @NP(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @vnode_mount(i32) #1

declare dso_local i64 @vfs_isforce(i32) #1

declare dso_local i32 @nfs_no_of_open_file_writers(%struct.TYPE_13__*) #1

declare dso_local i32 @nfs_release_open_state_for_node(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.nfs_open_owner* @nfs_open_owner_find(%struct.nfsmount*, i32, i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @nfs_mount_state_in_use_start(%struct.nfsmount*, i32*) #1

declare dso_local i32 @nfs_open_owner_rele(%struct.nfs_open_owner*) #1

declare dso_local i32 @nfs_open_file_find(%struct.TYPE_13__*, %struct.nfs_open_owner*, %struct.nfs_open_file**, i32, i32, i32) #1

declare dso_local i64 @nfs_mount_state_in_use_end(%struct.nfsmount*, i32) #1

declare dso_local i32 @nfs4_reopen(%struct.nfs_open_file*, i32*) #1

declare dso_local i32 @kauth_cred_getuid(i32) #1

declare dso_local i32 @nfs_open_file_set_busy(%struct.nfs_open_file*, i32*) #1

declare dso_local i32 @nfs_close(%struct.TYPE_13__*, %struct.nfs_open_file*, i32, i32, i32) #1

declare dso_local i32 @nfs_open_file_clear_busy(%struct.nfs_open_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
