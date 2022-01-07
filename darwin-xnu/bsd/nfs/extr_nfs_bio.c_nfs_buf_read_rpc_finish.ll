; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_read_rpc_finish.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_read_rpc_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsreq = type { i32, i64, i32, i64, i64, i64, %struct.TYPE_9__, %struct.nfsreq_cbinfo, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32* }
%struct.nfsreq_cbinfo = type { i32*, i64, %struct.nfsbuf* }
%struct.nfsbuf = type { i32, i32, i64, i32, i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.nfsmount = type { i32, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, %struct.nfsreq*, i32, i64*, i32*)*, i32 (%struct.TYPE_10__*, i64, i32, i32, i32, %struct.nfsreq_cbinfo*, %struct.nfsreq**)* }
%struct.timeval = type { i64 }

@NB_ERROR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@NFSERR_OLD_STATEID = common dso_local global i32 0, align 4
@NFSERR_GRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"nfs_buf_read_rpc_finish: error %d @ 0x%llx, 0x%x 0x%x, initiating recovery\00", align 1
@NREVOKE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@R_RESTART = common dso_local global i32 0, align 4
@PZERO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"nfsgrace\00", align 1
@hz = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i32 0, align 4
@NB_MULTASYNCRPC = common dso_local global i32 0, align 4
@nfs_buf_mutex = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_buf_read_rpc_finish(%struct.nfsreq* %0) #0 {
  %2 = alloca %struct.nfsreq*, align 8
  %3 = alloca %struct.nfsmount*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfsreq_cbinfo, align 8
  %6 = alloca %struct.nfsbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.nfsreq*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.timeval, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.nfsreq* %0, %struct.nfsreq** %2, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %14, align 8
  store %struct.nfsreq* null, %struct.nfsreq** %15, align 8
  %27 = call i32 @UIO_SIZEOF(i32 1)
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %20, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %21, align 8
  br label %31

31:                                               ; preds = %442, %1
  %32 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %33 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %32, i32 0, i32 10
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %16, align 8
  %35 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %36 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %17, align 4
  %38 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %39 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call i64 @IS_VALID_CRED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @kauth_cred_ref(i32 %45)
  br label %47

47:                                               ; preds = %44, %31
  %48 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %49 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %48, i32 0, i32 7
  %50 = bitcast %struct.nfsreq_cbinfo* %5 to i8*
  %51 = bitcast %struct.nfsreq_cbinfo* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 24, i1 false)
  %52 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %5, i32 0, i32 2
  %53 = load %struct.nfsbuf*, %struct.nfsbuf** %52, align 8
  store %struct.nfsbuf* %53, %struct.nfsbuf** %6, align 8
  %54 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %5, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %59 = call i32 @nfs_request_ref(%struct.nfsreq* %58, i32 0)
  br label %60

60:                                               ; preds = %57, %47
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %62 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_10__* %61)
  store %struct.nfsmount* %62, %struct.nfsmount** %3, align 8
  %63 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %64 = call i64 @nfs_mount_gone(%struct.nfsmount* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %68 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @NB_ERROR, align 4
  %71 = call i32 @SET(i32 %69, i32 %70)
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %7, align 4
  %73 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %74 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %66, %60
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %75
  %79 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %80 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @NB_ERROR, align 4
  %83 = call i32 @ISSET(i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78, %75
  %86 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %87 = call i32 @nfs_request_async_cancel(%struct.nfsreq* %86)
  br label %458

88:                                               ; preds = %78
  %89 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %90 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %8, align 4
  %92 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %5, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %9, align 4
  %96 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %5, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %10, align 4
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %4, align 8
  %101 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %102 = call i64 @NBOFF(%struct.nfsbuf* %101)
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = load i32, i32* @UIO_SYSSPACE, align 4
  %107 = load i32, i32* @UIO_READ, align 4
  %108 = bitcast i8* %30 to i8**
  %109 = trunc i64 %28 to i32
  %110 = call i32 @uio_createwithbuffer(i32 1, i64 %105, i32 %106, i32 %107, i8** %108, i32 %109)
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %19, align 4
  %112 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %113 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = call i32 @CAST_USER_ADDR_T(i64 %117)
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @uio_addiov(i32 %111, i32 %118, i32 %119)
  %121 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %122 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %121, i32 0, i32 2
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32 (%struct.TYPE_10__*, %struct.nfsreq*, i32, i64*, i32*)*, i32 (%struct.TYPE_10__*, %struct.nfsreq*, i32, i64*, i32*)** %124, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %127 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %128 = load i32, i32* %19, align 4
  %129 = call i32 %125(%struct.TYPE_10__* %126, %struct.nfsreq* %127, i32 %128, i64* %4, i32* %11)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @EINPROGRESS, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %88
  %134 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %5, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %5, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %143 = call i32 @nfs_request_rele(%struct.nfsreq* %142)
  br label %144

144:                                              ; preds = %141, %137
  %145 = load i32, i32* %18, align 4
  %146 = call i64 @IS_VALID_CRED(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = call i32 @kauth_cred_unref(i32* %18)
  br label %150

150:                                              ; preds = %148, %144
  store i32 1, i32* %22, align 4
  br label %517

151:                                              ; preds = %133, %88
  %152 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %153 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @NFS_VER4, align 4
  %156 = icmp sge i32 %154, %155
  br i1 %156, label %157, label %289

157:                                              ; preds = %151
  %158 = load i32, i32* %7, align 4
  %159 = call i64 @nfs_mount_state_error_should_restart(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %289

161:                                              ; preds = %157
  %162 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %163 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @NB_ERROR, align 4
  %166 = call i32 @ISSET(i32 %164, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %289, label %168

168:                                              ; preds = %161
  %169 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %170 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %169, i32 0, i32 4
  %171 = call i32 @lck_mtx_lock(i32* %170)
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* @NFSERR_OLD_STATEID, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %207

175:                                              ; preds = %168
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @NFSERR_GRACE, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %207

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %5, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %185 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %183, %186
  br i1 %187, label %188, label %207

188:                                              ; preds = %179
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %192 = call i64 @NBOFF(%struct.nfsbuf* %191)
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %192, %194
  %196 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %5, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %201 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @NP(%struct.TYPE_10__* %189, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %190, i64 %195, i32 %199, i32 %202)
  %204 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @nfs_need_recover(%struct.nfsmount* %204, i32 %205)
  br label %207

207:                                              ; preds = %188, %179, %175, %168
  %208 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %209 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %208, i32 0, i32 4
  %210 = call i32 @lck_mtx_unlock(i32* %209)
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @NREVOKE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %207
  %218 = load i32, i32* @EIO, align 4
  store i32 %218, i32* %7, align 4
  br label %288

219:                                              ; preds = %207
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* @NFSERR_GRACE, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %282

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %5, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %274

227:                                              ; preds = %223
  %228 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %229 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %228, i32 0, i32 6
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %242

233:                                              ; preds = %227
  %234 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %235 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %234, i32 0, i32 6
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @mbuf_freem(i32* %237)
  %239 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %240 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %239, i32 0, i32 6
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  store i32* null, i32** %241, align 8
  br label %242

242:                                              ; preds = %233, %227
  %243 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %244 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %243, i32 0, i32 5
  store i64 0, i64* %244, align 8
  %245 = call i32 @microuptime(%struct.timeval* %23)
  %246 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %247 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %246, i32 0, i32 0
  %248 = call i32 @lck_mtx_lock(i32* %247)
  %249 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, 2
  %252 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %253 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %252, i32 0, i32 4
  store i64 %251, i64* %253, align 8
  %254 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %255 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %254, i32 0, i32 3
  store i64 0, i64* %255, align 8
  %256 = load i32, i32* @R_RESTART, align 4
  %257 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %258 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 8
  %261 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %262 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %261, i32 0, i32 1
  store i64 0, i64* %262, align 8
  %263 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %264 = call i32 @nfs_asyncio_resend(%struct.nfsreq* %263)
  %265 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %266 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %265, i32 0, i32 0
  %267 = call i32 @lck_mtx_unlock(i32* %266)
  %268 = load i32, i32* %18, align 4
  %269 = call i64 @IS_VALID_CRED(i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %242
  %272 = call i32 @kauth_cred_unref(i32* %18)
  br label %273

273:                                              ; preds = %271, %242
  store i32 1, i32* %22, align 4
  br label %517

274:                                              ; preds = %223
  %275 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %276 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %275, i32 0, i32 3
  %277 = load i64, i64* @PZERO, align 8
  %278 = sub nsw i64 %277, 1
  %279 = load i32, i32* @hz, align 4
  %280 = mul nsw i32 2, %279
  %281 = call i32 @tsleep(i32* %276, i64 %278, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %280)
  br label %282

282:                                              ; preds = %274, %219
  %283 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %284 = call i32 @nfs_mount_state_wait_for_recovery(%struct.nfsmount* %283)
  store i32 %284, i32* %7, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %282
  store i64 0, i64* %4, align 8
  br label %383

287:                                              ; preds = %282
  br label %288

288:                                              ; preds = %287, %217
  br label %289

289:                                              ; preds = %288, %161, %157, %151
  %290 = load i32, i32* %7, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %301

292:                                              ; preds = %289
  %293 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %294 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @NB_ERROR, align 4
  %297 = call i32 @SET(i32 %295, i32 %296)
  %298 = load i32, i32* %7, align 4
  %299 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %300 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %299, i32 0, i32 0
  store i32 %298, i32* %300, align 8
  br label %458

301:                                              ; preds = %289
  %302 = load i64, i64* %4, align 8
  %303 = icmp ugt i64 %302, 0
  br i1 %303, label %304, label %321

304:                                              ; preds = %301
  %305 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %306 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %9, align 4
  %309 = load i64, i64* %4, align 8
  %310 = trunc i64 %309 to i32
  %311 = add nsw i32 %308, %310
  %312 = icmp slt i32 %307, %311
  br i1 %312, label %313, label %321

313:                                              ; preds = %304
  %314 = load i32, i32* %9, align 4
  %315 = sext i32 %314 to i64
  %316 = load i64, i64* %4, align 8
  %317 = add i64 %315, %316
  %318 = trunc i64 %317 to i32
  %319 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %320 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %319, i32 0, i32 1
  store i32 %318, i32* %320, align 4
  br label %321

321:                                              ; preds = %313, %304, %301
  %322 = load i32, i32* %8, align 4
  %323 = load i32, i32* @NFS_VER2, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %331, label %325

325:                                              ; preds = %321
  %326 = load i32, i32* %11, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %331, label %328

328:                                              ; preds = %325
  %329 = load i64, i64* %4, align 8
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %370

331:                                              ; preds = %328, %325, %321
  %332 = load i32, i32* %10, align 4
  %333 = sext i32 %332 to i64
  %334 = load i64, i64* %4, align 8
  %335 = sub i64 %333, %334
  store i64 %335, i64* %24, align 8
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %340 = call i64 @NBOFF(%struct.nfsbuf* %339)
  %341 = load i32, i32* %9, align 4
  %342 = sext i32 %341 to i64
  %343 = add nsw i64 %340, %342
  %344 = load i64, i64* %4, align 8
  %345 = add i64 %343, %344
  %346 = sub i64 %338, %345
  store i64 %346, i64* %25, align 8
  %347 = load i64, i64* %24, align 8
  %348 = load i64, i64* %25, align 8
  %349 = icmp slt i64 %347, %348
  br i1 %349, label %350, label %352

350:                                              ; preds = %331
  %351 = load i64, i64* %24, align 8
  br label %354

352:                                              ; preds = %331
  %353 = load i64, i64* %25, align 8
  br label %354

354:                                              ; preds = %352, %350
  %355 = phi i64 [ %351, %350 ], [ %353, %352 ]
  store i64 %355, i64* %26, align 8
  %356 = load i64, i64* %26, align 8
  %357 = icmp sgt i64 %356, 0
  br i1 %357, label %358, label %369

358:                                              ; preds = %354
  %359 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %360 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %359, i32 0, i32 4
  %361 = load i64, i64* %360, align 8
  %362 = load i32, i32* %9, align 4
  %363 = sext i32 %362 to i64
  %364 = add nsw i64 %361, %363
  %365 = load i64, i64* %4, align 8
  %366 = add i64 %364, %365
  %367 = load i64, i64* %26, align 8
  %368 = call i32 @bzero(i64 %366, i64 %367)
  br label %369

369:                                              ; preds = %358, %354
  br label %457

370:                                              ; preds = %328
  %371 = load i64, i64* %4, align 8
  %372 = trunc i64 %371 to i32
  %373 = load i32, i32* %10, align 4
  %374 = icmp slt i32 %372, %373
  br i1 %374, label %375, label %456

375:                                              ; preds = %370
  %376 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %377 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @NB_ERROR, align 4
  %380 = call i32 @ISSET(i32 %378, i32 %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %456, label %382

382:                                              ; preds = %375
  br label %383

383:                                              ; preds = %382, %286
  %384 = load i64, i64* %4, align 8
  %385 = load i32, i32* %9, align 4
  %386 = sext i32 %385 to i64
  %387 = add i64 %386, %384
  %388 = trunc i64 %387 to i32
  store i32 %388, i32* %9, align 4
  %389 = load i64, i64* %4, align 8
  %390 = load i32, i32* %10, align 4
  %391 = sext i32 %390 to i64
  %392 = sub i64 %391, %389
  %393 = trunc i64 %392 to i32
  store i32 %393, i32* %10, align 4
  %394 = load i32, i32* %9, align 4
  %395 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %5, i32 0, i32 0
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 0
  store i32 %394, i32* %397, align 4
  %398 = load i32, i32* %10, align 4
  %399 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %5, i32 0, i32 0
  %400 = load i32*, i32** %399, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 1
  store i32 %398, i32* %401, align 4
  %402 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %403 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* @NFS_VER4, align 4
  %406 = icmp sge i32 %404, %405
  br i1 %406, label %407, label %414

407:                                              ; preds = %383
  %408 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %409 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %5, i32 0, i32 0
  %412 = load i32*, i32** %411, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 2
  store i32 %410, i32* %413, align 4
  br label %414

414:                                              ; preds = %407, %383
  %415 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %416 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %415, i32 0, i32 2
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 1
  %419 = load i32 (%struct.TYPE_10__*, i64, i32, i32, i32, %struct.nfsreq_cbinfo*, %struct.nfsreq**)*, i32 (%struct.TYPE_10__*, i64, i32, i32, i32, %struct.nfsreq_cbinfo*, %struct.nfsreq**)** %418, align 8
  %420 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %421 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %422 = call i64 @NBOFF(%struct.nfsbuf* %421)
  %423 = load i32, i32* %9, align 4
  %424 = sext i32 %423 to i64
  %425 = add nsw i64 %422, %424
  %426 = load i32, i32* %10, align 4
  %427 = load i32, i32* %17, align 4
  %428 = load i32, i32* %18, align 4
  %429 = call i32 %419(%struct.TYPE_10__* %420, i64 %425, i32 %426, i32 %427, i32 %428, %struct.nfsreq_cbinfo* %5, %struct.nfsreq** %15)
  store i32 %429, i32* %7, align 4
  %430 = load i32, i32* %7, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %447, label %432

432:                                              ; preds = %414
  %433 = load i32, i32* %18, align 4
  %434 = call i64 @IS_VALID_CRED(i32 %433)
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %432
  %437 = call i32 @kauth_cred_unref(i32* %18)
  br label %438

438:                                              ; preds = %436, %432
  %439 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %5, i32 0, i32 1
  %440 = load i64, i64* %439, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %444, label %442

442:                                              ; preds = %438
  %443 = load %struct.nfsreq*, %struct.nfsreq** %15, align 8
  store %struct.nfsreq* %443, %struct.nfsreq** %2, align 8
  store %struct.nfsreq* null, %struct.nfsreq** %15, align 8
  br label %31

444:                                              ; preds = %438
  %445 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %446 = call i32 @nfs_request_rele(%struct.nfsreq* %445)
  store i32 1, i32* %22, align 4
  br label %517

447:                                              ; preds = %414
  %448 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %449 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %448, i32 0, i32 3
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* @NB_ERROR, align 4
  %452 = call i32 @SET(i32 %450, i32 %451)
  %453 = load i32, i32* %7, align 4
  %454 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %455 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %454, i32 0, i32 0
  store i32 %453, i32* %455, align 8
  br label %456

456:                                              ; preds = %447, %375, %370
  br label %457

457:                                              ; preds = %456, %369
  br label %458

458:                                              ; preds = %457, %292, %85
  %459 = getelementptr inbounds %struct.nfsreq_cbinfo, %struct.nfsreq_cbinfo* %5, i32 0, i32 1
  %460 = load i64, i64* %459, align 8
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %458
  %463 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %464 = call i32 @nfs_request_rele(%struct.nfsreq* %463)
  br label %465

465:                                              ; preds = %462, %458
  %466 = load i32, i32* %18, align 4
  %467 = call i64 @IS_VALID_CRED(i32 %466)
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %471

469:                                              ; preds = %465
  %470 = call i32 @kauth_cred_unref(i32* %18)
  br label %471

471:                                              ; preds = %469, %465
  %472 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %473 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %472, i32 0, i32 3
  %474 = load i32, i32* %473, align 8
  %475 = load i32, i32* @NB_MULTASYNCRPC, align 4
  %476 = call i32 @ISSET(i32 %474, i32 %475)
  store i32 %476, i32* %12, align 4
  %477 = load i32, i32* %12, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %482

479:                                              ; preds = %471
  %480 = load i32*, i32** @nfs_buf_mutex, align 8
  %481 = call i32 @lck_mtx_lock(i32* %480)
  br label %482

482:                                              ; preds = %479, %471
  %483 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %484 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %483, i32 0, i32 2
  %485 = load i64, i64* %484, align 8
  %486 = add nsw i64 %485, -1
  store i64 %486, i64* %484, align 8
  %487 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %488 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %487, i32 0, i32 2
  %489 = load i64, i64* %488, align 8
  %490 = icmp eq i64 %489, 0
  %491 = zext i1 %490 to i32
  store i32 %491, i32* %13, align 4
  %492 = load i32, i32* %12, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %497

494:                                              ; preds = %482
  %495 = load i32*, i32** @nfs_buf_mutex, align 8
  %496 = call i32 @lck_mtx_unlock(i32* %495)
  br label %497

497:                                              ; preds = %494, %482
  %498 = load i32, i32* %13, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %516

500:                                              ; preds = %497
  %501 = load i32, i32* %12, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %507

503:                                              ; preds = %500
  %504 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %505 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %504, i32 0, i32 2
  %506 = bitcast i64* %505 to i8*
  store i8* %506, i8** %14, align 8
  br label %507

507:                                              ; preds = %503, %500
  %508 = load %struct.nfsbuf*, %struct.nfsbuf** %6, align 8
  %509 = call i32 @nfs_buf_read_finish(%struct.nfsbuf* %508)
  %510 = load i8*, i8** %14, align 8
  %511 = icmp ne i8* %510, null
  br i1 %511, label %512, label %515

512:                                              ; preds = %507
  %513 = load i8*, i8** %14, align 8
  %514 = call i32 @wakeup(i8* %513)
  br label %515

515:                                              ; preds = %512, %507
  br label %516

516:                                              ; preds = %515, %497
  store i32 0, i32* %22, align 4
  br label %517

517:                                              ; preds = %516, %444, %273, %150
  %518 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %518)
  %519 = load i32, i32* %22, align 4
  switch i32 %519, label %521 [
    i32 0, label %520
    i32 1, label %520
  ]

520:                                              ; preds = %517, %517
  ret void

521:                                              ; preds = %517
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

declare dso_local i32 @uio_createwithbuffer(i32, i64, i32, i32, i8**, i32) #1

declare dso_local i64 @NBOFF(%struct.nfsbuf*) #1

declare dso_local i32 @uio_addiov(i32, i32, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(i64) #1

declare dso_local i32 @nfs_request_rele(%struct.nfsreq*) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

declare dso_local i64 @nfs_mount_state_error_should_restart(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @NP(%struct.TYPE_10__*, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @nfs_need_recover(%struct.nfsmount*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @mbuf_freem(i32*) #1

declare dso_local i32 @microuptime(%struct.timeval*) #1

declare dso_local i32 @nfs_asyncio_resend(%struct.nfsreq*) #1

declare dso_local i32 @tsleep(i32*, i64, i8*, i32) #1

declare dso_local i32 @nfs_mount_state_wait_for_recovery(%struct.nfsmount*) #1

declare dso_local i32 @bzero(i64, i64) #1

declare dso_local i32 @nfs_buf_read_finish(%struct.nfsbuf*) #1

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
