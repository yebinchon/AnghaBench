; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_write_rpc_finish.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_write_rpc_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsreq = type { i32, i64, i32, i64, i64, i64, %struct.TYPE_9__, %struct.nfsreq_cbinfo, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32* }
%struct.nfsreq_cbinfo = type { i32*, i64, %struct.nfsbuf* }
%struct.nfsbuf = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.nfsmount = type { i32, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, %struct.nfsreq*, i32*, i64*, i64*)*, i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i32, %struct.nfsreq_cbinfo*, %struct.nfsreq**)* }
%struct.timeval = type { i64 }

@NFS_WRITE_FILESYNC = common dso_local global i32 0, align 4
@NB_ERROR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@NFSERR_OLD_STATEID = common dso_local global i32 0, align 4
@NFSERR_GRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"nfs_buf_write_rpc_finish: error %d @ 0x%llx, 0x%x 0x%x, initiating recovery\00", align 1
@NREVOKE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@R_RESTART = common dso_local global i32 0, align 4
@PZERO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"nfsgrace\00", align 1
@hz = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i32 0, align 4
@NB_STALEWVERF = common dso_local global i32 0, align 4
@NFS_WRITE_UNSTABLE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@NB_MULTASYNCRPC = common dso_local global i32 0, align 4
@nfs_buf_mutex = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_buf_write_rpc_finish(%struct.nfsreq* %0) #0 {
  %2 = alloca %struct.nfsreq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.nfsreq_cbinfo, align 8
  %14 = alloca %struct.nfsreq*, align 8
  %15 = alloca %struct.nfsbuf*, align 8
  %16 = alloca %struct.nfsmount*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.timeval, align 8
  store %struct.nfsreq* %0, %struct.nfsreq** %2, align 8
  store i32 0, i32* %3, align 4
  %25 = load i32, i32* @NFS_WRITE_FILESYNC, align 4
  store i32 %25, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i8* null, i8** %12, align 8
  store %struct.nfsreq* null, %struct.nfsreq** %14, align 8
  %26 = call i32 @UIO_SIZEOF(i32 1)
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %21, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %22, align 8
  br label %30

30:                                               ; preds = %428, %1
  %31 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %32 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %31, i32 0, i32 10
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %17, align 8
  %34 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %35 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %18, align 4
  %37 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %38 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = call i64 @IS_VALID_CRED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load i32, i32* %19, align 4
  %45 = call i32 @kauth_cred_ref(i32 %44)
  br label %46

46:                                               ; preds = %43, %30
  %47 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %48 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %47, i32 0, i32 7
  %49 = bitcast %struct.nfsreq_cbinfo* %13 to i8*
  %50 = bitcast %struct.nfsreq_cbinfo* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 24, i1 false)
  %51 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %13, i32 0, i32 2
  %52 = load %struct.nfsbuf*, %struct.nfsbuf** %51, align 8
  store %struct.nfsbuf* %52, %struct.nfsbuf** %15, align 8
  %53 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %13, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %58 = call i32 @nfs_request_ref(%struct.nfsreq* %57, i32 0)
  br label %59

59:                                               ; preds = %56, %46
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %61 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_10__* %60)
  store %struct.nfsmount* %61, %struct.nfsmount** %16, align 8
  %62 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %63 = call i64 @nfs_mount_gone(%struct.nfsmount* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %67 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @NB_ERROR, align 4
  %70 = call i32 @SET(i32 %68, i32 %69)
  %71 = load i32, i32* @ENXIO, align 4
  store i32 %71, i32* %3, align 4
  %72 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %73 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %65, %59
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %79 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @NB_ERROR, align 4
  %82 = call i32 @ISSET(i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77, %74
  %85 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %86 = call i32 @nfs_request_async_cancel(%struct.nfsreq* %85)
  br label %443

87:                                               ; preds = %77
  %88 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %89 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %4, align 4
  %91 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %13, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %5, align 4
  %95 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %13, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %6, align 4
  %99 = sext i32 %98 to i64
  store i64 %99, i64* %11, align 8
  %100 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %101 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %100, i32 0, i32 2
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32 (%struct.TYPE_10__*, %struct.nfsreq*, i32*, i64*, i64*)*, i32 (%struct.TYPE_10__*, %struct.nfsreq*, i32*, i64*, i64*)** %103, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %106 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %107 = call i32 %104(%struct.TYPE_10__* %105, %struct.nfsreq* %106, i32* %9, i64* %11, i64* %10)
  store i32 %107, i32* %3, align 4
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @EINPROGRESS, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %87
  %112 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %13, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %13, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %121 = call i32 @nfs_request_rele(%struct.nfsreq* %120)
  br label %122

122:                                              ; preds = %119, %115
  %123 = load i32, i32* %19, align 4
  %124 = call i64 @IS_VALID_CRED(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = call i32 @kauth_cred_unref(i32* %19)
  br label %128

128:                                              ; preds = %126, %122
  store i32 1, i32* %23, align 4
  br label %506

129:                                              ; preds = %111, %87
  %130 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %131 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @NFS_VER4, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %267

135:                                              ; preds = %129
  %136 = load i32, i32* %3, align 4
  %137 = call i64 @nfs_mount_state_error_should_restart(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %267

139:                                              ; preds = %135
  %140 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %141 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @NB_ERROR, align 4
  %144 = call i32 @ISSET(i32 %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %267, label %146

146:                                              ; preds = %139
  %147 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %148 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %147, i32 0, i32 4
  %149 = call i32 @lck_mtx_lock(i32* %148)
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @NFSERR_OLD_STATEID, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %185

153:                                              ; preds = %146
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @NFSERR_GRACE, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %185

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %13, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %163 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %161, %164
  br i1 %165, label %166, label %185

166:                                              ; preds = %157
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %168 = load i32, i32* %3, align 4
  %169 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %170 = call i64 @NBOFF(%struct.nfsbuf* %169)
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %170, %172
  %174 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %13, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 2
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %179 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @NP(%struct.TYPE_10__* %167, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %168, i64 %173, i32 %177, i32 %180)
  %182 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @nfs_need_recover(%struct.nfsmount* %182, i32 %183)
  br label %185

185:                                              ; preds = %166, %157, %153, %146
  %186 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %187 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %186, i32 0, i32 4
  %188 = call i32 @lck_mtx_unlock(i32* %187)
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @NREVOKE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %185
  %196 = load i32, i32* @EIO, align 4
  store i32 %196, i32* %3, align 4
  br label %266

197:                                              ; preds = %185
  %198 = load i32, i32* %3, align 4
  %199 = load i32, i32* @NFSERR_GRACE, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %260

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %13, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %252

205:                                              ; preds = %201
  %206 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %207 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %206, i32 0, i32 6
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %220

211:                                              ; preds = %205
  %212 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %213 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @mbuf_freem(i32* %215)
  %217 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %218 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %217, i32 0, i32 6
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  store i32* null, i32** %219, align 8
  br label %220

220:                                              ; preds = %211, %205
  %221 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %222 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %221, i32 0, i32 5
  store i64 0, i64* %222, align 8
  %223 = call i32 @microuptime(%struct.timeval* %24)
  %224 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %225 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %224, i32 0, i32 0
  %226 = call i32 @lck_mtx_lock(i32* %225)
  %227 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 2
  %230 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %231 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %230, i32 0, i32 4
  store i64 %229, i64* %231, align 8
  %232 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %233 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %232, i32 0, i32 3
  store i64 0, i64* %233, align 8
  %234 = load i32, i32* @R_RESTART, align 4
  %235 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %236 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  %239 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %240 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %239, i32 0, i32 1
  store i64 0, i64* %240, align 8
  %241 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %242 = call i32 @nfs_asyncio_resend(%struct.nfsreq* %241)
  %243 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %244 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %243, i32 0, i32 0
  %245 = call i32 @lck_mtx_unlock(i32* %244)
  %246 = load i32, i32* %19, align 4
  %247 = call i64 @IS_VALID_CRED(i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %220
  %250 = call i32 @kauth_cred_unref(i32* %19)
  br label %251

251:                                              ; preds = %249, %220
  store i32 1, i32* %23, align 4
  br label %506

252:                                              ; preds = %201
  %253 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %254 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %253, i32 0, i32 3
  %255 = load i64, i64* @PZERO, align 8
  %256 = sub nsw i64 %255, 1
  %257 = load i32, i32* @hz, align 4
  %258 = mul nsw i32 2, %257
  %259 = call i32 @tsleep(i32* %254, i64 %256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %258)
  br label %260

260:                                              ; preds = %252, %197
  %261 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %262 = call i32 @nfs_mount_state_wait_for_recovery(%struct.nfsmount* %261)
  store i32 %262, i32* %3, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  store i64 0, i64* %11, align 8
  br label %352

265:                                              ; preds = %260
  br label %266

266:                                              ; preds = %265, %195
  br label %267

267:                                              ; preds = %266, %139, %135, %129
  %268 = load i32, i32* %3, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %267
  %271 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %272 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @NB_ERROR, align 4
  %275 = call i32 @SET(i32 %273, i32 %274)
  %276 = load i32, i32* %3, align 4
  %277 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %278 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 4
  br label %279

279:                                              ; preds = %270, %267
  %280 = load i32, i32* %3, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %279
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* @NFS_VER2, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %282, %279
  br label %443

287:                                              ; preds = %282
  %288 = load i64, i64* %11, align 8
  %289 = icmp ule i64 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %287
  %291 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %292 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @NB_ERROR, align 4
  %295 = call i32 @SET(i32 %293, i32 %294)
  %296 = load i32, i32* @EIO, align 4
  store i32 %296, i32* %3, align 4
  %297 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %298 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %297, i32 0, i32 1
  store i32 %296, i32* %298, align 4
  br label %443

299:                                              ; preds = %287
  %300 = load i32, i32* %9, align 4
  %301 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %302 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = icmp slt i32 %300, %303
  br i1 %304, label %305, label %309

305:                                              ; preds = %299
  %306 = load i32, i32* %9, align 4
  %307 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %308 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %307, i32 0, i32 2
  store i32 %306, i32* %308, align 8
  br label %309

309:                                              ; preds = %305, %299
  %310 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %311 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %318, label %314

314:                                              ; preds = %309
  %315 = load i64, i64* %10, align 8
  %316 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %317 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %316, i32 0, i32 3
  store i64 %315, i64* %317, align 8
  br label %337

318:                                              ; preds = %309
  %319 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %320 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %319, i32 0, i32 3
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* %10, align 8
  %323 = icmp ne i64 %321, %322
  br i1 %323, label %324, label %336

324:                                              ; preds = %318
  %325 = load i32, i32* @NB_STALEWVERF, align 4
  %326 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %327 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = or i32 %328, %325
  store i32 %329, i32* %327, align 8
  %330 = load i32, i32* @NFS_WRITE_UNSTABLE, align 4
  %331 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %332 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %331, i32 0, i32 2
  store i32 %330, i32* %332, align 8
  %333 = load i64, i64* %10, align 8
  %334 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %335 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %334, i32 0, i32 3
  store i64 %333, i64* %335, align 8
  br label %336

336:                                              ; preds = %324, %318
  br label %337

337:                                              ; preds = %336, %314
  %338 = load i64, i64* %11, align 8
  %339 = trunc i64 %338 to i32
  %340 = load i32, i32* %6, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %442

342:                                              ; preds = %337
  %343 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %344 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @NB_STALEWVERF, align 4
  %347 = load i32, i32* @NB_ERROR, align 4
  %348 = or i32 %346, %347
  %349 = and i32 %345, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %442, label %351

351:                                              ; preds = %342
  br label %352

352:                                              ; preds = %351, %264
  %353 = load i64, i64* %11, align 8
  %354 = load i32, i32* %5, align 4
  %355 = sext i32 %354 to i64
  %356 = add i64 %355, %353
  %357 = trunc i64 %356 to i32
  store i32 %357, i32* %5, align 4
  %358 = load i64, i64* %11, align 8
  %359 = load i32, i32* %6, align 4
  %360 = sext i32 %359 to i64
  %361 = sub i64 %360, %358
  %362 = trunc i64 %361 to i32
  store i32 %362, i32* %6, align 4
  %363 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %364 = call i64 @NBOFF(%struct.nfsbuf* %363)
  %365 = load i32, i32* %5, align 4
  %366 = sext i32 %365 to i64
  %367 = add nsw i64 %364, %366
  %368 = load i32, i32* @UIO_SYSSPACE, align 4
  %369 = load i32, i32* @UIO_WRITE, align 4
  %370 = bitcast i8* %29 to i8**
  %371 = trunc i64 %27 to i32
  %372 = call i32 @uio_createwithbuffer(i32 1, i64 %367, i32 %368, i32 %369, i8** %370, i32 %371)
  store i32 %372, i32* %20, align 4
  %373 = load i32, i32* %20, align 4
  %374 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %375 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %374, i32 0, i32 5
  %376 = load i64, i64* %375, align 8
  %377 = load i32, i32* %5, align 4
  %378 = sext i32 %377 to i64
  %379 = add nsw i64 %376, %378
  %380 = call i32 @CAST_USER_ADDR_T(i64 %379)
  %381 = load i32, i32* %6, align 4
  %382 = call i32 @uio_addiov(i32 %373, i32 %380, i32 %381)
  %383 = load i32, i32* %5, align 4
  %384 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %13, i32 0, i32 0
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 0
  store i32 %383, i32* %386, align 4
  %387 = load i32, i32* %6, align 4
  %388 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %13, i32 0, i32 0
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 1
  store i32 %387, i32* %390, align 4
  %391 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %392 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* @NFS_VER4, align 4
  %395 = icmp sge i32 %393, %394
  br i1 %395, label %396, label %403

396:                                              ; preds = %352
  %397 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %398 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %13, i32 0, i32 0
  %401 = load i32*, i32** %400, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 2
  store i32 %399, i32* %402, align 4
  br label %403

403:                                              ; preds = %396, %352
  %404 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %405 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %404, i32 0, i32 2
  %406 = load %struct.TYPE_8__*, %struct.TYPE_8__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 1
  %408 = load i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i32, %struct.nfsreq_cbinfo*, %struct.nfsreq**)*, i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i32, %struct.nfsreq_cbinfo*, %struct.nfsreq**)** %407, align 8
  %409 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %410 = load i32, i32* %20, align 4
  %411 = load i32, i32* %6, align 4
  %412 = load i32, i32* %18, align 4
  %413 = load i32, i32* %19, align 4
  %414 = load i32, i32* @NFS_WRITE_FILESYNC, align 4
  %415 = call i32 %408(%struct.TYPE_10__* %409, i32 %410, i32 %411, i32 %412, i32 %413, i32 %414, %struct.nfsreq_cbinfo* %13, %struct.nfsreq** %14)
  store i32 %415, i32* %3, align 4
  %416 = load i32, i32* %3, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %433, label %418

418:                                              ; preds = %403
  %419 = load i32, i32* %19, align 4
  %420 = call i64 @IS_VALID_CRED(i32 %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %424

422:                                              ; preds = %418
  %423 = call i32 @kauth_cred_unref(i32* %19)
  br label %424

424:                                              ; preds = %422, %418
  %425 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %13, i32 0, i32 1
  %426 = load i64, i64* %425, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %430, label %428

428:                                              ; preds = %424
  %429 = load %struct.nfsreq*, %struct.nfsreq** %14, align 8
  store %struct.nfsreq* %429, %struct.nfsreq** %2, align 8
  store %struct.nfsreq* null, %struct.nfsreq** %14, align 8
  br label %30

430:                                              ; preds = %424
  %431 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %432 = call i32 @nfs_request_rele(%struct.nfsreq* %431)
  store i32 1, i32* %23, align 4
  br label %506

433:                                              ; preds = %403
  %434 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %435 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = load i32, i32* @NB_ERROR, align 4
  %438 = call i32 @SET(i32 %436, i32 %437)
  %439 = load i32, i32* %3, align 4
  %440 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %441 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %440, i32 0, i32 1
  store i32 %439, i32* %441, align 4
  br label %442

442:                                              ; preds = %433, %342, %337
  br label %443

443:                                              ; preds = %442, %290, %286, %84
  %444 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %13, i32 0, i32 1
  %445 = load i64, i64* %444, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %452

447:                                              ; preds = %443
  %448 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %449 = call i32 @nfs_async_write_done(%struct.nfsmount* %448)
  %450 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %451 = call i32 @nfs_request_rele(%struct.nfsreq* %450)
  br label %452

452:                                              ; preds = %447, %443
  %453 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %454 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = load i32, i32* @NB_MULTASYNCRPC, align 4
  %457 = call i32 @ISSET(i32 %455, i32 %456)
  store i32 %457, i32* %7, align 4
  %458 = load i32, i32* %7, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %463

460:                                              ; preds = %452
  %461 = load i32*, i32** @nfs_buf_mutex, align 8
  %462 = call i32 @lck_mtx_lock(i32* %461)
  br label %463

463:                                              ; preds = %460, %452
  %464 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %465 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %464, i32 0, i32 4
  %466 = load i64, i64* %465, align 8
  %467 = add nsw i64 %466, -1
  store i64 %467, i64* %465, align 8
  %468 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %469 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %468, i32 0, i32 4
  %470 = load i64, i64* %469, align 8
  %471 = icmp eq i64 %470, 0
  %472 = zext i1 %471 to i32
  store i32 %472, i32* %8, align 4
  %473 = load i32, i32* %7, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %478

475:                                              ; preds = %463
  %476 = load i32*, i32** @nfs_buf_mutex, align 8
  %477 = call i32 @lck_mtx_unlock(i32* %476)
  br label %478

478:                                              ; preds = %475, %463
  %479 = load i32, i32* %8, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %499

481:                                              ; preds = %478
  %482 = load i32, i32* %7, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %488

484:                                              ; preds = %481
  %485 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %486 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %485, i32 0, i32 4
  %487 = bitcast i64* %486 to i8*
  store i8* %487, i8** %12, align 8
  br label %488

488:                                              ; preds = %484, %481
  %489 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %490 = load i32, i32* %18, align 4
  %491 = load i32, i32* %19, align 4
  %492 = call i32 @nfs_buf_write_finish(%struct.nfsbuf* %489, i32 %490, i32 %491)
  %493 = load i8*, i8** %12, align 8
  %494 = icmp ne i8* %493, null
  br i1 %494, label %495, label %498

495:                                              ; preds = %488
  %496 = load i8*, i8** %12, align 8
  %497 = call i32 @wakeup(i8* %496)
  br label %498

498:                                              ; preds = %495, %488
  br label %499

499:                                              ; preds = %498, %478
  %500 = load i32, i32* %19, align 4
  %501 = call i64 @IS_VALID_CRED(i32 %500)
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %505

503:                                              ; preds = %499
  %504 = call i32 @kauth_cred_unref(i32* %19)
  br label %505

505:                                              ; preds = %503, %499
  store i32 0, i32* %23, align 4
  br label %506

506:                                              ; preds = %505, %430, %251, %128
  %507 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %507)
  %508 = load i32, i32* %23, align 4
  switch i32 %508, label %510 [
    i32 0, label %509
    i32 1, label %509
  ]

509:                                              ; preds = %506, %506
  ret void

510:                                              ; preds = %506
  unreachable
}

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @IS_VALID_CRED(i32) #1

declare dso_local i32 @kauth_cred_ref(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @nfs_request_ref(%struct.nfsreq*, i32) #1

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_10__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @ISSET(i32, i32) #1

declare dso_local i32 @nfs_request_async_cancel(%struct.nfsreq*) #1

declare dso_local i32 @nfs_request_rele(%struct.nfsreq*) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

declare dso_local i64 @nfs_mount_state_error_should_restart(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @NP(%struct.TYPE_10__*, i8*, i32, i64, i32, i32) #1

declare dso_local i64 @NBOFF(%struct.nfsbuf*) #1

declare dso_local i32 @nfs_need_recover(%struct.nfsmount*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @mbuf_freem(i32*) #1

declare dso_local i32 @microuptime(%struct.timeval*) #1

declare dso_local i32 @nfs_asyncio_resend(%struct.nfsreq*) #1

declare dso_local i32 @tsleep(i32*, i64, i8*, i32) #1

declare dso_local i32 @nfs_mount_state_wait_for_recovery(%struct.nfsmount*) #1

declare dso_local i32 @uio_createwithbuffer(i32, i64, i32, i32, i8**, i32) #1

declare dso_local i32 @uio_addiov(i32, i32, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(i64) #1

declare dso_local i32 @nfs_async_write_done(%struct.nfsmount*) #1

declare dso_local i32 @nfs_buf_write_finish(%struct.nfsbuf*, i32, i32) #1

declare dso_local i32 @wakeup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
