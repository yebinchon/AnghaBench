; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_subs.c_nfs_need_recover.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_subs.c_nfs_need_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32 }

@NFSSTA_RECOVER = common dso_local global i32 0, align 4
@NFSERR_ADMIN_REVOKED = common dso_local global i32 0, align 4
@NFSERR_EXPIRED = common dso_local global i32 0, align 4
@NFSERR_STALE_CLIENTID = common dso_local global i32 0, align 4
@NFSSTA_RECOVER_EXPIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_need_recover(%struct.nfsmount* %0, i32 %1) #0 {
  %3 = alloca %struct.nfsmount*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %7 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NFSSTA_RECOVER, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @NFSSTA_RECOVER, align 4
  %15 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %16 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @NFSERR_ADMIN_REVOKED, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @NFSERR_EXPIRED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NFSERR_STALE_CLIENTID, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26, %22, %2
  %31 = load i32, i32* @NFSSTA_RECOVER_EXPIRED, align 4
  %32 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %33 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %26
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %41 = call i32 @nfs_mount_sock_thread_wake(%struct.nfsmount* %40)
  br label %42

42:                                               ; preds = %39, %36
  ret void
}

declare dso_local i32 @nfs_mount_sock_thread_wake(%struct.nfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
