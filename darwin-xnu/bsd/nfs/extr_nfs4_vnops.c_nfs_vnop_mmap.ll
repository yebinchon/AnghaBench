; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_vnop_mmap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_vnop_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_mmap_args = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.nfsmount = type { i64, i64, i64, i32, i32, i64, i32 }
%struct.nfs_open_owner = type { i32 }
%struct.nfs_open_file = type { i32, i32, i32, i32, i32, %struct.TYPE_10__*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NREVOKE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_ACCESS_READ = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_ACCESS_WRITE = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_DENY_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFS_OPEN_FILE_LOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"nfs_vnop_mmap: no open file for owner, error %d, %d\00", align 1
@EPERM = common dso_local global i32 0, align 4
@NFS_OPEN_FILE_REOPEN = common dso_local global i32 0, align 4
@NFS_OPEN_FILE_NEEDCLOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"nfs_vnop_mmap: File already needs close access: 0x%x, cred: %d thread: %lld\00", align 1
@NFS_VER4 = common dso_local global i64 0, align 8
@NFS_OPEN_SHARE_ACCESS_BOTH = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_DENY_WRITE = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_DENY_BOTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"nfs_vnop_mmap: close of previous mmap mode failed: %d, %d\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"nfs_vnop_mmap: update, close error %d, %d\00", align 1
@NISMAPPED = common dso_local global i32 0, align 4
@NFSSTA_SQUISHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_vnop_mmap(%struct.vnop_mmap_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_mmap_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfsmount*, align 8
  %12 = alloca %struct.nfs_open_owner*, align 8
  %13 = alloca %struct.nfs_open_file*, align 8
  %14 = alloca i32, align 4
  store %struct.vnop_mmap_args* %0, %struct.vnop_mmap_args** %3, align 8
  %15 = load %struct.vnop_mmap_args*, %struct.vnop_mmap_args** %3, align 8
  %16 = getelementptr inbounds %struct.vnop_mmap_args, %struct.vnop_mmap_args* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.vnop_mmap_args*, %struct.vnop_mmap_args** %3, align 8
  %19 = getelementptr inbounds %struct.vnop_mmap_args, %struct.vnop_mmap_args* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.TYPE_11__* @VTONFS(i32 %21)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.nfs_open_owner* null, %struct.nfs_open_owner** %12, align 8
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %13, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.nfsmount* @VTONMP(i32 %23)
  store %struct.nfsmount* %24, %struct.nfsmount** %11, align 8
  %25 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %26 = call i64 @nfs_mount_gone(%struct.nfsmount* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %634

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @vnode_isreg(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.vnop_mmap_args*, %struct.vnop_mmap_args** %3, align 8
  %36 = getelementptr inbounds %struct.vnop_mmap_args, %struct.vnop_mmap_args* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PROT_READ, align 4
  %39 = load i32, i32* @PROT_WRITE, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %34, %30
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %2, align 4
  br label %634

45:                                               ; preds = %34
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NREVOKE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @EIO, align 4
  store i32 %53, i32* %2, align 4
  br label %634

54:                                               ; preds = %45
  %55 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  store i32 %55, i32* %8, align 4
  %56 = load %struct.vnop_mmap_args*, %struct.vnop_mmap_args** %3, align 8
  %57 = getelementptr inbounds %struct.vnop_mmap_args, %struct.vnop_mmap_args* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PROT_WRITE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_WRITE, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %62, %54
  %67 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  store i32 %67, i32* %9, align 4
  %68 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @vfs_context_ucred(i32 %69)
  %71 = call %struct.nfs_open_owner* @nfs_open_owner_find(%struct.nfsmount* %68, i32 %70, i32 1)
  store %struct.nfs_open_owner* %71, %struct.nfs_open_owner** %12, align 8
  %72 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %73 = icmp ne %struct.nfs_open_owner* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* @ENOMEM, align 4
  store i32 %75, i32* %2, align 4
  br label %634

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %571, %142, %76
  %78 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %79 = call i32 @nfs_mount_state_in_use_start(%struct.nfsmount* %78, i32* null)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %84 = call i32 @nfs_open_owner_rele(%struct.nfs_open_owner* %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %634

86:                                               ; preds = %77
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NREVOKE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load i32, i32* @EIO, align 4
  store i32 %94, i32* %7, align 4
  %95 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %96 = call i64 @nfs_mount_state_in_use_end(%struct.nfsmount* %95, i32 0)
  %97 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %98 = call i32 @nfs_open_owner_rele(%struct.nfs_open_owner* %97)
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %634

100:                                              ; preds = %86
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %103 = call i32 @nfs_open_file_find(%struct.TYPE_11__* %101, %struct.nfs_open_owner* %102, %struct.nfs_open_file** %13, i32 0, i32 0, i32 1)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %125, label %109

109:                                              ; preds = %106
  %110 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %111 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @NFS_OPEN_FILE_LOST, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %109, %100
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %120 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @kauth_cred_getuid(i32 %121)
  %123 = call i32 (%struct.TYPE_11__*, i8*, i32, i32, ...) @NP(%struct.TYPE_11__* %117, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %122)
  %124 = load i32, i32* @EPERM, align 4
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %116, %109, %106
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %144, label %128

128:                                              ; preds = %125
  %129 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %130 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @NFS_OPEN_FILE_REOPEN, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %128
  %136 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %137 = call i64 @nfs_mount_state_in_use_end(%struct.nfsmount* %136, i32 0)
  %138 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %139 = call i32 @nfs4_reopen(%struct.nfs_open_file* %138, i32* null)
  store i32 %139, i32* %7, align 4
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %13, align 8
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  br label %77

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %128, %125
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %149 = call i32 @nfs_open_file_set_busy(%struct.nfs_open_file* %148, i32* null)
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %13, align 8
  br label %560

154:                                              ; preds = %150
  %155 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %156 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %228, label %161

161:                                              ; preds = %154
  %162 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %163 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @NFS_OPEN_FILE_NEEDCLOSE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %183

168:                                              ; preds = %161
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %170 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %171 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %174 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %173, i32 0, i32 5
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @kauth_cred_getuid(i32 %177)
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @vfs_context_thread(i32 %179)
  %181 = call i32 @thread_tid(i32 %180)
  %182 = call i32 (%struct.TYPE_11__*, i8*, i32, i32, ...) @NP(%struct.TYPE_11__* %169, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %172, i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %168, %161
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %194, label %187

187:                                              ; preds = %183
  %188 = load i32, i32* %8, align 4
  %189 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %190 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = and i32 %188, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %187, %183
  %195 = load i32, i32* @EPERM, align 4
  store i32 %195, i32* %7, align 4
  br label %560

196:                                              ; preds = %187
  %197 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %198 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @NFS_VER4, align 8
  %201 = icmp slt i64 %199, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %204 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %205 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  %206 = call i32 @nfs_open_file_add_open(%struct.nfs_open_file* %203, i32 %204, i32 %205, i32 0)
  store i32 0, i32* %7, align 4
  br label %214

207:                                              ; preds = %196
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %209 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %210 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %211 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  %212 = load i32, i32* %4, align 4
  %213 = call i32 @nfs4_open(%struct.TYPE_11__* %208, %struct.nfs_open_file* %209, i32 %210, i32 %211, i32 %212)
  store i32 %213, i32* %7, align 4
  br label %214

214:                                              ; preds = %207, %202
  %215 = load i32, i32* %7, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* @NFS_OPEN_FILE_NEEDCLOSE, align 4
  %219 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %220 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %217, %214
  %224 = load i32, i32* %7, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  br label %560

227:                                              ; preds = %223
  br label %228

228:                                              ; preds = %227, %154
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_BOTH, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %314

232:                                              ; preds = %228
  %233 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %234 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %233, i32 0, i32 11
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %247, label %237

237:                                              ; preds = %232
  %238 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %239 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %238, i32 0, i32 10
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %237
  %243 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %244 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %243, i32 0, i32 9
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %271

247:                                              ; preds = %242, %237, %232
  store i32 1, i32* %10, align 4
  %248 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %249 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %248, i32 0, i32 11
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %247
  %253 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  store i32 %253, i32* %9, align 4
  br label %270

254:                                              ; preds = %247
  %255 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %256 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %255, i32 0, i32 10
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %254
  %260 = load i32, i32* @NFS_OPEN_SHARE_DENY_WRITE, align 4
  store i32 %260, i32* %9, align 4
  br label %269

261:                                              ; preds = %254
  %262 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %263 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %262, i32 0, i32 9
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %261
  %267 = load i32, i32* @NFS_OPEN_SHARE_DENY_BOTH, align 4
  store i32 %267, i32* %9, align 4
  br label %268

268:                                              ; preds = %266, %261
  br label %269

269:                                              ; preds = %268, %259
  br label %270

270:                                              ; preds = %269, %252
  br label %313

271:                                              ; preds = %242
  %272 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %273 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %272, i32 0, i32 8
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %286, label %276

276:                                              ; preds = %271
  %277 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %278 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %277, i32 0, i32 7
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %286, label %281

281:                                              ; preds = %276
  %282 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %283 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %282, i32 0, i32 6
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %310

286:                                              ; preds = %281, %276, %271
  store i32 0, i32* %10, align 4
  %287 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %288 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %287, i32 0, i32 8
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %286
  %292 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  store i32 %292, i32* %9, align 4
  br label %309

293:                                              ; preds = %286
  %294 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %295 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %294, i32 0, i32 7
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %293
  %299 = load i32, i32* @NFS_OPEN_SHARE_DENY_WRITE, align 4
  store i32 %299, i32* %9, align 4
  br label %308

300:                                              ; preds = %293
  %301 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %302 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %301, i32 0, i32 6
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = load i32, i32* @NFS_OPEN_SHARE_DENY_BOTH, align 4
  store i32 %306, i32* %9, align 4
  br label %307

307:                                              ; preds = %305, %300
  br label %308

308:                                              ; preds = %307, %298
  br label %309

309:                                              ; preds = %308, %291
  br label %312

310:                                              ; preds = %281
  %311 = load i32, i32* @EPERM, align 4
  store i32 %311, i32* %7, align 4
  br label %312

312:                                              ; preds = %310, %309
  br label %313

313:                                              ; preds = %312, %270
  br label %478

314:                                              ; preds = %228
  %315 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %316 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %315, i32 0, i32 17
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %329, label %319

319:                                              ; preds = %314
  %320 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %321 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %320, i32 0, i32 16
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %329, label %324

324:                                              ; preds = %319
  %325 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %326 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %325, i32 0, i32 15
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %353

329:                                              ; preds = %324, %319, %314
  store i32 1, i32* %10, align 4
  %330 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %331 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %330, i32 0, i32 17
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %329
  %335 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  store i32 %335, i32* %9, align 4
  br label %352

336:                                              ; preds = %329
  %337 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %338 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %337, i32 0, i32 16
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %336
  %342 = load i32, i32* @NFS_OPEN_SHARE_DENY_WRITE, align 4
  store i32 %342, i32* %9, align 4
  br label %351

343:                                              ; preds = %336
  %344 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %345 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %344, i32 0, i32 15
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %343
  %349 = load i32, i32* @NFS_OPEN_SHARE_DENY_BOTH, align 4
  store i32 %349, i32* %9, align 4
  br label %350

350:                                              ; preds = %348, %343
  br label %351

351:                                              ; preds = %350, %341
  br label %352

352:                                              ; preds = %351, %334
  br label %477

353:                                              ; preds = %324
  %354 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %355 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %354, i32 0, i32 14
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %368, label %358

358:                                              ; preds = %353
  %359 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %360 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %359, i32 0, i32 13
  %361 = load i64, i64* %360, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %368, label %363

363:                                              ; preds = %358
  %364 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %365 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %364, i32 0, i32 12
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %392

368:                                              ; preds = %363, %358, %353
  store i32 0, i32* %10, align 4
  %369 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %370 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %369, i32 0, i32 14
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %368
  %374 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  store i32 %374, i32* %9, align 4
  br label %391

375:                                              ; preds = %368
  %376 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %377 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %376, i32 0, i32 13
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %375
  %381 = load i32, i32* @NFS_OPEN_SHARE_DENY_WRITE, align 4
  store i32 %381, i32* %9, align 4
  br label %390

382:                                              ; preds = %375
  %383 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %384 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %383, i32 0, i32 12
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %382
  %388 = load i32, i32* @NFS_OPEN_SHARE_DENY_BOTH, align 4
  store i32 %388, i32* %9, align 4
  br label %389

389:                                              ; preds = %387, %382
  br label %390

390:                                              ; preds = %389, %380
  br label %391

391:                                              ; preds = %390, %373
  br label %476

392:                                              ; preds = %363
  %393 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %394 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %393, i32 0, i32 11
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %407, label %397

397:                                              ; preds = %392
  %398 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %399 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %398, i32 0, i32 10
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %407, label %402

402:                                              ; preds = %397
  %403 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %404 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %403, i32 0, i32 9
  %405 = load i64, i64* %404, align 8
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %432

407:                                              ; preds = %402, %397, %392
  store i32 1, i32* %10, align 4
  %408 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_BOTH, align 4
  store i32 %408, i32* %8, align 4
  %409 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %410 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %409, i32 0, i32 11
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %415

413:                                              ; preds = %407
  %414 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  store i32 %414, i32* %9, align 4
  br label %431

415:                                              ; preds = %407
  %416 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %417 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %416, i32 0, i32 10
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %422

420:                                              ; preds = %415
  %421 = load i32, i32* @NFS_OPEN_SHARE_DENY_WRITE, align 4
  store i32 %421, i32* %9, align 4
  br label %430

422:                                              ; preds = %415
  %423 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %424 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %423, i32 0, i32 9
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %429

427:                                              ; preds = %422
  %428 = load i32, i32* @NFS_OPEN_SHARE_DENY_BOTH, align 4
  store i32 %428, i32* %9, align 4
  br label %429

429:                                              ; preds = %427, %422
  br label %430

430:                                              ; preds = %429, %420
  br label %431

431:                                              ; preds = %430, %413
  br label %475

432:                                              ; preds = %402
  %433 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %434 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %433, i32 0, i32 8
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %447, label %437

437:                                              ; preds = %432
  %438 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %439 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %438, i32 0, i32 7
  %440 = load i64, i64* %439, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %447, label %442

442:                                              ; preds = %437
  %443 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %444 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %443, i32 0, i32 6
  %445 = load i64, i64* %444, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %472

447:                                              ; preds = %442, %437, %432
  store i32 0, i32* %10, align 4
  %448 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_BOTH, align 4
  store i32 %448, i32* %8, align 4
  %449 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %450 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %449, i32 0, i32 8
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %455

453:                                              ; preds = %447
  %454 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  store i32 %454, i32* %9, align 4
  br label %471

455:                                              ; preds = %447
  %456 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %457 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %456, i32 0, i32 7
  %458 = load i64, i64* %457, align 8
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %462

460:                                              ; preds = %455
  %461 = load i32, i32* @NFS_OPEN_SHARE_DENY_WRITE, align 4
  store i32 %461, i32* %9, align 4
  br label %470

462:                                              ; preds = %455
  %463 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %464 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %463, i32 0, i32 6
  %465 = load i64, i64* %464, align 8
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %469

467:                                              ; preds = %462
  %468 = load i32, i32* @NFS_OPEN_SHARE_DENY_BOTH, align 4
  store i32 %468, i32* %9, align 4
  br label %469

469:                                              ; preds = %467, %462
  br label %470

470:                                              ; preds = %469, %460
  br label %471

471:                                              ; preds = %470, %453
  br label %474

472:                                              ; preds = %442
  %473 = load i32, i32* @EPERM, align 4
  store i32 %473, i32* %7, align 4
  br label %474

474:                                              ; preds = %472, %471
  br label %475

475:                                              ; preds = %474, %431
  br label %476

476:                                              ; preds = %475, %391
  br label %477

477:                                              ; preds = %476, %352
  br label %478

478:                                              ; preds = %477, %313
  %479 = load i32, i32* %7, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %478
  br label %560

482:                                              ; preds = %478
  %483 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %484 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* %8, align 4
  %487 = icmp sgt i32 %485, %486
  br i1 %487, label %500, label %488

488:                                              ; preds = %482
  %489 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %490 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %489, i32 0, i32 3
  %491 = load i32, i32* %490, align 4
  %492 = load i32, i32* %8, align 4
  %493 = icmp eq i32 %491, %492
  br i1 %493, label %494, label %501

494:                                              ; preds = %488
  %495 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %496 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %495, i32 0, i32 4
  %497 = load i32, i32* %496, align 8
  %498 = load i32, i32* %9, align 4
  %499 = icmp sle i32 %497, %498
  br i1 %499, label %500, label %501

500:                                              ; preds = %494, %482
  br label %560

501:                                              ; preds = %494, %488
  %502 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %503 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %502, i32 0, i32 3
  %504 = load i32, i32* %503, align 4
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %548

506:                                              ; preds = %501
  %507 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %508 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %509 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %510 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %509, i32 0, i32 3
  %511 = load i32, i32* %510, align 4
  %512 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %513 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %512, i32 0, i32 4
  %514 = load i32, i32* %513, align 8
  %515 = load i32, i32* %4, align 4
  %516 = call i32 @nfs_close(%struct.TYPE_11__* %507, %struct.nfs_open_file* %508, i32 %511, i32 %514, i32 %515)
  store i32 %516, i32* %7, align 4
  %517 = load i32, i32* %7, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %543

519:                                              ; preds = %506
  %520 = load i32, i32* %7, align 4
  %521 = call i32 @nfs_mount_state_error_should_restart(i32 %520)
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %533, label %523

523:                                              ; preds = %519
  %524 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %525 = load i32, i32* %7, align 4
  %526 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %527 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %526, i32 0, i32 5
  %528 = load %struct.TYPE_10__*, %struct.TYPE_10__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 4
  %531 = call i32 @kauth_cred_getuid(i32 %530)
  %532 = call i32 (%struct.TYPE_11__*, i8*, i32, i32, ...) @NP(%struct.TYPE_11__* %524, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %525, i32 %531)
  br label %533

533:                                              ; preds = %523, %519
  %534 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %535 = load i32, i32* %7, align 4
  %536 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %537 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %536, i32 0, i32 5
  %538 = load %struct.TYPE_10__*, %struct.TYPE_10__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 4
  %541 = call i32 @kauth_cred_getuid(i32 %540)
  %542 = call i32 (%struct.TYPE_11__*, i8*, i32, i32, ...) @NP(%struct.TYPE_11__* %534, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %535, i32 %541)
  br label %560

543:                                              ; preds = %506
  %544 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %545 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %544, i32 0, i32 4
  store i32 0, i32* %545, align 8
  %546 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %547 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %546, i32 0, i32 3
  store i32 0, i32* %547, align 4
  br label %548

548:                                              ; preds = %543, %501
  %549 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %550 = load i32, i32* %8, align 4
  %551 = load i32, i32* %9, align 4
  %552 = load i32, i32* %10, align 4
  %553 = call i32 @nfs_open_file_add_open(%struct.nfs_open_file* %549, i32 %550, i32 %551, i32 %552)
  %554 = load i32, i32* %8, align 4
  %555 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %556 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %555, i32 0, i32 3
  store i32 %554, i32* %556, align 4
  %557 = load i32, i32* %9, align 4
  %558 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %559 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %558, i32 0, i32 4
  store i32 %557, i32* %559, align 8
  br label %560

560:                                              ; preds = %548, %533, %500, %481, %226, %194, %153
  %561 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %562 = icmp ne %struct.nfs_open_file* %561, null
  br i1 %562, label %563, label %566

563:                                              ; preds = %560
  %564 = load %struct.nfs_open_file*, %struct.nfs_open_file** %13, align 8
  %565 = call i32 @nfs_open_file_clear_busy(%struct.nfs_open_file* %564)
  br label %566

566:                                              ; preds = %563, %560
  %567 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %568 = load i32, i32* %7, align 4
  %569 = call i64 @nfs_mount_state_in_use_end(%struct.nfsmount* %567, i32 %568)
  %570 = icmp ne i64 %569, 0
  br i1 %570, label %571, label %572

571:                                              ; preds = %566
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %13, align 8
  br label %77

572:                                              ; preds = %566
  %573 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %574 = icmp ne %struct.nfs_open_owner* %573, null
  br i1 %574, label %575, label %578

575:                                              ; preds = %572
  %576 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %577 = call i32 @nfs_open_owner_rele(%struct.nfs_open_owner* %576)
  br label %578

578:                                              ; preds = %575, %572
  %579 = load i32, i32* %7, align 4
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %632, label %581

581:                                              ; preds = %578
  store i32 0, i32* %14, align 4
  %582 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %583 = call i32 @nfs_node_lock_force(%struct.TYPE_11__* %582)
  %584 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %585 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 4
  %587 = load i32, i32* @NISMAPPED, align 4
  %588 = and i32 %586, %587
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %596

590:                                              ; preds = %581
  %591 = load i32, i32* @NISMAPPED, align 4
  %592 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %593 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 4
  %595 = or i32 %594, %591
  store i32 %595, i32* %593, align 4
  store i32 1, i32* %14, align 4
  br label %596

596:                                              ; preds = %590, %581
  %597 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %598 = call i32 @nfs_node_unlock(%struct.TYPE_11__* %597)
  %599 = load i32, i32* %14, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %631

601:                                              ; preds = %596
  %602 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %603 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %602, i32 0, i32 3
  %604 = call i32 @lck_mtx_lock(i32* %603)
  %605 = load i32, i32* @NFSSTA_SQUISHY, align 4
  %606 = xor i32 %605, -1
  %607 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %608 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %607, i32 0, i32 6
  %609 = load i32, i32* %608, align 8
  %610 = and i32 %609, %606
  store i32 %610, i32* %608, align 8
  %611 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %612 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %611, i32 0, i32 2
  %613 = load i64, i64* %612, align 8
  %614 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %615 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %614, i32 0, i32 1
  store i64 %613, i64* %615, align 8
  %616 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %617 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %616, i32 0, i32 1
  %618 = load i64, i64* %617, align 8
  %619 = icmp sle i64 %618, 0
  br i1 %619, label %620, label %623

620:                                              ; preds = %601
  %621 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %622 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %621, i32 0, i32 5
  store i64 0, i64* %622, align 8
  br label %623

623:                                              ; preds = %620, %601
  %624 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %625 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %624, i32 0, i32 4
  %626 = load i32, i32* %625, align 4
  %627 = add nsw i32 %626, 1
  store i32 %627, i32* %625, align 4
  %628 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %629 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %628, i32 0, i32 3
  %630 = call i32 @lck_mtx_unlock(i32* %629)
  br label %631

631:                                              ; preds = %623, %596
  br label %632

632:                                              ; preds = %631, %578
  %633 = load i32, i32* %7, align 4
  store i32 %633, i32* %2, align 4
  br label %634

634:                                              ; preds = %632, %93, %82, %74, %52, %43, %28
  %635 = load i32, i32* %2, align 4
  ret i32 %635
}

declare dso_local %struct.TYPE_11__* @VTONFS(i32) #1

declare dso_local %struct.nfsmount* @VTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @vnode_isreg(i32) #1

declare dso_local %struct.nfs_open_owner* @nfs_open_owner_find(%struct.nfsmount*, i32, i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @nfs_mount_state_in_use_start(%struct.nfsmount*, i32*) #1

declare dso_local i32 @nfs_open_owner_rele(%struct.nfs_open_owner*) #1

declare dso_local i64 @nfs_mount_state_in_use_end(%struct.nfsmount*, i32) #1

declare dso_local i32 @nfs_open_file_find(%struct.TYPE_11__*, %struct.nfs_open_owner*, %struct.nfs_open_file**, i32, i32, i32) #1

declare dso_local i32 @NP(%struct.TYPE_11__*, i8*, i32, i32, ...) #1

declare dso_local i32 @kauth_cred_getuid(i32) #1

declare dso_local i32 @nfs4_reopen(%struct.nfs_open_file*, i32*) #1

declare dso_local i32 @nfs_open_file_set_busy(%struct.nfs_open_file*, i32*) #1

declare dso_local i32 @thread_tid(i32) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @nfs_open_file_add_open(%struct.nfs_open_file*, i32, i32, i32) #1

declare dso_local i32 @nfs4_open(%struct.TYPE_11__*, %struct.nfs_open_file*, i32, i32, i32) #1

declare dso_local i32 @nfs_close(%struct.TYPE_11__*, %struct.nfs_open_file*, i32, i32, i32) #1

declare dso_local i32 @nfs_mount_state_error_should_restart(i32) #1

declare dso_local i32 @nfs_open_file_clear_busy(%struct.nfs_open_file*) #1

declare dso_local i32 @nfs_node_lock_force(%struct.TYPE_11__*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
