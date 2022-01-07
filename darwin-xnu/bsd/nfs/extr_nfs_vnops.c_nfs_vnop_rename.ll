; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_rename.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_rename_args = type { %struct.componentname*, %struct.componentname*, i32*, i32*, i32*, i32*, i32 }
%struct.componentname = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32*, i32 }
%struct.nfs_vattr = type { i32 }
%struct.nfsmount = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 (%struct.TYPE_29__*, i32, i32, %struct.TYPE_29__*, i32, i32, i32)* }

@ENXIO = common dso_local global i32 0, align 4
@nfs_node_hash_mutex = common dso_local global i32 0, align 4
@NHLOCKED = common dso_local global i32 0, align 4
@NHLOCKWANT = common dso_local global i32 0, align 4
@PINOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"nfs_rename\00", align 1
@EXDEV = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@NFS_VER4 = common dso_local global i32 0, align 4
@N_DELEG_MASK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NHHASHED = common dso_local global i32 0, align 4
@n_hash = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@NNEGNCENTRIES = common dso_local global i32 0, align 4
@NGA_CACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_vnop_rename(%struct.vnop_rename_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_rename_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca %struct.componentname*, align 8
  %14 = alloca %struct.componentname*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.nfs_vattr, align 4
  %24 = alloca %struct.nfsmount*, align 8
  store %struct.vnop_rename_args* %0, %struct.vnop_rename_args** %3, align 8
  %25 = load %struct.vnop_rename_args*, %struct.vnop_rename_args** %3, align 8
  %26 = getelementptr inbounds %struct.vnop_rename_args, %struct.vnop_rename_args* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  %28 = load %struct.vnop_rename_args*, %struct.vnop_rename_args** %3, align 8
  %29 = getelementptr inbounds %struct.vnop_rename_args, %struct.vnop_rename_args* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %5, align 8
  %31 = load %struct.vnop_rename_args*, %struct.vnop_rename_args** %3, align 8
  %32 = getelementptr inbounds %struct.vnop_rename_args, %struct.vnop_rename_args* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %6, align 8
  %34 = load %struct.vnop_rename_args*, %struct.vnop_rename_args** %3, align 8
  %35 = getelementptr inbounds %struct.vnop_rename_args, %struct.vnop_rename_args* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %7, align 8
  %37 = load %struct.vnop_rename_args*, %struct.vnop_rename_args** %3, align 8
  %38 = getelementptr inbounds %struct.vnop_rename_args, %struct.vnop_rename_args* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %8, align 8
  %40 = load %struct.vnop_rename_args*, %struct.vnop_rename_args** %3, align 8
  %41 = getelementptr inbounds %struct.vnop_rename_args, %struct.vnop_rename_args* %40, i32 0, i32 1
  %42 = load %struct.componentname*, %struct.componentname** %41, align 8
  store %struct.componentname* %42, %struct.componentname** %13, align 8
  %43 = load %struct.vnop_rename_args*, %struct.vnop_rename_args** %3, align 8
  %44 = getelementptr inbounds %struct.vnop_rename_args, %struct.vnop_rename_args* %43, i32 0, i32 0
  %45 = load %struct.componentname*, %struct.componentname** %44, align 8
  store %struct.componentname* %45, %struct.componentname** %14, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = call %struct.TYPE_29__* @VTONFS(i32* %46)
  store %struct.TYPE_29__* %47, %struct.TYPE_29__** %9, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call %struct.TYPE_29__* @VTONFS(i32* %48)
  store %struct.TYPE_29__* %49, %struct.TYPE_29__** %10, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call %struct.TYPE_29__* @VTONFS(i32* %50)
  store %struct.TYPE_29__* %51, %struct.TYPE_29__** %11, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %1
  %55 = load i32*, i32** %8, align 8
  %56 = call %struct.TYPE_29__* @VTONFS(i32* %55)
  br label %58

57:                                               ; preds = %1
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi %struct.TYPE_29__* [ %56, %54 ], [ null, %57 ]
  store %struct.TYPE_29__* %59, %struct.TYPE_29__** %12, align 8
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %61 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_29__* %60)
  store %struct.nfsmount* %61, %struct.nfsmount** %24, align 8
  %62 = load %struct.nfsmount*, %struct.nfsmount** %24, align 8
  %63 = call i64 @nfs_mount_gone(%struct.nfsmount* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %2, align 4
  br label %441

67:                                               ; preds = %58
  %68 = load %struct.nfsmount*, %struct.nfsmount** %24, align 8
  %69 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %16, align 4
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @vfs_context_thread(i32 %75)
  %77 = call i32 @nfs_node_set_busy4(%struct.TYPE_29__* %71, %struct.TYPE_29__* %72, %struct.TYPE_29__* %73, %struct.TYPE_29__* %74, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %2, align 4
  br label %441

82:                                               ; preds = %67
  %83 = load i32*, i32** %8, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %117

85:                                               ; preds = %82
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = icmp ne i32* %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %85
  %90 = load i32, i32* @nfs_node_hash_mutex, align 4
  %91 = call i32 @lck_mtx_lock(i32 %90)
  br label %92

92:                                               ; preds = %99, %89
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @NHLOCKED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = load i32, i32* @NHLOCKWANT, align 4
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %106 = load i32, i32* @nfs_node_hash_mutex, align 4
  %107 = load i32, i32* @PINOD, align 4
  %108 = call i32 @msleep(%struct.TYPE_29__* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %92

109:                                              ; preds = %92
  %110 = load i32, i32* @NHLOCKED, align 4
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* @nfs_node_hash_mutex, align 4
  %116 = call i32 @lck_mtx_unlock(i32 %115)
  store i32 1, i32* %19, align 4
  br label %117

117:                                              ; preds = %109, %85, %82
  %118 = load i32*, i32** %6, align 8
  %119 = call i32* @vnode_mount(i32* %118)
  store i32* %119, i32** %20, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32*, i32** %8, align 8
  %124 = call i32* @vnode_mount(i32* %123)
  br label %126

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %122
  %127 = phi i32* [ %124, %122 ], [ null, %125 ]
  store i32* %127, i32** %22, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = call i32* @vnode_mount(i32* %128)
  store i32* %129, i32** %21, align 8
  %130 = load i32*, i32** %20, align 8
  %131 = load i32*, i32** %21, align 8
  %132 = icmp ne i32* %130, %131
  br i1 %132, label %140, label %133

133:                                              ; preds = %126
  %134 = load i32*, i32** %8, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load i32*, i32** %20, align 8
  %138 = load i32*, i32** %22, align 8
  %139 = icmp ne i32* %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136, %126
  %141 = load i32, i32* @EXDEV, align 4
  store i32 %141, i32* %15, align 4
  br label %396

142:                                              ; preds = %136, %133
  %143 = load i32*, i32** %8, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load i32*, i32** %8, align 8
  %147 = load i32*, i32** %6, align 8
  %148 = icmp ne i32* %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i32*, i32** %8, align 8
  %151 = call i32 @vnode_isinuse(i32* %150, i32 0)
  store i32 %151, i32* %17, align 4
  br label %152

152:                                              ; preds = %149, %145, %142
  %153 = load i32, i32* %17, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %176

155:                                              ; preds = %152
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %176, label %160

160:                                              ; preds = %155
  %161 = load i32*, i32** %8, align 8
  %162 = call i64 @vnode_vtype(i32* %161)
  %163 = load i64, i64* @VDIR, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %160
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %168 = load %struct.componentname*, %struct.componentname** %13, align 8
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @nfs_sillyrename(%struct.TYPE_29__* %166, %struct.TYPE_29__* %167, %struct.componentname* %168, i32 %169)
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %15, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  br label %396

174:                                              ; preds = %165
  store i32* null, i32** %8, align 8
  br label %175

175:                                              ; preds = %174
  br label %200

176:                                              ; preds = %160, %155, %152
  %177 = load i32*, i32** %8, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %199

179:                                              ; preds = %176
  %180 = load %struct.nfsmount*, %struct.nfsmount** %24, align 8
  %181 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @NFS_VER4, align 4
  %184 = icmp sge i32 %182, %183
  br i1 %184, label %185, label %199

185:                                              ; preds = %179
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @N_DELEG_MASK, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %185
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %194 = load i32, i32* %4, align 4
  %195 = call i32 @vfs_context_thread(i32 %194)
  %196 = load i32, i32* %4, align 4
  %197 = call i32 @vfs_context_ucred(i32 %196)
  %198 = call i32 @nfs4_delegation_return(%struct.TYPE_29__* %193, i32 0, i32 %195, i32 %197)
  br label %199

199:                                              ; preds = %192, %185, %179, %176
  br label %200

200:                                              ; preds = %199, %175
  %201 = load %struct.nfsmount*, %struct.nfsmount** %24, align 8
  %202 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %201, i32 0, i32 1
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %203, i32 0, i32 0
  %205 = load i32 (%struct.TYPE_29__*, i32, i32, %struct.TYPE_29__*, i32, i32, i32)*, i32 (%struct.TYPE_29__*, i32, i32, %struct.TYPE_29__*, i32, i32, i32)** %204, align 8
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %207 = load %struct.componentname*, %struct.componentname** %14, align 8
  %208 = getelementptr inbounds %struct.componentname, %struct.componentname* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.componentname*, %struct.componentname** %14, align 8
  %211 = getelementptr inbounds %struct.componentname, %struct.componentname* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %214 = load %struct.componentname*, %struct.componentname** %13, align 8
  %215 = getelementptr inbounds %struct.componentname, %struct.componentname* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.componentname*, %struct.componentname** %13, align 8
  %218 = getelementptr inbounds %struct.componentname, %struct.componentname* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %4, align 4
  %221 = call i32 %205(%struct.TYPE_29__* %206, i32 %209, i32 %212, %struct.TYPE_29__* %213, i32 %216, i32 %219, i32 %220)
  store i32 %221, i32* %15, align 4
  %222 = load i32, i32* %15, align 4
  %223 = load i32, i32* @ENOENT, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %200
  store i32 0, i32* %15, align 4
  br label %226

226:                                              ; preds = %225, %200
  %227 = load i32*, i32** %8, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %291

229:                                              ; preds = %226
  %230 = load i32*, i32** %8, align 8
  %231 = load i32*, i32** %6, align 8
  %232 = icmp ne i32* %230, %231
  br i1 %232, label %233, label %291

233:                                              ; preds = %229
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %291, label %238

238:                                              ; preds = %233
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %240 = call i32 @nfs_node_lock_force(%struct.TYPE_29__* %239)
  %241 = load i32, i32* %15, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %257, label %243

243:                                              ; preds = %238
  %244 = load i32*, i32** %8, align 8
  %245 = call i32 @vnode_isinuse(i32* %244, i32 0)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %257, label %247

247:                                              ; preds = %243
  %248 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %249 = call i64 @nfs_getattrcache(%struct.TYPE_29__* %248, %struct.nfs_vattr* %23, i32 0)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %255, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %23, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 1
  br label %255

255:                                              ; preds = %251, %247
  %256 = phi i1 [ true, %247 ], [ %254, %251 ]
  br label %257

257:                                              ; preds = %255, %243, %238
  %258 = phi i1 [ false, %243 ], [ false, %238 ], [ %256, %255 ]
  %259 = zext i1 %258 to i32
  store i32 %259, i32* %18, align 4
  %260 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %261 = call i32 @nfs_node_unlock(%struct.TYPE_29__* %260)
  %262 = load i32, i32* @nfs_node_hash_mutex, align 4
  %263 = call i32 @lck_mtx_lock(i32 %262)
  %264 = load i32, i32* %18, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %288

266:                                              ; preds = %257
  %267 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @NHHASHED, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %288

273:                                              ; preds = %266
  %274 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %275 = load i32, i32* @n_hash, align 4
  %276 = call i32 @LIST_REMOVE(%struct.TYPE_29__* %274, i32 %275)
  %277 = load i32, i32* @NHHASHED, align 4
  %278 = xor i32 %277, -1
  %279 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = and i32 %281, %278
  store i32 %282, i32* %280, align 8
  %283 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @FSDBG(i32 266, i32 0, %struct.TYPE_29__* %283, i32 %286, i32 11660062)
  br label %288

288:                                              ; preds = %273, %266, %257
  %289 = load i32, i32* @nfs_node_hash_mutex, align 4
  %290 = call i32 @lck_mtx_unlock(i32 %289)
  br label %291

291:                                              ; preds = %288, %233, %229, %226
  %292 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %293 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %294 = load %struct.componentname*, %struct.componentname** %14, align 8
  %295 = load i32, i32* %4, align 4
  %296 = call i32 @nfs_name_cache_purge(%struct.TYPE_29__* %292, %struct.TYPE_29__* %293, %struct.componentname* %294, i32 %295)
  %297 = load i32*, i32** %8, align 8
  %298 = icmp ne i32* %297, null
  br i1 %298, label %299, label %320

299:                                              ; preds = %291
  %300 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %301 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %302 = load %struct.componentname*, %struct.componentname** %13, align 8
  %303 = load i32, i32* %4, align 4
  %304 = call i32 @nfs_name_cache_purge(%struct.TYPE_29__* %300, %struct.TYPE_29__* %301, %struct.componentname* %302, i32 %303)
  %305 = load i32, i32* %18, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %319

307:                                              ; preds = %299
  %308 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %309 = call i32 @nfs_node_lock_force(%struct.TYPE_29__* %308)
  %310 = load i32, i32* @NMODIFIED, align 4
  %311 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %312 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = and i32 %313, %310
  store i32 %314, i32* %312, align 8
  %315 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %316 = call i32 @nfs_node_unlock(%struct.TYPE_29__* %315)
  %317 = load i32*, i32** %8, align 8
  %318 = call i32 @vnode_recycle(i32* %317)
  br label %319

319:                                              ; preds = %307, %299
  br label %320

320:                                              ; preds = %319, %291
  %321 = load i32, i32* %15, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %395, label %323

323:                                              ; preds = %320
  %324 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %325 = call i32 @nfs_node_lock_force(%struct.TYPE_29__* %324)
  %326 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %327 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @NNEGNCENTRIES, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %341

332:                                              ; preds = %323
  %333 = load i32, i32* @NNEGNCENTRIES, align 4
  %334 = xor i32 %333, -1
  %335 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = and i32 %337, %334
  store i32 %338, i32* %336, align 8
  %339 = load i32*, i32** %7, align 8
  %340 = call i32 @cache_purge_negatives(i32* %339)
  br label %341

341:                                              ; preds = %332, %323
  %342 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %343 = call i32 @nfs_node_unlock(%struct.TYPE_29__* %342)
  %344 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %345 = call i32 @nfs_node_lock_force(%struct.TYPE_29__* %344)
  %346 = load i32*, i32** %7, align 8
  %347 = load i32*, i32** %6, align 8
  %348 = load %struct.componentname*, %struct.componentname** %13, align 8
  %349 = call i32 @cache_enter(i32* %346, i32* %347, %struct.componentname* %348)
  %350 = load i32*, i32** %7, align 8
  %351 = load i32*, i32** %5, align 8
  %352 = icmp ne i32* %350, %351
  br i1 %352, label %353, label %392

353:                                              ; preds = %341
  %354 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %355 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %354, i32 0, i32 3
  %356 = load i32*, i32** %355, align 8
  %357 = icmp ne i32* %356, null
  br i1 %357, label %358, label %373

358:                                              ; preds = %353
  %359 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %360 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %359, i32 0, i32 3
  %361 = load i32*, i32** %360, align 8
  %362 = call i32 @vnode_get(i32* %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %373, label %364

364:                                              ; preds = %358
  %365 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %366 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %365, i32 0, i32 3
  %367 = load i32*, i32** %366, align 8
  %368 = call i32 @vnode_rele(i32* %367)
  %369 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %370 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %369, i32 0, i32 3
  %371 = load i32*, i32** %370, align 8
  %372 = call i32 @vnode_put(i32* %371)
  br label %373

373:                                              ; preds = %364, %358, %353
  %374 = load i32*, i32** %7, align 8
  %375 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %375, i32 0, i32 3
  store i32* %374, i32** %376, align 8
  %377 = load i32*, i32** %7, align 8
  %378 = icmp ne i32* %377, null
  br i1 %378, label %379, label %388

379:                                              ; preds = %373
  %380 = load i32*, i32** %7, align 8
  %381 = call i32 @vnode_get(i32* %380)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %388, label %383

383:                                              ; preds = %379
  %384 = load i32*, i32** %7, align 8
  %385 = call i32 @vnode_ref(i32* %384)
  %386 = load i32*, i32** %7, align 8
  %387 = call i32 @vnode_put(i32* %386)
  br label %391

388:                                              ; preds = %379, %373
  %389 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %390 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %389, i32 0, i32 3
  store i32* null, i32** %390, align 8
  br label %391

391:                                              ; preds = %388, %383
  br label %392

392:                                              ; preds = %391, %341
  %393 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %394 = call i32 @nfs_node_unlock(%struct.TYPE_29__* %393)
  br label %395

395:                                              ; preds = %392, %320
  br label %396

396:                                              ; preds = %395, %173, %140
  %397 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %398 = load i32, i32* %4, align 4
  %399 = load i32, i32* @NGA_CACHED, align 4
  %400 = call i32 @nfs_getattr(%struct.TYPE_29__* %397, i32* null, i32 %398, i32 %399)
  %401 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %402 = load i32, i32* %4, align 4
  %403 = load i32, i32* @NGA_CACHED, align 4
  %404 = call i32 @nfs_getattr(%struct.TYPE_29__* %401, i32* null, i32 %402, i32 %403)
  %405 = load i32, i32* %19, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %434

407:                                              ; preds = %396
  %408 = load i32, i32* @nfs_node_hash_mutex, align 4
  %409 = call i32 @lck_mtx_lock(i32 %408)
  %410 = load i32, i32* @NHLOCKED, align 4
  %411 = xor i32 %410, -1
  %412 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %413 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = and i32 %414, %411
  store i32 %415, i32* %413, align 8
  %416 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %417 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @NHLOCKWANT, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %431

422:                                              ; preds = %407
  %423 = load i32, i32* @NHLOCKWANT, align 4
  %424 = xor i32 %423, -1
  %425 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %426 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = and i32 %427, %424
  store i32 %428, i32* %426, align 8
  %429 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %430 = call i32 @wakeup(%struct.TYPE_29__* %429)
  br label %431

431:                                              ; preds = %422, %407
  %432 = load i32, i32* @nfs_node_hash_mutex, align 4
  %433 = call i32 @lck_mtx_unlock(i32 %432)
  br label %434

434:                                              ; preds = %431, %396
  %435 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %436 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %437 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %438 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %439 = call i32 @nfs_node_clear_busy4(%struct.TYPE_29__* %435, %struct.TYPE_29__* %436, %struct.TYPE_29__* %437, %struct.TYPE_29__* %438)
  %440 = load i32, i32* %15, align 4
  store i32 %440, i32* %2, align 4
  br label %441

441:                                              ; preds = %434, %80, %65
  %442 = load i32, i32* %2, align 4
  ret i32 %442
}

declare dso_local %struct.TYPE_29__* @VTONFS(i32*) #1

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_29__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs_node_set_busy4(%struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @msleep(%struct.TYPE_29__*, i32, i32, i8*, i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32* @vnode_mount(i32*) #1

declare dso_local i32 @vnode_isinuse(i32*, i32) #1

declare dso_local i64 @vnode_vtype(i32*) #1

declare dso_local i32 @nfs_sillyrename(%struct.TYPE_29__*, %struct.TYPE_29__*, %struct.componentname*, i32) #1

declare dso_local i32 @nfs4_delegation_return(%struct.TYPE_29__*, i32, i32, i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @nfs_node_lock_force(%struct.TYPE_29__*) #1

declare dso_local i64 @nfs_getattrcache(%struct.TYPE_29__*, %struct.nfs_vattr*, i32) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_29__*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @FSDBG(i32, i32, %struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @nfs_name_cache_purge(%struct.TYPE_29__*, %struct.TYPE_29__*, %struct.componentname*, i32) #1

declare dso_local i32 @vnode_recycle(i32*) #1

declare dso_local i32 @cache_purge_negatives(i32*) #1

declare dso_local i32 @cache_enter(i32*, i32*, %struct.componentname*) #1

declare dso_local i32 @vnode_get(i32*) #1

declare dso_local i32 @vnode_rele(i32*) #1

declare dso_local i32 @vnode_put(i32*) #1

declare dso_local i32 @vnode_ref(i32*) #1

declare dso_local i32 @nfs_getattr(%struct.TYPE_29__*, i32*, i32, i32) #1

declare dso_local i32 @wakeup(%struct.TYPE_29__*) #1

declare dso_local i32 @nfs_node_clear_busy4(%struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
