; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_owner_rele.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_owner_rele.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_owner = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"nfs_open_owner_rele: no refcnt\00", align 1
@NFS_OPEN_OWNER_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"nfs_open_owner_rele: busy\00", align 1
@NFS_OPEN_OWNER_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_open_owner_rele(%struct.nfs_open_owner* %0) #0 {
  %2 = alloca %struct.nfs_open_owner*, align 8
  store %struct.nfs_open_owner* %0, %struct.nfs_open_owner** %2, align 8
  %3 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %2, align 8
  %4 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %3, i32 0, i32 2
  %5 = call i32 @lck_mtx_lock(i32* %4)
  %6 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %2, align 8
  %7 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %2, align 8
  %14 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %2, align 8
  %18 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %12
  %22 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %2, align 8
  %23 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NFS_OPEN_OWNER_BUSY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %21, %12
  %31 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %2, align 8
  %32 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %2, align 8
  %37 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NFS_OPEN_OWNER_LINK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35, %30
  %43 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %2, align 8
  %44 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %43, i32 0, i32 2
  %45 = call i32 @lck_mtx_unlock(i32* %44)
  br label %52

46:                                               ; preds = %35
  %47 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %2, align 8
  %48 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %47, i32 0, i32 2
  %49 = call i32 @lck_mtx_unlock(i32* %48)
  %50 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %2, align 8
  %51 = call i32 @nfs_open_owner_destroy(%struct.nfs_open_owner* %50)
  br label %52

52:                                               ; preds = %46, %42
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @nfs_open_owner_destroy(%struct.nfs_open_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
