; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_close.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_file = type { i64, i64, i32, i32, i64, i64, i64, i64, i32, i32, %struct.TYPE_3__*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nfs_lock_owner = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"nfs_close: mode mismatch %d %d, current %d %d, %d\00", align 1
@NFS_OPEN_SHARE_DENY_NONE = common dso_local global i64 0, align 8
@NFS_OPEN_SHARE_ACCESS_WRITE = common dso_local global i64 0, align 8
@NFS_OPEN_SHARE_ACCESS_BOTH = common dso_local global i64 0, align 8
@NFS_OPEN_SHARE_DENY_WRITE = common dso_local global i64 0, align 8
@NFS_VER4 = common dso_local global i64 0, align 8
@NFS_OPEN_FILE_LOST = common dso_local global i32 0, align 4
@NFSERR_LOCKS_HELD = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"nfs_close: error %d, %d\00", align 1
@NFS_OPEN_FILE_CREATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [105 x i8] c"nfs_close: unexpected count: %u.%u %u.%u %u.%u dw %u.%u %u.%u %u.%u drw %u.%u %u.%u %u.%u flags 0x%x, %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"nfs_close: LOST%s, %d\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" (last)\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_close(i32 %0, %struct.nfs_open_file* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_open_file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfs_lock_owner*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.nfs_open_file* %1, %struct.nfs_open_file** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %22 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = and i64 %20, %23
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %5
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %30 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = and i64 %28, %31
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %27, %5
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %40 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %43 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %46 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %45, i32 0, i32 10
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kauth_cred_getuid(i32 %49)
  %51 = call i32 (i32, i8*, ...) @NP(i32 %36, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %38, i64 %41, i64 %44, i32 %50)
  br label %52

52:                                               ; preds = %35, %27
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @NFS_OPEN_SHARE_DENY_NONE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %52
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @NFS_OPEN_SHARE_ACCESS_WRITE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %56
  %61 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %62 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %61, i32 0, i32 21
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %67 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %66, i32 0, i32 20
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %72 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %77 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75, %70
  %81 = load i64, i64* @NFS_OPEN_SHARE_ACCESS_BOTH, align 8
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %80, %75, %65, %60, %56
  br label %142

83:                                               ; preds = %52
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @NFS_OPEN_SHARE_DENY_WRITE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %114

87:                                               ; preds = %83
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @NFS_OPEN_SHARE_ACCESS_WRITE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %87
  %92 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %93 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %91
  %97 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %98 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %103 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %102, i32 0, i32 17
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %108 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %107, i32 0, i32 16
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106, %101
  %112 = load i64, i64* @NFS_OPEN_SHARE_ACCESS_BOTH, align 8
  store i64 %112, i64* %9, align 8
  br label %113

113:                                              ; preds = %111, %106, %96, %91, %87
  br label %141

114:                                              ; preds = %83
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* @NFS_OPEN_SHARE_ACCESS_WRITE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %140

118:                                              ; preds = %114
  %119 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %120 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %118
  %124 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %125 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %123
  %129 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %130 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %129, i32 0, i32 13
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %135 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %134, i32 0, i32 12
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133, %128
  %139 = load i64, i64* @NFS_OPEN_SHARE_ACCESS_BOTH, align 8
  store i64 %139, i64* %9, align 8
  br label %140

140:                                              ; preds = %138, %133, %123, %118, %114
  br label %141

141:                                              ; preds = %140, %113
  br label %142

142:                                              ; preds = %141, %82
  %143 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* %10, align 8
  %146 = call i32 @nfs_open_file_remove_open_find(%struct.nfs_open_file* %143, i64 %144, i64 %145, i64* %18, i64* %19, i32* %15)
  %147 = load i64, i64* %18, align 8
  %148 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %149 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %147, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %142
  %153 = load i64, i64* %19, align 8
  %154 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %155 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %153, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %152, %142
  store i32 1, i32* %14, align 4
  br label %160

159:                                              ; preds = %152
  store i32 0, i32* %14, align 4
  br label %160

160:                                              ; preds = %159, %158
  %161 = load i32, i32* %7, align 4
  %162 = call %struct.TYPE_4__* @NFSTONMP(i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @NFS_VER4, align 8
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  br label %324

168:                                              ; preds = %160
  %169 = load i64, i64* %18, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %168
  %172 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %173 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %228

176:                                              ; preds = %171, %168
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @nfs_wait_bufs(i32 %177)
  store i32 1, i32* %16, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %196, label %181

181:                                              ; preds = %176
  %182 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %183 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @NFS_OPEN_FILE_LOST, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %196, label %188

188:                                              ; preds = %181
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @vfs_context_thread(i32 %191)
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @vfs_context_ucred(i32 %193)
  %195 = call i32 @nfs4_close_rpc(i32 %189, %struct.nfs_open_file* %190, i32 %192, i32 %194, i32 0)
  store i32 %195, i32* %13, align 4
  br label %196

196:                                              ; preds = %188, %181, %176
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* @NFSERR_LOCKS_HELD, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %227

200:                                              ; preds = %196
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %11, align 4
  %203 = call i32 @vfs_context_proc(i32 %202)
  %204 = call %struct.nfs_lock_owner* @nfs_lock_owner_find(i32 %201, i32 %203, i32 0)
  store %struct.nfs_lock_owner* %204, %struct.nfs_lock_owner** %12, align 8
  %205 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %12, align 8
  %206 = icmp ne %struct.nfs_lock_owner* %205, null
  br i1 %206, label %207, label %219

207:                                              ; preds = %200
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %12, align 8
  %210 = load i32, i32* @F_WRLCK, align 4
  %211 = load i32, i32* @UINT64_MAX, align 4
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @vfs_context_thread(i32 %212)
  %214 = load i32, i32* %11, align 4
  %215 = call i32 @vfs_context_ucred(i32 %214)
  %216 = call i32 @nfs4_unlock_rpc(i32 %208, %struct.nfs_lock_owner* %209, i32 %210, i32 0, i32 %211, i32 0, i32 %213, i32 %215)
  %217 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %12, align 8
  %218 = call i32 @nfs_lock_owner_rele(%struct.nfs_lock_owner* %217)
  br label %219

219:                                              ; preds = %207, %200
  %220 = load i32, i32* %7, align 4
  %221 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %222 = load i32, i32* %11, align 4
  %223 = call i32 @vfs_context_thread(i32 %222)
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @vfs_context_ucred(i32 %224)
  %226 = call i32 @nfs4_close_rpc(i32 %220, %struct.nfs_open_file* %221, i32 %223, i32 %225, i32 0)
  store i32 %226, i32* %13, align 4
  br label %227

227:                                              ; preds = %219, %196
  br label %309

228:                                              ; preds = %171
  %229 = load i32, i32* %14, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %308

231:                                              ; preds = %228
  %232 = load i32, i32* %15, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %307, label %234

234:                                              ; preds = %231
  %235 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %236 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %235, i32 0, i32 9
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @NFS_OPEN_FILE_LOST, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %307, label %241

241:                                              ; preds = %234
  store i32 1, i32* %17, align 4
  %242 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %243 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %242, i32 0, i32 12
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %286, label %246

246:                                              ; preds = %241
  %247 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %248 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %247, i32 0, i32 7
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %286, label %251

251:                                              ; preds = %246
  %252 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %253 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %252, i32 0, i32 14
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %286, label %256

256:                                              ; preds = %251
  %257 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %258 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %257, i32 0, i32 16
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %286, label %261

261:                                              ; preds = %256
  %262 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %263 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %262, i32 0, i32 5
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %286, label %266

266:                                              ; preds = %261
  %267 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %268 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %267, i32 0, i32 18
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %286, label %271

271:                                              ; preds = %266
  %272 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %273 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %286, label %276

276:                                              ; preds = %271
  %277 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %278 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %277, i32 0, i32 20
  %279 = load i32, i32* %278, align 8
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %286, label %281

281:                                              ; preds = %276
  %282 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %283 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %282, i32 0, i32 22
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %281, %276, %271, %266, %261, %256, %251, %246, %241
  %287 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %288 = call i32 @nfs4_claim_delegated_state_for_open_file(%struct.nfs_open_file* %287, i32 0)
  br label %289

289:                                              ; preds = %286, %281
  %290 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %291 = load i64, i64* %9, align 8
  %292 = load i64, i64* %10, align 8
  %293 = call i32 @nfs_open_file_remove_open(%struct.nfs_open_file* %290, i64 %291, i64 %292)
  %294 = load i32, i32* %7, align 4
  %295 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %296 = load i32, i32* %11, align 4
  %297 = call i32 @nfs4_open_downgrade_rpc(i32 %294, %struct.nfs_open_file* %295, i32 %296)
  store i32 %297, i32* %13, align 4
  %298 = load i32, i32* %13, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %289
  %301 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %302 = load i64, i64* %9, align 8
  %303 = load i64, i64* %10, align 8
  %304 = load i32, i32* %15, align 4
  %305 = call i32 @nfs_open_file_add_open(%struct.nfs_open_file* %301, i64 %302, i64 %303, i32 %304)
  br label %306

306:                                              ; preds = %300, %289
  br label %307

307:                                              ; preds = %306, %234, %231
  br label %308

308:                                              ; preds = %307, %228
  br label %309

309:                                              ; preds = %308, %227
  %310 = load i32, i32* %13, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %323

312:                                              ; preds = %309
  %313 = load i32, i32* %7, align 4
  %314 = load i32, i32* %13, align 4
  %315 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %316 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %315, i32 0, i32 10
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @kauth_cred_getuid(i32 %319)
  %321 = call i32 (i32, i8*, ...) @NP(i32 %313, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %314, i32 %320)
  %322 = load i32, i32* %13, align 4
  store i32 %322, i32* %6, align 4
  br label %591

323:                                              ; preds = %309
  br label %324

324:                                              ; preds = %323, %167
  %325 = load i32, i32* %17, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %324
  %328 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %329 = load i64, i64* %9, align 8
  %330 = load i64, i64* %10, align 8
  %331 = call i32 @nfs_open_file_remove_open(%struct.nfs_open_file* %328, i64 %329, i64 %330)
  br label %332

332:                                              ; preds = %327, %324
  %333 = load i32, i32* %16, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %565

335:                                              ; preds = %332
  %336 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %337 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %336, i32 0, i32 11
  %338 = call i32 @lck_mtx_lock(i32* %337)
  %339 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %340 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %339, i32 0, i32 23
  %341 = load i32, i32* %340, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %445, label %343

343:                                              ; preds = %335
  %344 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %345 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %344, i32 0, i32 22
  %346 = load i32, i32* %345, align 8
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %445, label %348

348:                                              ; preds = %343
  %349 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %350 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %349, i32 0, i32 21
  %351 = load i32, i32* %350, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %445, label %353

353:                                              ; preds = %348
  %354 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %355 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %354, i32 0, i32 20
  %356 = load i32, i32* %355, align 8
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %445, label %358

358:                                              ; preds = %353
  %359 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %360 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %445, label %363

363:                                              ; preds = %358
  %364 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %365 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %385

368:                                              ; preds = %363
  %369 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %370 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %369, i32 0, i32 9
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @NFS_OPEN_FILE_CREATE, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %445

375:                                              ; preds = %368
  %376 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %377 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %376, i32 0, i32 26
  %378 = load i32, i32* %377, align 8
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %445, label %380

380:                                              ; preds = %375
  %381 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %382 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = icmp eq i32 %383, 1
  br i1 %384, label %385, label %445

385:                                              ; preds = %380, %363
  %386 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %387 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %386, i32 0, i32 19
  %388 = load i64, i64* %387, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %445, label %390

390:                                              ; preds = %385
  %391 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %392 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %391, i32 0, i32 18
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %445, label %395

395:                                              ; preds = %390
  %396 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %397 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %396, i32 0, i32 4
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %445, label %400

400:                                              ; preds = %395
  %401 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %402 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %401, i32 0, i32 5
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %445, label %405

405:                                              ; preds = %400
  %406 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %407 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %406, i32 0, i32 17
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %445, label %410

410:                                              ; preds = %405
  %411 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %412 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %411, i32 0, i32 16
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %445, label %415

415:                                              ; preds = %410
  %416 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %417 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %416, i32 0, i32 15
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %445, label %420

420:                                              ; preds = %415
  %421 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %422 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %421, i32 0, i32 14
  %423 = load i64, i64* %422, align 8
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %445, label %425

425:                                              ; preds = %420
  %426 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %427 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %426, i32 0, i32 6
  %428 = load i64, i64* %427, align 8
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %445, label %430

430:                                              ; preds = %425
  %431 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %432 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %431, i32 0, i32 7
  %433 = load i64, i64* %432, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %445, label %435

435:                                              ; preds = %430
  %436 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %437 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %436, i32 0, i32 13
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %445, label %440

440:                                              ; preds = %435
  %441 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %442 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %441, i32 0, i32 12
  %443 = load i64, i64* %442, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %511

445:                                              ; preds = %440, %435, %430, %425, %420, %415, %410, %405, %400, %395, %390, %385, %380, %375, %368, %358, %353, %348, %343, %335
  %446 = load i32, i32* %7, align 4
  %447 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %448 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %447, i32 0, i32 23
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %451 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %450, i32 0, i32 22
  %452 = load i32, i32* %451, align 8
  %453 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %454 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %453, i32 0, i32 21
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %457 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %456, i32 0, i32 20
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %460 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 8
  %462 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %463 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %462, i32 0, i32 3
  %464 = load i32, i32* %463, align 4
  %465 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %466 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %465, i32 0, i32 19
  %467 = load i64, i64* %466, align 8
  %468 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %469 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %468, i32 0, i32 18
  %470 = load i64, i64* %469, align 8
  %471 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %472 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %471, i32 0, i32 4
  %473 = load i64, i64* %472, align 8
  %474 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %475 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %474, i32 0, i32 5
  %476 = load i64, i64* %475, align 8
  %477 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %478 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %477, i32 0, i32 17
  %479 = load i64, i64* %478, align 8
  %480 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %481 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %480, i32 0, i32 16
  %482 = load i64, i64* %481, align 8
  %483 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %484 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %483, i32 0, i32 15
  %485 = load i64, i64* %484, align 8
  %486 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %487 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %486, i32 0, i32 14
  %488 = load i64, i64* %487, align 8
  %489 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %490 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %489, i32 0, i32 6
  %491 = load i64, i64* %490, align 8
  %492 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %493 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %492, i32 0, i32 7
  %494 = load i64, i64* %493, align 8
  %495 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %496 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %495, i32 0, i32 13
  %497 = load i64, i64* %496, align 8
  %498 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %499 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %498, i32 0, i32 12
  %500 = load i64, i64* %499, align 8
  %501 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %502 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %501, i32 0, i32 9
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %505 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %504, i32 0, i32 10
  %506 = load %struct.TYPE_3__*, %struct.TYPE_3__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = call i32 @kauth_cred_getuid(i32 %508)
  %510 = call i32 (i32, i8*, ...) @NP(i32 %446, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 %449, i32 %452, i32 %455, i32 %458, i32 %461, i32 %464, i64 %467, i64 %470, i64 %473, i64 %476, i64 %479, i64 %482, i64 %485, i64 %488, i64 %491, i64 %494, i64 %497, i64 %500, i32 %503, i32 %509)
  br label %511

511:                                              ; preds = %445, %440
  %512 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %513 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %512, i32 0, i32 1
  store i64 0, i64* %513, align 8
  %514 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %515 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %514, i32 0, i32 0
  store i64 0, i64* %515, align 8
  %516 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %517 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %516, i32 0, i32 24
  store i64 0, i64* %517, align 8
  %518 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %519 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %518, i32 0, i32 25
  store i64 0, i64* %519, align 8
  %520 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %521 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %520, i32 0, i32 22
  store i32 0, i32* %521, align 8
  %522 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %523 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %522, i32 0, i32 23
  store i32 0, i32* %523, align 4
  %524 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %525 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %524, i32 0, i32 20
  store i32 0, i32* %525, align 8
  %526 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %527 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %526, i32 0, i32 21
  store i32 0, i32* %527, align 4
  %528 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %529 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %528, i32 0, i32 3
  store i32 0, i32* %529, align 4
  %530 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %531 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %530, i32 0, i32 2
  store i32 0, i32* %531, align 8
  %532 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %533 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %532, i32 0, i32 18
  store i64 0, i64* %533, align 8
  %534 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %535 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %534, i32 0, i32 19
  store i64 0, i64* %535, align 8
  %536 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %537 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %536, i32 0, i32 5
  store i64 0, i64* %537, align 8
  %538 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %539 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %538, i32 0, i32 4
  store i64 0, i64* %539, align 8
  %540 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %541 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %540, i32 0, i32 16
  store i64 0, i64* %541, align 8
  %542 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %543 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %542, i32 0, i32 17
  store i64 0, i64* %543, align 8
  %544 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %545 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %544, i32 0, i32 14
  store i64 0, i64* %545, align 8
  %546 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %547 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %546, i32 0, i32 15
  store i64 0, i64* %547, align 8
  %548 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %549 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %548, i32 0, i32 7
  store i64 0, i64* %549, align 8
  %550 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %551 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %550, i32 0, i32 6
  store i64 0, i64* %551, align 8
  %552 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %553 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %552, i32 0, i32 12
  store i64 0, i64* %553, align 8
  %554 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %555 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %554, i32 0, i32 13
  store i64 0, i64* %555, align 8
  %556 = load i32, i32* @NFS_OPEN_FILE_CREATE, align 4
  %557 = xor i32 %556, -1
  %558 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %559 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %558, i32 0, i32 9
  %560 = load i32, i32* %559, align 4
  %561 = and i32 %560, %557
  store i32 %561, i32* %559, align 4
  %562 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %563 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %562, i32 0, i32 11
  %564 = call i32 @lck_mtx_unlock(i32* %563)
  br label %565

565:                                              ; preds = %511, %332
  %566 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %567 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %566, i32 0, i32 9
  %568 = load i32, i32* %567, align 4
  %569 = load i32, i32* @NFS_OPEN_FILE_LOST, align 4
  %570 = and i32 %568, %569
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %589

572:                                              ; preds = %565
  %573 = load i32, i32* @EIO, align 4
  store i32 %573, i32* %13, align 4
  %574 = load i32, i32* %7, align 4
  %575 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %576 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %575, i32 0, i32 8
  %577 = load i32, i32* %576, align 8
  %578 = icmp ne i32 %577, 0
  %579 = xor i1 %578, true
  %580 = zext i1 %579 to i64
  %581 = select i1 %579, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %582 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %583 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %582, i32 0, i32 10
  %584 = load %struct.TYPE_3__*, %struct.TYPE_3__** %583, align 8
  %585 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 4
  %587 = call i32 @kauth_cred_getuid(i32 %586)
  %588 = call i32 (i32, i8*, ...) @NP(i32 %574, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %581, i32 %587)
  br label %589

589:                                              ; preds = %572, %565
  %590 = load i32, i32* %13, align 4
  store i32 %590, i32* %6, align 4
  br label %591

591:                                              ; preds = %589, %312
  %592 = load i32, i32* %6, align 4
  ret i32 %592
}

declare dso_local i32 @NP(i32, i8*, ...) #1

declare dso_local i32 @kauth_cred_getuid(i32) #1

declare dso_local i32 @nfs_open_file_remove_open_find(%struct.nfs_open_file*, i64, i64, i64*, i64*, i32*) #1

declare dso_local %struct.TYPE_4__* @NFSTONMP(i32) #1

declare dso_local i32 @nfs_wait_bufs(i32) #1

declare dso_local i32 @nfs4_close_rpc(i32, %struct.nfs_open_file*, i32, i32, i32) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local %struct.nfs_lock_owner* @nfs_lock_owner_find(i32, i32, i32) #1

declare dso_local i32 @vfs_context_proc(i32) #1

declare dso_local i32 @nfs4_unlock_rpc(i32, %struct.nfs_lock_owner*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nfs_lock_owner_rele(%struct.nfs_lock_owner*) #1

declare dso_local i32 @nfs4_claim_delegated_state_for_open_file(%struct.nfs_open_file*, i32) #1

declare dso_local i32 @nfs_open_file_remove_open(%struct.nfs_open_file*, i64, i64) #1

declare dso_local i32 @nfs4_open_downgrade_rpc(i32, %struct.nfs_open_file*, i32) #1

declare dso_local i32 @nfs_open_file_add_open(%struct.nfs_open_file*, i64, i64, i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
