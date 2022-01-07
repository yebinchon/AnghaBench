; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_removeit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_removeit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_sillyrename = type { i32, i32, i32, i32 }
%struct.nfsmount = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32*, i32)* }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_removeit(%struct.nfs_sillyrename* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_sillyrename*, align 8
  %4 = alloca %struct.nfsmount*, align 8
  store %struct.nfs_sillyrename* %0, %struct.nfs_sillyrename** %3, align 8
  %5 = load %struct.nfs_sillyrename*, %struct.nfs_sillyrename** %3, align 8
  %6 = getelementptr inbounds %struct.nfs_sillyrename, %struct.nfs_sillyrename* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.nfsmount* @NFSTONMP(i32 %7)
  store %struct.nfsmount* %8, %struct.nfsmount** %4, align 8
  %9 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %10 = call i64 @nfs_mount_gone(%struct.nfsmount* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %16 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32, i32*, i32)** %18, align 8
  %20 = load %struct.nfs_sillyrename*, %struct.nfs_sillyrename** %3, align 8
  %21 = getelementptr inbounds %struct.nfs_sillyrename, %struct.nfs_sillyrename* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nfs_sillyrename*, %struct.nfs_sillyrename** %3, align 8
  %24 = getelementptr inbounds %struct.nfs_sillyrename, %struct.nfs_sillyrename* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nfs_sillyrename*, %struct.nfs_sillyrename** %3, align 8
  %27 = getelementptr inbounds %struct.nfs_sillyrename, %struct.nfs_sillyrename* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nfs_sillyrename*, %struct.nfs_sillyrename** %3, align 8
  %30 = getelementptr inbounds %struct.nfs_sillyrename, %struct.nfs_sillyrename* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %19(i32 %22, i32 %25, i32 %28, i32* null, i32 %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %14, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.nfsmount* @NFSTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
