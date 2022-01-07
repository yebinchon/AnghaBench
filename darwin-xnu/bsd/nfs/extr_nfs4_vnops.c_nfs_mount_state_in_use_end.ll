; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_mount_state_in_use_end.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_mount_state_in_use_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@NFSERR_OLD_STATEID = common dso_local global i32 0, align 4
@NFSERR_GRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"nfs_mount_state_in_use_end: error %d, initiating recovery for %s, 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"NFS mount state in use count underrun\00", align 1
@NFSSTA_RECOVER = common dso_local global i32 0, align 4
@PZERO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"nfsgrace\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_mount_state_in_use_end(%struct.nfsmount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsmount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @nfs_mount_state_error_should_restart(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %10 = call i64 @nfs_mount_gone(%struct.nfsmount* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %88

14:                                               ; preds = %2
  %15 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %16 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %15, i32 0, i32 3
  %17 = call i32 @lck_mtx_lock(i32* %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @NFSERR_OLD_STATEID, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @NFSERR_GRACE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %31 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.TYPE_2__* @vfs_statfs(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %37 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %35, i32 %38)
  %40 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @nfs_need_recover(%struct.nfsmount* %40, i32 %41)
  br label %43

43:                                               ; preds = %28, %24, %20, %14
  %44 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %45 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %50 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %50, align 8
  br label %55

53:                                               ; preds = %43
  %54 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  %56 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %57 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %62 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NFSSTA_RECOVER, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %69 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %68, i32 0, i32 1
  %70 = call i32 @wakeup(i64* %69)
  br label %71

71:                                               ; preds = %67, %60, %55
  %72 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %73 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %72, i32 0, i32 3
  %74 = call i32 @lck_mtx_unlock(i32* %73)
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @NFSERR_GRACE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %80 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %79, i32 0, i32 2
  %81 = load i64, i64* @PZERO, align 8
  %82 = sub nsw i64 %81, 1
  %83 = load i32, i32* @hz, align 4
  %84 = mul nsw i32 2, %83
  %85 = call i32 @tsleep(i32* %80, i64 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %78, %71
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %12
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @nfs_mount_state_error_should_restart(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @printf(i8*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @vfs_statfs(i32) #1

declare dso_local i32 @nfs_need_recover(%struct.nfsmount*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @tsleep(i32*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
