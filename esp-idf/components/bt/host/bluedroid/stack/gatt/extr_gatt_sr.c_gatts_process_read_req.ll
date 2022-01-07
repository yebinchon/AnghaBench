; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatts_process_read_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatts_process_read_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"gatts_process_find_info failed. no resources.\0A\00", align 1
@GATT_NO_RESOURCES = common dso_local global i64 0, align 8
@GATT_REQ_READ_BLOB = common dso_local global i64 0, align 8
@GATT_SUCCESS = common dso_local global i64 0, align 8
@GATT_PENDING = common dso_local global i64 0, align 8
@GATT_STACK_RSP = common dso_local global i64 0, align 8
@GATT_BUSY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*, i64, i32, i32, i64*)* @gatts_process_read_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gatts_process_read_req(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i64 %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 4, %24
  %26 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %25, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %13, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %15, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @UNUSED(i32 %30)
  %32 = load i32, i32* %13, align 4
  %33 = call i64 @osi_calloc(i32 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %15, align 8
  %35 = icmp eq %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %6
  %37 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* @GATT_NO_RESOURCES, align 8
  store i64 %38, i64* %14, align 8
  br label %88

39:                                               ; preds = %6
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @GATT_REQ_READ_BLOB, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %19, align 4
  %45 = load i64*, i64** %12, align 8
  %46 = call i32 @STREAM_TO_UINT16(i32 %44, i64* %45)
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i64 1
  %50 = bitcast %struct.TYPE_14__* %49 to i64*
  %51 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64* %53, i64** %18, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add nsw i64 %54, 1
  %56 = load i64*, i64** %18, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %57, i64** %18, align 8
  store i64 %55, i64* %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @gatt_sr_get_sec_info(i32 %66, i32 %69, i64* %16, i64* %17)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i64*, i64** %18, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %17, align 8
  %82 = call i64 @gatts_read_attr_value_by_handle(%struct.TYPE_12__* %71, i32 %74, i64 %75, i32 %76, i32 %77, i64* %78, i32* %20, i32 %79, i64 %80, i64 %81, i32 0)
  store i64 %82, i64* %14, align 8
  %83 = load i32, i32* %20, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %47, %36
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* @GATT_SUCCESS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %120

92:                                               ; preds = %88
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* @GATT_PENDING, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %92
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* @GATT_STACK_RSP, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %96
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %102 = icmp ne %struct.TYPE_14__* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %105 = call i32 @osi_free(%struct.TYPE_14__* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* @GATT_BUSY, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %112 = load i64, i64* %14, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @FALSE, align 4
  %116 = call i32 @gatt_send_error_rsp(%struct.TYPE_12__* %111, i64 %112, i64 %113, i32 %114, i32 %115)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %118 = call i32 @gatt_dequeue_sr_cmd(%struct.TYPE_12__* %117)
  br label %119

119:                                              ; preds = %110, %106
  br label %142

120:                                              ; preds = %96, %92, %88
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* @GATT_SUCCESS, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i64, i64* %14, align 8
  %126 = load i64, i64* @GATT_STACK_RSP, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %124, %120
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %131 = call i32 @attp_send_sr_msg(%struct.TYPE_12__* %129, %struct.TYPE_14__* %130)
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %133 = call i32 @gatt_dequeue_sr_cmd(%struct.TYPE_12__* %132)
  br label %141

134:                                              ; preds = %124
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %136 = icmp ne %struct.TYPE_14__* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %139 = call i32 @osi_free(%struct.TYPE_14__* %138)
  br label %140

140:                                              ; preds = %137, %134
  br label %141

141:                                              ; preds = %140, %128
  br label %142

142:                                              ; preds = %141, %119
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i64 @osi_calloc(i32) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

declare dso_local i32 @STREAM_TO_UINT16(i32, i64*) #1

declare dso_local i32 @gatt_sr_get_sec_info(i32, i32, i64*, i64*) #1

declare dso_local i64 @gatts_read_attr_value_by_handle(%struct.TYPE_12__*, i32, i64, i32, i32, i64*, i32*, i32, i64, i64, i32) #1

declare dso_local i32 @osi_free(%struct.TYPE_14__*) #1

declare dso_local i32 @gatt_send_error_rsp(%struct.TYPE_12__*, i64, i64, i32, i32) #1

declare dso_local i32 @gatt_dequeue_sr_cmd(%struct.TYPE_12__*) #1

declare dso_local i32 @attp_send_sr_msg(%struct.TYPE_12__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
