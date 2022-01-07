; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_readdir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.vnop_readdir_args = type { i32, i32*, i32*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.nfsmount = type { i32, i32 }
%struct.nfsbuf = type { i64, i64 }
%struct.nfs_dir_buf_header = type { i64, i32, i64, i32 }
%struct.direntry = type { i64, i64, i32, i32, i32, i32 }
%struct.dirent = type { i32, i64, i32, i32, i64 }

@ENXIO = common dso_local global i32 0, align 4
@NFSSTA_BIGCOOKIES = common dso_local global i32 0, align 4
@VNODE_READDIR_EXTENDED = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER = common dso_local global i32 0, align 4
@NNEEDINVALIDATE = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@NGA_UNCACHED = common dso_local global i32 0, align 4
@nfsstats = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@NFS_DIRBLKSIZ = common dso_local global i32 0, align 4
@NBLK_READ = common dso_local global i32 0, align 4
@NB_CACHE = common dso_local global i32 0, align 4
@NDB_FULL = common dso_local global i32 0, align 4
@NFSERR_DIRBUFDROPPED = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@NFSERR_BAD_COOKIE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NDB_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"nfs readdir cookie didn't change 0x%llx, %d/%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_vnop_readdir(%struct.vnop_readdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_readdir_args*, align 8
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
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.nfsbuf*, align 8
  %24 = alloca %struct.nfs_dir_buf_header*, align 8
  %25 = alloca %struct.direntry*, align 8
  %26 = alloca %struct.direntry*, align 8
  %27 = alloca %struct.dirent, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  store %struct.vnop_readdir_args* %0, %struct.vnop_readdir_args** %3, align 8
  %30 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %31 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %4, align 4
  %33 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %34 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.TYPE_13__* @VTONFS(i32 %36)
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %6, align 8
  %38 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %39 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  store i64 0, i64* %22, align 8
  store %struct.nfsbuf* null, %struct.nfsbuf** %23, align 8
  store i8* null, i8** %28, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call %struct.nfsmount* @VTONMP(i32 %41)
  store %struct.nfsmount* %42, %struct.nfsmount** %7, align 8
  %43 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %44 = call i64 @nfs_mount_gone(%struct.nfsmount* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %1
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %2, align 4
  br label %553

48:                                               ; preds = %1
  %49 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %50 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %53 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NFSSTA_BIGCOOKIES, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %13, align 4
  %57 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %58 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @VNODE_READDIR_EXTENDED, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @vnode_vtype(i32 %62)
  %64 = load i64, i64* @VDIR, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %48
  %67 = load i32, i32* @EPERM, align 4
  store i32 %67, i32* %2, align 4
  br label %553

68:                                               ; preds = %48
  %69 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %70 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %75 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @uio_resid(i32 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %553

82:                                               ; preds = %77
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @NFS_VER4, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @NFS_FFLAG_TRIGGER, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %553

95:                                               ; preds = %86, %82
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @vfs_context_thread(i32 %96)
  store i32 %97, i32* %29, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i64 @uio_offset(i32 %98)
  store i64 %99, i64* %21, align 8
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i64, i64* %21, align 8
  %104 = call i64 @NFS_DIR_COOKIE_POTENTIALLY_TRUNCATED(i64 %103)
  %105 = icmp ne i64 %104, 0
  br label %106

106:                                              ; preds = %102, %95
  %107 = phi i1 [ false, %95 ], [ %105, %102 ]
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %14, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = call i32 @nfs_node_lock(%struct.TYPE_13__* %109)
  store i32 %110, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %551

113:                                              ; preds = %106
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @NNEEDINVALIDATE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %113
  %121 = load i32, i32* @NNEEDINVALIDATE, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %128 = call i32 @nfs_invaldir(%struct.TYPE_13__* %127)
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %130 = call i32 @nfs_node_unlock(%struct.TYPE_13__* %129)
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @nfs_vinvalbuf(i32 %131, i32 0, i32 %132, i32 1)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %120
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %138 = call i32 @nfs_node_lock(%struct.TYPE_13__* %137)
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %136, %120
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %551

143:                                              ; preds = %139
  br label %144

144:                                              ; preds = %143, %113
  %145 = load i64, i64* %21, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %176, label %147

147:                                              ; preds = %144
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @NMODIFIED, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %147
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %156 = call i32 @nfs_invaldir(%struct.TYPE_13__* %155)
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %158 = call i32 @nfs_node_unlock(%struct.TYPE_13__* %157)
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @nfs_vinvalbuf(i32 %159, i32 0, i32 %160, i32 1)
  store i32 %161, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %154
  br label %551

164:                                              ; preds = %154
  br label %168

165:                                              ; preds = %147
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %167 = call i32 @nfs_node_unlock(%struct.TYPE_13__* %166)
  br label %168

168:                                              ; preds = %165, %164
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @NGA_UNCACHED, align 4
  %172 = call i32 @nfs_getattr(%struct.TYPE_13__* %169, i32* null, i32 %170, i32 %171)
  store i32 %172, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %551

175:                                              ; preds = %168
  br label %179

176:                                              ; preds = %144
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %178 = call i32 @nfs_node_unlock(%struct.TYPE_13__* %177)
  br label %179

179:                                              ; preds = %176, %175
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %181 = load i64, i64* %21, align 8
  %182 = call i32 @nfs_dir_cookie_to_lbn(%struct.TYPE_13__* %180, i64 %181, i32* %14, i64* %22)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %199

185:                                              ; preds = %179
  %186 = load i32, i32* %9, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 1, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %189

189:                                              ; preds = %188, %185
  %190 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %191 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %196 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  store i32 1, i32* %197, align 4
  br label %198

198:                                              ; preds = %194, %189
  br label %199

199:                                              ; preds = %198, %179
  br label %200

200:                                              ; preds = %529, %199
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  %206 = xor i1 %205, true
  br label %207

207:                                              ; preds = %203, %200
  %208 = phi i1 [ false, %200 ], [ %206, %203 ]
  br i1 %208, label %209, label %532

209:                                              ; preds = %207
  %210 = call i32 @OSAddAtomic64(i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @nfsstats, i32 0, i32 0))
  %211 = load i64, i64* %21, align 8
  store i64 %211, i64* %20, align 8
  br label %212

212:                                              ; preds = %266, %209
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %214 = load i64, i64* %22, align 8
  %215 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %216 = load i32, i32* %29, align 4
  %217 = load i32, i32* @NBLK_READ, align 4
  %218 = call i32 @nfs_buf_get(%struct.TYPE_13__* %213, i64 %214, i32 %215, i32 %216, i32 %217, %struct.nfsbuf** %23)
  store i32 %218, i32* %9, align 4
  %219 = load i32, i32* %9, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %212
  br label %551

222:                                              ; preds = %212
  %223 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %224 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = inttoptr i64 %225 to %struct.nfs_dir_buf_header*
  store %struct.nfs_dir_buf_header* %226, %struct.nfs_dir_buf_header** %24, align 8
  %227 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %228 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i32, i32* @NB_CACHE, align 4
  %231 = call i64 @ISSET(i64 %229, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %222
  %234 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %24, align 8
  %235 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* @NDB_FULL, align 4
  %238 = call i64 @ISSET(i64 %236, i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %316, label %240

240:                                              ; preds = %233, %222
  %241 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %242 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* @NB_CACHE, align 4
  %245 = call i64 @ISSET(i64 %243, i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %259, label %247

247:                                              ; preds = %240
  %248 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %24, align 8
  %249 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %248, i32 0, i32 2
  store i64 0, i64* %249, align 8
  %250 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %24, align 8
  %251 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %250, i32 0, i32 0
  store i64 0, i64* %251, align 8
  %252 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %24, align 8
  %253 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %252, i32 0, i32 1
  store i32 32, i32* %253, align 8
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %24, align 8
  %258 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %257, i32 0, i32 3
  store i32 %256, i32* %258, align 8
  br label %259

259:                                              ; preds = %247, %240
  %260 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %261 = load i32, i32* %4, align 4
  %262 = call i32 @nfs_buf_readdir(%struct.nfsbuf* %260, i32 %261)
  store i32 %262, i32* %9, align 4
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* @NFSERR_DIRBUFDROPPED, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %259
  br label %212

267:                                              ; preds = %259
  %268 = load i32, i32* %9, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %272 = call i32 @nfs_buf_release(%struct.nfsbuf* %271, i32 1)
  br label %273

273:                                              ; preds = %270, %267
  %274 = load i32, i32* %9, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %311

276:                                              ; preds = %273
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* @ENXIO, align 4
  %279 = icmp ne i32 %277, %278
  br i1 %279, label %280, label %311

280:                                              ; preds = %276
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* @ETIMEDOUT, align 4
  %283 = icmp ne i32 %281, %282
  br i1 %283, label %284, label %311

284:                                              ; preds = %280
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* @EINTR, align 4
  %287 = icmp ne i32 %285, %286
  br i1 %287, label %288, label %311

288:                                              ; preds = %284
  %289 = load i32, i32* %9, align 4
  %290 = load i32, i32* @ERESTART, align 4
  %291 = icmp ne i32 %289, %290
  br i1 %291, label %292, label %311

292:                                              ; preds = %288
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %294 = call i32 @nfs_node_lock(%struct.TYPE_13__* %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %301, label %296

296:                                              ; preds = %292
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %298 = call i32 @nfs_invaldir(%struct.TYPE_13__* %297)
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %300 = call i32 @nfs_node_unlock(%struct.TYPE_13__* %299)
  br label %301

301:                                              ; preds = %296, %292
  %302 = load i32, i32* %5, align 4
  %303 = load i32, i32* %4, align 4
  %304 = call i32 @nfs_vinvalbuf(i32 %302, i32 0, i32 %303, i32 1)
  %305 = load i32, i32* %9, align 4
  %306 = load i32, i32* @NFSERR_BAD_COOKIE, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %310

308:                                              ; preds = %301
  %309 = load i32, i32* @ENOENT, align 4
  store i32 %309, i32* %9, align 4
  br label %310

310:                                              ; preds = %308, %301
  br label %311

311:                                              ; preds = %310, %288, %284, %280, %276, %273
  %312 = load i32, i32* %9, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %311
  br label %551

315:                                              ; preds = %311
  br label %316

316:                                              ; preds = %315, %233
  %317 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %318 = call %struct.direntry* @NFS_DIR_BUF_FIRST_DIRENTRY(%struct.nfsbuf* %317)
  store %struct.direntry* %318, %struct.direntry** %25, align 8
  store i64 0, i64* %16, align 8
  %319 = load i64, i64* %22, align 8
  %320 = load i64, i64* %20, align 8
  %321 = icmp ne i64 %319, %320
  br i1 %321, label %322, label %397

322:                                              ; preds = %316
  %323 = load i32, i32* %14, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %322
  %326 = load i64, i64* %22, align 8
  %327 = load i64, i64* %20, align 8
  %328 = call i64 @NFS_DIR_COOKIE_SAME32(i64 %326, i64 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %397, label %330

330:                                              ; preds = %325, %322
  store %struct.direntry* null, %struct.direntry** %26, align 8
  store i64 0, i64* %17, align 8
  br label %331

331:                                              ; preds = %367, %330
  %332 = load i64, i64* %16, align 8
  %333 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %24, align 8
  %334 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = icmp slt i64 %332, %335
  br i1 %336, label %337, label %343

337:                                              ; preds = %331
  %338 = load i64, i64* %20, align 8
  %339 = load %struct.direntry*, %struct.direntry** %25, align 8
  %340 = getelementptr inbounds %struct.direntry, %struct.direntry* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %338, %341
  br label %343

343:                                              ; preds = %337, %331
  %344 = phi i1 [ false, %331 ], [ %342, %337 ]
  br i1 %344, label %345, label %370

345:                                              ; preds = %343
  %346 = load i32, i32* %14, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %361

348:                                              ; preds = %345
  %349 = load %struct.direntry*, %struct.direntry** %26, align 8
  %350 = icmp ne %struct.direntry* %349, null
  br i1 %350, label %361, label %351

351:                                              ; preds = %348
  %352 = load i64, i64* %20, align 8
  %353 = load %struct.direntry*, %struct.direntry** %25, align 8
  %354 = getelementptr inbounds %struct.direntry, %struct.direntry* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = call i64 @NFS_DIR_COOKIE_SAME32(i64 %352, i64 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %351
  %359 = load i64, i64* %16, align 8
  store i64 %359, i64* %17, align 8
  %360 = load %struct.direntry*, %struct.direntry** %25, align 8
  store %struct.direntry* %360, %struct.direntry** %26, align 8
  br label %361

361:                                              ; preds = %358, %351, %348, %345
  %362 = load %struct.direntry*, %struct.direntry** %25, align 8
  %363 = getelementptr inbounds %struct.direntry, %struct.direntry* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  store i64 %364, i64* %21, align 8
  %365 = load %struct.direntry*, %struct.direntry** %25, align 8
  %366 = call %struct.direntry* @NFS_DIRENTRY_NEXT(%struct.direntry* %365)
  store %struct.direntry* %366, %struct.direntry** %25, align 8
  br label %367

367:                                              ; preds = %361
  %368 = load i64, i64* %16, align 8
  %369 = add nsw i64 %368, 1
  store i64 %369, i64* %16, align 8
  br label %331

370:                                              ; preds = %343
  %371 = load i64, i64* %16, align 8
  %372 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %24, align 8
  %373 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = icmp eq i64 %371, %374
  br i1 %375, label %376, label %382

376:                                              ; preds = %370
  %377 = load %struct.direntry*, %struct.direntry** %26, align 8
  %378 = icmp ne %struct.direntry* %377, null
  br i1 %378, label %379, label %382

379:                                              ; preds = %376
  %380 = load i64, i64* %17, align 8
  store i64 %380, i64* %16, align 8
  %381 = load %struct.direntry*, %struct.direntry** %26, align 8
  store %struct.direntry* %381, %struct.direntry** %25, align 8
  br label %382

382:                                              ; preds = %379, %376, %370
  %383 = load i64, i64* %16, align 8
  %384 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %24, align 8
  %385 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = icmp slt i64 %383, %386
  br i1 %387, label %388, label %396

388:                                              ; preds = %382
  %389 = load %struct.direntry*, %struct.direntry** %25, align 8
  %390 = getelementptr inbounds %struct.direntry, %struct.direntry* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %21, align 8
  %392 = load %struct.direntry*, %struct.direntry** %25, align 8
  %393 = call %struct.direntry* @NFS_DIRENTRY_NEXT(%struct.direntry* %392)
  store %struct.direntry* %393, %struct.direntry** %25, align 8
  %394 = load i64, i64* %16, align 8
  %395 = add nsw i64 %394, 1
  store i64 %395, i64* %16, align 8
  br label %396

396:                                              ; preds = %388, %382
  br label %397

397:                                              ; preds = %396, %325, %316
  store i32 0, i32* %14, align 4
  br label %398

398:                                              ; preds = %476, %397
  %399 = load i64, i64* %16, align 8
  %400 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %24, align 8
  %401 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = icmp slt i64 %399, %402
  br i1 %403, label %404, label %479

404:                                              ; preds = %398
  %405 = load i32, i32* %11, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %413

407:                                              ; preds = %404
  %408 = load %struct.direntry*, %struct.direntry** %25, align 8
  %409 = getelementptr inbounds %struct.direntry, %struct.direntry* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  store i64 %410, i64* %18, align 8
  %411 = load %struct.direntry*, %struct.direntry** %25, align 8
  %412 = bitcast %struct.direntry* %411 to i8*
  store i8* %412, i8** %28, align 8
  br label %455

413:                                              ; preds = %404
  %414 = load i8*, i8** %28, align 8
  %415 = icmp ne i8* %414, null
  br i1 %415, label %420, label %416

416:                                              ; preds = %413
  %417 = bitcast %struct.dirent* %27 to i8*
  store i8* %417, i8** %28, align 8
  %418 = load i8*, i8** %28, align 8
  %419 = call i32 @bzero(i8* %418, i32 32)
  br label %420

420:                                              ; preds = %416, %413
  %421 = load %struct.direntry*, %struct.direntry** %25, align 8
  %422 = getelementptr inbounds %struct.direntry, %struct.direntry* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 8
  %424 = sext i32 %423 to i64
  %425 = icmp ugt i64 %424, 3
  br i1 %425, label %426, label %427

426:                                              ; preds = %420
  store i64 3, i64* %19, align 8
  br label %432

427:                                              ; preds = %420
  %428 = load %struct.direntry*, %struct.direntry** %25, align 8
  %429 = getelementptr inbounds %struct.direntry, %struct.direntry* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 8
  %431 = sext i32 %430 to i64
  store i64 %431, i64* %19, align 8
  br label %432

432:                                              ; preds = %427, %426
  %433 = load i64, i64* %19, align 8
  %434 = call i64 @NFS_DIRENT_LEN(i64 %433)
  store i64 %434, i64* %18, align 8
  %435 = load i64, i64* %18, align 8
  %436 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 4
  store i64 %435, i64* %436, align 8
  %437 = load %struct.direntry*, %struct.direntry** %25, align 8
  %438 = getelementptr inbounds %struct.direntry, %struct.direntry* %437, i32 0, i32 5
  %439 = load i32, i32* %438, align 4
  %440 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 3
  store i32 %439, i32* %440, align 4
  %441 = load %struct.direntry*, %struct.direntry** %25, align 8
  %442 = getelementptr inbounds %struct.direntry, %struct.direntry* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 8
  %444 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 2
  store i32 %443, i32* %444, align 8
  %445 = load i64, i64* %19, align 8
  %446 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 1
  store i64 %445, i64* %446, align 8
  %447 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = load %struct.direntry*, %struct.direntry** %25, align 8
  %450 = getelementptr inbounds %struct.direntry, %struct.direntry* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 4
  %452 = load i64, i64* %19, align 8
  %453 = add nsw i64 %452, 1
  %454 = call i32 @strlcpy(i32 %448, i32 %451, i64 %453)
  br label %455

455:                                              ; preds = %432, %407
  %456 = load i64, i64* %18, align 8
  %457 = load i32, i32* %8, align 4
  %458 = call i64 @uio_resid(i32 %457)
  %459 = icmp sgt i64 %456, %458
  br i1 %459, label %460, label %461

460:                                              ; preds = %455
  store i32 1, i32* %15, align 4
  br label %479

461:                                              ; preds = %455
  %462 = load i8*, i8** %28, align 8
  %463 = load i64, i64* %18, align 8
  %464 = load i32, i32* %8, align 4
  %465 = call i32 @uiomove(i8* %462, i64 %463, i32 %464)
  store i32 %465, i32* %9, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %468

467:                                              ; preds = %461
  br label %479

468:                                              ; preds = %461
  %469 = load i32, i32* %12, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %12, align 4
  %471 = load %struct.direntry*, %struct.direntry** %25, align 8
  %472 = getelementptr inbounds %struct.direntry, %struct.direntry* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  store i64 %473, i64* %21, align 8
  %474 = load %struct.direntry*, %struct.direntry** %25, align 8
  %475 = call %struct.direntry* @NFS_DIRENTRY_NEXT(%struct.direntry* %474)
  store %struct.direntry* %475, %struct.direntry** %25, align 8
  br label %476

476:                                              ; preds = %468
  %477 = load i64, i64* %16, align 8
  %478 = add nsw i64 %477, 1
  store i64 %478, i64* %16, align 8
  br label %398

479:                                              ; preds = %467, %460, %398
  %480 = load i64, i64* %16, align 8
  %481 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %24, align 8
  %482 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = icmp eq i64 %480, %483
  br i1 %484, label %485, label %504

485:                                              ; preds = %479
  %486 = load i64, i64* %21, align 8
  store i64 %486, i64* %22, align 8
  %487 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %24, align 8
  %488 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %487, i32 0, i32 2
  %489 = load i64, i64* %488, align 8
  %490 = load i32, i32* @NDB_EOF, align 4
  %491 = call i64 @ISSET(i64 %489, i32 %490)
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %503

493:                                              ; preds = %485
  store i32 1, i32* %15, align 4
  %494 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %495 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %494, i32 0, i32 1
  %496 = load i32*, i32** %495, align 8
  %497 = icmp ne i32* %496, null
  br i1 %497, label %498, label %502

498:                                              ; preds = %493
  %499 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %500 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %499, i32 0, i32 1
  %501 = load i32*, i32** %500, align 8
  store i32 1, i32* %501, align 4
  br label %502

502:                                              ; preds = %498, %493
  br label %503

503:                                              ; preds = %502, %485
  br label %504

504:                                              ; preds = %503, %479
  %505 = load i32, i32* %9, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %511, label %507

507:                                              ; preds = %504
  %508 = load i32, i32* %8, align 4
  %509 = load i64, i64* %21, align 8
  %510 = call i32 @uio_setoffset(i32 %508, i64 %509)
  br label %511

511:                                              ; preds = %507, %504
  %512 = load i32, i32* %9, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %529, label %514

514:                                              ; preds = %511
  %515 = load i32, i32* %15, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %529, label %517

517:                                              ; preds = %514
  %518 = load i64, i64* %21, align 8
  %519 = load i64, i64* %20, align 8
  %520 = icmp eq i64 %518, %519
  br i1 %520, label %521, label %529

521:                                              ; preds = %517
  %522 = load i64, i64* %20, align 8
  %523 = load i64, i64* %16, align 8
  %524 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %24, align 8
  %525 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %524, i32 0, i32 0
  %526 = load i64, i64* %525, align 8
  %527 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %522, i64 %523, i64 %526)
  %528 = load i32, i32* @EIO, align 4
  store i32 %528, i32* %9, align 4
  br label %529

529:                                              ; preds = %521, %517, %514, %511
  %530 = load %struct.nfsbuf*, %struct.nfsbuf** %23, align 8
  %531 = call i32 @nfs_buf_release(%struct.nfsbuf* %530, i32 1)
  br label %200

532:                                              ; preds = %207
  %533 = load i32, i32* %9, align 4
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %540, label %535

535:                                              ; preds = %532
  %536 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %537 = load i64, i64* %21, align 8
  %538 = load i64, i64* %22, align 8
  %539 = call i32 @nfs_dir_cookie_cache(%struct.TYPE_13__* %536, i64 %537, i64 %538)
  br label %540

540:                                              ; preds = %535, %532
  %541 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %542 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %541, i32 0, i32 2
  %543 = load i32*, i32** %542, align 8
  %544 = icmp ne i32* %543, null
  br i1 %544, label %545, label %550

545:                                              ; preds = %540
  %546 = load i32, i32* %12, align 4
  %547 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %548 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %547, i32 0, i32 2
  %549 = load i32*, i32** %548, align 8
  store i32 %546, i32* %549, align 4
  br label %550

550:                                              ; preds = %545, %540
  br label %551

551:                                              ; preds = %550, %314, %221, %174, %163, %142, %112
  %552 = load i32, i32* %9, align 4
  store i32 %552, i32* %2, align 4
  br label %553

553:                                              ; preds = %551, %94, %81, %66, %46
  %554 = load i32, i32* %2, align 4
  ret i32 %554
}

declare dso_local %struct.TYPE_13__* @VTONFS(i32) #1

declare dso_local %struct.nfsmount* @VTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i64 @vnode_vtype(i32) #1

declare dso_local i64 @uio_resid(i32) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i64 @uio_offset(i32) #1

declare dso_local i64 @NFS_DIR_COOKIE_POTENTIALLY_TRUNCATED(i64) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_13__*) #1

declare dso_local i32 @nfs_invaldir(%struct.TYPE_13__*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_13__*) #1

declare dso_local i32 @nfs_vinvalbuf(i32, i32, i32, i32) #1

declare dso_local i32 @nfs_getattr(%struct.TYPE_13__*, i32*, i32, i32) #1

declare dso_local i32 @nfs_dir_cookie_to_lbn(%struct.TYPE_13__*, i64, i32*, i64*) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i32 @nfs_buf_get(%struct.TYPE_13__*, i64, i32, i32, i32, %struct.nfsbuf**) #1

declare dso_local i64 @ISSET(i64, i32) #1

declare dso_local i32 @nfs_buf_readdir(%struct.nfsbuf*, i32) #1

declare dso_local i32 @nfs_buf_release(%struct.nfsbuf*, i32) #1

declare dso_local %struct.direntry* @NFS_DIR_BUF_FIRST_DIRENTRY(%struct.nfsbuf*) #1

declare dso_local i64 @NFS_DIR_COOKIE_SAME32(i64, i64) #1

declare dso_local %struct.direntry* @NFS_DIRENTRY_NEXT(%struct.direntry*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @NFS_DIRENT_LEN(i64) #1

declare dso_local i32 @strlcpy(i32, i32, i64) #1

declare dso_local i32 @uiomove(i8*, i64, i32) #1

declare dso_local i32 @uio_setoffset(i32, i64) #1

declare dso_local i32 @printf(i8*, i64, i64, i64) #1

declare dso_local i32 @nfs_dir_cookie_cache(%struct.TYPE_13__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
