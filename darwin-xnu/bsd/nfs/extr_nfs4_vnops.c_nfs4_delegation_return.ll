; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_delegation_return.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_delegation_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.nfsmount = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@N_DELEG_RETURN = common dso_local global i32 0, align 4
@N_DELEG_RETURNING = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@NFSERR_MOVED = common dso_local global i32 0, align 4
@NFSERR_LEASE_MOVED = common dso_local global i32 0, align 4
@N_DELEG_MASK = common dso_local global i32 0, align 4
@NFSNOLIST = common dso_local global i64 0, align 8
@n_dlink = common dso_local global i32 0, align 4
@n_dreturn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"nfs4_delegation_return, error %d\00", align 1
@NFSERR_EXPIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_delegation_return(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfsmount*, align 8
  %11 = alloca %struct.TYPE_15__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_14__* %14)
  store %struct.nfsmount* %15, %struct.nfsmount** %10, align 8
  %16 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %17 = call i64 @nfs_mount_gone(%struct.nfsmount* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %5, align 4
  br label %200

21:                                               ; preds = %4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = call i32 @lck_mtx_lock(i32* %23)
  %25 = load i32, i32* @N_DELEG_RETURN, align 4
  %26 = load i32, i32* @N_DELEG_RETURNING, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = call i32 @lck_mtx_unlock(i32* %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = call i32 @nfs_open_state_set_busy(%struct.TYPE_14__* %35, i32* null)
  store i32 %36, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  br label %124

39:                                               ; preds = %21
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @nfs4_claim_delegated_state_for_node(%struct.TYPE_14__* %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %124

45:                                               ; preds = %39
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = call i32 @lck_mtx_lock(i32* %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bcopy(i32 %58, i32* %59, i32 %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = call i32 @lck_mtx_unlock(i32* %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_14__* %66)
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @nfs4_delegreturn_rpc(%struct.nfsmount* %67, i32 %69, i32 %71, i32* %12, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @ETIMEDOUT, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %123

79:                                               ; preds = %45
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @NFSERR_MOVED, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %123

83:                                               ; preds = %79
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @NFSERR_LEASE_MOVED, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %83
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = call i32 @lck_mtx_lock(i32* %89)
  %91 = load i32, i32* @N_DELEG_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %98 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %97, i32 0, i32 0
  %99 = call i32 @lck_mtx_lock(i32* %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NFSNOLIST, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %87
  %107 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %108 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %107, i32 0, i32 2
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = load i32, i32* @n_dlink, align 4
  %111 = call i32 @TAILQ_REMOVE(i32* %108, %struct.TYPE_14__* %109, i32 %110)
  %112 = load i64, i64* @NFSNOLIST, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  store i64 %112, i64* %115, align 8
  br label %116

116:                                              ; preds = %106, %87
  %117 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %118 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %117, i32 0, i32 0
  %119 = call i32 @lck_mtx_unlock(i32* %118)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = call i32 @lck_mtx_unlock(i32* %121)
  br label %123

123:                                              ; preds = %116, %83, %79, %45
  br label %124

124:                                              ; preds = %123, %44, %38
  %125 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %126 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %125, i32 0, i32 0
  %127 = call i32 @lck_mtx_lock(i32* %126)
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @NFSNOLIST, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %124
  %135 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %136 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %135, i32 0, i32 1
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %138 = load i32, i32* @n_dreturn, align 4
  %139 = call i32 @TAILQ_REMOVE(i32* %136, %struct.TYPE_14__* %137, i32 %138)
  %140 = load i64, i64* @NFSNOLIST, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  store i64 %140, i64* %143, align 8
  br label %144

144:                                              ; preds = %134, %124
  %145 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %146 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %145, i32 0, i32 0
  %147 = call i32 @lck_mtx_unlock(i32* %146)
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = call i32 @lck_mtx_lock(i32* %149)
  %151 = load i32, i32* @N_DELEG_RETURN, align 4
  %152 = load i32, i32* @N_DELEG_RETURNING, align 4
  %153 = or i32 %151, %152
  %154 = xor i32 %153, -1
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  %161 = call i32 @lck_mtx_unlock(i32* %160)
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %196

164:                                              ; preds = %144
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @NP(%struct.TYPE_14__* %165, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* @ETIMEDOUT, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %173 = call i32 @nfs_need_reconnect(%struct.nfsmount* %172)
  br label %174

174:                                              ; preds = %171, %164
  %175 = load i32, i32* %13, align 4
  %176 = call i64 @nfs_mount_state_error_should_restart(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %174
  %179 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %180 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %179, i32 0, i32 0
  %181 = call i32 @lck_mtx_lock(i32* %180)
  %182 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %183 = load i32, i32* %13, align 4
  %184 = call i64 @nfs_mount_state_error_delegation_lost(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = load i32, i32* @NFSERR_EXPIRED, align 4
  br label %189

188:                                              ; preds = %178
  br label %189

189:                                              ; preds = %188, %186
  %190 = phi i32 [ %187, %186 ], [ 0, %188 ]
  %191 = call i32 @nfs_need_recover(%struct.nfsmount* %182, i32 %190)
  %192 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %193 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %192, i32 0, i32 0
  %194 = call i32 @lck_mtx_unlock(i32* %193)
  br label %195

195:                                              ; preds = %189, %174
  br label %196

196:                                              ; preds = %195, %144
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %198 = call i32 @nfs_open_state_clear_busy(%struct.TYPE_14__* %197)
  %199 = load i32, i32* %13, align 4
  store i32 %199, i32* %5, align 4
  br label %200

200:                                              ; preds = %196, %19
  %201 = load i32, i32* %5, align 4
  ret i32 %201
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_14__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @nfs_open_state_set_busy(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @nfs4_claim_delegated_state_for_node(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @nfs4_delegreturn_rpc(%struct.nfsmount*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @NP(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @nfs_need_reconnect(%struct.nfsmount*) #1

declare dso_local i64 @nfs_mount_state_error_should_restart(i32) #1

declare dso_local i32 @nfs_need_recover(%struct.nfsmount*, i32) #1

declare dso_local i64 @nfs_mount_state_error_delegation_lost(i32) #1

declare dso_local i32 @nfs_open_state_clear_busy(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
