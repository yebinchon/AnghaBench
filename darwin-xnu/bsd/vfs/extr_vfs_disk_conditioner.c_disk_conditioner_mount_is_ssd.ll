; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_disk_conditioner.c_disk_conditioner_mount_is_ssd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_disk_conditioner.c_disk_conditioner_mount_is_ssd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct._disk_conditioner_info_t* }
%struct._disk_conditioner_info_t = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@MNTK_SSD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disk_conditioner_mount_is_ssd(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct._disk_conditioner_info_t*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %6, align 8
  store %struct._disk_conditioner_info_t* %7, %struct._disk_conditioner_info_t** %4, align 8
  %8 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %4, align 8
  %9 = icmp ne %struct._disk_conditioner_info_t* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %4, align 8
  %12 = getelementptr inbounds %struct._disk_conditioner_info_t, %struct._disk_conditioner_info_t* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MNTK_SSD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %31

26:                                               ; preds = %10
  %27 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %4, align 8
  %28 = getelementptr inbounds %struct._disk_conditioner_info_t, %struct._disk_conditioner_info_t* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %26, %16
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
