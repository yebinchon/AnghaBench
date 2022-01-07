; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_disk_conditioner.c_disk_conditioner_unmount.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_disk_conditioner.c_disk_conditioner_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct._disk_conditioner_info_t* }
%struct._disk_conditioner_info_t = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disk_conditioner_unmount(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct._disk_conditioner_info_t*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %5, align 8
  store %struct._disk_conditioner_info_t* %6, %struct._disk_conditioner_info_t** %3, align 8
  %7 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %3, align 8
  %8 = icmp ne %struct._disk_conditioner_info_t* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %26

10:                                               ; preds = %1
  %11 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %3, align 8
  %12 = getelementptr inbounds %struct._disk_conditioner_info_t, %struct._disk_conditioner_info_t* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %3, align 8
  %19 = getelementptr inbounds %struct._disk_conditioner_info_t, %struct._disk_conditioner_info_t* %18, i32 0, i32 0
  %20 = call i32 @disk_conditioner_restore_mount_fields(%struct.TYPE_6__* %17, i32* %19)
  br label %21

21:                                               ; preds = %16, %10
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store %struct._disk_conditioner_info_t* null, %struct._disk_conditioner_info_t** %23, align 8
  %24 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %3, align 8
  %25 = call i32 @kfree(%struct._disk_conditioner_info_t* %24, i32 16)
  br label %26

26:                                               ; preds = %21, %9
  ret void
}

declare dso_local i32 @disk_conditioner_restore_mount_fields(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @kfree(%struct._disk_conditioner_info_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
