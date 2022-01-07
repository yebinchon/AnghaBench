; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_main.c_bta_gattc_hdl_event.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_main.c_bta_gattc_hdl_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@bta_gattc_cb = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"bta_gattc_hdl_event: Event [%s]\0A\00", align 1
@BTA_GATTC_INT_CONN_EVT = common dso_local global i32 0, align 4
@BTA_GATTC_INT_DISCONN_EVT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Ignore unknown conn ID: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bta_gattc_hdl_event(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  store i32* @bta_gattc_cb, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load i32, i32* @TRUE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @gattc_evt_code(i32 %10)
  %12 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %84 [
    i32 134, label %16
    i32 130, label %19
    i32 128, label %24
    i32 135, label %29
    i32 132, label %39
    i32 136, label %44
    i32 131, label %49
    i32 139, label %54
    i32 137, label %59
    i32 138, label %64
    i32 133, label %69
    i32 140, label %74
    i32 129, label %79
  ]

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @bta_gattc_disable(i32* %17)
  br label %155

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %22 = bitcast %struct.TYPE_25__* %21 to %struct.TYPE_24__*
  %23 = call i32 @bta_gattc_register(i32* %20, %struct.TYPE_24__* %22)
  br label %155

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %27 = bitcast %struct.TYPE_25__* %26 to %struct.TYPE_24__*
  %28 = call i32 @bta_gattc_start_if(i32* %25, %struct.TYPE_24__* %27)
  br label %155

29:                                               ; preds = %1
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %31 = bitcast %struct.TYPE_25__* %30 to %struct.TYPE_24__*
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @bta_gattc_cl_get_regcb(i32 %34)
  store i32* %35, i32** %5, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @bta_gattc_deregister(i32* %36, i32* %37)
  br label %155

39:                                               ; preds = %1
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %42 = bitcast %struct.TYPE_25__* %41 to %struct.TYPE_24__*
  %43 = call i32 @bta_gattc_process_api_open(i32* %40, %struct.TYPE_24__* %42)
  br label %155

44:                                               ; preds = %1
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %47 = bitcast %struct.TYPE_25__* %46 to %struct.TYPE_24__*
  %48 = call i32 @bta_gattc_process_api_open_cancel(i32* %45, %struct.TYPE_24__* %47)
  br label %155

49:                                               ; preds = %1
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %52 = bitcast %struct.TYPE_25__* %51 to %struct.TYPE_24__*
  %53 = call i32 @bta_gattc_process_api_refresh(i32* %50, %struct.TYPE_24__* %52)
  br label %155

54:                                               ; preds = %1
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %57 = bitcast %struct.TYPE_25__* %56 to %struct.TYPE_24__*
  %58 = call i32 @bta_gattc_process_api_cache_assoc(i32* %55, %struct.TYPE_24__* %57)
  br label %155

59:                                               ; preds = %1
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %62 = bitcast %struct.TYPE_25__* %61 to %struct.TYPE_24__*
  %63 = call i32 @bta_gattc_process_api_cache_get_addr_list(i32* %60, %struct.TYPE_24__* %62)
  br label %155

64:                                               ; preds = %1
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %67 = bitcast %struct.TYPE_25__* %66 to %struct.TYPE_24__*
  %68 = call i32 @bta_gattc_process_api_cache_clean(i32* %65, %struct.TYPE_24__* %67)
  br label %155

69:                                               ; preds = %1
  %70 = load i32*, i32** %3, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %72 = bitcast %struct.TYPE_25__* %71 to %struct.TYPE_24__*
  %73 = call i32 @bta_gattc_listen(i32* %70, %struct.TYPE_24__* %72)
  br label %155

74:                                               ; preds = %1
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %77 = bitcast %struct.TYPE_25__* %76 to %struct.TYPE_24__*
  %78 = call i32 @bta_gattc_broadcast(i32* %75, %struct.TYPE_24__* %77)
  br label %155

79:                                               ; preds = %1
  %80 = load i32*, i32** %3, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %82 = bitcast %struct.TYPE_25__* %81 to %struct.TYPE_24__*
  %83 = call i32 @bta_gattc_process_enc_cmpl(i32* %80, %struct.TYPE_24__* %82)
  br label %155

84:                                               ; preds = %1
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @BTA_GATTC_INT_CONN_EVT, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %84
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %92 = bitcast %struct.TYPE_25__* %91 to %struct.TYPE_24__*
  %93 = call i32* @bta_gattc_find_int_conn_clcb(%struct.TYPE_24__* %92)
  store i32* %93, i32** %4, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %95 = bitcast %struct.TYPE_25__* %94 to %struct.TYPE_24__*
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32* @bta_gattc_cl_get_regcb(i32 %98)
  store i32* %99, i32** %5, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %90
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %105 = bitcast %struct.TYPE_25__* %104 to %struct.TYPE_24__*
  %106 = call i32 @bta_gattc_conncback(i32* %103, %struct.TYPE_24__* %105)
  br label %107

107:                                              ; preds = %102, %90
  br label %138

108:                                              ; preds = %84
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @BTA_GATTC_INT_DISCONN_EVT, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %108
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %116 = bitcast %struct.TYPE_25__* %115 to %struct.TYPE_24__*
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32* @bta_gattc_cl_get_regcb(i32 %119)
  store i32* %120, i32** %5, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %114
  %124 = load i32*, i32** %5, align 8
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %126 = bitcast %struct.TYPE_25__* %125 to %struct.TYPE_24__*
  %127 = call i32 @bta_gattc_disconncback(i32* %124, %struct.TYPE_24__* %126)
  br label %128

128:                                              ; preds = %123, %114
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %130 = bitcast %struct.TYPE_25__* %129 to %struct.TYPE_24__*
  %131 = call i32* @bta_gattc_find_int_disconn_clcb(%struct.TYPE_24__* %130)
  store i32* %131, i32** %4, align 8
  br label %137

132:                                              ; preds = %108
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32* @bta_gattc_find_clcb_by_conn_id(i32 %135)
  store i32* %136, i32** %4, align 8
  br label %137

137:                                              ; preds = %132, %128
  br label %138

138:                                              ; preds = %137, %107
  %139 = load i32*, i32** %4, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i32*, i32** %4, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %147 = bitcast %struct.TYPE_25__* %146 to %struct.TYPE_24__*
  %148 = call i32 @bta_gattc_sm_execute(i32* %142, i32 %145, %struct.TYPE_24__* %147)
  store i32 %148, i32* %6, align 4
  br label %154

149:                                              ; preds = %138
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %149, %141
  br label %155

155:                                              ; preds = %154, %79, %74, %69, %64, %59, %54, %49, %44, %39, %29, %24, %19, %16
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @gattc_evt_code(i32) #1

declare dso_local i32 @bta_gattc_disable(i32*) #1

declare dso_local i32 @bta_gattc_register(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @bta_gattc_start_if(i32*, %struct.TYPE_24__*) #1

declare dso_local i32* @bta_gattc_cl_get_regcb(i32) #1

declare dso_local i32 @bta_gattc_deregister(i32*, i32*) #1

declare dso_local i32 @bta_gattc_process_api_open(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @bta_gattc_process_api_open_cancel(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @bta_gattc_process_api_refresh(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @bta_gattc_process_api_cache_assoc(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @bta_gattc_process_api_cache_get_addr_list(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @bta_gattc_process_api_cache_clean(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @bta_gattc_listen(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @bta_gattc_broadcast(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @bta_gattc_process_enc_cmpl(i32*, %struct.TYPE_24__*) #1

declare dso_local i32* @bta_gattc_find_int_conn_clcb(%struct.TYPE_24__*) #1

declare dso_local i32 @bta_gattc_conncback(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @bta_gattc_disconncback(i32*, %struct.TYPE_24__*) #1

declare dso_local i32* @bta_gattc_find_int_disconn_clcb(%struct.TYPE_24__*) #1

declare dso_local i32* @bta_gattc_find_clcb_by_conn_id(i32) #1

declare dso_local i32 @bta_gattc_sm_execute(i32*, i32, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
