; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_driver_install.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_driver_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32, i32*, i32*, i8*, i32*, i64, i32*, i32*, i64, i64, i64, i64, i64, i32*, i32*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@UART_NUM_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"uart_num error\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@UART_FIFO_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"uart rx buffer length error(>128)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"uart tx buffer length error(>128 or 0)\00", align 1
@ESP_INTR_FLAG_IRAM = common dso_local global i32 0, align 4
@UART_TAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [90 x i8] c"ESP_INTR_FLAG_IRAM flag is set while CONFIG_UART_ISR_IN_IRAM is not enabled, flag updated\00", align 1
@p_uart_obj = common dso_local global %struct.TYPE_6__** null, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"UART driver malloc error\00", align 1
@UART_MODE_UART = common dso_local global i32 0, align 4
@UART_PATTERN_DET_QLEN_DEFAULT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"queue free spaces: %d\00", align 1
@RINGBUF_TYPE_BYTEBUF = common dso_local global i32 0, align 4
@RINGBUF_TYPE_NOSPLIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"UART driver already installed\00", align 1
@uart_rx_intr_handler_default = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@UART_RXFIFO_FULL_INT_ENA_M = common dso_local global i32 0, align 4
@UART_RXFIFO_TOUT_INT_ENA_M = common dso_local global i32 0, align 4
@UART_FRM_ERR_INT_ENA_M = common dso_local global i32 0, align 4
@UART_RXFIFO_OVF_INT_ENA_M = common dso_local global i32 0, align 4
@UART_BRK_DET_INT_ENA_M = common dso_local global i32 0, align 4
@UART_PARITY_ERR_INT_ENA_M = common dso_local global i32 0, align 4
@UART_EMPTY_THRESH_DEFAULT = common dso_local global i32 0, align 4
@UART_TOUT_THRESH_DEFAULT = common dso_local global i32 0, align 4
@UART_FULL_THRESH_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uart_driver_install(i64 %0, i32 %1, i32 %2, i32 %3, i32** %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__, align 4
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @UART_NUM_MAX, align 8
  %18 = icmp ult i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* @ESP_FAIL, align 8
  %21 = call i32 @UART_CHECK(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @UART_FIFO_LEN, align 4
  %24 = icmp sgt i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* @ESP_FAIL, align 8
  %27 = call i32 @UART_CHECK(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @UART_FIFO_LEN, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %31, %6
  %35 = phi i1 [ true, %6 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* @ESP_FAIL, align 8
  %38 = call i32 @UART_CHECK(i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @ESP_INTR_FLAG_IRAM, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load i32, i32* @UART_TAG, align 4
  %45 = call i32 @ESP_LOGW(i32 %44, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* @ESP_INTR_FLAG_IRAM, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %13, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %43, %34
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %51, i64 %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = icmp eq %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %271

56:                                               ; preds = %50
  %57 = call i64 @calloc(i32 1, i32 192)
  %58 = inttoptr i64 %57 to %struct.TYPE_6__*
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 %60
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %61, align 8
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %62, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = icmp eq %struct.TYPE_6__* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load i32, i32* @UART_TAG, align 4
  %69 = call i32 @ESP_LOGE(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i64, i64* @ESP_FAIL, align 8
  store i64 %70, i64* %7, align 8
  br label %324

71:                                               ; preds = %56
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 %74
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i64 %72, i64* %77, align 8
  %78 = load i32, i32* @UART_MODE_UART, align 4
  %79 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %79, i64 %80
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 26
  store i32 %78, i32* %83, align 8
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %84, i64 %85
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i32 0, i32* %88, align 8
  %89 = call i8* (...) @xSemaphoreCreateBinary()
  %90 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %90, i64 %91
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 25
  store i8* %89, i8** %94, align 8
  %95 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %96 = load i64, i64* %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %95, i64 %96
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 25
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @xSemaphoreGive(i8* %100)
  %102 = call i8* (...) @xSemaphoreCreateBinary()
  %103 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %104 = load i64, i64* %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %103, i64 %104
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 24
  store i8* %102, i8** %107, align 8
  %108 = call i8* (...) @xSemaphoreCreateBinary()
  %109 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %110 = load i64, i64* %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %109, i64 %110
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 23
  store i8* %108, i8** %113, align 8
  %114 = call i8* (...) @xSemaphoreCreateMutex()
  %115 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %116 = load i64, i64* %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %115, i64 %116
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 22
  store i8* %114, i8** %119, align 8
  %120 = call i8* (...) @xSemaphoreCreateMutex()
  %121 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %122 = load i64, i64* %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %121, i64 %122
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 21
  store i8* %120, i8** %125, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %128 = load i64, i64* %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %127, i64 %128
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  store i32 %126, i32* %131, align 4
  %132 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %133 = load i64, i64* %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %132, i64 %133
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 20
  store i32* null, i32** %136, align 8
  %137 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %138 = load i64, i64* %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %137, i64 %138
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 19
  store i32* null, i32** %141, align 8
  %142 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %143 = load i64, i64* %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %142, i64 %143
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 18
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %148 = load i64, i64* %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %147, i64 %148
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 17
  store i64 0, i64* %151, align 8
  %152 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %153 = load i64, i64* %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %152, i64 %153
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 16
  store i64 0, i64* %156, align 8
  %157 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %158 = load i64, i64* %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %157, i64 %158
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 15
  store i64 0, i64* %161, align 8
  %162 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %163 = load i64, i64* %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %162, i64 %163
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 14
  store i64 0, i64* %166, align 8
  %167 = load i64, i64* %8, align 8
  %168 = load i32, i32* @UART_PATTERN_DET_QLEN_DEFAULT, align 4
  %169 = call i32 @uart_pattern_queue_reset(i64 %167, i32 %168)
  %170 = load i32**, i32*** %12, align 8
  %171 = icmp ne i32** %170, null
  br i1 %171, label %172, label %196

172:                                              ; preds = %71
  %173 = load i32, i32* %11, align 4
  %174 = call i32* @xQueueCreate(i32 %173, i32 4)
  %175 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %176 = load i64, i64* %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %175, i64 %176
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 13
  store i32* %174, i32** %179, align 8
  %180 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %181 = load i64, i64* %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %180, i64 %181
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 13
  %185 = load i32*, i32** %184, align 8
  %186 = load i32**, i32*** %12, align 8
  store i32* %185, i32** %186, align 8
  %187 = load i32, i32* @UART_TAG, align 4
  %188 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %189 = load i64, i64* %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %188, i64 %189
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 13
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @uxQueueSpacesAvailable(i32* %193)
  %195 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %187, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %194)
  br label %202

196:                                              ; preds = %71
  %197 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %198 = load i64, i64* %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %197, i64 %198
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 13
  store i32* null, i32** %201, align 8
  br label %202

202:                                              ; preds = %196, %172
  %203 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %204 = load i64, i64* %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %203, i64 %204
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 3
  store i32 0, i32* %207, align 8
  %208 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %209 = load i64, i64* %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %208, i64 %209
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 4
  store i32 0, i32* %212, align 4
  %213 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %214 = load i64, i64* %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %213, i64 %214
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 12
  store i32* null, i32** %217, align 8
  %218 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %219 = load i64, i64* %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %218, i64 %219
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 11
  store i64 0, i64* %222, align 8
  %223 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %224 = load i64, i64* %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %223, i64 %224
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 10
  store i32* null, i32** %227, align 8
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* @RINGBUF_TYPE_BYTEBUF, align 4
  %230 = call i8* @xRingbufferCreate(i32 %228, i32 %229)
  %231 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %232 = load i64, i64* %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %231, i64 %232
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 9
  store i8* %230, i8** %235, align 8
  %236 = load i32, i32* %10, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %254

238:                                              ; preds = %202
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* @RINGBUF_TYPE_NOSPLIT, align 4
  %241 = call i8* @xRingbufferCreate(i32 %239, i32 %240)
  %242 = bitcast i8* %241 to i32*
  %243 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %244 = load i64, i64* %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %243, i64 %244
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 8
  store i32* %242, i32** %247, align 8
  %248 = load i32, i32* %10, align 4
  %249 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %250 = load i64, i64* %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %249, i64 %250
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 5
  store i32 %248, i32* %253, align 8
  br label %265

254:                                              ; preds = %202
  %255 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %256 = load i64, i64* %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %255, i64 %256
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 8
  store i32* null, i32** %259, align 8
  %260 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %261 = load i64, i64* %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %260, i64 %261
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 5
  store i32 0, i32* %264, align 8
  br label %265

265:                                              ; preds = %254, %238
  %266 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %267 = load i64, i64* %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %266, i64 %267
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 7
  store i32* null, i32** %270, align 8
  br label %275

271:                                              ; preds = %50
  %272 = load i32, i32* @UART_TAG, align 4
  %273 = call i32 @ESP_LOGE(i32 %272, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %274 = load i64, i64* @ESP_FAIL, align 8
  store i64 %274, i64* %7, align 8
  br label %324

275:                                              ; preds = %265
  %276 = load i64, i64* %8, align 8
  %277 = load i32, i32* @uart_rx_intr_handler_default, align 4
  %278 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %279 = load i64, i64* %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %278, i64 %279
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %280, align 8
  %282 = load i32, i32* %13, align 4
  %283 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %284 = load i64, i64* %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %283, i64 %284
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 6
  %288 = call i64 @uart_isr_register(i64 %276, i32 %277, %struct.TYPE_6__* %281, i32 %282, i32* %287)
  store i64 %288, i64* %14, align 8
  %289 = load i64, i64* %14, align 8
  %290 = load i64, i64* @ESP_OK, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %275
  br label %320

293:                                              ; preds = %275
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %295 = load i32, i32* @UART_RXFIFO_FULL_INT_ENA_M, align 4
  %296 = load i32, i32* @UART_RXFIFO_TOUT_INT_ENA_M, align 4
  %297 = or i32 %295, %296
  %298 = load i32, i32* @UART_FRM_ERR_INT_ENA_M, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* @UART_RXFIFO_OVF_INT_ENA_M, align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* @UART_BRK_DET_INT_ENA_M, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* @UART_PARITY_ERR_INT_ENA_M, align 4
  %305 = or i32 %303, %304
  store i32 %305, i32* %294, align 4
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %307 = load i32, i32* @UART_EMPTY_THRESH_DEFAULT, align 4
  store i32 %307, i32* %306, align 4
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %309 = load i32, i32* @UART_TOUT_THRESH_DEFAULT, align 4
  store i32 %309, i32* %308, align 4
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %311 = load i32, i32* @UART_FULL_THRESH_DEFAULT, align 4
  store i32 %311, i32* %310, align 4
  %312 = load i64, i64* %8, align 8
  %313 = call i64 @uart_intr_config(i64 %312, %struct.TYPE_7__* %15)
  store i64 %313, i64* %14, align 8
  %314 = load i64, i64* %14, align 8
  %315 = load i64, i64* @ESP_OK, align 8
  %316 = icmp ne i64 %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %293
  br label %320

318:                                              ; preds = %293
  %319 = load i64, i64* %14, align 8
  store i64 %319, i64* %7, align 8
  br label %324

320:                                              ; preds = %317, %292
  %321 = load i64, i64* %8, align 8
  %322 = call i32 @uart_driver_delete(i64 %321)
  %323 = load i64, i64* %14, align 8
  store i64 %323, i64* %7, align 8
  br label %324

324:                                              ; preds = %320, %318, %271, %67
  %325 = load i64, i64* %7, align 8
  ret i64 %325
}

declare dso_local i32 @UART_CHECK(i32, i8*, i64) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i8* @xSemaphoreCreateBinary(...) #1

declare dso_local i32 @xSemaphoreGive(i8*) #1

declare dso_local i8* @xSemaphoreCreateMutex(...) #1

declare dso_local i32 @uart_pattern_queue_reset(i64, i32) #1

declare dso_local i32* @xQueueCreate(i32, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @uxQueueSpacesAvailable(i32*) #1

declare dso_local i8* @xRingbufferCreate(i32, i32) #1

declare dso_local i64 @uart_isr_register(i64, i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i64 @uart_intr_config(i64, %struct.TYPE_7__*) #1

declare dso_local i32 @uart_driver_delete(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
