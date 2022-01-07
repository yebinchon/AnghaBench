; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_time.c_itimerfix.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_time.c_itimerfix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @itimerfix(%struct.timeval* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval*, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  %4 = load %struct.timeval*, %struct.timeval** %3, align 8
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = load %struct.timeval*, %struct.timeval** %3, align 8
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 100000000
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = load %struct.timeval*, %struct.timeval** %3, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.timeval*, %struct.timeval** %3, align 8
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 1000000
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %13, %8, %1
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
