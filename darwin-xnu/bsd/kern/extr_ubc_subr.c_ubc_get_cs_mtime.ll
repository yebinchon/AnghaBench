; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_get_cs_mtime.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_get_cs_mtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.ubc_info* }
%struct.ubc_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timespec = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubc_get_cs_mtime(%struct.vnode* %0, %struct.timespec* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.ubc_info*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %6 = load %struct.vnode*, %struct.vnode** %3, align 8
  %7 = call i32 @UBCINFOEXISTS(%struct.vnode* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.timespec*, %struct.timespec** %4, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.timespec*, %struct.timespec** %4, align 8
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.vnode*, %struct.vnode** %3, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 0
  %17 = load %struct.ubc_info*, %struct.ubc_info** %16, align 8
  store %struct.ubc_info* %17, %struct.ubc_info** %5, align 8
  %18 = load %struct.ubc_info*, %struct.ubc_info** %5, align 8
  %19 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.timespec*, %struct.timespec** %4, align 8
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ubc_info*, %struct.ubc_info** %5, align 8
  %25 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.timespec*, %struct.timespec** %4, align 8
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %14, %9
  ret void
}

declare dso_local i32 @UBCINFOEXISTS(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
