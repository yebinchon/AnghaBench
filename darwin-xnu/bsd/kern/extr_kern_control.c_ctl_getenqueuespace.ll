; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_getenqueuespace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_getenqueuespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_getenqueuespace(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = load i64*, i64** %7, align 8
  %11 = icmp eq i64* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %4, align 4
  br label %36

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.socket* @kcb_find_socket(i32 %15, i32 %16, i32* null)
  store %struct.socket* %17, %struct.socket** %8, align 8
  %18 = load %struct.socket*, %struct.socket** %8, align 8
  %19 = icmp eq %struct.socket* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %14
  %23 = load %struct.socket*, %struct.socket** %8, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = call i64 @sbspace(i32* %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %31

29:                                               ; preds = %22
  %30 = load i64, i64* %9, align 8
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i64 [ 0, %28 ], [ %30, %29 ]
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  %34 = load %struct.socket*, %struct.socket** %8, align 8
  %35 = call i32 @socket_unlock(%struct.socket* %34, i32 1)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %20, %12
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.socket* @kcb_find_socket(i32, i32, i32*) #1

declare dso_local i64 @sbspace(i32*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
