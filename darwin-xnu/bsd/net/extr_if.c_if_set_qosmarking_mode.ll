; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_set_qosmarking_mode.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_set_qosmarking_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }

@IFEF_QOSMARKING_CAPABLE = common dso_local global i32 0, align 4
@net_qos_policy_capable_enabled = common dso_local global i32 0, align 4
@IFEF_QOSMARKING_ENABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KEV_DL_SUBCLASS = common dso_local global i32 0, align 4
@KEV_DL_QOS_MODE_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @if_set_qosmarking_mode(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %37 [
    i32 128, label %11
    i32 129, label %20
  ]

11:                                               ; preds = %2
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  store i32 128, i32* %13, align 4
  %14 = load i32, i32* @IFEF_QOSMARKING_CAPABLE, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %39

20:                                               ; preds = %2
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  store i32 129, i32* %22, align 4
  %23 = load i32, i32* @IFEF_QOSMARKING_CAPABLE, align 4
  %24 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @net_qos_policy_capable_enabled, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load i32, i32* @IFEF_QOSMARKING_ENABLED, align 4
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %20
  br label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %36, %11
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %50 = load i32, i32* @KEV_DL_SUBCLASS, align 4
  %51 = load i32, i32* @KEV_DL_QOS_MODE_CHANGED, align 4
  %52 = call i32 @dlil_post_msg(%struct.ifnet* %49, i32 %50, i32 %51, i32* null, i32 4)
  br label %53

53:                                               ; preds = %48, %42, %39
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @dlil_post_msg(%struct.ifnet*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
