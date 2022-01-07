; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_name_cache_purge.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_name_cache_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.componentname = type { i32 }
%struct.nfsmount = type { i64 }

@NFS_VER2 = common dso_local global i64 0, align 8
@RDIRPLUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_name_cache_purge(i32 %0, i32 %1, %struct.componentname* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfsmount*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.componentname* %2, %struct.componentname** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.nfsmount* @NFSTONMP(i32 %10)
  store %struct.nfsmount* %11, %struct.nfsmount** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @NFSTOV(i32 %12)
  %14 = call i32 @cache_purge(i32 %13)
  %15 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %16 = icmp ne %struct.nfsmount* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %4
  %18 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %19 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NFS_VER2, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %25 = load i32, i32* @RDIRPLUS, align 4
  %26 = call i64 @NMFLAG(%struct.nfsmount* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.componentname*, %struct.componentname** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @nfs_dir_buf_cache_lookup(i32 %29, i32* null, %struct.componentname* %30, i32 %31, i32 1)
  br label %33

33:                                               ; preds = %28, %23, %17, %4
  ret void
}

declare dso_local %struct.nfsmount* @NFSTONMP(i32) #1

declare dso_local i32 @cache_purge(i32) #1

declare dso_local i32 @NFSTOV(i32) #1

declare dso_local i64 @NMFLAG(%struct.nfsmount*, i32) #1

declare dso_local i32 @nfs_dir_buf_cache_lookup(i32, i32*, %struct.componentname*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
