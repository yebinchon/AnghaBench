; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_algorithms.c_compressor_preselect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_algorithms.c_compressor_preselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@vmcstate = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@vmctune = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CSKIPLZ4 = common dso_local global i32 0, align 4
@CPRESELWK = common dso_local global i32 0, align 4
@CPRESELLZ4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @compressor_preselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compressor_preselect() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmcstate, i32 0, i32 0), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vmctune, i32 0, i32 0), align 8
  %4 = icmp sge i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmcstate, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmcstate, i32 0, i32 1), align 8
  br label %6

6:                                                ; preds = %5, %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmcstate, i32 0, i32 1), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vmctune, i32 0, i32 1), align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmcstate, i32 0, i32 0), align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmcstate, i32 0, i32 0), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmcstate, i32 0, i32 5), align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmcstate, i32 0, i32 5), align 4
  %15 = load i32, i32* @CSKIPLZ4, align 4
  store i32 %15, i32* %1, align 4
  br label %34

16:                                               ; preds = %6
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmcstate, i32 0, i32 2), align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vmctune, i32 0, i32 2), align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmcstate, i32 0, i32 2), align 8
  %21 = load i32, i32* @CPRESELWK, align 4
  store i32 %21, i32* %1, align 4
  br label %34

22:                                               ; preds = %16
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmcstate, i32 0, i32 3), align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vmctune, i32 0, i32 3), align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmcstate, i32 0, i32 2), align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmcstate, i32 0, i32 2), align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmcstate, i32 0, i32 4), align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmcstate, i32 0, i32 4), align 8
  %31 = load i32, i32* @CPRESELLZ4, align 4
  store i32 %31, i32* %1, align 4
  br label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @CPRESELWK, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %32, %26, %20, %10
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
