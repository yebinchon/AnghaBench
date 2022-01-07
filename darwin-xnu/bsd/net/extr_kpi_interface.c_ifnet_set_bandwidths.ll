; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_bandwidths.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_bandwidths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.if_bandwidths = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_set_bandwidths(%struct.ifnet* %0, %struct.if_bandwidths* %1, %struct.if_bandwidths* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.if_bandwidths*, align 8
  %7 = alloca %struct.if_bandwidths*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.if_bandwidths* %1, %struct.if_bandwidths** %6, align 8
  store %struct.if_bandwidths* %2, %struct.if_bandwidths** %7, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %9 = icmp eq %struct.ifnet* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %4, align 4
  br label %28

12:                                               ; preds = %3
  %13 = load %struct.if_bandwidths*, %struct.if_bandwidths** %7, align 8
  %14 = icmp ne %struct.if_bandwidths* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %17 = load %struct.if_bandwidths*, %struct.if_bandwidths** %7, align 8
  %18 = call i32 @ifnet_set_input_bandwidths(%struct.ifnet* %16, %struct.if_bandwidths* %17)
  br label %19

19:                                               ; preds = %15, %12
  %20 = load %struct.if_bandwidths*, %struct.if_bandwidths** %6, align 8
  %21 = icmp ne %struct.if_bandwidths* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %24 = load %struct.if_bandwidths*, %struct.if_bandwidths** %6, align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @ifnet_set_output_bandwidths(%struct.ifnet* %23, %struct.if_bandwidths* %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %19
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %10
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @ifnet_set_input_bandwidths(%struct.ifnet*, %struct.if_bandwidths*) #1

declare dso_local i32 @ifnet_set_output_bandwidths(%struct.ifnet*, %struct.if_bandwidths*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
