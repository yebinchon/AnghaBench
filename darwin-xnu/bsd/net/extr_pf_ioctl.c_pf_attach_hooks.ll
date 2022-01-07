; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_attach_hooks.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_attach_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@ifnet_addrs = common dso_local global i32* null, align 8
@if_index = common dso_local global i32 0, align 4
@ifindex2ifnet = common dso_local global %struct.ifnet** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pf_attach_hooks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_attach_hooks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ifnet*, align 8
  %3 = call i32 (...) @ifnet_head_lock_shared()
  %4 = load i32*, i32** @ifnet_addrs, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %27

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %23, %6
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @if_index, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load %struct.ifnet**, %struct.ifnet*** @ifindex2ifnet, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %12, i64 %14
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %2, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %18 = icmp ne %struct.ifnet* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %21 = call i32 @pfi_attach_ifnet(%struct.ifnet* %20)
  br label %22

22:                                               ; preds = %19, %11
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %7

26:                                               ; preds = %7
  br label %27

27:                                               ; preds = %26, %0
  %28 = call i32 (...) @ifnet_head_done()
  ret void
}

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local i32 @pfi_attach_ifnet(%struct.ifnet*) #1

declare dso_local i32 @ifnet_head_done(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
