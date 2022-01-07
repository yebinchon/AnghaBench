; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_file_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_file_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@nof_oolink = common dso_local global i32 0, align 4
@nfs_open_grp = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_open_file_destroy(%struct.nfs_open_file* %0) #0 {
  %2 = alloca %struct.nfs_open_file*, align 8
  store %struct.nfs_open_file* %0, %struct.nfs_open_file** %2, align 8
  %3 = load %struct.nfs_open_file*, %struct.nfs_open_file** %2, align 8
  %4 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @lck_mtx_lock(i32* %6)
  %8 = load %struct.nfs_open_file*, %struct.nfs_open_file** %2, align 8
  %9 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.nfs_open_file*, %struct.nfs_open_file** %2, align 8
  %13 = load i32, i32* @nof_oolink, align 4
  %14 = call i32 @TAILQ_REMOVE(i32* %11, %struct.nfs_open_file* %12, i32 %13)
  %15 = load %struct.nfs_open_file*, %struct.nfs_open_file** %2, align 8
  %16 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @lck_mtx_unlock(i32* %18)
  %20 = load %struct.nfs_open_file*, %struct.nfs_open_file** %2, align 8
  %21 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @nfs_open_owner_rele(%struct.TYPE_2__* %22)
  %24 = load %struct.nfs_open_file*, %struct.nfs_open_file** %2, align 8
  %25 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %24, i32 0, i32 0
  %26 = load i32, i32* @nfs_open_grp, align 4
  %27 = call i32 @lck_mtx_destroy(i32* %25, i32 %26)
  %28 = load %struct.nfs_open_file*, %struct.nfs_open_file** %2, align 8
  %29 = load i32, i32* @M_TEMP, align 4
  %30 = call i32 @FREE(%struct.nfs_open_file* %28, i32 %29)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nfs_open_file*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @nfs_open_owner_rele(%struct.TYPE_2__*) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

declare dso_local i32 @FREE(%struct.nfs_open_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
