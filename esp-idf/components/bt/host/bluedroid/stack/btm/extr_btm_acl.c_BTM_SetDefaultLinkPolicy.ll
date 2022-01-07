; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_BTM_SetDefaultLinkPolicy.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_BTM_SetDefaultLinkPolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"BTM_SetDefaultLinkPolicy setting:0x%04x\0A\00", align 1
@HCI_ENABLE_MASTER_SLAVE_SWITCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"BTM_SetDefaultLinkPolicy switch not supported (settings: 0x%04x)\0A\00", align 1
@HCI_ENABLE_HOLD_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"BTM_SetDefaultLinkPolicy hold not supported (settings: 0x%04x)\0A\00", align 1
@HCI_ENABLE_SNIFF_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"BTM_SetDefaultLinkPolicy sniff not supported (settings: 0x%04x)\0A\00", align 1
@HCI_ENABLE_PARK_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"BTM_SetDefaultLinkPolicy park not supported (settings: 0x%04x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Set DefaultLinkPolicy:0x%04x\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTM_SetDefaultLinkPolicy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32* (...) @BTM_ReadLocalFeatures()
  store i32* %4, i32** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @HCI_ENABLE_MASTER_SLAVE_SWITCH, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @HCI_SWITCH_SUPPORTED(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @HCI_ENABLE_MASTER_SLAVE_SWITCH, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %15, %11, %1
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @HCI_ENABLE_HOLD_MODE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @HCI_HOLD_MODE_SUPPORTED(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @HCI_ENABLE_HOLD_MODE, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %2, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %31, %27, %22
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @HCI_ENABLE_SNIFF_MODE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @HCI_SNIFF_MODE_SUPPORTED(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @HCI_ENABLE_SNIFF_MODE, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %2, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %47, %43, %38
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @HCI_ENABLE_PARK_MODE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @HCI_PARK_MODE_SUPPORTED(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @HCI_ENABLE_PARK_MODE, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %2, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %2, align 4
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %63, %59, %54
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %2, align 4
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @btm_cb, i32 0, i32 0), align 4
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @btsnd_hcic_write_def_policy_set(i32 %74)
  ret void
}

declare dso_local i32* @BTM_ReadLocalFeatures(...) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @HCI_SWITCH_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_HOLD_MODE_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_SNIFF_MODE_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_PARK_MODE_SUPPORTED(i32*) #1

declare dso_local i32 @btsnd_hcic_write_def_policy_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
