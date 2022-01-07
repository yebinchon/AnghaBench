; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_rfc.c_bta_ag_mgmt_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_rfc.c_bta_ag_mgmt_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"ag_mgmt_cback : code = %d, port_handle = %d, handle = %d\00", align 1
@PORT_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"ag_mgmt_cback ignoring handle:%d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@BTA_AG_NUM_IDX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"bta_ag_mgmt_cback: PORT_SUCCESS, ignoring handle = %d\00", align 1
@BTA_AG_RFC_OPEN_EVT = common dso_local global i64 0, align 8
@BTA_AG_RFC_CLOSE_EVT = common dso_local global i64 0, align 8
@BTA_AG_RFC_SRV_CLOSE_EVT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @bta_ag_mgmt_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_ag_mgmt_cback(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 (i8*, i64, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %14, i64 %15)
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.TYPE_7__* @bta_ag_scb_by_idx(i64 %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %8, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %110

20:                                               ; preds = %3
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @PORT_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i64, i64* %5, align 8
  %32 = call i32 (i8*, i64, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  br label %110

33:                                               ; preds = %24, %20
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @PORT_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %80

37:                                               ; preds = %33
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %48, %42
  br label %72

51:                                               ; preds = %37
  store i64 0, i64* %10, align 8
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @BTA_AG_NUM_IDX, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %57, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %65, %56
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %10, align 8
  br label %52

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71, %50
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @APPL_TRACE_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  br label %110

78:                                               ; preds = %72
  %79 = load i64, i64* @BTA_AG_RFC_OPEN_EVT, align 8
  store i64 %79, i64* %9, align 8
  br label %91

80:                                               ; preds = %33
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i64, i64* @BTA_AG_RFC_CLOSE_EVT, align 8
  store i64 %87, i64* %9, align 8
  br label %90

88:                                               ; preds = %80
  %89 = load i64, i64* @BTA_AG_RFC_SRV_CLOSE_EVT, align 8
  store i64 %89, i64* %9, align 8
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %78
  %92 = call i64 @osi_malloc(i32 24)
  %93 = inttoptr i64 %92 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %7, align 8
  %94 = icmp ne %struct.TYPE_8__* %93, null
  br i1 %94, label %95, label %109

95:                                               ; preds = %91
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i64 %96, i64* %99, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i64 %100, i64* %103, align 8
  %104 = load i64, i64* %5, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = call i32 @bta_sys_sendmsg(%struct.TYPE_8__* %107)
  br label %109

109:                                              ; preds = %95, %91
  br label %110

110:                                              ; preds = %30, %75, %109, %3
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i64, ...) #1

declare dso_local %struct.TYPE_7__* @bta_ag_scb_by_idx(i64) #1

declare dso_local i32 @APPL_TRACE_ERROR(i8*, i64) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
