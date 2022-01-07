; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_dir_buf_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_dir_buf_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i32, i32 }
%struct.componentname = type { i32, i8* }
%struct.nfsmount = type { i32 }
%struct.nfs_vattr = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.nfsbuf = type { i32 }
%struct.nfsbuflists = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NFS_DIRBLKSIZ = common dso_local global i32 0, align 4
@NBLK_READ = common dso_local global i32 0, align 4
@NBLK_ONLYVALID = common dso_local global i32 0, align 4
@NDBS_PURGE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@nfs_buf_mutex = common dso_local global i32 0, align 4
@NBI_CLEAN = common dso_local global i32 0, align 4
@nb_vnbufs = common dso_local global i32 0, align 4
@NBAC_NOWAIT = common dso_local global i32 0, align 4
@NG_MAKEENTRY = common dso_local global i32 0, align 4
@NGA_CACHED = common dso_local global i32 0, align 4
@NDBS_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_dir_buf_cache_lookup(%struct.TYPE_15__* %0, %struct.TYPE_15__** %1, %struct.componentname* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__**, align 8
  %9 = alloca %struct.componentname*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.nfsmount*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.nfs_vattr, align 4
  %20 = alloca %struct.TYPE_16__, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.nfsbuf*, align 8
  %24 = alloca %struct.nfsbuf*, align 8
  %25 = alloca %struct.nfsbuf*, align 8
  %26 = alloca %struct.nfsbuflists, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__** %1, %struct.TYPE_15__*** %8, align 8
  store %struct.componentname* %2, %struct.componentname** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i64 0, i64* %21, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @vfs_context_thread(i32 %30)
  store i32 %31, i32* %22, align 4
  %32 = load %struct.componentname*, %struct.componentname** %9, align 8
  %33 = getelementptr inbounds %struct.componentname, %struct.componentname* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 2
  br i1 %35, label %36, label %52

36:                                               ; preds = %5
  %37 = load %struct.componentname*, %struct.componentname** %9, align 8
  %38 = getelementptr inbounds %struct.componentname, %struct.componentname* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 46
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.componentname*, %struct.componentname** %9, align 8
  %46 = getelementptr inbounds %struct.componentname, %struct.componentname* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 95
  br label %52

52:                                               ; preds = %44, %36, %5
  %53 = phi i1 [ false, %36 ], [ false, %5 ], [ %51, %44 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %29, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_15__* %55)
  store %struct.nfsmount* %56, %struct.nfsmount** %13, align 8
  %57 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %58 = call i64 @nfs_mount_gone(%struct.nfsmount* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @ENXIO, align 4
  store i32 %61, i32* %6, align 4
  br label %306

62:                                               ; preds = %52
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %66, align 8
  br label %67

67:                                               ; preds = %65, %62
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %27, align 4
  store i32 0, i32* %15, align 4
  br label %71

71:                                               ; preds = %112, %67
  %72 = load i32, i32* %15, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %115

74:                                               ; preds = %71
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %76 = load i32, i32* %27, align 4
  %77 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %78 = load i32, i32* %22, align 4
  %79 = load i32, i32* @NBLK_READ, align 4
  %80 = load i32, i32* @NBLK_ONLYVALID, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @nfs_buf_get(%struct.TYPE_15__* %75, i32 %76, i32 %77, i32 %78, i32 %81, %struct.nfsbuf** %23)
  store i32 %82, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %6, align 4
  br label %306

86:                                               ; preds = %74
  %87 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %88 = icmp ne %struct.nfsbuf* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  br label %115

90:                                               ; preds = %86
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  %93 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %94 = load %struct.componentname*, %struct.componentname** %9, align 8
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @NDBS_PURGE, align 4
  br label %100

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  %102 = call i32 @nfs_dir_buf_search(%struct.nfsbuf* %93, %struct.componentname* %94, %struct.TYPE_16__* %20, %struct.nfs_vattr* %19, i32* %18, i64* %21, i32* %28, i32 %101)
  store i32 %102, i32* %14, align 4
  %103 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %104 = call i32 @nfs_buf_release(%struct.nfsbuf* %103, i32 0)
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @ESRCH, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 0, i32* %14, align 4
  br label %110

109:                                              ; preds = %100
  store i32 1, i32* %16, align 4
  br label %115

110:                                              ; preds = %108
  %111 = load i32, i32* %28, align 4
  store i32 %111, i32* %27, align 4
  br label %112

112:                                              ; preds = %110
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %71

115:                                              ; preds = %109, %89, %71
  %116 = load i32, i32* @nfs_buf_mutex, align 4
  %117 = call i32 @lck_mtx_lock(i32 %116)
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* %27, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  br label %227

124:                                              ; preds = %115
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %126 = load i32, i32* @NBI_CLEAN, align 4
  %127 = call i32 @nfs_buf_iterprepare(%struct.TYPE_15__* %125, %struct.nfsbuflists* %26, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %226, label %129

129:                                              ; preds = %124
  store %struct.nfsbuf* null, %struct.nfsbuf** %25, align 8
  store %struct.nfsbuf* null, %struct.nfsbuf** %24, align 8
  br label %130

130:                                              ; preds = %202, %178, %167, %157, %129
  %131 = call %struct.nfsbuf* @LIST_FIRST(%struct.nfsbuflists* %26)
  store %struct.nfsbuf* %131, %struct.nfsbuf** %23, align 8
  %132 = icmp ne %struct.nfsbuf* %131, null
  br i1 %132, label %133, label %205

133:                                              ; preds = %130
  %134 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %135 = load i32, i32* @nb_vnbufs, align 4
  %136 = call i32 @LIST_REMOVE(%struct.nfsbuf* %134, i32 %135)
  %137 = load %struct.nfsbuf*, %struct.nfsbuf** %24, align 8
  %138 = icmp ne %struct.nfsbuf* %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %133
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 4
  %142 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %143 = load i32, i32* @nb_vnbufs, align 4
  %144 = call i32 @LIST_INSERT_HEAD(i32* %141, %struct.nfsbuf* %142, i32 %143)
  br label %150

145:                                              ; preds = %133
  %146 = load %struct.nfsbuf*, %struct.nfsbuf** %24, align 8
  %147 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %148 = load i32, i32* @nb_vnbufs, align 4
  %149 = call i32 @LIST_INSERT_AFTER(%struct.nfsbuf* %146, %struct.nfsbuf* %147, i32 %148)
  br label %150

150:                                              ; preds = %145, %139
  %151 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  store %struct.nfsbuf* %151, %struct.nfsbuf** %24, align 8
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %16, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154, %150
  br label %130

158:                                              ; preds = %154
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %29, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i32, i32* %17, align 4
  %166 = icmp sgt i32 %165, 100
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %130

168:                                              ; preds = %164, %161, %158
  %169 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %170 = call i32 @nfs_buf_refget(%struct.nfsbuf* %169)
  %171 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %172 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %27, align 4
  %174 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %175 = load i32, i32* @NBAC_NOWAIT, align 4
  %176 = call i64 @nfs_buf_acquire(%struct.nfsbuf* %174, i32 %175, i32 0, i32 0)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %168
  %179 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %180 = call i32 @nfs_buf_refrele(%struct.nfsbuf* %179)
  br label %130

181:                                              ; preds = %168
  %182 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %183 = call i32 @nfs_buf_refrele(%struct.nfsbuf* %182)
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %17, align 4
  %186 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %187 = load %struct.componentname*, %struct.componentname** %9, align 8
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %181
  %191 = load i32, i32* @NDBS_PURGE, align 4
  br label %193

192:                                              ; preds = %181
  br label %193

193:                                              ; preds = %192, %190
  %194 = phi i32 [ %191, %190 ], [ 0, %192 ]
  %195 = call i32 @nfs_dir_buf_search(%struct.nfsbuf* %186, %struct.componentname* %187, %struct.TYPE_16__* %20, %struct.nfs_vattr* %19, i32* %18, i64* %21, i32* null, i32 %194)
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* @ESRCH, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  store i32 0, i32* %14, align 4
  br label %202

200:                                              ; preds = %193
  store i32 1, i32* %16, align 4
  %201 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  store %struct.nfsbuf* %201, %struct.nfsbuf** %25, align 8
  br label %202

202:                                              ; preds = %200, %199
  %203 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %204 = call i32 @nfs_buf_drop(%struct.nfsbuf* %203)
  br label %130

205:                                              ; preds = %130
  %206 = load i32, i32* %16, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %205
  %209 = load %struct.nfsbuf*, %struct.nfsbuf** %25, align 8
  %210 = load i32, i32* @nb_vnbufs, align 4
  %211 = call i32 @LIST_REMOVE(%struct.nfsbuf* %209, i32 %210)
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 4
  %214 = load %struct.nfsbuf*, %struct.nfsbuf** %25, align 8
  %215 = load i32, i32* @nb_vnbufs, align 4
  %216 = call i32 @LIST_INSERT_HEAD(i32* %213, %struct.nfsbuf* %214, i32 %215)
  %217 = load %struct.nfsbuf*, %struct.nfsbuf** %25, align 8
  %218 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 8
  br label %222

222:                                              ; preds = %208, %205
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %224 = load i32, i32* @NBI_CLEAN, align 4
  %225 = call i32 @nfs_buf_itercomplete(%struct.TYPE_15__* %223, %struct.nfsbuflists* %26, i32 %224)
  br label %226

226:                                              ; preds = %222, %124
  br label %227

227:                                              ; preds = %226, %120
  %228 = load i32, i32* @nfs_buf_mutex, align 4
  %229 = call i32 @lck_mtx_unlock(i32 %228)
  %230 = load i32, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %304, label %232

232:                                              ; preds = %227
  %233 = load i32, i32* %16, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %304

235:                                              ; preds = %232
  %236 = load i32, i32* %11, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %304, label %238

238:                                              ; preds = %235
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %240 = call i32 @NFSTOMP(%struct.TYPE_15__* %239)
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %242 = load %struct.componentname*, %struct.componentname** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @NG_MAKEENTRY, align 4
  %251 = call i32 @nfs_nget(i32 %240, %struct.TYPE_15__* %241, %struct.componentname* %242, i32 %244, i32 %246, %struct.nfs_vattr* %19, i32* %18, i32 %249, i32 %250, %struct.TYPE_15__** %12)
  store i32 %251, i32* %14, align 4
  %252 = load i32, i32* %14, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %238
  %255 = load i32, i32* %14, align 4
  store i32 %255, i32* %6, align 4
  br label %306

256:                                              ; preds = %238
  %257 = load i64, i64* %21, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  store i64 %257, i64* %259, align 8
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %261 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  store %struct.TYPE_15__* %260, %struct.TYPE_15__** %261, align 8
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %263 = call i32 @nfs_node_unlock(%struct.TYPE_15__* %262)
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* @NGA_CACHED, align 4
  %267 = call i32 @nfs_getattr(%struct.TYPE_15__* %264, %struct.nfs_vattr* %19, i32 %265, i32 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %303, label %269

269:                                              ; preds = %256
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* %21, align 8
  %274 = icmp ne i64 %272, %273
  br i1 %274, label %275, label %303

275:                                              ; preds = %269
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %277 = load i32, i32* %27, align 4
  %278 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %279 = load i32, i32* %22, align 4
  %280 = load i32, i32* @NBLK_READ, align 4
  %281 = load i32, i32* @NBLK_ONLYVALID, align 4
  %282 = or i32 %280, %281
  %283 = call i32 @nfs_buf_get(%struct.TYPE_15__* %276, i32 %277, i32 %278, i32 %279, i32 %282, %struct.nfsbuf** %23)
  store i32 %283, i32* %14, align 4
  %284 = load i32, i32* %14, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %302, label %286

286:                                              ; preds = %275
  %287 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %288 = icmp ne %struct.nfsbuf* %287, null
  br i1 %288, label %289, label %302

289:                                              ; preds = %286
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  store i64 %292, i64* %21, align 8
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  store i32 %295, i32* %18, align 4
  %296 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %297 = load %struct.componentname*, %struct.componentname** %9, align 8
  %298 = load i32, i32* @NDBS_UPDATE, align 4
  %299 = call i32 @nfs_dir_buf_search(%struct.nfsbuf* %296, %struct.componentname* %297, %struct.TYPE_16__* %20, %struct.nfs_vattr* %19, i32* %18, i64* %21, i32* null, i32 %298)
  %300 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %301 = call i32 @nfs_buf_release(%struct.nfsbuf* %300, i32 0)
  br label %302

302:                                              ; preds = %289, %286, %275
  store i32 0, i32* %14, align 4
  br label %303

303:                                              ; preds = %302, %269, %256
  br label %304

304:                                              ; preds = %303, %235, %232, %227
  %305 = load i32, i32* %14, align 4
  store i32 %305, i32* %6, align 4
  br label %306

306:                                              ; preds = %304, %254, %84, %60
  %307 = load i32, i32* %6, align 4
  ret i32 %307
}

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_15__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs_buf_get(%struct.TYPE_15__*, i32, i32, i32, i32, %struct.nfsbuf**) #1

declare dso_local i32 @nfs_dir_buf_search(%struct.nfsbuf*, %struct.componentname*, %struct.TYPE_16__*, %struct.nfs_vattr*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @nfs_buf_release(%struct.nfsbuf*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @nfs_buf_iterprepare(%struct.TYPE_15__*, %struct.nfsbuflists*, i32) #1

declare dso_local %struct.nfsbuf* @LIST_FIRST(%struct.nfsbuflists*) #1

declare dso_local i32 @LIST_REMOVE(%struct.nfsbuf*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.nfsbuf*, i32) #1

declare dso_local i32 @LIST_INSERT_AFTER(%struct.nfsbuf*, %struct.nfsbuf*, i32) #1

declare dso_local i32 @nfs_buf_refget(%struct.nfsbuf*) #1

declare dso_local i64 @nfs_buf_acquire(%struct.nfsbuf*, i32, i32, i32) #1

declare dso_local i32 @nfs_buf_refrele(%struct.nfsbuf*) #1

declare dso_local i32 @nfs_buf_drop(%struct.nfsbuf*) #1

declare dso_local i32 @nfs_buf_itercomplete(%struct.TYPE_15__*, %struct.nfsbuflists*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @nfs_nget(i32, %struct.TYPE_15__*, %struct.componentname*, i32, i32, %struct.nfs_vattr*, i32*, i32, i32, %struct.TYPE_15__**) #1

declare dso_local i32 @NFSTOMP(%struct.TYPE_15__*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @nfs_getattr(%struct.TYPE_15__*, %struct.nfs_vattr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
