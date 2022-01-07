; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_initiate_rem_name.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_initiate_rem_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@btm_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@BTM_WRONG_MODE = common dso_local global i32 0, align 4
@BTM_RMT_NAME_SEC = common dso_local global i64 0, align 8
@HCI_PAGE_SCAN_REP_MODE_R1 = common dso_local global i32 0, align 4
@HCI_MANDATARY_PAGE_SCAN_MODE = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_RMT_NAME_EXT = common dso_local global i64 0, align 8
@BTM_BUSY = common dso_local global i32 0, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTU_TTYPE_BTM_RMT_NAME = common dso_local global i32 0, align 4
@BTM_CLOCK_OFFSET_VALID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_initiate_rem_name(i32 %0, %struct.TYPE_7__* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 0), %struct.TYPE_8__** %12, align 8
  %14 = call i32 (...) @BTM_IsDeviceUp()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @BTM_WRONG_MODE, align 4
  store i32 %17, i32* %6, align 4
  br label %95

18:                                               ; preds = %5
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @BTM_RMT_NAME_SEC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @HCI_PAGE_SCAN_REP_MODE_R1, align 4
  %25 = load i32, i32* @HCI_MANDATARY_PAGE_SCAN_MODE, align 4
  %26 = call i64 @btsnd_hcic_rmt_name_req(i32 %23, i32 %24, i32 %25, i32 0)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %30, i32* %6, align 4
  br label %95

31:                                               ; preds = %22
  %32 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %32, i32* %6, align 4
  br label %95

33:                                               ; preds = %18
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @BTM_RMT_NAME_EXT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %93

37:                                               ; preds = %33
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @BTM_BUSY, align 4
  store i32 %43, i32* %6, align 4
  br label %95

44:                                               ; preds = %37
  %45 = load i32*, i32** %11, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @BD_ADDR_LEN, align 4
  %53 = call i32 @memcpy(i32 %50, i32 %51, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* @BTU_TTYPE_BTM_RMT_NAME, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @btu_start_timer(i32* %55, i32 %56, i32 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = icmp ne %struct.TYPE_7__* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %44
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @BTM_CLOCK_OFFSET_VALID, align 4
  %76 = or i32 %74, %75
  %77 = call i64 @btsnd_hcic_rmt_name_req(i32 %62, i32 %66, i32 %70, i32 %76)
  store i64 %77, i64* %13, align 8
  br label %83

78:                                               ; preds = %44
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @HCI_PAGE_SCAN_REP_MODE_R1, align 4
  %81 = load i32, i32* @HCI_MANDATARY_PAGE_SCAN_MODE, align 4
  %82 = call i64 @btsnd_hcic_rmt_name_req(i32 %79, i32 %80, i32 %81, i32 0)
  store i64 %82, i64* %13, align 8
  br label %83

83:                                               ; preds = %78, %61
  %84 = load i64, i64* %13, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i64, i64* @TRUE, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %90, i32* %6, align 4
  br label %95

91:                                               ; preds = %83
  %92 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %92, i32* %6, align 4
  br label %95

93:                                               ; preds = %33
  %94 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %93, %91, %86, %42, %31, %29, %16
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @BTM_IsDeviceUp(...) #1

declare dso_local i64 @btsnd_hcic_rmt_name_req(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
