; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_lock.c_nfs_lockd_mount_unregister.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_lock.c_nfs_lockd_mount_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IPC_PORT_NULL = common dso_local global i64 0, align 8
@nfs_lock_mutex = common dso_local global i32 0, align 4
@NFSNOLIST = common dso_local global i64 0, align 8
@nfs_lockd_mount_list = common dso_local global i32 0, align 4
@nm_ldlink = common dso_local global i32 0, align 4
@nfs_lockd_mounts = common dso_local global i64 0, align 8
@nfs_lockd_request_sent = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"nfs_lockd_mount_change: shutdown couldn't get port, kr %d, port %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@IPC_PORT_DEAD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"DEAD\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"VALID\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"nfs_lockd_mount_change: shutdown %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_lockd_mount_unregister(%struct.nfsmount* %0) #0 {
  %2 = alloca %struct.nfsmount*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.nfsmount* %0, %struct.nfsmount** %2, align 8
  %6 = load i64, i64* @IPC_PORT_NULL, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i32, i32* @nfs_lock_mutex, align 4
  %8 = call i32 @lck_mtx_lock(i32 %7)
  %9 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %10 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NFSNOLIST, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @nfs_lock_mutex, align 4
  %17 = call i32 @lck_mtx_unlock(i32 %16)
  br label %82

18:                                               ; preds = %1
  %19 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %20 = load i32, i32* @nm_ldlink, align 4
  %21 = call i32 @TAILQ_REMOVE(i32* @nfs_lockd_mount_list, %struct.nfsmount* %19, i32 %20)
  %22 = load i64, i64* @NFSNOLIST, align 8
  %23 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %24 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  %26 = load i64, i64* @nfs_lockd_mounts, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* @nfs_lockd_mounts, align 8
  %28 = load i64, i64* @nfs_lockd_mounts, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load i64, i64* @nfs_lockd_request_sent, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %30, %18
  %34 = phi i1 [ false, %18 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i64 0, i64* @nfs_lockd_request_sent, align 8
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* @nfs_lock_mutex, align 4
  %41 = call i32 @lck_mtx_unlock(i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %82

45:                                               ; preds = %39
  %46 = call i32 (...) @host_priv_self()
  %47 = call i64 @host_get_lockd_port(i32 %46, i64* %4)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @KERN_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @IPC_PORT_VALID(i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %51, %45
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @IPC_PORT_NULL, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %67

61:                                               ; preds = %55
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @IPC_PORT_DEAD, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  br label %67

67:                                               ; preds = %61, %60
  %68 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %60 ], [ %66, %61 ]
  %69 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %56, i8* %68)
  br label %82

70:                                               ; preds = %51
  %71 = load i64, i64* %4, align 8
  %72 = call i64 @lockd_shutdown(i64 %71)
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @KERN_SUCCESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i64, i64* %5, align 8
  %78 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %77)
  br label %79

79:                                               ; preds = %76, %70
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @ipc_port_release_send(i64 %80)
  br label %82

82:                                               ; preds = %79, %67, %44, %15
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nfsmount*, i32) #1

declare dso_local i64 @host_get_lockd_port(i32, i64*) #1

declare dso_local i32 @host_priv_self(...) #1

declare dso_local i32 @IPC_PORT_VALID(i64) #1

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i64 @lockd_shutdown(i64) #1

declare dso_local i32 @ipc_port_release_send(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
