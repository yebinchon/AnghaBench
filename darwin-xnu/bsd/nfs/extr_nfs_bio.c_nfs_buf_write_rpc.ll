; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_write_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_write_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsbuf = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.nfsmount = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32, i32, %struct.nfsreq_cbinfo*, %struct.nfsreq.0**)* }
%struct.nfsreq_cbinfo = type { i32*, %struct.nfsbuf*, i32 (%struct.nfsreq*)* }
%struct.nfsreq = type opaque
%struct.nfsreq.0 = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NB_ERROR = common dso_local global i32 0, align 4
@NB_ASYNC = common dso_local global i32 0, align 4
@NFSIOD_MAX = common dso_local global i64 0, align 8
@NFS_WRITE_FILESYNC = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@NB_MULTASYNCRPC = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@nfs_buf_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"nfs_buf_write_rpc_cancel\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_buf_write_rpc(%struct.nfsbuf* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfsmount*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.nfsreq.0*, align 8
  %21 = alloca %struct.nfsreq_cbinfo, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.nfsbuf* %0, %struct.nfsbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %26 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %27 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %29 = call i32 @UIO_SIZEOF(i32 1)
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %23, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %24, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.nfsmount* @NFSTONMP(i32 %33)
  store %struct.nfsmount* %34, %struct.nfsmount** %10, align 8
  %35 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %36 = call i64 @nfs_mount_gone(%struct.nfsmount* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %4
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %41 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %43 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NB_ERROR, align 4
  %46 = call i32 @SET(i32 %44, i32 %45)
  %47 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %48 = call i32 @nfs_buf_iodone(%struct.nfsbuf* %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %321

50:                                               ; preds = %4
  %51 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %52 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %13, align 4
  %54 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %55 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %17, align 4
  %57 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %58 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %15, align 4
  %60 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %61 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %64 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %62, %65
  store i32 %66, i32* %18, align 4
  %67 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %68 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NB_ASYNC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %50
  %74 = load i64, i64* @NFSIOD_MAX, align 8
  %75 = icmp sgt i64 %74, 0
  br label %76

76:                                               ; preds = %73, %50
  %77 = phi i1 [ false, %50 ], [ %75, %73 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* @NFS_WRITE_FILESYNC, align 4
  %80 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %81 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 (%struct.nfsreq.0*)* @nfs_buf_write_rpc_finish, i32 (%struct.nfsreq.0*)* null
  %86 = bitcast i32 (%struct.nfsreq.0*)* %85 to i32 (%struct.nfsreq*)*
  %87 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %21, i32 0, i32 2
  store i32 (%struct.nfsreq*)* %86, i32 (%struct.nfsreq*)** %87, align 8
  %88 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %89 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %21, i32 0, i32 1
  store %struct.nfsbuf* %88, %struct.nfsbuf** %89, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @NFS_VER2, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %76
  %94 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %95 = call i32 @NBOFF(%struct.nfsbuf* %94)
  %96 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %97 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  %100 = sext i32 %99 to i64
  %101 = icmp sgt i64 %100, 4294967295
  br i1 %101, label %102, label %114

102:                                              ; preds = %93
  %103 = load i32, i32* @EFBIG, align 4
  store i32 %103, i32* %12, align 4
  %104 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %105 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %107 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @NB_ERROR, align 4
  %110 = call i32 @SET(i32 %108, i32 %109)
  %111 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %112 = call i32 @nfs_buf_iodone(%struct.nfsbuf* %111)
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %321

114:                                              ; preds = %93, %76
  %115 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %116 = call i32 @NBOFF(%struct.nfsbuf* %115)
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* @UIO_SYSSPACE, align 4
  %120 = load i32, i32* @UIO_WRITE, align 4
  %121 = bitcast i8* %32 to i8**
  %122 = trunc i64 %30 to i32
  %123 = call i32 @uio_createwithbuffer(i32 1, i32 %118, i32 %119, i32 %120, i8** %121, i32 %122)
  store i32 %123, i32* %22, align 4
  %124 = load i32, i32* %22, align 4
  %125 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %126 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %127, %129
  %131 = call i32 @CAST_USER_ADDR_T(i64 %130)
  %132 = load i32, i32* %18, align 4
  %133 = call i32 @uio_addiov(i32 %124, i32 %131, i32 %132)
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %17, align 4
  %136 = add nsw i32 %134, %135
  %137 = sub nsw i32 %136, 1
  %138 = load i32, i32* %17, align 4
  %139 = sdiv i32 %137, %138
  store i32 %139, i32* %16, align 4
  %140 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %141 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %114
  %145 = load i32, i32* %16, align 4
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %149 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @NB_MULTASYNCRPC, align 4
  %152 = call i32 @SET(i32 %150, i32 %151)
  br label %159

153:                                              ; preds = %144, %114
  %154 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %155 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @NB_MULTASYNCRPC, align 4
  %158 = call i32 @CLR(i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %153, %147
  br label %160

160:                                              ; preds = %244, %243, %159
  %161 = load i32, i32* %18, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %247

163:                                              ; preds = %160
  %164 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %165 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @NB_ERROR, align 4
  %168 = call i64 @ISSET(i32 %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %163
  %171 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %172 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %12, align 4
  br label %247

174:                                              ; preds = %163
  %175 = load i32, i32* %18, align 4
  %176 = load i32, i32* %17, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* %17, align 4
  br label %182

180:                                              ; preds = %174
  %181 = load i32, i32* %18, align 4
  br label %182

182:                                              ; preds = %180, %178
  %183 = phi i32 [ %179, %178 ], [ %181, %180 ]
  store i32 %183, i32* %19, align 4
  %184 = load i32, i32* %15, align 4
  %185 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %21, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  store i32 %184, i32* %187, align 4
  %188 = load i32, i32* %19, align 4
  %189 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %21, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  store i32 %188, i32* %191, align 4
  %192 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %193 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @NFS_VER4, align 4
  %196 = icmp sge i32 %194, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %182
  %198 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %199 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %21, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 2
  store i32 %200, i32* %203, align 4
  br label %204

204:                                              ; preds = %197, %182
  %205 = load i32, i32* %14, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %209 = call i32 @nfs_async_write_start(%struct.nfsmount* %208)
  store i32 %209, i32* %12, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  br label %247

212:                                              ; preds = %207, %204
  store %struct.nfsreq.0* null, %struct.nfsreq.0** %20, align 8
  %213 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %214 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %213, i32 0, i32 3
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i32 (i32, i32, i32, i32, i32, i32, %struct.nfsreq_cbinfo*, %struct.nfsreq.0**)*, i32 (i32, i32, i32, i32, i32, i32, %struct.nfsreq_cbinfo*, %struct.nfsreq.0**)** %216, align 8
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %22, align 4
  %220 = load i32, i32* %19, align 4
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %7, align 4
  %224 = call i32 %217(i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, %struct.nfsreq_cbinfo* %21, %struct.nfsreq.0** %20)
  store i32 %224, i32* %12, align 4
  %225 = load i32, i32* %12, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %212
  %228 = load i32, i32* %14, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %232 = call i32 @nfs_async_write_done(%struct.nfsmount* %231)
  br label %233

233:                                              ; preds = %230, %227
  br label %247

234:                                              ; preds = %212
  %235 = load i32, i32* %19, align 4
  %236 = load i32, i32* %15, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %15, align 4
  %238 = load i32, i32* %19, align 4
  %239 = load i32, i32* %18, align 4
  %240 = sub nsw i32 %239, %238
  store i32 %240, i32* %18, align 4
  %241 = load i32, i32* %14, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %234
  br label %160

244:                                              ; preds = %234
  %245 = load %struct.nfsreq.0*, %struct.nfsreq.0** %20, align 8
  %246 = call i32 @nfs_buf_write_rpc_finish(%struct.nfsreq.0* %245)
  br label %160

247:                                              ; preds = %233, %211, %170, %160
  %248 = load i32, i32* %18, align 4
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %319

250:                                              ; preds = %247
  %251 = load i32, i32* %12, align 4
  %252 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %253 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %255 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @NB_ERROR, align 4
  %258 = call i32 @SET(i32 %256, i32 %257)
  %259 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %260 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @NB_MULTASYNCRPC, align 4
  %263 = call i64 @ISSET(i32 %261, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %305

265:                                              ; preds = %250
  %266 = load i32, i32* %18, align 4
  %267 = load i32, i32* %17, align 4
  %268 = add nsw i32 %266, %267
  %269 = sub nsw i32 %268, 1
  %270 = load i32, i32* %17, align 4
  %271 = sdiv i32 %269, %270
  store i32 %271, i32* %16, align 4
  %272 = load i32, i32* @nfs_buf_mutex, align 4
  %273 = call i32 @lck_mtx_lock(i32 %272)
  %274 = load i32, i32* %16, align 4
  %275 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %276 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = sub nsw i32 %277, %274
  store i32 %278, i32* %276, align 8
  %279 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %280 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %265
  %284 = load i32, i32* @nfs_buf_mutex, align 4
  %285 = call i32 @lck_mtx_unlock(i32 %284)
  %286 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* %9, align 4
  %289 = call i32 @nfs_buf_write_finish(%struct.nfsbuf* %286, i32 %287, i32 %288)
  br label %304

290:                                              ; preds = %265
  br label %291

291:                                              ; preds = %296, %290
  %292 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %293 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %291
  %297 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %298 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %297, i32 0, i32 4
  %299 = load i32, i32* @nfs_buf_mutex, align 4
  %300 = call i32 @msleep(i32* %298, i32 %299, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %291

301:                                              ; preds = %291
  %302 = load i32, i32* @nfs_buf_mutex, align 4
  %303 = call i32 @lck_mtx_unlock(i32 %302)
  br label %304

304:                                              ; preds = %301, %283
  br label %310

305:                                              ; preds = %250
  %306 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %307 = load i32, i32* %8, align 4
  %308 = load i32, i32* %9, align 4
  %309 = call i32 @nfs_buf_write_finish(%struct.nfsbuf* %306, i32 %307, i32 %308)
  br label %310

310:                                              ; preds = %305, %304
  %311 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %312 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @NB_ERROR, align 4
  %315 = call i64 @ISSET(i32 %313, i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %310
  store i32 0, i32* %12, align 4
  br label %318

318:                                              ; preds = %317, %310
  br label %319

319:                                              ; preds = %318, %247
  %320 = load i32, i32* %12, align 4
  store i32 %320, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %321

321:                                              ; preds = %319, %102, %38
  %322 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %322)
  %323 = load i32, i32* %5, align 4
  ret i32 %323
}

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.nfsmount* @NFSTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @nfs_buf_iodone(%struct.nfsbuf*) #1

declare dso_local i32 @nfs_buf_write_rpc_finish(%struct.nfsreq.0*) #1

declare dso_local i32 @NBOFF(%struct.nfsbuf*) #1

declare dso_local i32 @uio_createwithbuffer(i32, i32, i32, i32, i8**, i32) #1

declare dso_local i32 @uio_addiov(i32, i32, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(i64) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @nfs_async_write_start(%struct.nfsmount*) #1

declare dso_local i32 @nfs_async_write_done(%struct.nfsmount*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @nfs_buf_write_finish(%struct.nfsbuf*, i32, i32) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
