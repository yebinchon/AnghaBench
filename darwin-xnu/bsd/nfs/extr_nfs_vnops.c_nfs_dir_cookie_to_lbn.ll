; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_dir_cookie_to_lbn.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_dir_cookie_to_lbn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32, %struct.nfsdmap* }
%struct.nfsdmap = type { i32, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.nfsmount = type { i32 }
%struct.nfsbuf = type { i64, i64 }
%struct.nfsbuflists = type { i32 }
%struct.direntry = type { i64 }
%struct.nfs_dir_buf_header = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@nfsstats = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ENXIO = common dso_local global i32 0, align 4
@nfs_buf_mutex = common dso_local global i32 0, align 4
@NBI_CLEAN = common dso_local global i32 0, align 4
@nb_vnbufs = common dso_local global i32 0, align 4
@NBAC_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_dir_cookie_to_lbn(%struct.TYPE_11__* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.nfsdmap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nfsmount*, align 8
  %16 = alloca %struct.nfsbuf*, align 8
  %17 = alloca %struct.nfsbuf*, align 8
  %18 = alloca %struct.nfsbuflists, align 4
  %19 = alloca %struct.direntry*, align 8
  %20 = alloca %struct.direntry*, align 8
  %21 = alloca %struct.nfs_dir_buf_header*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load %struct.nfsdmap*, %struct.nfsdmap** %23, align 8
  store %struct.nfsdmap* %24, %struct.nfsdmap** %10, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i64*, i64** %9, align 8
  store i64 0, i64* %28, align 8
  %29 = load i32*, i32** %8, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %5, align 4
  br label %313

30:                                               ; preds = %4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = call i64 @nfs_node_lock(%struct.TYPE_11__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOENT, align 4
  store i32 %35, i32* %5, align 4
  br label %313

36:                                               ; preds = %30
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = call i32 @nfs_node_unlock(%struct.TYPE_11__* %43)
  %45 = call i32 @OSAddAtomic64(i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @nfsstats, i32 0, i32 1))
  %46 = load i32*, i32** %8, align 8
  store i32 0, i32* %46, align 4
  store i32 -1, i32* %5, align 4
  br label %313

47:                                               ; preds = %36
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @NFS_DIR_COOKIE_SAME32(i64 %52, i64 %55)
  br label %58

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %51
  %59 = phi i32 [ %56, %51 ], [ 0, %57 ]
  store i32 %59, i32* %11, align 4
  store i32 -1, i32* %14, align 4
  %60 = load %struct.nfsdmap*, %struct.nfsdmap** %10, align 8
  %61 = icmp ne %struct.nfsdmap* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.nfsdmap*, %struct.nfsdmap** %10, align 8
  %64 = getelementptr inbounds %struct.nfsdmap, %struct.nfsdmap* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  br label %67

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32 [ %65, %62 ], [ -1, %66 ]
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %119, %67
  %70 = load i32, i32* %13, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %127

72:                                               ; preds = %69
  %73 = load %struct.nfsdmap*, %struct.nfsdmap** %10, align 8
  %74 = getelementptr inbounds %struct.nfsdmap, %struct.nfsdmap* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %72
  %84 = load %struct.nfsdmap*, %struct.nfsdmap** %10, align 8
  %85 = getelementptr inbounds %struct.nfsdmap, %struct.nfsdmap* %84, i32 0, i32 2
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %9, align 8
  store i64 %91, i64* %92, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = call i32 @nfs_node_unlock(%struct.TYPE_11__* %93)
  %95 = call i32 @OSAddAtomic64(i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @nfsstats, i32 0, i32 1))
  %96 = load i32*, i32** %8, align 8
  store i32 0, i32* %96, align 4
  store i32 0, i32* %5, align 4
  br label %313

97:                                               ; preds = %72
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %97
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %118

104:                                              ; preds = %101
  %105 = load %struct.nfsdmap*, %struct.nfsdmap** %10, align 8
  %106 = getelementptr inbounds %struct.nfsdmap, %struct.nfsdmap* %105, i32 0, i32 2
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @NFS_DIR_COOKIE_SAME32(i64 %112, i64 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %104
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %116, %104, %101, %97
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.nfsdmap*, %struct.nfsdmap** %10, align 8
  %121 = getelementptr inbounds %struct.nfsdmap, %struct.nfsdmap* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %13, align 4
  br label %69

127:                                              ; preds = %69
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = call i32 @nfs_node_unlock(%struct.TYPE_11__* %131)
  %133 = call i32 @OSAddAtomic64(i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @nfsstats, i32 0, i32 1))
  store i32 -1, i32* %5, align 4
  br label %313

134:                                              ; preds = %127
  %135 = load i32, i32* %14, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %134
  %138 = load %struct.nfsdmap*, %struct.nfsdmap** %10, align 8
  %139 = getelementptr inbounds %struct.nfsdmap, %struct.nfsdmap* %138, i32 0, i32 2
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %9, align 8
  store i64 %145, i64* %146, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %148 = call i32 @nfs_node_unlock(%struct.TYPE_11__* %147)
  %149 = call i32 @OSAddAtomic64(i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @nfsstats, i32 0, i32 1))
  store i32 0, i32* %5, align 4
  br label %313

150:                                              ; preds = %134
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %152 = call i32 @nfs_node_unlock(%struct.TYPE_11__* %151)
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %154 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_11__* %153)
  store %struct.nfsmount* %154, %struct.nfsmount** %15, align 8
  %155 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %156 = call i64 @nfs_mount_gone(%struct.nfsmount* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %150
  %159 = load i32, i32* @ENXIO, align 4
  store i32 %159, i32* %5, align 4
  br label %313

160:                                              ; preds = %150
  store %struct.direntry* null, %struct.direntry** %20, align 8
  store i32 0, i32* %12, align 4
  %161 = load i32, i32* @nfs_buf_mutex, align 4
  %162 = call i32 @lck_mtx_lock(i32 %161)
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %164 = load i32, i32* @NBI_CLEAN, align 4
  %165 = call i32 @nfs_buf_iterprepare(%struct.TYPE_11__* %163, %struct.nfsbuflists* %18, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %302, label %167

167:                                              ; preds = %160
  store %struct.nfsbuf* null, %struct.nfsbuf** %17, align 8
  br label %168

168:                                              ; preds = %295, %200, %192, %167
  %169 = call %struct.nfsbuf* @LIST_FIRST(%struct.nfsbuflists* %18)
  store %struct.nfsbuf* %169, %struct.nfsbuf** %16, align 8
  %170 = icmp ne %struct.nfsbuf* %169, null
  br i1 %170, label %171, label %298

171:                                              ; preds = %168
  %172 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %173 = load i32, i32* @nb_vnbufs, align 4
  %174 = call i32 @LIST_REMOVE(%struct.nfsbuf* %172, i32 %173)
  %175 = load %struct.nfsbuf*, %struct.nfsbuf** %17, align 8
  %176 = icmp ne %struct.nfsbuf* %175, null
  br i1 %176, label %183, label %177

177:                                              ; preds = %171
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %181 = load i32, i32* @nb_vnbufs, align 4
  %182 = call i32 @LIST_INSERT_HEAD(i32* %179, %struct.nfsbuf* %180, i32 %181)
  br label %188

183:                                              ; preds = %171
  %184 = load %struct.nfsbuf*, %struct.nfsbuf** %17, align 8
  %185 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %186 = load i32, i32* @nb_vnbufs, align 4
  %187 = call i32 @LIST_INSERT_AFTER(%struct.nfsbuf* %184, %struct.nfsbuf* %185, i32 %186)
  br label %188

188:                                              ; preds = %183, %177
  %189 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  store %struct.nfsbuf* %189, %struct.nfsbuf** %17, align 8
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  br label %168

193:                                              ; preds = %188
  %194 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %195 = call i32 @nfs_buf_refget(%struct.nfsbuf* %194)
  %196 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %197 = load i32, i32* @NBAC_NOWAIT, align 4
  %198 = call i64 @nfs_buf_acquire(%struct.nfsbuf* %196, i32 %197, i32 0, i32 0)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %202 = call i32 @nfs_buf_refrele(%struct.nfsbuf* %201)
  br label %168

203:                                              ; preds = %193
  %204 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %205 = call i32 @nfs_buf_refrele(%struct.nfsbuf* %204)
  %206 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %207 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = inttoptr i64 %208 to %struct.nfs_dir_buf_header*
  store %struct.nfs_dir_buf_header* %209, %struct.nfs_dir_buf_header** %21, align 8
  %210 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %211 = call %struct.direntry* @NFS_DIR_BUF_FIRST_DIRENTRY(%struct.nfsbuf* %210)
  store %struct.direntry* %211, %struct.direntry** %19, align 8
  store %struct.direntry* null, %struct.direntry** %20, align 8
  store i32 0, i32* %13, align 4
  br label %212

212:                                              ; preds = %246, %203
  %213 = load i32, i32* %13, align 4
  %214 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %21, align 8
  %215 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp slt i32 %213, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %212
  %219 = load i64, i64* %7, align 8
  %220 = load %struct.direntry*, %struct.direntry** %19, align 8
  %221 = getelementptr inbounds %struct.direntry, %struct.direntry* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %219, %222
  br label %224

224:                                              ; preds = %218, %212
  %225 = phi i1 [ false, %212 ], [ %223, %218 ]
  br i1 %225, label %226, label %249

226:                                              ; preds = %224
  %227 = load i32*, i32** %8, align 8
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %226
  %231 = load %struct.direntry*, %struct.direntry** %20, align 8
  %232 = icmp ne %struct.direntry* %231, null
  br i1 %232, label %243, label %233

233:                                              ; preds = %230
  %234 = load i64, i64* %7, align 8
  %235 = load %struct.direntry*, %struct.direntry** %19, align 8
  %236 = getelementptr inbounds %struct.direntry, %struct.direntry* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @NFS_DIR_COOKIE_SAME32(i64 %234, i64 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %233
  %241 = load %struct.direntry*, %struct.direntry** %19, align 8
  store %struct.direntry* %241, %struct.direntry** %20, align 8
  %242 = load i32, i32* %13, align 4
  store i32 %242, i32* %14, align 4
  br label %243

243:                                              ; preds = %240, %233, %230, %226
  %244 = load %struct.direntry*, %struct.direntry** %19, align 8
  %245 = call %struct.direntry* @NFS_DIRENTRY_NEXT(%struct.direntry* %244)
  store %struct.direntry* %245, %struct.direntry** %19, align 8
  br label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %13, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %13, align 4
  br label %212

249:                                              ; preds = %224
  %250 = load i32, i32* %13, align 4
  %251 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %21, align 8
  %252 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %250, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %249
  %256 = load %struct.direntry*, %struct.direntry** %20, align 8
  %257 = icmp ne %struct.direntry* %256, null
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load %struct.direntry*, %struct.direntry** %20, align 8
  store %struct.direntry* %259, %struct.direntry** %19, align 8
  %260 = load i32, i32* %14, align 4
  store i32 %260, i32* %13, align 4
  br label %270

261:                                              ; preds = %255, %249
  %262 = load i32, i32* %13, align 4
  %263 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %21, align 8
  %264 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = icmp slt i32 %262, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %261
  %268 = load i32*, i32** %8, align 8
  store i32 0, i32* %268, align 4
  br label %269

269:                                              ; preds = %267, %261
  br label %270

270:                                              ; preds = %269, %258
  %271 = load i32, i32* %13, align 4
  %272 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %21, align 8
  %273 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = sub nsw i32 %274, 1
  %276 = icmp slt i32 %271, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %270
  %278 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %279 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64*, i64** %9, align 8
  store i64 %280, i64* %281, align 8
  store i32 1, i32* %12, align 4
  br label %295

282:                                              ; preds = %270
  %283 = load i32, i32* %13, align 4
  %284 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %21, align 8
  %285 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 %286, 1
  %288 = icmp eq i32 %283, %287
  br i1 %288, label %289, label %294

289:                                              ; preds = %282
  %290 = load %struct.direntry*, %struct.direntry** %19, align 8
  %291 = getelementptr inbounds %struct.direntry, %struct.direntry* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64*, i64** %9, align 8
  store i64 %292, i64* %293, align 8
  store i32 1, i32* %12, align 4
  br label %294

294:                                              ; preds = %289, %282
  br label %295

295:                                              ; preds = %294, %277
  %296 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %297 = call i32 @nfs_buf_drop(%struct.nfsbuf* %296)
  br label %168

298:                                              ; preds = %168
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %300 = load i32, i32* @NBI_CLEAN, align 4
  %301 = call i32 @nfs_buf_itercomplete(%struct.TYPE_11__* %299, %struct.nfsbuflists* %18, i32 %300)
  br label %302

302:                                              ; preds = %298, %160
  %303 = load i32, i32* @nfs_buf_mutex, align 4
  %304 = call i32 @lck_mtx_unlock(i32 %303)
  %305 = load i32, i32* %12, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %302
  %308 = call i32 @OSAddAtomic64(i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @nfsstats, i32 0, i32 1))
  store i32 0, i32* %5, align 4
  br label %313

309:                                              ; preds = %302
  %310 = load i64, i64* %7, align 8
  %311 = load i64*, i64** %9, align 8
  store i64 %310, i64* %311, align 8
  %312 = call i32 @OSAddAtomic64(i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @nfsstats, i32 0, i32 0))
  store i32 0, i32* %5, align 4
  br label %313

313:                                              ; preds = %309, %307, %158, %137, %130, %83, %42, %34, %27
  %314 = load i32, i32* %5, align 4
  ret i32 %314
}

declare dso_local i64 @nfs_node_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i32 @NFS_DIR_COOKIE_SAME32(i64, i64) #1

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_11__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @nfs_buf_iterprepare(%struct.TYPE_11__*, %struct.nfsbuflists*, i32) #1

declare dso_local %struct.nfsbuf* @LIST_FIRST(%struct.nfsbuflists*) #1

declare dso_local i32 @LIST_REMOVE(%struct.nfsbuf*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.nfsbuf*, i32) #1

declare dso_local i32 @LIST_INSERT_AFTER(%struct.nfsbuf*, %struct.nfsbuf*, i32) #1

declare dso_local i32 @nfs_buf_refget(%struct.nfsbuf*) #1

declare dso_local i64 @nfs_buf_acquire(%struct.nfsbuf*, i32, i32, i32) #1

declare dso_local i32 @nfs_buf_refrele(%struct.nfsbuf*) #1

declare dso_local %struct.direntry* @NFS_DIR_BUF_FIRST_DIRENTRY(%struct.nfsbuf*) #1

declare dso_local %struct.direntry* @NFS_DIRENTRY_NEXT(%struct.direntry*) #1

declare dso_local i32 @nfs_buf_drop(%struct.nfsbuf*) #1

declare dso_local i32 @nfs_buf_itercomplete(%struct.TYPE_11__*, %struct.nfsbuflists*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
