; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_readlink.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.vnop_readlink_args = type { i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.timespec }
%struct.timespec = type { i64 }
%struct.nfsmount = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, i64, i32*, i32)* }
%struct.nfsbuf = type { i32, i32, i32, i64, i64, i32 }

@VLNK = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@nfs_readlink_nocache = common dso_local global i32 0, align 4
@NGA_UNCACHED = common dso_local global i32 0, align 4
@NGA_CACHED = common dso_local global i32 0, align 4
@nfsstats = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@NFS_MAXPATHLEN = common dso_local global i32 0, align 4
@NBLK_META = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"timeo = %d ts.tv_sec = %ld need refresh = %d cached = %d\0A\00", align 1
@NB_CACHE = common dso_local global i64 0, align 8
@NB_INVAL = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Stale FH from readlink rpc\0A\00", align 1
@NB_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"readlink failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"readlink of %.*s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"got cached link of %.*s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_vnop_readlink(%struct.vnop_readlink_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_readlink_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.nfsmount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfsbuf*, align 8
  %12 = alloca %struct.timespec, align 8
  %13 = alloca i32, align 4
  store %struct.vnop_readlink_args* %0, %struct.vnop_readlink_args** %3, align 8
  %14 = load %struct.vnop_readlink_args*, %struct.vnop_readlink_args** %3, align 8
  %15 = getelementptr inbounds %struct.vnop_readlink_args, %struct.vnop_readlink_args* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.vnop_readlink_args*, %struct.vnop_readlink_args** %3, align 8
  %18 = getelementptr inbounds %struct.vnop_readlink_args, %struct.vnop_readlink_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_12__* @VTONFS(i32 %19)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %5, align 8
  store i32 0, i32* %7, align 4
  %21 = load %struct.vnop_readlink_args*, %struct.vnop_readlink_args** %3, align 8
  %22 = getelementptr inbounds %struct.vnop_readlink_args, %struct.vnop_readlink_args* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  store %struct.nfsbuf* null, %struct.nfsbuf** %11, align 8
  %24 = load %struct.vnop_readlink_args*, %struct.vnop_readlink_args** %3, align 8
  %25 = getelementptr inbounds %struct.vnop_readlink_args, %struct.vnop_readlink_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @vnode_vtype(i32 %26)
  %28 = load i64, i64* @VLNK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @EPERM, align 4
  store i32 %31, i32* %2, align 4
  br label %263

32:                                               ; preds = %1
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @uio_resid(i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %263

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @uio_offset(i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %2, align 4
  br label %263

43:                                               ; preds = %37
  %44 = load %struct.vnop_readlink_args*, %struct.vnop_readlink_args** %3, align 8
  %45 = getelementptr inbounds %struct.vnop_readlink_args, %struct.vnop_readlink_args* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.nfsmount* @VTONMP(i32 %46)
  store %struct.nfsmount* %47, %struct.nfsmount** %6, align 8
  %48 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %49 = call i64 @nfs_mount_gone(%struct.nfsmount* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %2, align 4
  br label %263

53:                                               ; preds = %43
  %54 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %55 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %8, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @nfs_readlink_nocache, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @NGA_UNCACHED, align 4
  br label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @NGA_CACHED, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = call i32 @nfs_getattr(%struct.TYPE_12__* %57, i32* null, i32 %58, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @FSDBG(i32 531, %struct.TYPE_12__* %70, i32 220069889, i32 0, i32 %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %263

74:                                               ; preds = %65
  %75 = load i32, i32* @nfs_readlink_nocache, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = call i32 @nfs_attrcachetimeout(%struct.TYPE_12__* %78)
  store i32 %79, i32* %13, align 4
  %80 = call i32 @nanouptime(%struct.timespec* %12)
  br label %81

81:                                               ; preds = %77, %74
  br label %82

82:                                               ; preds = %149, %81
  %83 = call i32 @OSAddAtomic64(i32 1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @nfsstats, i32 0, i32 1))
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = load i32, i32* @NFS_MAXPATHLEN, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @vfs_context_thread(i32 %86)
  %88 = load i32, i32* @NBLK_META, align 4
  %89 = call i32 @nfs_buf_get(%struct.TYPE_12__* %84, i32 0, i32 %85, i32 %87, i32 %88, %struct.nfsbuf** %11)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @FSDBG(i32 531, %struct.TYPE_12__* %93, i32 220069890, i32 0, i32 %94)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %263

97:                                               ; preds = %82
  %98 = load i32, i32* @nfs_readlink_nocache, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %158

100:                                              ; preds = %97
  %101 = load i32, i32* %13, align 4
  %102 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.timespec, %struct.timespec* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %100
  %115 = load i32, i32* @nfs_readlink_nocache, align 4
  %116 = icmp sgt i32 %115, 1
  br label %117

117:                                              ; preds = %114, %100
  %118 = phi i1 [ true, %100 ], [ %116, %114 ]
  %119 = zext i1 %118 to i32
  %120 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %121 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* @NB_CACHE, align 8
  %124 = call i64 @ISSET(i32 %122, i64 %123)
  %125 = load i64, i64* @NB_CACHE, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 (i8*, ...) @NFS_VNOP_DBG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %101, i64 %103, i32 %119, i32 %127)
  %129 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %130 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load i64, i64* @NB_CACHE, align 8
  %133 = call i64 @ISSET(i32 %131, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %157

135:                                              ; preds = %117
  %136 = load i32, i32* @nfs_readlink_nocache, align 4
  %137 = icmp sgt i32 %136, 1
  br i1 %137, label %149, label %138

138:                                              ; preds = %135
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.timespec, %struct.timespec* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %142, %144
  %146 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp slt i64 %145, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %138, %135
  %150 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %151 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @NB_INVAL, align 4
  %154 = call i32 @SET(i32 %152, i32 %153)
  %155 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %156 = call i32 @nfs_buf_release(%struct.nfsbuf* %155, i32 0)
  br label %82

157:                                              ; preds = %138, %117
  br label %158

158:                                              ; preds = %157, %97
  %159 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %160 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = load i64, i64* @NB_CACHE, align 8
  %163 = call i64 @ISSET(i32 %161, i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %227, label %165

165:                                              ; preds = %158
  br label %166

166:                                              ; preds = %195, %165
  %167 = call i32 @OSAddAtomic64(i32 1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @nfsstats, i32 0, i32 0))
  %168 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %169 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  store i32 %170, i32* %9, align 4
  %171 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %172 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %171, i32 0, i32 1
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32 (%struct.TYPE_12__*, i64, i32*, i32)*, i32 (%struct.TYPE_12__*, i64, i32*, i32)** %174, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %177 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %178 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = call i32 %175(%struct.TYPE_12__* %176, i64 %179, i32* %9, i32 %180)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %208

184:                                              ; preds = %166
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @ESTALE, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %197

188:                                              ; preds = %184
  %189 = call i32 (i8*, ...) @NFS_VNOP_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %191 = load i32, i32* %4, align 4
  %192 = call i32 @nfs_refresh_fh(%struct.TYPE_12__* %190, i32 %191)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %166

196:                                              ; preds = %188
  br label %197

197:                                              ; preds = %196, %184
  %198 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %199 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @NB_ERROR, align 4
  %202 = call i32 @SET(i32 %200, i32 %201)
  %203 = load i32, i32* %7, align 4
  %204 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %205 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* %7, align 4
  %207 = call i32 (i8*, ...) @NFS_VNOP_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %206)
  br label %226

208:                                              ; preds = %166
  %209 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %210 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %209, i32 0, i32 4
  store i64 0, i64* %210, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %213 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 8
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = bitcast %struct.timespec* %215 to i8*
  %217 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %216, i8* align 8 %217, i64 8, i1 false)
  %218 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %219 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %222 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = inttoptr i64 %223 to i8*
  %225 = call i32 (i8*, ...) @NFS_VNOP_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %220, i8* %224)
  br label %226

226:                                              ; preds = %208, %197
  br label %236

227:                                              ; preds = %158
  %228 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %229 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %232 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = inttoptr i64 %233 to i8*
  %235 = call i32 (i8*, ...) @NFS_VNOP_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %230, i8* %234)
  br label %236

236:                                              ; preds = %227, %226
  %237 = load i32, i32* %7, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %253, label %239

239:                                              ; preds = %236
  %240 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %241 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %239
  %245 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %246 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %249 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* %10, align 4
  %252 = call i32 @uiomove(i64 %247, i32 %250, i32 %251)
  store i32 %252, i32* %7, align 4
  br label %253

253:                                              ; preds = %244, %239, %236
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %255 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %256 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %7, align 4
  %259 = call i32 @FSDBG(i32 531, %struct.TYPE_12__* %254, i32 %257, i32 0, i32 %258)
  %260 = load %struct.nfsbuf*, %struct.nfsbuf** %11, align 8
  %261 = call i32 @nfs_buf_release(%struct.nfsbuf* %260, i32 1)
  %262 = load i32, i32* %7, align 4
  store i32 %262, i32* %2, align 4
  br label %263

263:                                              ; preds = %253, %92, %69, %51, %41, %36, %30
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local %struct.TYPE_12__* @VTONFS(i32) #1

declare dso_local i64 @vnode_vtype(i32) #1

declare dso_local i64 @uio_resid(i32) #1

declare dso_local i64 @uio_offset(i32) #1

declare dso_local %struct.nfsmount* @VTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs_getattr(%struct.TYPE_12__*, i32*, i32, i32) #1

declare dso_local i32 @FSDBG(i32, %struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @nfs_attrcachetimeout(%struct.TYPE_12__*) #1

declare dso_local i32 @nanouptime(%struct.timespec*) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i32 @nfs_buf_get(%struct.TYPE_12__*, i32, i32, i32, i32, %struct.nfsbuf**) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @NFS_VNOP_DBG(i8*, ...) #1

declare dso_local i64 @ISSET(i32, i64) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @nfs_buf_release(%struct.nfsbuf*, i32) #1

declare dso_local i32 @nfs_refresh_fh(%struct.TYPE_12__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uiomove(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
