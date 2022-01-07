; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_revoke_open_state_for_node.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_revoke_open_state_for_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.nfsmount = type { i32, i32 }

@NREVOKE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"nfs_revoke_open_state_for_node(): already revoked\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"nfs: state lost for %p 0x%x\00", align 1
@NFSSTA_REVOKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_revoke_open_state_for_node(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.nfsmount*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = call i32 @nfs_node_lock_force(%struct.TYPE_8__* %4)
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NREVOKE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = call i32 (%struct.TYPE_8__*, i8*, ...) @NP(%struct.TYPE_8__* %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = call i32 @nfs_node_unlock(%struct.TYPE_8__* %15)
  br label %50

17:                                               ; preds = %1
  %18 = load i32, i32* @NREVOKE, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = call i32 @nfs_node_unlock(%struct.TYPE_8__* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = call i32 @nfs_release_open_state_for_node(%struct.TYPE_8__* %25, i32 0)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.TYPE_8__*, i8*, ...) @NP(%struct.TYPE_8__* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %28, i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_8__* %33)
  store %struct.nfsmount* %34, %struct.nfsmount** %3, align 8
  %35 = icmp ne %struct.nfsmount* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %17
  %37 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %38 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %37, i32 0, i32 0
  %39 = call i32 @lck_mtx_lock(i32* %38)
  %40 = load i32, i32* @NFSSTA_REVOKE, align 4
  %41 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %42 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %46 = call i32 @nfs_mount_sock_thread_wake(%struct.nfsmount* %45)
  %47 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %48 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %47, i32 0, i32 0
  %49 = call i32 @lck_mtx_unlock(i32* %48)
  br label %50

50:                                               ; preds = %12, %36, %17
  ret void
}

declare dso_local i32 @nfs_node_lock_force(%struct.TYPE_8__*) #1

declare dso_local i32 @NP(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @nfs_release_open_state_for_node(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_8__*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @nfs_mount_sock_thread_wake(%struct.nfsmount*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
