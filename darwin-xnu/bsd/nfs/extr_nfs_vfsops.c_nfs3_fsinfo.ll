; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs3_fsinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs3_fsinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32, i32, i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.nfsm_chain = type { i32 }

@NFSPROC_FSINFO = common dso_local global i32 0, align 4
@NFS_FABLKSIZE = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@NFSV3FSINFO_LINK = common dso_local global i32 0, align 4
@NFS_FSFLAG_LINK = common dso_local global i32 0, align 4
@NFSV3FSINFO_SYMLINK = common dso_local global i32 0, align 4
@NFS_FSFLAG_SYMLINK = common dso_local global i32 0, align 4
@NFSV3FSINFO_HOMOGENEOUS = common dso_local global i32 0, align 4
@NFS_FSFLAG_HOMOGENEOUS = common dso_local global i32 0, align 4
@NFSV3FSINFO_CANSETTIME = common dso_local global i32 0, align 4
@NFS_FSFLAG_SET_TIME = common dso_local global i32 0, align 4
@NFSSTA_GOTFSINFO = common dso_local global i32 0, align 4
@NFS_FATTR_MAXREAD = common dso_local global i32 0, align 4
@NFS_FATTR_MAXWRITE = common dso_local global i32 0, align 4
@NFS_FATTR_MAXFILESIZE = common dso_local global i32 0, align 4
@NFS_FATTR_LINK_SUPPORT = common dso_local global i32 0, align 4
@NFS_FATTR_SYMLINK_SUPPORT = common dso_local global i32 0, align 4
@NFS_FATTR_HOMOGENEOUS = common dso_local global i32 0, align 4
@NFS_FATTR_CANSETTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_fsinfo(%struct.nfsmount* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.nfsmount*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nfsm_chain, align 4
  %16 = alloca %struct.nfsm_chain, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %17 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %15)
  %18 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %16)
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %21 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @NFSX_FH(i32 %22)
  %24 = call i32 @nfsm_chain_build_alloc_init(i32 %19, %struct.nfsm_chain* %15, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %27 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nfsm_chain_add_fh(i32 %25, %struct.nfsm_chain* %15, i32 %28, i32 %31, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @nfsm_chain_build_done(i32 %36, %struct.nfsm_chain* %15)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @nfsmout_if(i32 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = load i32, i32* @NFSPROC_FSINFO, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @nfs_request(%struct.TYPE_9__* %40, i32* null, %struct.nfsm_chain* %15, i32 %41, i32 %42, i32* null, %struct.nfsm_chain* %16, i32* %11, i32* %9)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = call i32 @nfs_node_lock(%struct.TYPE_9__* %44)
  store i32 %45, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %3
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = call i32 @nfsm_chain_postop_attr_update(i32 %50, %struct.nfsm_chain* %16, %struct.TYPE_9__* %51, i32* %11)
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = call i32 @nfs_node_unlock(%struct.TYPE_9__* %56)
  br label %58

58:                                               ; preds = %55, %49
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @nfsmout_if(i32 %64)
  %66 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %67 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %66, i32 0, i32 3
  %68 = call i32 @lck_mtx_lock(i32* %67)
  store i32 1, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @nfsm_chain_get_32(i32 %69, %struct.nfsm_chain* %16, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @nfsm_chain_get_32(i32 %72, %struct.nfsm_chain* %16, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @nfsmout_if(i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %79 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %83 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %63
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @NFS_FABLKSIZE, align 4
  %89 = add nsw i32 %87, %88
  %90 = sub nsw i32 %89, 1
  %91 = load i32, i32* @NFS_FABLKSIZE, align 4
  %92 = sub nsw i32 %91, 1
  %93 = xor i32 %92, -1
  %94 = and i32 %90, %93
  %95 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %96 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %86, %63
  %98 = load i32, i32* %14, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %97
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %103 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %100
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @NFS_FABLKSIZE, align 4
  %109 = sub nsw i32 %108, 1
  %110 = xor i32 %109, -1
  %111 = and i32 %107, %110
  %112 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %113 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %115 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %106
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %121 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %118, %106
  br label %123

123:                                              ; preds = %122, %100, %97
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @NFSX_UNSIGNED, align 4
  %126 = call i32 @nfsm_chain_adv(i32 %124, %struct.nfsm_chain* %16, i32 %125)
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @nfsm_chain_get_32(i32 %127, %struct.nfsm_chain* %16, i32 %128)
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @nfsm_chain_get_32(i32 %130, %struct.nfsm_chain* %16, i32 %131)
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @nfsmout_if(i32 %133)
  %135 = load i32, i32* %14, align 4
  %136 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %137 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %141 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %123
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @NFS_FABLKSIZE, align 4
  %147 = add nsw i32 %145, %146
  %148 = sub nsw i32 %147, 1
  %149 = load i32, i32* @NFS_FABLKSIZE, align 4
  %150 = sub nsw i32 %149, 1
  %151 = xor i32 %150, -1
  %152 = and i32 %148, %151
  %153 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %154 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %144, %123
  %156 = load i32, i32* %14, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %181

158:                                              ; preds = %155
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %161 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %181

164:                                              ; preds = %158
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* @NFS_FABLKSIZE, align 4
  %167 = sub nsw i32 %166, 1
  %168 = xor i32 %167, -1
  %169 = and i32 %165, %168
  %170 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %171 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %173 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %164
  %177 = load i32, i32* %14, align 4
  %178 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %179 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  br label %180

180:                                              ; preds = %176, %164
  br label %181

181:                                              ; preds = %180, %158, %155
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @NFSX_UNSIGNED, align 4
  %184 = call i32 @nfsm_chain_adv(i32 %182, %struct.nfsm_chain* %16, i32 %183)
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @nfsm_chain_get_32(i32 %185, %struct.nfsm_chain* %16, i32 %186)
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @nfsmout_if(i32 %188)
  %190 = load i32, i32* %13, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %181
  %193 = load i32, i32* %13, align 4
  %194 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %195 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %192
  %199 = load i32, i32* %13, align 4
  %200 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %201 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 4
  br label %202

202:                                              ; preds = %198, %192, %181
  %203 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %204 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %224

208:                                              ; preds = %202
  %209 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %210 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %214 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %208
  %218 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %219 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %223 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 4
  br label %224

224:                                              ; preds = %217, %208, %202
  %225 = load i32, i32* %7, align 4
  %226 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %227 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @nfsm_chain_get_64(i32 %225, %struct.nfsm_chain* %16, i32 %229)
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* @NFSX_UNSIGNED, align 4
  %233 = mul nsw i32 2, %232
  %234 = call i32 @nfsm_chain_adv(i32 %231, %struct.nfsm_chain* %16, i32 %233)
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* %12, align 4
  %237 = call i32 @nfsm_chain_get_32(i32 %235, %struct.nfsm_chain* %16, i32 %236)
  %238 = load i32, i32* %7, align 4
  %239 = call i32 @nfsmout_if(i32 %238)
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* @NFSV3FSINFO_LINK, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %224
  %245 = load i32, i32* @NFS_FSFLAG_LINK, align 4
  %246 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %247 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %245
  store i32 %250, i32* %248, align 4
  br label %251

251:                                              ; preds = %244, %224
  %252 = load i32, i32* %12, align 4
  %253 = load i32, i32* @NFSV3FSINFO_SYMLINK, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %251
  %257 = load i32, i32* @NFS_FSFLAG_SYMLINK, align 4
  %258 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %259 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %258, i32 0, i32 4
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %257
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %256, %251
  %264 = load i32, i32* %12, align 4
  %265 = load i32, i32* @NFSV3FSINFO_HOMOGENEOUS, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %263
  %269 = load i32, i32* @NFS_FSFLAG_HOMOGENEOUS, align 4
  %270 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %271 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = or i32 %273, %269
  store i32 %274, i32* %272, align 4
  br label %275

275:                                              ; preds = %268, %263
  %276 = load i32, i32* %12, align 4
  %277 = load i32, i32* @NFSV3FSINFO_CANSETTIME, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %275
  %281 = load i32, i32* @NFS_FSFLAG_SET_TIME, align 4
  %282 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %283 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %282, i32 0, i32 4
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %281
  store i32 %286, i32* %284, align 4
  br label %287

287:                                              ; preds = %280, %275
  %288 = load i32, i32* @NFSSTA_GOTFSINFO, align 4
  %289 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %290 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 4
  %293 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %294 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %293, i32 0, i32 4
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @NFS_FATTR_MAXREAD, align 4
  %298 = call i32 @NFS_BITMAP_SET(i32 %296, i32 %297)
  %299 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %300 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %299, i32 0, i32 4
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @NFS_FATTR_MAXWRITE, align 4
  %304 = call i32 @NFS_BITMAP_SET(i32 %302, i32 %303)
  %305 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %306 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %305, i32 0, i32 4
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @NFS_FATTR_MAXFILESIZE, align 4
  %310 = call i32 @NFS_BITMAP_SET(i32 %308, i32 %309)
  %311 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %312 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %311, i32 0, i32 4
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @NFS_FATTR_LINK_SUPPORT, align 4
  %316 = call i32 @NFS_BITMAP_SET(i32 %314, i32 %315)
  %317 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %318 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %317, i32 0, i32 4
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @NFS_FATTR_SYMLINK_SUPPORT, align 4
  %322 = call i32 @NFS_BITMAP_SET(i32 %320, i32 %321)
  %323 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %324 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %323, i32 0, i32 4
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @NFS_FATTR_HOMOGENEOUS, align 4
  %328 = call i32 @NFS_BITMAP_SET(i32 %326, i32 %327)
  %329 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %330 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %329, i32 0, i32 4
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @NFS_FATTR_CANSETTIME, align 4
  %334 = call i32 @NFS_BITMAP_SET(i32 %332, i32 %333)
  br label %335

335:                                              ; preds = %287
  %336 = load i32, i32* %10, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %335
  %339 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %340 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %339, i32 0, i32 3
  %341 = call i32 @lck_mtx_unlock(i32* %340)
  br label %342

342:                                              ; preds = %338, %335
  %343 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %15)
  %344 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %16)
  %345 = load i32, i32* %7, align 4
  ret i32 %345
}

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @NFSX_FH(i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request(%struct.TYPE_9__*, i32*, %struct.nfsm_chain*, i32, i32, i32*, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @nfsm_chain_postop_attr_update(i32, %struct.nfsm_chain*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_adv(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_get_64(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @NFS_BITMAP_SET(i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
