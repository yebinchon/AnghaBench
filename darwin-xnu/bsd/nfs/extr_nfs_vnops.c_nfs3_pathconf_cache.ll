; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_pathconf_cache.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_pathconf_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.nfs_fsattr = type { i32, i32, i32 }

@NFS_FSFLAG_NO_TRUNC = common dso_local global i32 0, align 4
@NFS_FSFLAG_CHOWN_RESTRICTED = common dso_local global i32 0, align 4
@NFS_FSFLAG_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@NFS_FSFLAG_CASE_PRESERVING = common dso_local global i32 0, align 4
@NFS_FATTR_MAXLINK = common dso_local global i32 0, align 4
@NFS_FATTR_MAXNAME = common dso_local global i32 0, align 4
@NFS_FATTR_NO_TRUNC = common dso_local global i32 0, align 4
@NFS_FATTR_CHOWN_RESTRICTED = common dso_local global i32 0, align 4
@NFS_FATTR_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@NFS_FATTR_CASE_PRESERVING = common dso_local global i32 0, align 4
@NFSSTA_GOTPATHCONF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs3_pathconf_cache(%struct.nfsmount* %0, %struct.nfs_fsattr* %1) #0 {
  %3 = alloca %struct.nfsmount*, align 8
  %4 = alloca %struct.nfs_fsattr*, align 8
  store %struct.nfsmount* %0, %struct.nfsmount** %3, align 8
  store %struct.nfs_fsattr* %1, %struct.nfs_fsattr** %4, align 8
  %5 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %4, align 8
  %6 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %9 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  store i32 %7, i32* %10, align 4
  %11 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %4, align 8
  %12 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %15 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @NFS_FSFLAG_NO_TRUNC, align 4
  %18 = load i32, i32* @NFS_FSFLAG_CHOWN_RESTRICTED, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @NFS_FSFLAG_CASE_INSENSITIVE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @NFS_FSFLAG_CASE_PRESERVING, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %26 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %4, align 8
  %31 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NFS_FSFLAG_NO_TRUNC, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %36 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %4, align 8
  %41 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NFS_FSFLAG_CHOWN_RESTRICTED, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %46 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 4
  %50 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %4, align 8
  %51 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NFS_FSFLAG_CASE_INSENSITIVE, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %56 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  %60 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %4, align 8
  %61 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NFS_FSFLAG_CASE_PRESERVING, align 4
  %64 = and i32 %62, %63
  %65 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %66 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %71 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NFS_FATTR_MAXLINK, align 4
  %75 = call i32 @NFS_BITMAP_SET(i32 %73, i32 %74)
  %76 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %77 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @NFS_FATTR_MAXNAME, align 4
  %81 = call i32 @NFS_BITMAP_SET(i32 %79, i32 %80)
  %82 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %83 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NFS_FATTR_NO_TRUNC, align 4
  %87 = call i32 @NFS_BITMAP_SET(i32 %85, i32 %86)
  %88 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %89 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NFS_FATTR_CHOWN_RESTRICTED, align 4
  %93 = call i32 @NFS_BITMAP_SET(i32 %91, i32 %92)
  %94 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %95 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @NFS_FATTR_CASE_INSENSITIVE, align 4
  %99 = call i32 @NFS_BITMAP_SET(i32 %97, i32 %98)
  %100 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %101 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @NFS_FATTR_CASE_PRESERVING, align 4
  %105 = call i32 @NFS_BITMAP_SET(i32 %103, i32 %104)
  %106 = load i32, i32* @NFSSTA_GOTPATHCONF, align 4
  %107 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %108 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  ret void
}

declare dso_local i32 @NFS_BITMAP_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
