; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_offset_lock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_offset_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileglob = type { i32, i32 }

@FG_OFF_LOCKED = common dso_local global i32 0, align 4
@FG_OFF_LOCKWANT = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@PSPIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"fg_offset_lock_wait\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fileglob*)* @vn_offset_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vn_offset_lock(%struct.fileglob* %0) #0 {
  %2 = alloca %struct.fileglob*, align 8
  store %struct.fileglob* %0, %struct.fileglob** %2, align 8
  %3 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %4 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %3, i32 0, i32 1
  %5 = call i32 @lck_mtx_lock_spin(i32* %4)
  br label %6

6:                                                ; preds = %13, %1
  %7 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %8 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FG_OFF_LOCKED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %6
  %14 = load i32, i32* @FG_OFF_LOCKWANT, align 4
  %15 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %16 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %20 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %19, i32 0, i32 0
  %21 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %22 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %21, i32 0, i32 1
  %23 = load i32, i32* @PVFS, align 4
  %24 = load i32, i32* @PSPIN, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @msleep(i32* %20, i32* %22, i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %6

27:                                               ; preds = %6
  %28 = load i32, i32* @FG_OFF_LOCKED, align 4
  %29 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %30 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %34 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %33, i32 0, i32 1
  %35 = call i32 @lck_mtx_unlock(i32* %34)
  ret void
}

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
