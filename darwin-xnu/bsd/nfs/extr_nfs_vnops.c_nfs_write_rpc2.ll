; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_write_rpc2.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_write_rpc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.nfsmount = type { i32, i64, i64, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, i32*, i64, i32, i32, i32, i32*, %struct.nfsreq**)*, i32 (%struct.TYPE_12__*, %struct.nfsreq*, i32*, i64*, i32*)* }
%struct.nfsreq = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NFS_WRITE_FILESYNC = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NREVOKE = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@NFSERR_GRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"nfs_write_rpc: error %d, initiating recovery\00", align 1
@PZERO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"nfsgrace\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_write_rpc2(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.nfsmount*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.nfsreq, align 4
  %28 = alloca %struct.nfsreq*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %20, align 4
  store %struct.nfsreq* %27, %struct.nfsreq** %28, align 8
  store i64 0, i64* %29, align 8
  store i64 0, i64* %30, align 8
  store i64 0, i64* %31, align 8
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @uio_offset(i32* %34)
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 @uio_resid(i32* %36)
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @FSDBG_TOP(i32 537, %struct.TYPE_12__* %33, i32 %35, i64 %37, i32 %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_12__* %41)
  store %struct.nfsmount* %42, %struct.nfsmount** %14, align 8
  %43 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %44 = call i64 @nfs_mount_gone(%struct.nfsmount* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %6
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %7, align 4
  br label %315

48:                                               ; preds = %6
  %49 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %50 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %16, align 4
  %52 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %53 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %22, align 8
  store i32 0, i32* %17, align 4
  %55 = load i32, i32* @NFS_WRITE_FILESYNC, align 4
  store i32 %55, i32* %19, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i64 @uio_resid(i32* %56)
  store i64 %57, i64* %24, align 8
  store i64 %57, i64* %23, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* @NFS_VER2, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %48
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @uio_offset(i32* %62)
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %24, align 8
  %66 = add i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = icmp ugt i64 %68, 4294967295
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @uio_offset(i32* %72)
  %74 = load i32*, i32** %9, align 8
  %75 = call i64 @uio_resid(i32* %74)
  %76 = load i32, i32* @EFBIG, align 4
  %77 = call i32 @FSDBG_BOT(i32 537, %struct.TYPE_12__* %71, i32 %73, i64 %75, i32 %76)
  %78 = load i32, i32* @EFBIG, align 4
  store i32 %78, i32* %7, align 4
  br label %315

79:                                               ; preds = %61, %48
  %80 = load i32*, i32** %9, align 8
  %81 = call i32* @uio_duplicate(i32* %80)
  store i32* %81, i32** %32, align 8
  %82 = load i32*, i32** %32, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @EIO, align 4
  store i32 %85, i32* %7, align 4
  br label %315

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %282, %231, %220, %86
  %88 = load i64, i64* %24, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %283

90:                                               ; preds = %87
  %91 = load i64, i64* %24, align 8
  %92 = load i64, i64* %22, align 8
  %93 = icmp ugt i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i64, i64* %22, align 8
  br label %98

96:                                               ; preds = %90
  %97 = load i64, i64* %24, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i64 [ %95, %94 ], [ %97, %96 ]
  store i64 %99, i64* %25, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @uio_offset(i32* %101)
  %103 = load i64, i64* %25, align 8
  %104 = call i32 @FSDBG(i32 537, %struct.TYPE_12__* %100, i32 %102, i64 %103, i32 0)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @NREVOKE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %98
  %112 = load i32, i32* @EIO, align 4
  store i32 %112, i32* %15, align 4
  br label %283

113:                                              ; preds = %98
  %114 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %115 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @NFS_VER4, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %121 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %29, align 8
  br label %123

123:                                              ; preds = %119, %113
  %124 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %125 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %124, i32 0, i32 5
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_12__*, i32*, i64, i32, i32, i32, i32*, %struct.nfsreq**)*, i32 (%struct.TYPE_12__*, i32*, i64, i32, i32, i32, i32*, %struct.nfsreq**)** %127, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = load i64, i64* %25, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* %134, align 4
  %136 = call i32 %128(%struct.TYPE_12__* %129, i32* %130, i64 %131, i32 %132, i32 %133, i32 %135, i32* null, %struct.nfsreq** %28)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %123
  %140 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %141 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %140, i32 0, i32 5
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i32 (%struct.TYPE_12__*, %struct.nfsreq*, i32*, i64*, i32*)*, i32 (%struct.TYPE_12__*, %struct.nfsreq*, i32*, i64*, i32*)** %143, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %146 = load %struct.nfsreq*, %struct.nfsreq** %28, align 8
  %147 = call i32 %144(%struct.TYPE_12__* %145, %struct.nfsreq* %146, i32* %18, i64* %26, i32* %21)
  store i32 %147, i32* %15, align 4
  br label %148

148:                                              ; preds = %139, %123
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %150 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_12__* %149)
  store %struct.nfsmount* %150, %struct.nfsmount** %14, align 8
  %151 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %152 = call i64 @nfs_mount_gone(%struct.nfsmount* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i32, i32* @ENXIO, align 4
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %154, %148
  %157 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %158 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @NFS_VER4, align 4
  %161 = icmp sge i32 %159, %160
  br i1 %161, label %162, label %223

162:                                              ; preds = %156
  %163 = load i32, i32* %15, align 4
  %164 = call i64 @nfs_mount_state_error_should_restart(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %223

166:                                              ; preds = %162
  %167 = load i64, i64* %31, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %31, align 8
  %169 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %170 = call i64 @nfs_mount_state_max_restarts(%struct.nfsmount* %169)
  %171 = icmp sle i64 %168, %170
  br i1 %171, label %172, label %223

172:                                              ; preds = %166
  %173 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %174 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %173, i32 0, i32 4
  %175 = call i32 @lck_mtx_lock(i32* %174)
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* @NFSERR_GRACE, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %192

179:                                              ; preds = %172
  %180 = load i64, i64* %29, align 8
  %181 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %182 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %180, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %179
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %187 = load i32, i32* %15, align 4
  %188 = call i32 @NP(%struct.TYPE_12__* %186, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %187)
  %189 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %190 = load i32, i32* %15, align 4
  %191 = call i32 @nfs_need_recover(%struct.nfsmount* %189, i32 %190)
  br label %192

192:                                              ; preds = %185, %179, %172
  %193 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %194 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %193, i32 0, i32 4
  %195 = call i32 @lck_mtx_unlock(i32* %194)
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @NREVOKE, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %192
  %203 = load i32, i32* @EIO, align 4
  store i32 %203, i32* %15, align 4
  br label %222

204:                                              ; preds = %192
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* @NFSERR_GRACE, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %204
  %209 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %210 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %209, i32 0, i32 3
  %211 = load i64, i64* @PZERO, align 8
  %212 = sub nsw i64 %211, 1
  %213 = load i32, i32* @hz, align 4
  %214 = mul nsw i32 2, %213
  %215 = call i32 @tsleep(i32* %210, i64 %212, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %208, %204
  %217 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %218 = call i32 @nfs_mount_state_wait_for_recovery(%struct.nfsmount* %217)
  store i32 %218, i32* %15, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %216
  br label %87

221:                                              ; preds = %216
  br label %222

222:                                              ; preds = %221, %202
  br label %223

223:                                              ; preds = %222, %166, %162, %156
  %224 = load i32, i32* %15, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  br label %283

227:                                              ; preds = %223
  %228 = load i32, i32* %16, align 4
  %229 = load i32, i32* @NFS_VER2, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = load i64, i64* %25, align 8
  %233 = load i64, i64* %24, align 8
  %234 = sub i64 %233, %232
  store i64 %234, i64* %24, align 8
  br label %87

235:                                              ; preds = %227
  %236 = load i64, i64* %26, align 8
  %237 = load i64, i64* %25, align 8
  %238 = icmp ult i64 %236, %237
  br i1 %238, label %239, label %251

239:                                              ; preds = %235
  %240 = load i32*, i32** %32, align 8
  %241 = load i32, i32* %240, align 4
  %242 = load i32*, i32** %9, align 8
  store i32 %241, i32* %242, align 4
  %243 = load i32*, i32** %9, align 8
  %244 = load i64, i64* %23, align 8
  %245 = load i64, i64* %24, align 8
  %246 = load i64, i64* %26, align 8
  %247 = sub i64 %245, %246
  %248 = sub i64 %244, %247
  %249 = call i32 @uio_update(i32* %243, i64 %248)
  %250 = load i64, i64* %26, align 8
  store i64 %250, i64* %25, align 8
  br label %251

251:                                              ; preds = %239, %235
  %252 = load i32, i32* %18, align 4
  %253 = load i32, i32* %19, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %251
  %256 = load i32, i32* %18, align 4
  store i32 %256, i32* %19, align 4
  br label %257

257:                                              ; preds = %255, %251
  %258 = load i64, i64* %25, align 8
  %259 = load i64, i64* %24, align 8
  %260 = sub i64 %259, %258
  store i64 %260, i64* %24, align 8
  %261 = load i32, i32* %17, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %265, label %263

263:                                              ; preds = %257
  %264 = load i32, i32* %21, align 4
  store i32 %264, i32* %20, align 4
  store i32 1, i32* %17, align 4
  br label %282

265:                                              ; preds = %257
  %266 = load i32, i32* %20, align 4
  %267 = load i32, i32* %21, align 4
  %268 = icmp ne i32 %266, %267
  br i1 %268, label %269, label %281

269:                                              ; preds = %265
  %270 = load i64, i64* %30, align 8
  %271 = add nsw i64 %270, 1
  store i64 %271, i64* %30, align 8
  %272 = icmp sgt i64 %271, 100
  br i1 %272, label %273, label %275

273:                                              ; preds = %269
  %274 = load i32, i32* @EIO, align 4
  store i32 %274, i32* %15, align 4
  br label %283

275:                                              ; preds = %269
  %276 = load i32*, i32** %32, align 8
  %277 = load i32, i32* %276, align 4
  %278 = load i32*, i32** %9, align 8
  store i32 %277, i32* %278, align 4
  %279 = load i32, i32* @NFS_WRITE_FILESYNC, align 4
  store i32 %279, i32* %19, align 4
  store i32 0, i32* %17, align 4
  %280 = load i64, i64* %23, align 8
  store i64 %280, i64* %24, align 8
  br label %281

281:                                              ; preds = %275, %265
  br label %282

282:                                              ; preds = %281, %263
  br label %87

283:                                              ; preds = %273, %226, %111, %87
  %284 = load i32*, i32** %32, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = load i32*, i32** %32, align 8
  %288 = call i32 @uio_free(i32* %287)
  br label %289

289:                                              ; preds = %286, %283
  %290 = load i32, i32* %17, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %289
  %293 = load i32*, i32** %13, align 8
  %294 = icmp ne i32* %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %292
  %296 = load i32, i32* %20, align 4
  %297 = load i32*, i32** %13, align 8
  store i32 %296, i32* %297, align 4
  br label %298

298:                                              ; preds = %295, %292, %289
  %299 = load i32, i32* %19, align 4
  %300 = load i32*, i32** %12, align 8
  store i32 %299, i32* %300, align 4
  %301 = load i32, i32* %15, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %298
  %304 = load i32*, i32** %9, align 8
  %305 = load i64, i64* %24, align 8
  %306 = call i32 @uio_setresid(i32* %304, i64 %305)
  br label %307

307:                                              ; preds = %303, %298
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %309 = load i32, i32* %19, align 4
  %310 = load i32*, i32** %9, align 8
  %311 = call i64 @uio_resid(i32* %310)
  %312 = load i32, i32* %15, align 4
  %313 = call i32 @FSDBG_BOT(i32 537, %struct.TYPE_12__* %308, i32 %309, i64 %311, i32 %312)
  %314 = load i32, i32* %15, align 4
  store i32 %314, i32* %7, align 4
  br label %315

315:                                              ; preds = %307, %84, %70, %46
  %316 = load i32, i32* %7, align 4
  ret i32 %316
}

declare dso_local i32 @FSDBG_TOP(i32, %struct.TYPE_12__*, i32, i64, i32) #1

declare dso_local i32 @uio_offset(i32*) #1

declare dso_local i64 @uio_resid(i32*) #1

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_12__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @FSDBG_BOT(i32, %struct.TYPE_12__*, i32, i64, i32) #1

declare dso_local i32* @uio_duplicate(i32*) #1

declare dso_local i32 @FSDBG(i32, %struct.TYPE_12__*, i32, i64, i32) #1

declare dso_local i64 @nfs_mount_state_error_should_restart(i32) #1

declare dso_local i64 @nfs_mount_state_max_restarts(%struct.nfsmount*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @NP(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @nfs_need_recover(%struct.nfsmount*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @tsleep(i32*, i64, i8*, i32) #1

declare dso_local i32 @nfs_mount_state_wait_for_recovery(%struct.nfsmount*) #1

declare dso_local i32 @uio_update(i32*, i64) #1

declare dso_local i32 @uio_free(i32*) #1

declare dso_local i32 @uio_setresid(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
