; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_fsync_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_fsync_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, i8*)* @fs_dev_fsync_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_dev_fsync_r(%struct._reent* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._reent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  store %struct._reent* %0, %struct._reent** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %6, align 8
  %9 = load %struct._reent*, %struct._reent** %4, align 8
  %10 = icmp ne %struct._reent* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %32

12:                                               ; preds = %2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @EINVAL, align 4
  %17 = load %struct._reent*, %struct._reent** %4, align 8
  %18 = getelementptr inbounds %struct._reent, %struct._reent* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  store i32 -1, i32* %3, align 4
  br label %32

19:                                               ; preds = %12
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENODEV, align 4
  %26 = load %struct._reent*, %struct._reent** %4, align 8
  %27 = getelementptr inbounds %struct._reent, %struct._reent* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  store i32 -1, i32* %3, align 4
  br label %32

28:                                               ; preds = %19
  %29 = load i32, i32* @ENOTSUP, align 4
  %30 = load %struct._reent*, %struct._reent** %4, align 8
  %31 = getelementptr inbounds %struct._reent, %struct._reent* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 -1, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %24, %15, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
