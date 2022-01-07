; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/uart/nmea0183_parser/main/extr_nmea_parser.c_nmea_parser_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/uart/nmea0183_parser/main/extr_nmea_parser.c_nmea_parser_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_15__*, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32*, i32 }

@GPS_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"calloc memory for esp_fps failed\00", align 1
@NMEA_PARSER_RUNTIME_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"calloc memory for runtime buffer failed\00", align 1
@UART_HW_FLOWCTRL_DISABLE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"config uart parameter failed\00", align 1
@UART_PIN_NO_CHANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"config uart gpio failed\00", align 1
@CONFIG_NMEA_PARSER_RING_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"install uart driver failed\00", align 1
@NMEA_EVENT_LOOP_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"create event loop faild\00", align 1
@nmea_parser_task_entry = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"nmea_parser\00", align 1
@CONFIG_NMEA_PARSER_TASK_STACK_SIZE = common dso_local global i32 0, align 4
@CONFIG_NMEA_PARSER_TASK_PRIORITY = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"create NMEA Parser task failed\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"NMEA Parser init OK\00", align 1
@STATEMENT_GGA = common dso_local global i32 0, align 4
@STATEMENT_GLL = common dso_local global i32 0, align 4
@STATEMENT_GSA = common dso_local global i32 0, align 4
@STATEMENT_GSV = common dso_local global i32 0, align 4
@STATEMENT_RMC = common dso_local global i32 0, align 4
@STATEMENT_VTG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @nmea_parser_init(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__, align 4
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %8 = call i8* @calloc(i32 1, i32 32)
  %9 = bitcast i8* %8 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %4, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = icmp ne %struct.TYPE_15__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @GPS_TAG, align 4
  %14 = call i32 @ESP_LOGE(i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %167

15:                                               ; preds = %1
  %16 = load i32, i32* @NMEA_PARSER_RUNTIME_BUFFER_SIZE, align 4
  %17 = call i8* @calloc(i32 1, i32 %16)
  %18 = bitcast i8* %17 to %struct.TYPE_15__*
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %20, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = icmp ne %struct.TYPE_15__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @GPS_TAG, align 4
  %27 = call i32 @ESP_LOGE(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %162

28:                                               ; preds = %15
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 254
  store i32 %38, i32* %36, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %40 = load i32, i32* @UART_HW_FLOWCTRL_DISABLE, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %41, align 4
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %46, align 4
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %51, align 4
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %56, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @uart_param_config(i32 %63, %struct.TYPE_14__* %5)
  %65 = load i64, i64* @ESP_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %28
  %68 = load i32, i32* @GPS_TAG, align 4
  %69 = call i32 @ESP_LOGE(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %161

70:                                               ; preds = %28
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @UART_PIN_NO_CHANGE, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @UART_PIN_NO_CHANGE, align 4
  %80 = load i32, i32* @UART_PIN_NO_CHANGE, align 4
  %81 = call i64 @uart_set_pin(i32 %73, i32 %74, i32 %78, i32 %79, i32 %80)
  %82 = load i64, i64* @ESP_OK, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %70
  %85 = load i32, i32* @GPS_TAG, align 4
  %86 = call i32 @ESP_LOGE(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %161

87:                                               ; preds = %70
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CONFIG_NMEA_PARSER_RING_BUFFER_SIZE, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 5
  %98 = call i64 @uart_driver_install(i32 %90, i32 %91, i32 0, i32 %95, i32* %97, i32 0)
  %99 = load i64, i64* @ESP_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %87
  %102 = load i32, i32* @GPS_TAG, align 4
  %103 = call i32 @ESP_LOGE(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %156

104:                                              ; preds = %87
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @uart_enable_pattern_det_baud_intr(i32 %107, i8 signext 10, i32 1, i32 9, i32 0, i32 0)
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @uart_pattern_queue_reset(i32 %111, i32 %115)
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @uart_flush(i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i32* null, i32** %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %123 = load i32, i32* @NMEA_EVENT_LOOP_QUEUE_SIZE, align 4
  store i32 %123, i32* %122, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 3
  %126 = call i64 @esp_event_loop_create(%struct.TYPE_17__* %6, i32* %125)
  %127 = load i64, i64* @ESP_OK, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %104
  %130 = load i32, i32* @GPS_TAG, align 4
  %131 = call i32 @ESP_LOGE(i32 %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %155

132:                                              ; preds = %104
  %133 = load i32, i32* @nmea_parser_task_entry, align 4
  %134 = load i32, i32* @CONFIG_NMEA_PARSER_TASK_STACK_SIZE, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %136 = load i32, i32* @CONFIG_NMEA_PARSER_TASK_PRIORITY, align 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 4
  %139 = call i64 @xTaskCreate(i32 %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %134, %struct.TYPE_15__* %135, i32 %136, i32* %138)
  store i64 %139, i64* %7, align 8
  %140 = load i64, i64* %7, align 8
  %141 = load i64, i64* @pdTRUE, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %132
  %144 = load i32, i32* @GPS_TAG, align 4
  %145 = call i32 @ESP_LOGE(i32 %144, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %150

146:                                              ; preds = %132
  %147 = load i32, i32* @GPS_TAG, align 4
  %148 = call i32 @ESP_LOGI(i32 %147, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %149, %struct.TYPE_15__** %2, align 8
  br label %170

150:                                              ; preds = %143
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @esp_event_loop_delete(i32 %153)
  br label %155

155:                                              ; preds = %150, %129
  br label %156

156:                                              ; preds = %155, %101
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @uart_driver_delete(i32 %159)
  br label %161

161:                                              ; preds = %156, %84, %67
  br label %162

162:                                              ; preds = %161, %25
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = call i32 @free(%struct.TYPE_15__* %165)
  br label %167

167:                                              ; preds = %162, %12
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %169 = call i32 @free(%struct.TYPE_15__* %168)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %170

170:                                              ; preds = %167, %146
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  ret %struct.TYPE_15__* %171
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @uart_param_config(i32, %struct.TYPE_14__*) #1

declare dso_local i64 @uart_set_pin(i32, i32, i32, i32, i32) #1

declare dso_local i64 @uart_driver_install(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @uart_enable_pattern_det_baud_intr(i32, i8 signext, i32, i32, i32, i32) #1

declare dso_local i32 @uart_pattern_queue_reset(i32, i32) #1

declare dso_local i32 @uart_flush(i32) #1

declare dso_local i64 @esp_event_loop_create(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @xTaskCreate(i32, i8*, i32, %struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @esp_event_loop_delete(i32) #1

declare dso_local i32 @uart_driver_delete(i32) #1

declare dso_local i32 @free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
