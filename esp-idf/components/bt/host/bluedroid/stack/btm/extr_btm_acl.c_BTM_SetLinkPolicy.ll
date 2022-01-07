; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_BTM_SetLinkPolicy.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_BTM_SetLinkPolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"BTM_SetLinkPolicy\0A\00", align 1
@HCI_DISABLE_ALL_LM_MODES = common dso_local global i32 0, align 4
@HCI_ENABLE_MASTER_SLAVE_SWITCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"BTM_SetLinkPolicy switch not supported (settings: 0x%04x)\0A\00", align 1
@HCI_ENABLE_HOLD_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"BTM_SetLinkPolicy hold not supported (settings: 0x%04x)\0A\00", align 1
@HCI_ENABLE_SNIFF_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"BTM_SetLinkPolicy sniff not supported (settings: 0x%04x)\0A\00", align 1
@HCI_ENABLE_PARK_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"BTM_SetLinkPolicy park not supported (settings: 0x%04x)\0A\00", align 1
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_UNKNOWN_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_SetLinkPolicy(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = call i32* (...) @BTM_ReadLocalFeatures()
  store i32* %8, i32** %7, align 8
  %9 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HCI_DISABLE_ALL_LM_MODES, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %91

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HCI_ENABLE_MASTER_SLAVE_SWITCH, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @HCI_SWITCH_SUPPORTED(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @HCI_ENABLE_MASTER_SLAVE_SWITCH, align 4
  %26 = xor i32 %25, -1
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %24, %20, %14
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HCI_ENABLE_HOLD_MODE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @HCI_HOLD_MODE_SUPPORTED(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @HCI_ENABLE_HOLD_MODE, align 4
  %45 = xor i32 %44, -1
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %43, %39, %33
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HCI_ENABLE_SNIFF_MODE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @HCI_SNIFF_MODE_SUPPORTED(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @HCI_ENABLE_SNIFF_MODE, align 4
  %64 = xor i32 %63, -1
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %62, %58, %52
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @HCI_ENABLE_PARK_MODE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @HCI_PARK_MODE_SUPPORTED(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @HCI_ENABLE_PARK_MODE, align 4
  %83 = xor i32 %82, -1
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %83
  store i32 %86, i32* %84, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %81, %77, %71
  br label %91

91:                                               ; preds = %90, %2
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %94 = call %struct.TYPE_3__* @btm_bda_to_acl(i32 %92, i32 %93)
  store %struct.TYPE_3__* %94, %struct.TYPE_3__** %6, align 8
  %95 = icmp ne %struct.TYPE_3__* %94, null
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @btsnd_hcic_write_policy_set(i32 %99, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* @BTM_CMD_STARTED, align 4
  br label %108

106:                                              ; preds = %96
  %107 = load i32, i32* @BTM_NO_RESOURCES, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  store i32 %109, i32* %3, align 4
  br label %112

110:                                              ; preds = %91
  %111 = load i32, i32* @BTM_UNKNOWN_ADDR, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32* @BTM_ReadLocalFeatures(...) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*) #1

declare dso_local i32 @HCI_SWITCH_SUPPORTED(i32*) #1

declare dso_local i32 @BTM_TRACE_API(i8*, i32) #1

declare dso_local i32 @HCI_HOLD_MODE_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_SNIFF_MODE_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_PARK_MODE_SUPPORTED(i32*) #1

declare dso_local %struct.TYPE_3__* @btm_bda_to_acl(i32, i32) #1

declare dso_local i64 @btsnd_hcic_write_policy_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
