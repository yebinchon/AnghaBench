; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_offset_unlock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_offset_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileglob = type { i32, i32 }

@FG_OFF_LOCKWANT = common dso_local global i32 0, align 4
@FG_OFF_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fileglob*)* @vn_offset_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vn_offset_unlock(%struct.fileglob* %0) #0 {
  %2 = alloca %struct.fileglob*, align 8
  %3 = alloca i32, align 4
  store %struct.fileglob* %0, %struct.fileglob** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %5 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %4, i32 0, i32 1
  %6 = call i32 @lck_mtx_lock_spin(i32* %5)
  %7 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %8 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FG_OFF_LOCKWANT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = load i32, i32* @FG_OFF_LOCKED, align 4
  %16 = load i32, i32* @FG_OFF_LOCKWANT, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %20 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %24 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %23, i32 0, i32 1
  %25 = call i32 @lck_mtx_unlock(i32* %24)
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %14
  %29 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %30 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %29, i32 0, i32 0
  %31 = call i32 @wakeup(i32* %30)
  br label %32

32:                                               ; preds = %28, %14
  ret void
}

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
