; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_pagein.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_pagein.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.vnop_pagein_args = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.nfsmount = type { i64, i64, i64, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, i64, i64, i32, i32, i32*, %struct.nfsreq**)*, i32 (%struct.TYPE_12__*, %struct.nfsreq*, i32, i64*, i32*)* }
%struct.nfsreq = type { i32 }

@UPL_NOCOMMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"nfs_pagein: no upl\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"nfs_pagein: invalid size %ld\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_MASK_64 = common dso_local global i64 0, align 8
@UPL_ABORT_ERROR = common dso_local global i32 0, align 4
@UPL_ABORT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"nfs_vnop_pagein: ubc_upl_map() failed with (%d)\00", align 1
@NFS_VER4 = common dso_local global i64 0, align 8
@NREVOKE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@nfsstats = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@NFSERR_GRACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"nfs_vnop_pagein: error %d, initiating recovery\00", align 1
@PZERO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"nfsgrace\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"nfs_pagein: too many restarts, aborting\00", align 1
@UPL_COMMIT_CLEAR_DIRTY = common dso_local global i32 0, align 4
@UPL_COMMIT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@MAXPAGINGREQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_vnop_pagein(%struct.vnop_pagein_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_pagein_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.nfsmount*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca [16 x %struct.nfsreq*], align 16
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.vnop_pagein_args* %0, %struct.vnop_pagein_args** %3, align 8
  %36 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %3, align 8
  %37 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %4, align 4
  %39 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %3, align 8
  %40 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %5, align 8
  %42 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %3, align 8
  %43 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %6, align 8
  %45 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %3, align 8
  %46 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %7, align 8
  %48 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %3, align 8
  %49 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  %51 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %3, align 8
  %52 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call %struct.TYPE_12__* @VTONFS(i32 %54)
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %12, align 8
  store i32 0, i32* %20, align 4
  %56 = call i32 @UIO_SIZEOF(i32 1)
  %57 = zext i32 %56 to i64
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %24, align 8
  %59 = alloca i8, i64 %57, align 16
  store i64 %57, i64* %25, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @UPL_NOCOMMIT, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %26, align 4
  store i64 0, i64* %31, align 8
  store i64 0, i64* %32, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %6, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = call i32 @FSDBG(i32 322, %struct.TYPE_12__* %63, i64 %64, i32 %66, i64 %68)
  %70 = load i64, i64* %5, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %1
  %73 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %1
  %75 = load i64, i64* %6, align 8
  %76 = icmp ule i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* %26, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @ubc_upl_abort_range(i64 %83, i64 %84, i64 %85, i32 0)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %2, align 4
  store i32 1, i32* %34, align 4
  br label %484

89:                                               ; preds = %74
  %90 = load i64, i64* %7, align 8
  %91 = icmp ult i64 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %89
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp uge i64 %93, %96
  br i1 %97, label %103, label %98

98:                                               ; preds = %92
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @PAGE_MASK_64, align 8
  %101 = and i64 %99, %100
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %98, %92, %89
  %104 = load i32, i32* %26, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i32, i32* @UPL_ABORT_ERROR, align 4
  %111 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @ubc_upl_abort_range(i64 %107, i64 %108, i64 %109, i32 %112)
  br label %114

114:                                              ; preds = %106, %103
  %115 = load i32, i32* @EINVAL, align 4
  store i32 %115, i32* %2, align 4
  store i32 1, i32* %34, align 4
  br label %484

116:                                              ; preds = %98
  %117 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %3, align 8
  %118 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @vfs_context_thread(i32 %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @ubc_getcred(i32 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @IS_VALID_CRED(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %116
  %127 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %3, align 8
  %128 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @vfs_context_ucred(i32 %129)
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %126, %116
  %132 = load i64, i64* %7, align 8
  %133 = load i32, i32* @UIO_SYSSPACE, align 4
  %134 = load i32, i32* @UIO_READ, align 4
  %135 = bitcast i8* %59 to i8**
  %136 = trunc i64 %57 to i32
  %137 = call i32 @uio_createwithbuffer(i32 1, i64 %132, i32 %133, i32 %134, i8** %135, i32 %136)
  store i32 %137, i32* %23, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call %struct.nfsmount* @VTONMP(i32 %138)
  store %struct.nfsmount* %139, %struct.nfsmount** %19, align 8
  %140 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %141 = call i64 @nfs_mount_gone(%struct.nfsmount* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %131
  %144 = load i32, i32* %26, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %143
  %147 = load i64, i64* %5, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load i32, i32* @UPL_ABORT_ERROR, align 4
  %151 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @ubc_upl_abort_range(i64 %147, i64 %148, i64 %149, i32 %152)
  br label %154

154:                                              ; preds = %146, %143
  %155 = load i32, i32* @ENXIO, align 4
  store i32 %155, i32* %2, align 4
  store i32 1, i32* %34, align 4
  br label %484

156:                                              ; preds = %131
  %157 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %158 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %13, align 8
  %160 = load i64, i64* %5, align 8
  %161 = call i32* @ubc_upl_pageinfo(i64 %160)
  store i32* %161, i32** %27, align 8
  %162 = load i64, i64* %5, align 8
  %163 = call i64 @ubc_upl_map(i64 %162, i64* %21)
  store i64 %163, i64* %33, align 8
  %164 = load i64, i64* %33, align 8
  %165 = load i64, i64* @KERN_SUCCESS, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %156
  %168 = load i64, i64* %33, align 8
  %169 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %168)
  br label %170

170:                                              ; preds = %167, %156
  %171 = load i64, i64* %8, align 8
  %172 = load i64, i64* %21, align 8
  %173 = add i64 %172, %171
  store i64 %173, i64* %21, align 8
  br label %174

174:                                              ; preds = %449, %170
  %175 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %176 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @NFS_VER4, align 8
  %179 = icmp sge i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %182 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %31, align 8
  br label %184

184:                                              ; preds = %180, %174
  %185 = load i64, i64* %6, align 8
  store i64 %185, i64* %16, align 8
  store i64 %185, i64* %15, align 8
  %186 = load i64, i64* %7, align 8
  store i64 %186, i64* %18, align 8
  %187 = load i64, i64* %21, align 8
  store i64 %187, i64* %22, align 8
  %188 = getelementptr inbounds [16 x %struct.nfsreq*], [16 x %struct.nfsreq*]* %28, i64 0, i64 0
  %189 = bitcast %struct.nfsreq** %188 to i8*
  %190 = call i32 @bzero(i8* %189, i32 128)
  store i32 0, i32* %30, align 4
  store i32 0, i32* %29, align 4
  br label %191

191:                                              ; preds = %391, %184
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @NREVOKE, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %191
  %199 = load i32, i32* @EIO, align 4
  store i32 %199, i32* %20, align 4
  br label %393

200:                                              ; preds = %191
  br label %201

201:                                              ; preds = %235, %200
  %202 = load i64, i64* %15, align 8
  %203 = icmp ugt i64 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = load i32, i32* %29, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [16 x %struct.nfsreq*], [16 x %struct.nfsreq*]* %28, i64 0, i64 %206
  %208 = load %struct.nfsreq*, %struct.nfsreq** %207, align 8
  %209 = icmp eq %struct.nfsreq* %208, null
  br label %210

210:                                              ; preds = %204, %201
  %211 = phi i1 [ false, %201 ], [ %209, %204 ]
  br i1 %211, label %212, label %245

212:                                              ; preds = %210
  %213 = load i64, i64* %13, align 8
  %214 = load i64, i64* %15, align 8
  %215 = call i64 @MIN(i64 %213, i64 %214)
  store i64 %215, i64* %14, align 8
  %216 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %217 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %216, i32 0, i32 5
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = load i32 (%struct.TYPE_12__*, i64, i64, i32, i32, i32*, %struct.nfsreq**)*, i32 (%struct.TYPE_12__*, i64, i64, i32, i32, i32*, %struct.nfsreq**)** %219, align 8
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %222 = load i64, i64* %18, align 8
  %223 = load i64, i64* %14, align 8
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* %29, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [16 x %struct.nfsreq*], [16 x %struct.nfsreq*]* %28, i64 0, i64 %227
  %229 = call i32 %220(%struct.TYPE_12__* %221, i64 %222, i64 %223, i32 %224, i32 %225, i32* null, %struct.nfsreq** %228)
  store i32 %229, i32* %20, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %212
  %232 = load i32, i32* %29, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [16 x %struct.nfsreq*], [16 x %struct.nfsreq*]* %28, i64 0, i64 %233
  store %struct.nfsreq* null, %struct.nfsreq** %234, align 8
  br label %245

235:                                              ; preds = %212
  %236 = load i64, i64* %14, align 8
  %237 = load i64, i64* %18, align 8
  %238 = add i64 %237, %236
  store i64 %238, i64* %18, align 8
  %239 = load i64, i64* %14, align 8
  %240 = load i64, i64* %15, align 8
  %241 = sub i64 %240, %239
  store i64 %241, i64* %15, align 8
  %242 = load i32, i32* %29, align 4
  %243 = add nsw i32 %242, 1
  %244 = srem i32 %243, 16
  store i32 %244, i32* %29, align 4
  br label %201

245:                                              ; preds = %231, %210
  br label %246

246:                                              ; preds = %378, %245
  %247 = load i64, i64* %16, align 8
  %248 = icmp ugt i64 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %246
  %250 = load i32, i32* %30, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [16 x %struct.nfsreq*], [16 x %struct.nfsreq*]* %28, i64 0, i64 %251
  %253 = load %struct.nfsreq*, %struct.nfsreq** %252, align 8
  %254 = icmp ne %struct.nfsreq* %253, null
  br label %255

255:                                              ; preds = %249, %246
  %256 = phi i1 [ false, %246 ], [ %254, %249 ]
  br i1 %256, label %257, label %379

257:                                              ; preds = %255
  %258 = load i64, i64* %13, align 8
  %259 = load i64, i64* %16, align 8
  %260 = call i64 @MIN(i64 %258, i64 %259)
  store i64 %260, i64* %17, align 8
  store i64 %260, i64* %14, align 8
  %261 = load i32, i32* %23, align 4
  %262 = load i32, i32* %23, align 4
  %263 = call %struct.TYPE_12__* @uio_offset(i32 %262)
  %264 = load i32, i32* @UIO_SYSSPACE, align 4
  %265 = load i32, i32* @UIO_READ, align 4
  %266 = call i32 @uio_reset(i32 %261, %struct.TYPE_12__* %263, i32 %264, i32 %265)
  %267 = load i32, i32* %23, align 4
  %268 = load i64, i64* %22, align 8
  %269 = call i32 @CAST_USER_ADDR_T(i64 %268)
  %270 = load i64, i64* %14, align 8
  %271 = call i32 @uio_addiov(i32 %267, i32 %269, i64 %270)
  %272 = load i32, i32* %23, align 4
  %273 = call %struct.TYPE_12__* @uio_offset(i32 %272)
  %274 = load i32, i32* %23, align 4
  %275 = call i64 @uio_resid(i32 %274)
  %276 = load i64, i64* %22, align 8
  %277 = trunc i64 %276 to i32
  %278 = load i64, i64* %16, align 8
  %279 = call i32 @FSDBG(i32 322, %struct.TYPE_12__* %273, i64 %275, i32 %277, i64 %278)
  %280 = call i32 @OSAddAtomic64(i32 1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @nfsstats, i32 0, i32 0))
  %281 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %282 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %281, i32 0, i32 5
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 1
  %285 = load i32 (%struct.TYPE_12__*, %struct.nfsreq*, i32, i64*, i32*)*, i32 (%struct.TYPE_12__*, %struct.nfsreq*, i32, i64*, i32*)** %284, align 8
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %287 = load i32, i32* %30, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [16 x %struct.nfsreq*], [16 x %struct.nfsreq*]* %28, i64 0, i64 %288
  %290 = load %struct.nfsreq*, %struct.nfsreq** %289, align 8
  %291 = load i32, i32* %23, align 4
  %292 = call i32 %285(%struct.TYPE_12__* %286, %struct.nfsreq* %290, i32 %291, i64* %17, i32* null)
  store i32 %292, i32* %20, align 4
  %293 = load i32, i32* %30, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [16 x %struct.nfsreq*], [16 x %struct.nfsreq*]* %28, i64 0, i64 %294
  store %struct.nfsreq* null, %struct.nfsreq** %295, align 8
  %296 = load i32, i32* %30, align 4
  %297 = add nsw i32 %296, 1
  %298 = srem i32 %297, 16
  store i32 %298, i32* %30, align 4
  %299 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %300 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @NFS_VER4, align 8
  %303 = icmp sge i64 %301, %302
  br i1 %303, label %304, label %334

304:                                              ; preds = %257
  %305 = load i32, i32* %20, align 4
  %306 = call i64 @nfs_mount_state_error_should_restart(i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %334

308:                                              ; preds = %304
  %309 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %310 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %309, i32 0, i32 4
  %311 = call i32 @lck_mtx_lock(i32* %310)
  %312 = load i32, i32* %20, align 4
  %313 = load i32, i32* @NFSERR_GRACE, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %328

315:                                              ; preds = %308
  %316 = load i64, i64* %31, align 8
  %317 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %318 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = icmp eq i64 %316, %319
  br i1 %320, label %321, label %328

321:                                              ; preds = %315
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %323 = load i32, i32* %20, align 4
  %324 = call i32 (%struct.TYPE_12__*, i8*, ...) @NP(%struct.TYPE_12__* %322, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %323)
  %325 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %326 = load i32, i32* %20, align 4
  %327 = call i32 @nfs_need_recover(%struct.nfsmount* %325, i32 %326)
  br label %328

328:                                              ; preds = %321, %315, %308
  %329 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %330 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %329, i32 0, i32 4
  %331 = call i32 @lck_mtx_unlock(i32* %330)
  %332 = load i64, i64* %32, align 8
  %333 = add nsw i64 %332, 1
  store i64 %333, i64* %32, align 8
  br label %397

334:                                              ; preds = %304, %257
  %335 = load i32, i32* %20, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %344

337:                                              ; preds = %334
  %338 = load i32, i32* %23, align 4
  %339 = call %struct.TYPE_12__* @uio_offset(i32 %338)
  %340 = load i32, i32* %23, align 4
  %341 = call i64 @uio_resid(i32 %340)
  %342 = load i32, i32* %20, align 4
  %343 = call i32 @FSDBG(i32 322, %struct.TYPE_12__* %339, i64 %341, i32 %342, i64 -1)
  br label %379

344:                                              ; preds = %334
  %345 = load i64, i64* %17, align 8
  %346 = load i64, i64* %14, align 8
  %347 = icmp ult i64 %345, %346
  br i1 %347, label %348, label %368

348:                                              ; preds = %344
  %349 = load i64, i64* %14, align 8
  %350 = load i64, i64* %17, align 8
  %351 = sub i64 %349, %350
  %352 = trunc i64 %351 to i32
  store i32 %352, i32* %35, align 4
  %353 = load i64, i64* %22, align 8
  %354 = inttoptr i64 %353 to i8*
  %355 = load i64, i64* %17, align 8
  %356 = getelementptr inbounds i8, i8* %354, i64 %355
  %357 = load i32, i32* %35, align 4
  %358 = call i32 @bzero(i8* %356, i32 %357)
  %359 = load i32, i32* %23, align 4
  %360 = call %struct.TYPE_12__* @uio_offset(i32 %359)
  %361 = load i64, i64* %17, align 8
  %362 = load i32, i32* %35, align 4
  %363 = load i64, i64* %22, align 8
  %364 = call i32 @FSDBG(i32 324, %struct.TYPE_12__* %360, i64 %361, i32 %362, i64 %363)
  %365 = load i32, i32* %23, align 4
  %366 = load i32, i32* %35, align 4
  %367 = call i32 @uio_update(i32 %365, i32 %366)
  br label %368

368:                                              ; preds = %348, %344
  %369 = load i64, i64* %14, align 8
  %370 = load i64, i64* %22, align 8
  %371 = add i64 %370, %369
  store i64 %371, i64* %22, align 8
  %372 = load i64, i64* %14, align 8
  %373 = load i64, i64* %16, align 8
  %374 = sub i64 %373, %372
  store i64 %374, i64* %16, align 8
  %375 = load i64, i64* %15, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %368
  br label %379

378:                                              ; preds = %368
  br label %246

379:                                              ; preds = %377, %337, %255
  br label %380

380:                                              ; preds = %379
  %381 = load i32, i32* %20, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %391, label %383

383:                                              ; preds = %380
  %384 = load i64, i64* %15, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %389, label %386

386:                                              ; preds = %383
  %387 = load i64, i64* %16, align 8
  %388 = icmp ne i64 %387, 0
  br label %389

389:                                              ; preds = %386, %383
  %390 = phi i1 [ true, %383 ], [ %388, %386 ]
  br label %391

391:                                              ; preds = %389, %380
  %392 = phi i1 [ false, %380 ], [ %390, %389 ]
  br i1 %392, label %191, label %393

393:                                              ; preds = %391, %198
  store i64 0, i64* %32, align 8
  %394 = load i32, i32* %20, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %457

396:                                              ; preds = %393
  br label %397

397:                                              ; preds = %396, %328
  br label %398

398:                                              ; preds = %404, %397
  %399 = load i32, i32* %30, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [16 x %struct.nfsreq*], [16 x %struct.nfsreq*]* %28, i64 0, i64 %400
  %402 = load %struct.nfsreq*, %struct.nfsreq** %401, align 8
  %403 = icmp ne %struct.nfsreq* %402, null
  br i1 %403, label %404, label %416

404:                                              ; preds = %398
  %405 = load i32, i32* %30, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [16 x %struct.nfsreq*], [16 x %struct.nfsreq*]* %28, i64 0, i64 %406
  %408 = load %struct.nfsreq*, %struct.nfsreq** %407, align 8
  %409 = call i32 @nfs_request_async_cancel(%struct.nfsreq* %408)
  %410 = load i32, i32* %30, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [16 x %struct.nfsreq*], [16 x %struct.nfsreq*]* %28, i64 0, i64 %411
  store %struct.nfsreq* null, %struct.nfsreq** %412, align 8
  %413 = load i32, i32* %30, align 4
  %414 = add nsw i32 %413, 1
  %415 = srem i32 %414, 16
  store i32 %415, i32* %30, align 4
  br label %398

416:                                              ; preds = %398
  %417 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* @NREVOKE, align 4
  %421 = and i32 %419, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %425

423:                                              ; preds = %416
  %424 = load i32, i32* @EIO, align 4
  store i32 %424, i32* %20, align 4
  br label %456

425:                                              ; preds = %416
  %426 = load i64, i64* %32, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %455

428:                                              ; preds = %425
  %429 = load i64, i64* %32, align 8
  %430 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %431 = call i64 @nfs_mount_state_max_restarts(%struct.nfsmount* %430)
  %432 = icmp sle i64 %429, %431
  br i1 %432, label %433, label %451

433:                                              ; preds = %428
  %434 = load i32, i32* %20, align 4
  %435 = load i32, i32* @NFSERR_GRACE, align 4
  %436 = icmp eq i32 %434, %435
  br i1 %436, label %437, label %445

437:                                              ; preds = %433
  %438 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %439 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %438, i32 0, i32 3
  %440 = load i64, i64* @PZERO, align 8
  %441 = sub nsw i64 %440, 1
  %442 = load i32, i32* @hz, align 4
  %443 = mul nsw i32 2, %442
  %444 = call i32 @tsleep(i32* %439, i64 %441, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %443)
  br label %445

445:                                              ; preds = %437, %433
  %446 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %447 = call i32 @nfs_mount_state_wait_for_recovery(%struct.nfsmount* %446)
  store i32 %447, i32* %20, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %450, label %449

449:                                              ; preds = %445
  br label %174

450:                                              ; preds = %445
  br label %454

451:                                              ; preds = %428
  %452 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %453 = call i32 (%struct.TYPE_12__*, i8*, ...) @NP(%struct.TYPE_12__* %452, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %454

454:                                              ; preds = %451, %450
  br label %455

455:                                              ; preds = %454, %425
  br label %456

456:                                              ; preds = %455, %423
  br label %457

457:                                              ; preds = %456, %393
  %458 = load i64, i64* %5, align 8
  %459 = call i32 @ubc_upl_unmap(i64 %458)
  %460 = load i32, i32* %26, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %482, label %462

462:                                              ; preds = %457
  %463 = load i32, i32* %20, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %473

465:                                              ; preds = %462
  %466 = load i64, i64* %5, align 8
  %467 = load i64, i64* %8, align 8
  %468 = load i64, i64* %6, align 8
  %469 = load i32, i32* @UPL_ABORT_ERROR, align 4
  %470 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %471 = or i32 %469, %470
  %472 = call i32 @ubc_upl_abort_range(i64 %466, i64 %467, i64 %468, i32 %471)
  br label %481

473:                                              ; preds = %462
  %474 = load i64, i64* %5, align 8
  %475 = load i64, i64* %8, align 8
  %476 = load i64, i64* %6, align 8
  %477 = load i32, i32* @UPL_COMMIT_CLEAR_DIRTY, align 4
  %478 = load i32, i32* @UPL_COMMIT_FREE_ON_EMPTY, align 4
  %479 = or i32 %477, %478
  %480 = call i32 @ubc_upl_commit_range(i64 %474, i64 %475, i64 %476, i32 %479)
  br label %481

481:                                              ; preds = %473, %465
  br label %482

482:                                              ; preds = %481, %457
  %483 = load i32, i32* %20, align 4
  store i32 %483, i32* %2, align 4
  store i32 1, i32* %34, align 4
  br label %484

484:                                              ; preds = %482, %154, %114, %87
  %485 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %485)
  %486 = load i32, i32* %2, align 4
  ret i32 %486
}

declare dso_local %struct.TYPE_12__* @VTONFS(i32) #1

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @FSDBG(i32, %struct.TYPE_12__*, i64, i32, i64) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @ubc_upl_abort_range(i64, i64, i64, i32) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @ubc_getcred(i32) #1

declare dso_local i32 @IS_VALID_CRED(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @uio_createwithbuffer(i32, i64, i32, i32, i8**, i32) #1

declare dso_local %struct.nfsmount* @VTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32* @ubc_upl_pageinfo(i64) #1

declare dso_local i64 @ubc_upl_map(i64, i64*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @uio_reset(i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @uio_offset(i32) #1

declare dso_local i32 @uio_addiov(i32, i32, i64) #1

declare dso_local i32 @CAST_USER_ADDR_T(i64) #1

declare dso_local i64 @uio_resid(i32) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i64 @nfs_mount_state_error_should_restart(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @NP(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @nfs_need_recover(%struct.nfsmount*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @uio_update(i32, i32) #1

declare dso_local i32 @nfs_request_async_cancel(%struct.nfsreq*) #1

declare dso_local i64 @nfs_mount_state_max_restarts(%struct.nfsmount*) #1

declare dso_local i32 @tsleep(i32*, i64, i8*, i32) #1

declare dso_local i32 @nfs_mount_state_wait_for_recovery(%struct.nfsmount*) #1

declare dso_local i32 @ubc_upl_unmap(i64) #1

declare dso_local i32 @ubc_upl_commit_range(i64, i64, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
