; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_driver_delete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_driver_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@UART_NUM_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"uart_num error\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@p_uart_obj = common dso_local global %struct.TYPE_3__** null, align 8
@UART_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ALREADY NULL\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@CONFIG_ESP_CONSOLE_UART_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_driver_delete(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @UART_NUM_MAX, align 8
  %7 = icmp ult i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* @ESP_FAIL, align 4
  %10 = call i32 @UART_CHECK(i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %11, i64 %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp eq %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @UART_TAG, align 4
  %18 = call i32 @ESP_LOGI(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ESP_OK, align 4
  store i32 %19, i32* %2, align 4
  br label %220

20:                                               ; preds = %1
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %21, i64 %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @esp_intr_free(i32 %26)
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @uart_disable_rx_intr(i64 %28)
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @uart_disable_tx_intr(i64 %30)
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @uart_pattern_link_free(i64 %32)
  %34 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %34, i64 %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %20
  %42 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %42, i64 %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 7
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @vSemaphoreDelete(i32* %47)
  %49 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %49, i64 %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 7
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %41, %20
  %55 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %56 = load i64, i64* %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %55, i64 %56
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %54
  %63 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %63, i64 %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 6
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @vSemaphoreDelete(i32* %68)
  %70 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %71 = load i64, i64* %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %70, i64 %71
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 6
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %62, %54
  %76 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %77 = load i64, i64* %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %76, i64 %77
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %75
  %84 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %85 = load i64, i64* %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %84, i64 %85
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @vSemaphoreDelete(i32* %89)
  %91 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %92 = load i64, i64* %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %91, i64 %92
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 5
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %83, %75
  %97 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %98 = load i64, i64* %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %97, i64 %98
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %96
  %105 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %106 = load i64, i64* %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %105, i64 %106
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @vSemaphoreDelete(i32* %110)
  %112 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %113 = load i64, i64* %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %112, i64 %113
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 4
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %104, %96
  %118 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %119 = load i64, i64* %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %118, i64 %119
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %138

125:                                              ; preds = %117
  %126 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %127 = load i64, i64* %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %126, i64 %127
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @vSemaphoreDelete(i32* %131)
  %133 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %134 = load i64, i64* %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %133, i64 %134
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  store i32* null, i32** %137, align 8
  br label %138

138:                                              ; preds = %125, %117
  %139 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %140 = load i64, i64* %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %139, i64 %140
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %159

146:                                              ; preds = %138
  %147 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %148 = load i64, i64* %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %147, i64 %148
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @vQueueDelete(i32* %152)
  %154 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %155 = load i64, i64* %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %154, i64 %155
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  store i32* null, i32** %158, align 8
  br label %159

159:                                              ; preds = %146, %138
  %160 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %161 = load i64, i64* %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %160, i64 %161
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %180

167:                                              ; preds = %159
  %168 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %169 = load i64, i64* %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %168, i64 %169
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @vRingbufferDelete(i32* %173)
  %175 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %176 = load i64, i64* %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %175, i64 %176
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  store i32* null, i32** %179, align 8
  br label %180

180:                                              ; preds = %167, %159
  %181 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %182 = load i64, i64* %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %181, i64 %182
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %201

188:                                              ; preds = %180
  %189 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %190 = load i64, i64* %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %189, i64 %190
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @vRingbufferDelete(i32* %194)
  %196 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %197 = load i64, i64* %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %196, i64 %197
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  store i32* null, i32** %200, align 8
  br label %201

201:                                              ; preds = %188, %180
  %202 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %203 = load i64, i64* %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %202, i64 %203
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = call i32 @free(%struct.TYPE_3__* %205)
  %207 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @p_uart_obj, align 8
  %208 = load i64, i64* %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %207, i64 %208
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %209, align 8
  %210 = load i64, i64* %3, align 8
  %211 = load i64, i64* @CONFIG_ESP_CONSOLE_UART_NUM, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %201
  %214 = load i64, i64* %3, align 8
  %215 = call i32 @get_periph_module(i64 %214)
  store i32 %215, i32* %4, align 4
  %216 = load i32, i32* %4, align 4
  %217 = call i32 @periph_module_disable(i32 %216)
  br label %218

218:                                              ; preds = %213, %201
  %219 = load i32, i32* @ESP_OK, align 4
  store i32 %219, i32* %2, align 4
  br label %220

220:                                              ; preds = %218, %16
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i32 @UART_CHECK(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @esp_intr_free(i32) #1

declare dso_local i32 @uart_disable_rx_intr(i64) #1

declare dso_local i32 @uart_disable_tx_intr(i64) #1

declare dso_local i32 @uart_pattern_link_free(i64) #1

declare dso_local i32 @vSemaphoreDelete(i32*) #1

declare dso_local i32 @vQueueDelete(i32*) #1

declare dso_local i32 @vRingbufferDelete(i32*) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

declare dso_local i32 @get_periph_module(i64) #1

declare dso_local i32 @periph_module_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
