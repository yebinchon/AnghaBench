; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_set_acl_priority.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_set_acl_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@HCI_BRCM_ACL_PRIORITY_PARAM_SIZE = common dso_local global i32 0, align 4
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"L2CAP - no LCB for L2CA_SetAclPriority\00", align 1
@FALSE = common dso_local global i64 0, align 8
@L2CAP_PRIORITY_HIGH = common dso_local global i64 0, align 8
@HCI_BRCM_ACL_PRIORITY_HIGH = common dso_local global i64 0, align 8
@HCI_BRCM_ACL_PRIORITY_LOW = common dso_local global i64 0, align 8
@HCI_BRCM_SET_ACL_PRIORITY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @l2cu_set_acl_priority(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @HCI_BRCM_ACL_PRIORITY_PARAM_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %20 = call %struct.TYPE_3__* @l2cu_find_lcb_by_bd_addr(i32 %18, i32 %19)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %8, align 8
  %21 = icmp eq %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %4, align 8
  store i32 1, i32* %13, align 4
  br label %81

25:                                               ; preds = %3
  %26 = call i64 (...) @BTM_IS_BRCM_CONTROLLER()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %31, %28
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %37
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @L2CAP_PRIORITY_HIGH, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %40, %31
  store i64* %17, i64** %9, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @L2CAP_PRIORITY_HIGH, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @HCI_BRCM_ACL_PRIORITY_HIGH, align 8
  br label %54

52:                                               ; preds = %46
  %53 = load i64, i64* @HCI_BRCM_ACL_PRIORITY_LOW, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  store i64 %55, i64* %12, align 8
  %56 = load i64*, i64** %9, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @UINT16_TO_STREAM(i64* %56, i32 %59)
  %61 = load i64*, i64** %9, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @UINT8_TO_STREAM(i64* %61, i64 %62)
  %64 = load i32, i32* @HCI_BRCM_SET_ACL_PRIORITY, align 4
  %65 = load i32, i32* @HCI_BRCM_ACL_PRIORITY_PARAM_SIZE, align 4
  %66 = call i32 @BTM_VendorSpecificCommand(i32 %64, i32 %65, i64* %17, i32* null)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %54
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = call i32 (...) @l2c_link_adjust_allocation()
  br label %77

77:                                               ; preds = %72, %54
  br label %78

78:                                               ; preds = %77, %40, %37
  br label %79

79:                                               ; preds = %78, %25
  %80 = load i64, i64* @TRUE, align 8
  store i64 %80, i64* %4, align 8
  store i32 1, i32* %13, align 4
  br label %81

81:                                               ; preds = %79, %22
  %82 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_3__* @l2cu_find_lcb_by_bd_addr(i32, i32) #2

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #2

declare dso_local i64 @BTM_IS_BRCM_CONTROLLER(...) #2

declare dso_local i32 @UINT16_TO_STREAM(i64*, i32) #2

declare dso_local i32 @UINT8_TO_STREAM(i64*, i64) #2

declare dso_local i32 @BTM_VendorSpecificCommand(i32, i32, i64*, i32*) #2

declare dso_local i32 @l2c_link_adjust_allocation(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
