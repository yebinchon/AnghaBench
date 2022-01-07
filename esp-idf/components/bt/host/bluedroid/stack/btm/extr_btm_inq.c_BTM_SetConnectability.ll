; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_SetConnectability.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_SetConnectability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i64 }
%struct.TYPE_5__ = type { i32 (...)* }

@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"BTM_SetConnectability\0A\00", align 1
@BTM_NON_CONNECTABLE = common dso_local global i64 0, align 8
@BTM_CONNECTABLE = common dso_local global i64 0, align 8
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@BTM_DEV_RESET = common dso_local global i32 0, align 4
@BTM_DEFAULT_CONN_WINDOW = common dso_local global i64 0, align 8
@BTM_DEFAULT_CONN_INTERVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [84 x i8] c"BTM_SetConnectability: mode %d [NonConn-0, Conn-1], window 0x%04x, interval 0x%04x\0A\00", align 1
@HCI_MIN_PAGESCAN_WINDOW = common dso_local global i64 0, align 8
@HCI_MAX_PAGESCAN_WINDOW = common dso_local global i64 0, align 8
@HCI_MIN_PAGESCAN_INTERVAL = common dso_local global i64 0, align 8
@HCI_MAX_PAGESCAN_INTERVAL = common dso_local global i64 0, align 8
@HCI_PAGE_SCAN_ENABLED = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_DISCOVERABLE_MASK = common dso_local global i32 0, align 4
@HCI_INQUIRY_SCAN_ENABLED = common dso_local global i32 0, align 4
@BTM_CONNECTABLE_MASK = common dso_local global i64 0, align 8
@BTM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_SetConnectability(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), %struct.TYPE_4__** %9, align 8
  %10 = call i32 (i8*, ...) @BTM_TRACE_API(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @BTM_NON_CONNECTABLE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @BTM_CONNECTABLE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %19, i32* %4, align 4
  br label %128

20:                                               ; preds = %14, %3
  %21 = call %struct.TYPE_5__* (...) @controller_get_interface()
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (...)*, i32 (...)** %22, align 8
  %24 = call i32 (...) %23()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @BTM_DEV_RESET, align 4
  store i32 %27, i32* %4, align 4
  br label %128

28:                                               ; preds = %20
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @BTM_DEFAULT_CONN_WINDOW, align 8
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* @BTM_DEFAULT_CONN_INTERVAL, align 8
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 (i8*, ...) @BTM_TRACE_API(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i64 %39, i64 %40, i64 %41)
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @BTM_CONNECTABLE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %38
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @HCI_MIN_PAGESCAN_WINDOW, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %66, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @HCI_MAX_PAGESCAN_WINDOW, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @HCI_MIN_PAGESCAN_INTERVAL, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @HCI_MAX_PAGESCAN_INTERVAL, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %58, %54, %50, %46
  %67 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %67, i32* %4, align 4
  br label %128

68:                                               ; preds = %62
  %69 = load i32, i32* @HCI_PAGE_SCAN_ENABLED, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %68, %38
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %78, %72
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @btsnd_hcic_write_pagescan_cfg(i64 %91, i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %84
  %96 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %96, i32* %4, align 4
  br label %128

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %78
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @BTM_DISCOVERABLE_MASK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32, i32* @HCI_INQUIRY_SCAN_ENABLED, align 4
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %105, %98
  %110 = load i32, i32* %8, align 4
  %111 = call i64 @btsnd_hcic_write_scan_enable(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = load i64, i64* @BTM_CONNECTABLE_MASK, align 8
  %115 = xor i64 %114, -1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = and i64 %118, %115
  store i64 %119, i64* %117, align 8
  %120 = load i64, i64* %5, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = or i64 %123, %120
  store i64 %124, i64* %122, align 8
  %125 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %125, i32* %4, align 4
  br label %128

126:                                              ; preds = %109
  %127 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %113, %95, %66, %26, %18
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @BTM_TRACE_API(i8*, ...) #1

declare dso_local %struct.TYPE_5__* @controller_get_interface(...) #1

declare dso_local i32 @btsnd_hcic_write_pagescan_cfg(i64, i64) #1

declare dso_local i64 @btsnd_hcic_write_scan_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
