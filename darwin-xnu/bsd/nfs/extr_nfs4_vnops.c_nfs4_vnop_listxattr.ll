; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_vnop_listxattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_vnop_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.vnop_listxattr_args = type { i32*, i32, i32*, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.nfsmount = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.nfs_vattr = type { i32, i32 }
%struct.nfsbuf = type { i64, i64 }
%struct.nfs_dir_buf_header = type { i32, i32, i64, i32 }
%struct.direntry = type { i64, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@NFS_FSFLAG_NAMED_ATTR = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@NGA_CACHED = common dso_local global i32 0, align 4
@NFS_FATTR_NAMED_ATTR = common dso_local global i32 0, align 4
@NFS_FFLAG_HAS_NAMED_ATTRS = common dso_local global i32 0, align 4
@NNEEDINVALIDATE = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@NGA_UNCACHED = common dso_local global i32 0, align 4
@nfsstats = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
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
@ERANGE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@NDB_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"nfs readdir cookie didn't change 0x%llx, %d/%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_vnop_listxattr(%struct.vnop_listxattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_listxattr_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.nfsmount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfs_vattr, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.nfsbuf*, align 8
  %17 = alloca %struct.nfs_dir_buf_header*, align 8
  %18 = alloca %struct.direntry*, align 8
  store %struct.vnop_listxattr_args* %0, %struct.vnop_listxattr_args** %3, align 8
  %19 = load %struct.vnop_listxattr_args*, %struct.vnop_listxattr_args** %3, align 8
  %20 = getelementptr inbounds %struct.vnop_listxattr_args, %struct.vnop_listxattr_args* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  %22 = load %struct.vnop_listxattr_args*, %struct.vnop_listxattr_args** %3, align 8
  %23 = getelementptr inbounds %struct.vnop_listxattr_args, %struct.vnop_listxattr_args* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.TYPE_16__* @VTONFS(i32 %24)
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %5, align 8
  %26 = load %struct.vnop_listxattr_args*, %struct.vnop_listxattr_args** %3, align 8
  %27 = getelementptr inbounds %struct.vnop_listxattr_args, %struct.vnop_listxattr_args* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %6, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  store i64 0, i64* %15, align 8
  store %struct.nfsbuf* null, %struct.nfsbuf** %16, align 8
  %29 = load %struct.vnop_listxattr_args*, %struct.vnop_listxattr_args** %3, align 8
  %30 = getelementptr inbounds %struct.vnop_listxattr_args, %struct.vnop_listxattr_args* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.nfsmount* @VTONMP(i32 %31)
  store %struct.nfsmount* %32, %struct.nfsmount** %8, align 8
  %33 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %34 = call i64 @nfs_mount_gone(%struct.nfsmount* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %2, align 4
  br label %397

38:                                               ; preds = %1
  %39 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %40 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NFS_FSFLAG_NAMED_ATTR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @ENOTSUP, align 4
  store i32 %47, i32* %2, align 4
  br label %397

48:                                               ; preds = %38
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @NGA_CACHED, align 4
  %52 = call i32 @nfs_getattr(%struct.TYPE_16__* %49, %struct.nfs_vattr* %12, i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %2, align 4
  br label %397

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %12, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NFS_FATTR_NAMED_ATTR, align 4
  %61 = call i64 @NFS_BITMAP_ISSET(i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %12, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @NFS_FFLAG_HAS_NAMED_ATTRS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %397

70:                                               ; preds = %63, %57
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @vfs_context_thread(i32 %72)
  %74 = call i32 @nfs_node_set_busy(%struct.TYPE_16__* %71, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %2, align 4
  br label %397

78:                                               ; preds = %70
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call %struct.TYPE_16__* @nfs4_named_attr_dir_get(%struct.TYPE_16__* %79, i32 1, i32 %80)
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** %7, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = call i32 @nfs_node_clear_busy(%struct.TYPE_16__* %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %85 = icmp ne %struct.TYPE_16__* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  br label %388

87:                                               ; preds = %78
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %89 = call i32 @nfs_node_lock(%struct.TYPE_16__* %88)
  store i32 %89, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %388

92:                                               ; preds = %87
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @NNEEDINVALIDATE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %92
  %100 = load i32, i32* @NNEEDINVALIDATE, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %107 = call i32 @nfs_invaldir(%struct.TYPE_16__* %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %109 = call i32 @nfs_node_unlock(%struct.TYPE_16__* %108)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %111 = call i32 @NFSTOV(%struct.TYPE_16__* %110)
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @nfs_vinvalbuf(i32 %111, i32 0, i32 %112, i32 1)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %99
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %118 = call i32 @nfs_node_lock(%struct.TYPE_16__* %117)
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %116, %99
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %388

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123, %92
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @NMODIFIED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %124
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %133 = call i32 @nfs_invaldir(%struct.TYPE_16__* %132)
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %135 = call i32 @nfs_node_unlock(%struct.TYPE_16__* %134)
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %137 = call i32 @NFSTOV(%struct.TYPE_16__* %136)
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @nfs_vinvalbuf(i32 %137, i32 0, i32 %138, i32 1)
  store i32 %139, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  br label %388

142:                                              ; preds = %131
  br label %146

143:                                              ; preds = %124
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %145 = call i32 @nfs_node_unlock(%struct.TYPE_16__* %144)
  br label %146

146:                                              ; preds = %143, %142
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @NGA_UNCACHED, align 4
  %150 = call i32 @nfs_getattr(%struct.TYPE_16__* %147, %struct.nfs_vattr* %12, i32 %148, i32 %149)
  store i32 %150, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %388

153:                                              ; preds = %146
  %154 = load i32*, i32** %6, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i32*, i32** %6, align 8
  %158 = call i64 @uio_resid(i32* %157)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %388

161:                                              ; preds = %156, %153
  store i32 0, i32* %10, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %162

162:                                              ; preds = %384, %161
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  br label %169

169:                                              ; preds = %165, %162
  %170 = phi i1 [ false, %162 ], [ %168, %165 ]
  br i1 %170, label %171, label %387

171:                                              ; preds = %169
  %172 = call i32 @OSAddAtomic64(i32 1, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @nfsstats, i32 0, i32 0))
  %173 = load i64, i64* %14, align 8
  store i64 %173, i64* %13, align 8
  br label %174

174:                                              ; preds = %229, %171
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %176 = load i64, i64* %15, align 8
  %177 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %178 = load i32, i32* %4, align 4
  %179 = call i32 @vfs_context_thread(i32 %178)
  %180 = load i32, i32* @NBLK_READ, align 4
  %181 = call i32 @nfs_buf_get(%struct.TYPE_16__* %175, i64 %176, i32 %177, i32 %179, i32 %180, %struct.nfsbuf** %16)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %174
  br label %388

185:                                              ; preds = %174
  %186 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %187 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = inttoptr i64 %188 to %struct.nfs_dir_buf_header*
  store %struct.nfs_dir_buf_header* %189, %struct.nfs_dir_buf_header** %17, align 8
  %190 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %191 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i32, i32* @NB_CACHE, align 4
  %194 = call i64 @ISSET(i64 %192, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %185
  %197 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %17, align 8
  %198 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* @NDB_FULL, align 4
  %201 = call i64 @ISSET(i64 %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %280, label %203

203:                                              ; preds = %196, %185
  %204 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %205 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* @NB_CACHE, align 4
  %208 = call i64 @ISSET(i64 %206, i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %222, label %210

210:                                              ; preds = %203
  %211 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %17, align 8
  %212 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %211, i32 0, i32 2
  store i64 0, i64* %212, align 8
  %213 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %17, align 8
  %214 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %213, i32 0, i32 0
  store i32 0, i32* %214, align 8
  %215 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %17, align 8
  %216 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %215, i32 0, i32 1
  store i32 24, i32* %216, align 4
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %17, align 8
  %221 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 8
  br label %222

222:                                              ; preds = %210, %203
  %223 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %224 = load i32, i32* %4, align 4
  %225 = call i32 @nfs_buf_readdir(%struct.nfsbuf* %223, i32 %224)
  store i32 %225, i32* %9, align 4
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* @NFSERR_DIRBUFDROPPED, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %222
  br label %174

230:                                              ; preds = %222
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %235 = call i32 @nfs_buf_release(%struct.nfsbuf* %234, i32 1)
  br label %236

236:                                              ; preds = %233, %230
  %237 = load i32, i32* %9, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %275

239:                                              ; preds = %236
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* @ENXIO, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %275

243:                                              ; preds = %239
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* @ETIMEDOUT, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %275

247:                                              ; preds = %243
  %248 = load i32, i32* %9, align 4
  %249 = load i32, i32* @EINTR, align 4
  %250 = icmp ne i32 %248, %249
  br i1 %250, label %251, label %275

251:                                              ; preds = %247
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* @ERESTART, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %275

255:                                              ; preds = %251
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %257 = call i32 @nfs_node_lock(%struct.TYPE_16__* %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %255
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %261 = call i32 @nfs_invaldir(%struct.TYPE_16__* %260)
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %263 = call i32 @nfs_node_unlock(%struct.TYPE_16__* %262)
  br label %264

264:                                              ; preds = %259, %255
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %266 = call i32 @NFSTOV(%struct.TYPE_16__* %265)
  %267 = load i32, i32* %4, align 4
  %268 = call i32 @nfs_vinvalbuf(i32 %266, i32 0, i32 %267, i32 1)
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* @NFSERR_BAD_COOKIE, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %264
  %273 = load i32, i32* @ENOENT, align 4
  store i32 %273, i32* %9, align 4
  br label %274

274:                                              ; preds = %272, %264
  br label %275

275:                                              ; preds = %274, %251, %247, %243, %239, %236
  %276 = load i32, i32* %9, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  br label %388

279:                                              ; preds = %275
  br label %280

280:                                              ; preds = %279, %196
  %281 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %282 = call %struct.direntry* @NFS_DIR_BUF_FIRST_DIRENTRY(%struct.nfsbuf* %281)
  store %struct.direntry* %282, %struct.direntry** %18, align 8
  store i32 0, i32* %11, align 4
  br label %283

283:                                              ; preds = %347, %280
  %284 = load i32, i32* %11, align 4
  %285 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %17, align 8
  %286 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp slt i32 %284, %287
  br i1 %288, label %289, label %350

289:                                              ; preds = %283
  %290 = load %struct.direntry*, %struct.direntry** %18, align 8
  %291 = getelementptr inbounds %struct.direntry, %struct.direntry* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @xattr_protected(i32 %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %341, label %295

295:                                              ; preds = %289
  %296 = load i32*, i32** %6, align 8
  %297 = icmp eq i32* %296, null
  br i1 %297, label %298, label %310

298:                                              ; preds = %295
  %299 = load %struct.direntry*, %struct.direntry** %18, align 8
  %300 = getelementptr inbounds %struct.direntry, %struct.direntry* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %301, 1
  %303 = load %struct.vnop_listxattr_args*, %struct.vnop_listxattr_args** %3, align 8
  %304 = getelementptr inbounds %struct.vnop_listxattr_args, %struct.vnop_listxattr_args* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %306 to i64
  %308 = add nsw i64 %307, %302
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %305, align 4
  br label %340

310:                                              ; preds = %295
  %311 = load i32*, i32** %6, align 8
  %312 = call i64 @uio_resid(i32* %311)
  %313 = load %struct.direntry*, %struct.direntry** %18, align 8
  %314 = getelementptr inbounds %struct.direntry, %struct.direntry* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = add nsw i64 %315, 1
  %317 = icmp slt i64 %312, %316
  br i1 %317, label %318, label %320

318:                                              ; preds = %310
  %319 = load i32, i32* @ERANGE, align 4
  store i32 %319, i32* %9, align 4
  br label %339

320:                                              ; preds = %310
  %321 = load %struct.direntry*, %struct.direntry** %18, align 8
  %322 = getelementptr inbounds %struct.direntry, %struct.direntry* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.direntry*, %struct.direntry** %18, align 8
  %325 = getelementptr inbounds %struct.direntry, %struct.direntry* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = add nsw i64 %326, 1
  %328 = load i32*, i32** %6, align 8
  %329 = call i32 @uiomove(i32 %323, i64 %327, i32* %328)
  store i32 %329, i32* %9, align 4
  %330 = load i32, i32* %9, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %320
  %333 = load i32, i32* %9, align 4
  %334 = load i32, i32* @EFAULT, align 4
  %335 = icmp ne i32 %333, %334
  br i1 %335, label %336, label %338

336:                                              ; preds = %332
  %337 = load i32, i32* @ERANGE, align 4
  store i32 %337, i32* %9, align 4
  br label %338

338:                                              ; preds = %336, %332, %320
  br label %339

339:                                              ; preds = %338, %318
  br label %340

340:                                              ; preds = %339, %298
  br label %341

341:                                              ; preds = %340, %289
  %342 = load %struct.direntry*, %struct.direntry** %18, align 8
  %343 = getelementptr inbounds %struct.direntry, %struct.direntry* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  store i64 %344, i64* %14, align 8
  %345 = load %struct.direntry*, %struct.direntry** %18, align 8
  %346 = call %struct.direntry* @NFS_DIRENTRY_NEXT(%struct.direntry* %345)
  store %struct.direntry* %346, %struct.direntry** %18, align 8
  br label %347

347:                                              ; preds = %341
  %348 = load i32, i32* %11, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %11, align 4
  br label %283

350:                                              ; preds = %283
  %351 = load i32, i32* %11, align 4
  %352 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %17, align 8
  %353 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp eq i32 %351, %354
  br i1 %355, label %356, label %366

356:                                              ; preds = %350
  %357 = load i64, i64* %14, align 8
  store i64 %357, i64* %15, align 8
  %358 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %17, align 8
  %359 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = load i32, i32* @NDB_EOF, align 4
  %362 = call i64 @ISSET(i64 %360, i32 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %356
  store i32 1, i32* %10, align 4
  br label %365

365:                                              ; preds = %364, %356
  br label %366

366:                                              ; preds = %365, %350
  %367 = load i32, i32* %9, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %384, label %369

369:                                              ; preds = %366
  %370 = load i32, i32* %10, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %384, label %372

372:                                              ; preds = %369
  %373 = load i64, i64* %14, align 8
  %374 = load i64, i64* %13, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %384

376:                                              ; preds = %372
  %377 = load i64, i64* %13, align 8
  %378 = load i32, i32* %11, align 4
  %379 = load %struct.nfs_dir_buf_header*, %struct.nfs_dir_buf_header** %17, align 8
  %380 = getelementptr inbounds %struct.nfs_dir_buf_header, %struct.nfs_dir_buf_header* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %377, i32 %378, i32 %381)
  %383 = load i32, i32* @EIO, align 4
  store i32 %383, i32* %9, align 4
  br label %384

384:                                              ; preds = %376, %372, %369, %366
  %385 = load %struct.nfsbuf*, %struct.nfsbuf** %16, align 8
  %386 = call i32 @nfs_buf_release(%struct.nfsbuf* %385, i32 1)
  br label %162

387:                                              ; preds = %169
  br label %388

388:                                              ; preds = %387, %278, %184, %160, %152, %141, %122, %91, %86
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %390 = icmp ne %struct.TYPE_16__* %389, null
  br i1 %390, label %391, label %395

391:                                              ; preds = %388
  %392 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %393 = call i32 @NFSTOV(%struct.TYPE_16__* %392)
  %394 = call i32 @vnode_put(i32 %393)
  br label %395

395:                                              ; preds = %391, %388
  %396 = load i32, i32* %9, align 4
  store i32 %396, i32* %2, align 4
  br label %397

397:                                              ; preds = %395, %76, %69, %55, %46, %36
  %398 = load i32, i32* %2, align 4
  ret i32 %398
}

declare dso_local %struct.TYPE_16__* @VTONFS(i32) #1

declare dso_local %struct.nfsmount* @VTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs_getattr(%struct.TYPE_16__*, %struct.nfs_vattr*, i32, i32) #1

declare dso_local i64 @NFS_BITMAP_ISSET(i32, i32) #1

declare dso_local i32 @nfs_node_set_busy(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local %struct.TYPE_16__* @nfs4_named_attr_dir_get(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @nfs_node_clear_busy(%struct.TYPE_16__*) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_16__*) #1

declare dso_local i32 @nfs_invaldir(%struct.TYPE_16__*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_16__*) #1

declare dso_local i32 @nfs_vinvalbuf(i32, i32, i32, i32) #1

declare dso_local i32 @NFSTOV(%struct.TYPE_16__*) #1

declare dso_local i64 @uio_resid(i32*) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i32 @nfs_buf_get(%struct.TYPE_16__*, i64, i32, i32, i32, %struct.nfsbuf**) #1

declare dso_local i64 @ISSET(i64, i32) #1

declare dso_local i32 @nfs_buf_readdir(%struct.nfsbuf*, i32) #1

declare dso_local i32 @nfs_buf_release(%struct.nfsbuf*, i32) #1

declare dso_local %struct.direntry* @NFS_DIR_BUF_FIRST_DIRENTRY(%struct.nfsbuf*) #1

declare dso_local i32 @xattr_protected(i32) #1

declare dso_local i32 @uiomove(i32, i64, i32*) #1

declare dso_local %struct.direntry* @NFS_DIRENTRY_NEXT(%struct.direntry*) #1

declare dso_local i32 @printf(i8*, i64, i32, i32) #1

declare dso_local i32 @vnode_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
