; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_client_handle_server_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_client_handle_server_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64 }
%struct.TYPE_25__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [99 x i8] c"ATT - Ignore wrong response. Receives (%02x)                                 Request(%02x) Ignored\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"invalid response/indicate pkt size: %d, PDU size: %d\00", align 1
@GATT_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Unknown opcode = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_client_handle_server_rsp(%struct.TYPE_24__* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 141
  br i1 %12, label %13, label %41

13:                                               ; preds = %4
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 140
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %18 = call %struct.TYPE_25__* @gatt_cmd_dequeue(%struct.TYPE_24__* %17, i64* %10)
  store %struct.TYPE_25__* %18, %struct.TYPE_25__** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i64 @gatt_cmd_to_rsp_code(i64 %19)
  store i64 %20, i64* %10, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %22 = icmp eq %struct.TYPE_25__* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 139
  br i1 %29, label %30, label %34

30:                                               ; preds = %27, %16
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @GATT_TRACE_WARNING(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %32)
  br label %142

34:                                               ; preds = %27, %23
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 2
  %37 = call i32 @btu_stop_timer(i32* %36)
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %13, %4
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %42, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = add nsw i64 %48, 1
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i8*, i64, ...) @GATT_TRACE_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %49, i64 %52)
  %54 = load i64, i64* %6, align 8
  %55 = icmp ne i64 %54, 140
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 141
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %61 = load i32, i32* @GATT_ERROR, align 4
  %62 = call i32 @gatt_end_operation(%struct.TYPE_25__* %60, i32 %61, i32* null)
  br label %63

63:                                               ; preds = %59, %56, %47
  br label %132

64:                                               ; preds = %41
  %65 = load i64, i64* %6, align 8
  switch i64 %65, label %128 [
    i64 139, label %66
    i64 135, label %73
    i64 137, label %79
    i64 130, label %86
    i64 131, label %86
    i64 133, label %93
    i64 132, label %93
    i64 129, label %93
    i64 136, label %100
    i64 128, label %106
    i64 134, label %109
    i64 138, label %116
    i64 140, label %122
    i64 141, label %122
  ]

66:                                               ; preds = %64
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64*, i64** %8, align 8
  %72 = call i32 @gatt_process_error_rsp(%struct.TYPE_24__* %67, %struct.TYPE_25__* %68, i64 %69, i64 %70, i64* %71)
  br label %131

73:                                               ; preds = %64
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = call i32 @gatt_process_mtu_rsp(%struct.TYPE_24__* %74, %struct.TYPE_25__* %75, i64 %76, i64* %77)
  br label %131

79:                                               ; preds = %64
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64*, i64** %8, align 8
  %85 = call i32 @gatt_process_read_info_rsp(%struct.TYPE_24__* %80, %struct.TYPE_25__* %81, i64 %82, i64 %83, i64* %84)
  br label %131

86:                                               ; preds = %64, %64
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i64*, i64** %8, align 8
  %92 = call i32 @gatt_process_read_by_type_rsp(%struct.TYPE_24__* %87, %struct.TYPE_25__* %88, i64 %89, i64 %90, i64* %91)
  br label %131

93:                                               ; preds = %64, %64, %64
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i64*, i64** %8, align 8
  %99 = call i32 @gatt_process_read_rsp(%struct.TYPE_24__* %94, %struct.TYPE_25__* %95, i64 %96, i64 %97, i64* %98)
  br label %131

100:                                              ; preds = %64
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i64*, i64** %8, align 8
  %105 = call i32 @gatt_process_find_type_value_rsp(%struct.TYPE_24__* %101, %struct.TYPE_25__* %102, i64 %103, i64* %104)
  br label %131

106:                                              ; preds = %64
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %108 = call i32 @gatt_process_handle_rsp(%struct.TYPE_25__* %107)
  br label %131

109:                                              ; preds = %64
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i64*, i64** %8, align 8
  %115 = call i32 @gatt_process_prep_write_rsp(%struct.TYPE_24__* %110, %struct.TYPE_25__* %111, i64 %112, i64 %113, i64* %114)
  br label %131

116:                                              ; preds = %64
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @gatt_end_operation(%struct.TYPE_25__* %117, i32 %120, i32* null)
  br label %131

122:                                              ; preds = %64, %64
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* %7, align 8
  %126 = load i64*, i64** %8, align 8
  %127 = call i32 @gatt_process_notification(%struct.TYPE_24__* %123, i64 %124, i64 %125, i64* %126)
  br label %131

128:                                              ; preds = %64
  %129 = load i64, i64* %6, align 8
  %130 = call i32 (i8*, i64, ...) @GATT_TRACE_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %129)
  br label %131

131:                                              ; preds = %128, %122, %116, %109, %106, %100, %93, %86, %79, %73, %66
  br label %132

132:                                              ; preds = %131, %63
  %133 = load i64, i64* %6, align 8
  %134 = icmp ne i64 %133, 141
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i64, i64* %6, align 8
  %137 = icmp ne i64 %136, 140
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %140 = call i32 @gatt_cl_send_next_cmd_inq(%struct.TYPE_24__* %139)
  br label %141

141:                                              ; preds = %138, %135, %132
  br label %142

142:                                              ; preds = %141, %30
  ret void
}

declare dso_local %struct.TYPE_25__* @gatt_cmd_dequeue(%struct.TYPE_24__*, i64*) #1

declare dso_local i64 @gatt_cmd_to_rsp_code(i64) #1

declare dso_local i32 @GATT_TRACE_WARNING(i8*, i64, i64) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*, i64, ...) #1

declare dso_local i32 @gatt_end_operation(%struct.TYPE_25__*, i32, i32*) #1

declare dso_local i32 @gatt_process_error_rsp(%struct.TYPE_24__*, %struct.TYPE_25__*, i64, i64, i64*) #1

declare dso_local i32 @gatt_process_mtu_rsp(%struct.TYPE_24__*, %struct.TYPE_25__*, i64, i64*) #1

declare dso_local i32 @gatt_process_read_info_rsp(%struct.TYPE_24__*, %struct.TYPE_25__*, i64, i64, i64*) #1

declare dso_local i32 @gatt_process_read_by_type_rsp(%struct.TYPE_24__*, %struct.TYPE_25__*, i64, i64, i64*) #1

declare dso_local i32 @gatt_process_read_rsp(%struct.TYPE_24__*, %struct.TYPE_25__*, i64, i64, i64*) #1

declare dso_local i32 @gatt_process_find_type_value_rsp(%struct.TYPE_24__*, %struct.TYPE_25__*, i64, i64*) #1

declare dso_local i32 @gatt_process_handle_rsp(%struct.TYPE_25__*) #1

declare dso_local i32 @gatt_process_prep_write_rsp(%struct.TYPE_24__*, %struct.TYPE_25__*, i64, i64, i64*) #1

declare dso_local i32 @gatt_process_notification(%struct.TYPE_24__*, i64, i64, i64*) #1

declare dso_local i32 @gatt_cl_send_next_cmd_inq(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
