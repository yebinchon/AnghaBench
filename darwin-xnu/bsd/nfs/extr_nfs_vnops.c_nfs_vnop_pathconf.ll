; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_pathconf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_pathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_pathconf_args = type { i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nfsmount = type { i64, i32, i32, %struct.nfs_fsattr }
%struct.nfs_fsattr = type { i32, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i64 0, align 8
@NFS_FSFLAG_NAMED_ATTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFS_VER3 = common dso_local global i64 0, align 8
@NFSSTA_GOTPATHCONF = common dso_local global i32 0, align 4
@NFS_FSFLAG_HOMOGENEOUS = common dso_local global i32 0, align 4
@NFS_FATTR_MAXLINK = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i64 0, align 8
@NFS_FATTR_MAXNAME = common dso_local global i32 0, align 4
@NFS_FATTR_CHOWN_RESTRICTED = common dso_local global i32 0, align 4
@NFS_FSFLAG_CHOWN_RESTRICTED = common dso_local global i32 0, align 4
@NFS_FATTR_NO_TRUNC = common dso_local global i32 0, align 4
@NFS_FSFLAG_NO_TRUNC = common dso_local global i32 0, align 4
@NFS_FATTR_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@NFS_FSFLAG_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@NFS_FATTR_CASE_PRESERVING = common dso_local global i32 0, align 4
@NFS_FSFLAG_CASE_PRESERVING = common dso_local global i32 0, align 4
@NFS_FATTR_MAXFILESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_vnop_pathconf(%struct.vnop_pathconf_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_pathconf_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.nfsmount*, align 8
  %7 = alloca %struct.nfs_fsattr, align 4
  %8 = alloca %struct.nfs_fsattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vnop_pathconf_args* %0, %struct.vnop_pathconf_args** %3, align 8
  %12 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %13 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.TYPE_7__* @VTONFS(i32 %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.nfsmount* @VTONMP(i32 %17)
  store %struct.nfsmount* %18, %struct.nfsmount** %6, align 8
  %19 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %20 = call i64 @nfs_mount_gone(%struct.nfsmount* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %387

24:                                               ; preds = %1
  %25 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %26 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %50 [
    i32 131, label %28
    i32 130, label %28
    i32 133, label %28
    i32 129, label %28
    i32 134, label %28
    i32 135, label %28
    i32 132, label %29
    i32 128, label %40
  ]

28:                                               ; preds = %24, %24, %24, %24, %24, %24
  br label %52

29:                                               ; preds = %24
  %30 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %31 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NFS_VER2, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %37 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32 32, i32* %38, align 4
  store i32 0, i32* %2, align 4
  br label %387

39:                                               ; preds = %29
  br label %52

40:                                               ; preds = %24
  %41 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %42 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @NFS_FSFLAG_NAMED_ATTR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %52

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %24, %49
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %2, align 4
  br label %387

52:                                               ; preds = %48, %39, %28
  %53 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %54 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NFS_VER2, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %2, align 4
  br label %387

60:                                               ; preds = %52
  %61 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %62 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %61, i32 0, i32 2
  %63 = call i32 @lck_mtx_lock(i32* %62)
  %64 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %65 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @NFS_VER3, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %119

69:                                               ; preds = %60
  %70 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %71 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @NFSSTA_GOTPATHCONF, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %115, label %76

76:                                               ; preds = %69
  %77 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %78 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %77, i32 0, i32 2
  %79 = call i32 @lck_mtx_unlock(i32* %78)
  %80 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %7, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @NFS_CLEAR_ATTRIBUTES(i32 %81)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %85 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @nfs3_pathconf_rpc(%struct.TYPE_7__* %83, %struct.nfs_fsattr* %7, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %76
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %2, align 4
  br label %387

92:                                               ; preds = %76
  %93 = load i32, i32* %4, align 4
  %94 = call %struct.nfsmount* @VTONMP(i32 %93)
  store %struct.nfsmount* %94, %struct.nfsmount** %6, align 8
  %95 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %96 = call i64 @nfs_mount_gone(%struct.nfsmount* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @ENXIO, align 4
  store i32 %99, i32* %2, align 4
  br label %387

100:                                              ; preds = %92
  %101 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %102 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %101, i32 0, i32 2
  %103 = call i32 @lck_mtx_lock(i32* %102)
  %104 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %105 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @NFS_FSFLAG_HOMOGENEOUS, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %100
  %112 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %113 = call i32 @nfs3_pathconf_cache(%struct.nfsmount* %112, %struct.nfs_fsattr* %7)
  br label %114

114:                                              ; preds = %111, %100
  store %struct.nfs_fsattr* %7, %struct.nfs_fsattr** %8, align 8
  br label %118

115:                                              ; preds = %69
  %116 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %117 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %116, i32 0, i32 3
  store %struct.nfs_fsattr* %117, %struct.nfs_fsattr** %8, align 8
  br label %118

118:                                              ; preds = %115, %114
  br label %159

119:                                              ; preds = %60
  %120 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %121 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @NFS_FSFLAG_HOMOGENEOUS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %155, label %127

127:                                              ; preds = %119
  %128 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %129 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %128, i32 0, i32 2
  %130 = call i32 @lck_mtx_unlock(i32* %129)
  %131 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %7, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @NFS_CLEAR_ATTRIBUTES(i32 %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %135 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %136 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @nfs4_pathconf_rpc(%struct.TYPE_7__* %134, %struct.nfs_fsattr* %7, i32 %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %127
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %2, align 4
  br label %387

143:                                              ; preds = %127
  %144 = load i32, i32* %4, align 4
  %145 = call %struct.nfsmount* @VTONMP(i32 %144)
  store %struct.nfsmount* %145, %struct.nfsmount** %6, align 8
  %146 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %147 = call i64 @nfs_mount_gone(%struct.nfsmount* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i32, i32* @ENXIO, align 4
  store i32 %150, i32* %2, align 4
  br label %387

151:                                              ; preds = %143
  %152 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %153 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %152, i32 0, i32 2
  %154 = call i32 @lck_mtx_lock(i32* %153)
  store %struct.nfs_fsattr* %7, %struct.nfs_fsattr** %8, align 8
  br label %158

155:                                              ; preds = %119
  %156 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %157 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %156, i32 0, i32 3
  store %struct.nfs_fsattr* %157, %struct.nfs_fsattr** %8, align 8
  br label %158

158:                                              ; preds = %155, %151
  br label %159

159:                                              ; preds = %158, %118
  %160 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %161 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  switch i32 %162, label %380 [
    i32 131, label %163
    i32 130, label %203
    i32 133, label %220
    i32 129, label %242
    i32 134, label %264
    i32 135, label %286
    i32 128, label %308
    i32 132, label %308
  ]

163:                                              ; preds = %159
  %164 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %8, align 8
  %165 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @NFS_FATTR_MAXLINK, align 4
  %168 = call i32 @NFS_BITMAP_ISSET(i32 %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %163
  %171 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %8, align 8
  %172 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %175 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  store i32 %173, i32* %176, align 4
  br label %202

177:                                              ; preds = %163
  %178 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %179 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @NFS_VER4, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %199

183:                                              ; preds = %177
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @NFS_FATTR_MAXLINK, align 4
  %189 = call i32 @NFS_BITMAP_ISSET(i32 %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %183
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %197 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  store i32 %195, i32* %198, align 4
  br label %201

199:                                              ; preds = %183, %177
  %200 = load i32, i32* @EINVAL, align 4
  store i32 %200, i32* %9, align 4
  br label %201

201:                                              ; preds = %199, %191
  br label %202

202:                                              ; preds = %201, %170
  br label %382

203:                                              ; preds = %159
  %204 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %8, align 8
  %205 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @NFS_FATTR_MAXNAME, align 4
  %208 = call i32 @NFS_BITMAP_ISSET(i32 %206, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %203
  %211 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %8, align 8
  %212 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %215 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  store i32 %213, i32* %216, align 4
  br label %219

217:                                              ; preds = %203
  %218 = load i32, i32* @EINVAL, align 4
  store i32 %218, i32* %9, align 4
  br label %219

219:                                              ; preds = %217, %210
  br label %382

220:                                              ; preds = %159
  %221 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %8, align 8
  %222 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @NFS_FATTR_CHOWN_RESTRICTED, align 4
  %225 = call i32 @NFS_BITMAP_ISSET(i32 %223, i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %239

227:                                              ; preds = %220
  %228 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %8, align 8
  %229 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @NFS_FSFLAG_CHOWN_RESTRICTED, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  %234 = zext i1 %233 to i64
  %235 = select i1 %233, i32 200112, i32 0
  %236 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %237 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  store i32 %235, i32* %238, align 4
  br label %241

239:                                              ; preds = %220
  %240 = load i32, i32* @EINVAL, align 4
  store i32 %240, i32* %9, align 4
  br label %241

241:                                              ; preds = %239, %227
  br label %382

242:                                              ; preds = %159
  %243 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %8, align 8
  %244 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @NFS_FATTR_NO_TRUNC, align 4
  %247 = call i32 @NFS_BITMAP_ISSET(i32 %245, i32 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %242
  %250 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %8, align 8
  %251 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @NFS_FSFLAG_NO_TRUNC, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  %256 = zext i1 %255 to i64
  %257 = select i1 %255, i32 200112, i32 0
  %258 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %259 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  store i32 %257, i32* %260, align 4
  br label %263

261:                                              ; preds = %242
  %262 = load i32, i32* @EINVAL, align 4
  store i32 %262, i32* %9, align 4
  br label %263

263:                                              ; preds = %261, %249
  br label %382

264:                                              ; preds = %159
  %265 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %8, align 8
  %266 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @NFS_FATTR_CASE_INSENSITIVE, align 4
  %269 = call i32 @NFS_BITMAP_ISSET(i32 %267, i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %264
  %272 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %8, align 8
  %273 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @NFS_FSFLAG_CASE_INSENSITIVE, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i32 0, i32 1
  %280 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %281 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  store i32 %279, i32* %282, align 4
  br label %285

283:                                              ; preds = %264
  %284 = load i32, i32* @EINVAL, align 4
  store i32 %284, i32* %9, align 4
  br label %285

285:                                              ; preds = %283, %271
  br label %382

286:                                              ; preds = %159
  %287 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %8, align 8
  %288 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @NFS_FATTR_CASE_PRESERVING, align 4
  %291 = call i32 @NFS_BITMAP_ISSET(i32 %289, i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %305

293:                                              ; preds = %286
  %294 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %8, align 8
  %295 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @NFS_FSFLAG_CASE_PRESERVING, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  %300 = zext i1 %299 to i64
  %301 = select i1 %299, i32 1, i32 0
  %302 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %303 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  store i32 %301, i32* %304, align 4
  br label %307

305:                                              ; preds = %286
  %306 = load i32, i32* @EINVAL, align 4
  store i32 %306, i32* %9, align 4
  br label %307

307:                                              ; preds = %305, %293
  br label %382

308:                                              ; preds = %159, %159
  %309 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %8, align 8
  %310 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @NFS_FATTR_MAXFILESIZE, align 4
  %313 = call i32 @NFS_BITMAP_ISSET(i32 %311, i32 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %319, label %315

315:                                              ; preds = %308
  %316 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %317 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  store i32 64, i32* %318, align 4
  store i32 0, i32* %9, align 4
  br label %382

319:                                              ; preds = %308
  %320 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %8, align 8
  %321 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  store i32 %322, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %323 = load i32, i32* %10, align 4
  %324 = sext i32 %323 to i64
  %325 = and i64 %324, -4294967296
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %319
  %328 = load i32, i32* %11, align 4
  %329 = add nsw i32 %328, 32
  store i32 %329, i32* %11, align 4
  %330 = load i32, i32* %10, align 4
  %331 = ashr i32 %330, 32
  store i32 %331, i32* %10, align 4
  br label %332

332:                                              ; preds = %327, %319
  %333 = load i32, i32* %10, align 4
  %334 = and i32 %333, -65536
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %332
  %337 = load i32, i32* %11, align 4
  %338 = add nsw i32 %337, 16
  store i32 %338, i32* %11, align 4
  %339 = load i32, i32* %10, align 4
  %340 = ashr i32 %339, 16
  store i32 %340, i32* %10, align 4
  br label %341

341:                                              ; preds = %336, %332
  %342 = load i32, i32* %10, align 4
  %343 = and i32 %342, 65280
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %350

345:                                              ; preds = %341
  %346 = load i32, i32* %11, align 4
  %347 = add nsw i32 %346, 8
  store i32 %347, i32* %11, align 4
  %348 = load i32, i32* %10, align 4
  %349 = ashr i32 %348, 8
  store i32 %349, i32* %10, align 4
  br label %350

350:                                              ; preds = %345, %341
  %351 = load i32, i32* %10, align 4
  %352 = and i32 %351, 240
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %350
  %355 = load i32, i32* %11, align 4
  %356 = add nsw i32 %355, 4
  store i32 %356, i32* %11, align 4
  %357 = load i32, i32* %10, align 4
  %358 = ashr i32 %357, 4
  store i32 %358, i32* %10, align 4
  br label %359

359:                                              ; preds = %354, %350
  %360 = load i32, i32* %10, align 4
  %361 = and i32 %360, 12
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %359
  %364 = load i32, i32* %11, align 4
  %365 = add nsw i32 %364, 2
  store i32 %365, i32* %11, align 4
  %366 = load i32, i32* %10, align 4
  %367 = ashr i32 %366, 2
  store i32 %367, i32* %10, align 4
  br label %368

368:                                              ; preds = %363, %359
  %369 = load i32, i32* %10, align 4
  %370 = and i32 %369, 2
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %368
  %373 = load i32, i32* %11, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %11, align 4
  br label %375

375:                                              ; preds = %372, %368
  %376 = load i32, i32* %11, align 4
  %377 = load %struct.vnop_pathconf_args*, %struct.vnop_pathconf_args** %3, align 8
  %378 = getelementptr inbounds %struct.vnop_pathconf_args, %struct.vnop_pathconf_args* %377, i32 0, i32 1
  %379 = load i32*, i32** %378, align 8
  store i32 %376, i32* %379, align 4
  br label %382

380:                                              ; preds = %159
  %381 = load i32, i32* @EINVAL, align 4
  store i32 %381, i32* %9, align 4
  br label %382

382:                                              ; preds = %380, %375, %315, %307, %285, %263, %241, %219, %202
  %383 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %384 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %383, i32 0, i32 2
  %385 = call i32 @lck_mtx_unlock(i32* %384)
  %386 = load i32, i32* %9, align 4
  store i32 %386, i32* %2, align 4
  br label %387

387:                                              ; preds = %382, %149, %141, %98, %90, %58, %50, %35, %22
  %388 = load i32, i32* %2, align 4
  ret i32 %388
}

declare dso_local %struct.TYPE_7__* @VTONFS(i32) #1

declare dso_local %struct.nfsmount* @VTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @NFS_CLEAR_ATTRIBUTES(i32) #1

declare dso_local i32 @nfs3_pathconf_rpc(%struct.TYPE_7__*, %struct.nfs_fsattr*, i32) #1

declare dso_local i32 @nfs3_pathconf_cache(%struct.nfsmount*, %struct.nfs_fsattr*) #1

declare dso_local i32 @nfs4_pathconf_rpc(%struct.TYPE_7__*, %struct.nfs_fsattr*, i32) #1

declare dso_local i32 @NFS_BITMAP_ISSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
