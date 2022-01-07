; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vfs_event_signal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vfs_event_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }

@VQ_DEAD = common dso_local global i64 0, align 8
@VQ_NOTRESP = common dso_local global i64 0, align 8
@MNT_LNOTRESP = common dso_local global i32 0, align 4
@fs_klist_lock = common dso_local global i32 0, align 4
@fs_klist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_event_signal(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mount*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @VQ_DEAD, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @VQ_NOTRESP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %11, %3
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.mount* @vfs_getvfs(i32* %16)
  store %struct.mount* %17, %struct.mount** %7, align 8
  %18 = load %struct.mount*, %struct.mount** %7, align 8
  %19 = icmp ne %struct.mount* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = load %struct.mount*, %struct.mount** %7, align 8
  %22 = call i32 @mount_lock_spin(%struct.mount* %21)
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* @MNT_LNOTRESP, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.mount*, %struct.mount** %7, align 8
  %29 = getelementptr inbounds %struct.mount, %struct.mount* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %38

32:                                               ; preds = %20
  %33 = load i32, i32* @MNT_LNOTRESP, align 4
  %34 = load %struct.mount*, %struct.mount** %7, align 8
  %35 = getelementptr inbounds %struct.mount, %struct.mount* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %25
  %39 = load %struct.mount*, %struct.mount** %7, align 8
  %40 = call i32 @mount_unlock(%struct.mount* %39)
  br label %41

41:                                               ; preds = %38, %15
  br label %42

42:                                               ; preds = %41, %11
  %43 = load i32, i32* @fs_klist_lock, align 4
  %44 = call i32 @lck_mtx_lock(i32 %43)
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @KNOTE(i32* @fs_klist, i64 %45)
  %47 = load i32, i32* @fs_klist_lock, align 4
  %48 = call i32 @lck_mtx_unlock(i32 %47)
  ret void
}

declare dso_local %struct.mount* @vfs_getvfs(i32*) #1

declare dso_local i32 @mount_lock_spin(%struct.mount*) #1

declare dso_local i32 @mount_unlock(%struct.mount*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @KNOTE(i32*, i64) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
