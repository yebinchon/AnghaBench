; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_asyncio_resend.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_asyncio_resend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsreq = type { i32, %struct.nfsmount* }
%struct.nfsmount = type { i32, i32 }

@R_RESENDQ = common dso_local global i32 0, align 4
@r_rchain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_asyncio_resend(%struct.nfsreq* %0) #0 {
  %2 = alloca %struct.nfsreq*, align 8
  %3 = alloca %struct.nfsmount*, align 8
  store %struct.nfsreq* %0, %struct.nfsreq** %2, align 8
  %4 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %5 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %4, i32 0, i32 1
  %6 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  store %struct.nfsmount* %6, %struct.nfsmount** %3, align 8
  %7 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %8 = call i64 @nfs_mount_gone(%struct.nfsmount* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %42

11:                                               ; preds = %1
  %12 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %13 = call i32 @nfs_gss_clnt_rpcdone(%struct.nfsreq* %12)
  %14 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %15 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %14, i32 0, i32 0
  %16 = call i32 @lck_mtx_lock(i32* %15)
  %17 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %18 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @R_RESENDQ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %11
  %24 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %25 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %24, i32 0, i32 1
  %26 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %27 = load i32, i32* @r_rchain, align 4
  %28 = call i32 @TAILQ_INSERT_TAIL(i32* %25, %struct.nfsreq* %26, i32 %27)
  %29 = load i32, i32* @R_RESENDQ, align 4
  %30 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %31 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.nfsreq*, %struct.nfsreq** %2, align 8
  %35 = call i32 @nfs_request_ref(%struct.nfsreq* %34, i32 1)
  br label %36

36:                                               ; preds = %23, %11
  %37 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %38 = call i32 @nfs_mount_sock_thread_wake(%struct.nfsmount* %37)
  %39 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %40 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %39, i32 0, i32 0
  %41 = call i32 @lck_mtx_unlock(i32* %40)
  br label %42

42:                                               ; preds = %36, %10
  ret void
}

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs_gss_clnt_rpcdone(%struct.nfsreq*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.nfsreq*, i32) #1

declare dso_local i32 @nfs_request_ref(%struct.nfsreq*, i32) #1

declare dso_local i32 @nfs_mount_sock_thread_wake(%struct.nfsmount*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
