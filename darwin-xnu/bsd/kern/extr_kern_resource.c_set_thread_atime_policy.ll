; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_set_thread_atime_policy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_set_thread_atime_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uthread = type { i32 }

@IOPOL_ATIME_UPDATES_OFF = common dso_local global i32 0, align 4
@UT_ATIME_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uthread*, i32)* @set_thread_atime_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_thread_atime_policy(%struct.uthread* %0, i32 %1) #0 {
  %3 = alloca %struct.uthread*, align 8
  %4 = alloca i32, align 4
  store %struct.uthread* %0, %struct.uthread** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @IOPOL_ATIME_UPDATES_OFF, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @UT_ATIME_UPDATE, align 4
  %10 = load %struct.uthread*, %struct.uthread** %3, align 8
  %11 = getelementptr inbounds %struct.uthread, %struct.uthread* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @UT_ATIME_UPDATE, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.uthread*, %struct.uthread** %3, align 8
  %18 = getelementptr inbounds %struct.uthread, %struct.uthread* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %14, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
