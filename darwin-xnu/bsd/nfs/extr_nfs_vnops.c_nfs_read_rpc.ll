; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_read_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_read_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.nfsmount = type { i32, i64, i64, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, i64, i64, i32, i32, i32*, %struct.nfsreq**)*, i32 (%struct.TYPE_12__*, %struct.nfsreq*, i32, i64*, i32*)* }
%struct.nfsreq = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@NREVOKE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@NFSERR_GRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"nfs_read_rpc: error %d, initiating recovery\00", align 1
@PZERO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"nfsgrace\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_read_rpc(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfsmount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.nfsreq, align 4
  %18 = alloca %struct.nfsreq*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store %struct.nfsreq* %17, %struct.nfsreq** %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @uio_offset(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @uio_resid(i32 %24)
  %26 = call i32 @FSDBG_TOP(i32 536, %struct.TYPE_12__* %21, i32 %23, i64 %25, i32 0)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_12__* %27)
  store %struct.nfsmount* %28, %struct.nfsmount** %8, align 8
  %29 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %30 = call i64 @nfs_mount_gone(%struct.nfsmount* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %4, align 4
  br label %231

34:                                               ; preds = %3
  %35 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %36 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  %38 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %39 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %12, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @uio_offset(i32 %41)
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %16, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @uio_resid(i32 %44)
  store i64 %45, i64* %15, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @NFS_VER2, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %34
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* %15, align 8
  %52 = add nsw i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = icmp ugt i64 %54, 4294967295
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @uio_offset(i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @uio_resid(i32 %60)
  %62 = load i32, i32* @EFBIG, align 4
  %63 = call i32 @FSDBG_BOT(i32 536, %struct.TYPE_12__* %57, i32 %59, i64 %61, i32 %62)
  %64 = load i32, i32* @EFBIG, align 4
  store i32 %64, i32* %4, align 4
  br label %231

65:                                               ; preds = %49, %34
  br label %66

66:                                               ; preds = %222, %191, %65
  %67 = load i64, i64* %15, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %223

69:                                               ; preds = %66
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %12, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i64, i64* %12, align 8
  br label %77

75:                                               ; preds = %69
  %76 = load i64, i64* %15, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i64 [ %74, %73 ], [ %76, %75 ]
  store i64 %78, i64* %14, align 8
  store i64 %78, i64* %13, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %13, align 8
  %82 = call i32 @FSDBG(i32 536, %struct.TYPE_12__* %79, i64 %80, i64 %81, i32 0)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NREVOKE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i32, i32* @EIO, align 4
  store i32 %90, i32* %9, align 4
  br label %223

91:                                               ; preds = %77
  %92 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %93 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @NFS_VER4, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %99 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %19, align 8
  br label %101

101:                                              ; preds = %97, %91
  %102 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %103 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %102, i32 0, i32 5
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32 (%struct.TYPE_12__*, i64, i64, i32, i32, i32*, %struct.nfsreq**)*, i32 (%struct.TYPE_12__*, i64, i64, i32, i32, i32*, %struct.nfsreq**)** %105, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @vfs_context_thread(i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @vfs_context_ucred(i32 %112)
  %114 = call i32 %106(%struct.TYPE_12__* %107, i64 %108, i64 %109, i32 %111, i32 %113, i32* null, %struct.nfsreq** %18)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %101
  %118 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %119 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %118, i32 0, i32 5
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i32 (%struct.TYPE_12__*, %struct.nfsreq*, i32, i64*, i32*)*, i32 (%struct.TYPE_12__*, %struct.nfsreq*, i32, i64*, i32*)** %121, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %124 = load %struct.nfsreq*, %struct.nfsreq** %18, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 %122(%struct.TYPE_12__* %123, %struct.nfsreq* %124, i32 %125, i64* %14, i32* %11)
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %117, %101
  %128 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %129 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @NFS_VER4, align 4
  %132 = icmp sge i32 %130, %131
  br i1 %132, label %133, label %194

133:                                              ; preds = %127
  %134 = load i32, i32* %9, align 4
  %135 = call i64 @nfs_mount_state_error_should_restart(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %194

137:                                              ; preds = %133
  %138 = load i64, i64* %20, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %20, align 8
  %140 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %141 = call i64 @nfs_mount_state_max_restarts(%struct.nfsmount* %140)
  %142 = icmp sle i64 %139, %141
  br i1 %142, label %143, label %194

143:                                              ; preds = %137
  %144 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %145 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %144, i32 0, i32 4
  %146 = call i32 @lck_mtx_lock(i32* %145)
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @NFSERR_GRACE, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %143
  %151 = load i64, i64* %19, align 8
  %152 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %153 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %151, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %150
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @NP(%struct.TYPE_12__* %157, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %158)
  %160 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @nfs_need_recover(%struct.nfsmount* %160, i32 %161)
  br label %163

163:                                              ; preds = %156, %150, %143
  %164 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %165 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %164, i32 0, i32 4
  %166 = call i32 @lck_mtx_unlock(i32* %165)
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @NREVOKE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %163
  %174 = load i32, i32* @EIO, align 4
  store i32 %174, i32* %9, align 4
  br label %193

175:                                              ; preds = %163
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* @NFSERR_GRACE, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %175
  %180 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %181 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %180, i32 0, i32 3
  %182 = load i64, i64* @PZERO, align 8
  %183 = sub nsw i64 %182, 1
  %184 = load i32, i32* @hz, align 4
  %185 = mul nsw i32 2, %184
  %186 = call i32 @tsleep(i32* %181, i64 %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %179, %175
  %188 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %189 = call i32 @nfs_mount_state_wait_for_recovery(%struct.nfsmount* %188)
  store i32 %189, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  br label %66

192:                                              ; preds = %187
  br label %193

193:                                              ; preds = %192, %173
  br label %194

194:                                              ; preds = %193, %137, %133, %127
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  br label %223

198:                                              ; preds = %194
  %199 = load i64, i64* %14, align 8
  %200 = load i64, i64* %16, align 8
  %201 = add i64 %200, %199
  store i64 %201, i64* %16, align 8
  %202 = load i64, i64* %14, align 8
  %203 = load i64, i64* %15, align 8
  %204 = sub i64 %203, %202
  store i64 %204, i64* %15, align 8
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* @NFS_VER2, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %198
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %208
  %212 = load i64, i64* %14, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211, %208
  store i64 0, i64* %15, align 8
  br label %215

215:                                              ; preds = %214, %211
  br label %222

216:                                              ; preds = %198
  %217 = load i64, i64* %14, align 8
  %218 = load i64, i64* %13, align 8
  %219 = icmp ult i64 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  store i64 0, i64* %15, align 8
  br label %221

221:                                              ; preds = %220, %216
  br label %222

222:                                              ; preds = %221, %215
  br label %66

223:                                              ; preds = %197, %89, %66
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* %6, align 4
  %227 = call i64 @uio_resid(i32 %226)
  %228 = load i32, i32* %9, align 4
  %229 = call i32 @FSDBG_BOT(i32 536, %struct.TYPE_12__* %224, i32 %225, i64 %227, i32 %228)
  %230 = load i32, i32* %9, align 4
  store i32 %230, i32* %4, align 4
  br label %231

231:                                              ; preds = %223, %56, %32
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i32 @FSDBG_TOP(i32, %struct.TYPE_12__*, i32, i64, i32) #1

declare dso_local i32 @uio_offset(i32) #1

declare dso_local i64 @uio_resid(i32) #1

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_12__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @FSDBG_BOT(i32, %struct.TYPE_12__*, i32, i64, i32) #1

declare dso_local i32 @FSDBG(i32, %struct.TYPE_12__*, i64, i64, i32) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i64 @nfs_mount_state_error_should_restart(i32) #1

declare dso_local i64 @nfs_mount_state_max_restarts(%struct.nfsmount*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @NP(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @nfs_need_recover(%struct.nfsmount*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @tsleep(i32*, i64, i8*, i32) #1

declare dso_local i32 @nfs_mount_state_wait_for_recovery(%struct.nfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
