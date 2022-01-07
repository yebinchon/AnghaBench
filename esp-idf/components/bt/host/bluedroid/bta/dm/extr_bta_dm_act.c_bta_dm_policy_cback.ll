; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_policy_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_policy_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c" bta_dm_policy_cback cmd:%d, policy:0x%x\00", align 1
@HCI_ENABLE_SNIFF_MODE = common dso_local global i32 0, align 4
@HCI_ENABLE_PARK_MODE = common dso_local global i32 0, align 4
@bta_dm_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@HCI_ENABLE_MASTER_SLAVE_SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64)* @bta_dm_policy_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_dm_policy_cback(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 1, %13
  store i32 %14, i32* %11, align 4
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = call %struct.TYPE_4__* @bta_dm_find_peer_device(i64 %18)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %9, align 8
  br label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %94 [
    i32 128, label %25
    i32 131, label %41
    i32 129, label %70
    i32 130, label %84
  ]

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %94

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @BTM_SetLinkPolicy(i32 %37, i32* %39)
  br label %94

41:                                               ; preds = %20
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %94

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @BTM_SetLinkPolicy(i32 %54, i32* %56)
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @HCI_ENABLE_SNIFF_MODE, align 4
  %60 = load i32, i32* @HCI_ENABLE_PARK_MODE, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %45
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bta_dm_pm_active(i32 %67)
  br label %69

69:                                               ; preds = %64, %45
  br label %94

70:                                               ; preds = %20
  %71 = load i32, i32* %11, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_cb, i32 0, i32 1), align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_cb, i32 0, i32 1), align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_cb, i32 0, i32 1), align 4
  %76 = icmp eq i32 0, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32, i32* @HCI_ENABLE_MASTER_SLAVE_SWITCH, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_cb, i32 0, i32 0), align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_cb, i32 0, i32 0), align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_cb, i32 0, i32 0), align 4
  %82 = call i32 @BTM_SetDefaultLinkPolicy(i32 %81)
  br label %83

83:                                               ; preds = %77, %70
  br label %94

84:                                               ; preds = %20
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_cb, i32 0, i32 1), align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_cb, i32 0, i32 1), align 4
  %88 = load i32, i32* @HCI_ENABLE_MASTER_SLAVE_SWITCH, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_cb, i32 0, i32 0), align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_cb, i32 0, i32 0), align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_cb, i32 0, i32 0), align 4
  %93 = call i32 @BTM_SetDefaultLinkPolicy(i32 %92)
  br label %94

94:                                               ; preds = %28, %44, %20, %84, %83, %69, %29
  ret void
}

declare dso_local %struct.TYPE_4__* @bta_dm_find_peer_device(i64) #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @BTM_SetLinkPolicy(i32, i32*) #1

declare dso_local i32 @bta_dm_pm_active(i32) #1

declare dso_local i32 @BTM_SetDefaultLinkPolicy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
