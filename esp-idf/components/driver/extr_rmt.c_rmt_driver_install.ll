; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_driver_install.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_driver_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32*, i32*, i32, i32*, i64, i64, i32*, i64 }

@RMT_CHANNEL_MAX = common dso_local global i64 0, align 8
@RMT_CHANNEL_ERROR_STR = common dso_local global i8* null, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@s_rmt_driver_channels = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"RMT driver already installed for channel\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@p_rmt_obj = common dso_local global %struct.TYPE_4__** null, align 8
@RMT_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"RMT driver already installed\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"RMT driver malloc error\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@RINGBUF_TYPE_NOSPLIT = common dso_local global i32 0, align 4
@rmt_driver_isr_lock = common dso_local global i32 0, align 4
@rmt_driver_isr_default = common dso_local global i32 0, align 4
@s_rmt_driver_intr_handle = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_IRAM = common dso_local global i32 0, align 4
@MALLOC_CAP_8BIT = common dso_local global i32 0, align 4
@MALLOC_CAP_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rmt_driver_install(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @RMT_CHANNEL_MAX, align 8
  %11 = icmp ult i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i8*, i8** @RMT_CHANNEL_ERROR_STR, align 8
  %14 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  %15 = call i32 @RMT_CHECK(i32 %12, i8* %13, i64 %14)
  %16 = load i32, i32* @s_rmt_driver_channels, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @BIT(i64 %17)
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  %23 = call i32 @RMT_CHECK(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* @ESP_OK, align 8
  store i64 %24, i64* %8, align 8
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @RMT_TAG, align 4
  %32 = call i32 @ESP_LOGD(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %33, i64* %4, align 8
  br label %164

34:                                               ; preds = %3
  %35 = call i64 @malloc(i32 88)
  %36 = inttoptr i64 %35 to %struct.TYPE_4__*
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %38
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %39, align 8
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp eq %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load i32, i32* @RMT_TAG, align 4
  %47 = call i32 @ESP_LOGE(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %48, i64* %4, align 8
  br label %164

49:                                               ; preds = %34
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %50, i64 %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 @memset(%struct.TYPE_4__* %53, i32 0, i32 88)
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 11
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %60, i64 %61
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 10
  store i32* null, i32** %64, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %66, i64 %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i64 %65, i64* %70, align 8
  %71 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %71, i64 %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 9
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %76, i64 %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 8
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %81, i64 %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 0, i32* %85, align 8
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %86, i64 %87
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store i32 0, i32* %90, align 4
  %91 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %92 = load i64, i64* %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %91, i64 %92
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 7
  store i32* null, i32** %95, align 8
  %96 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %96, i64 %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %118

103:                                              ; preds = %49
  %104 = call i8* (...) @xSemaphoreCreateBinary()
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %107 = load i64, i64* %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %106, i64 %107
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 5
  store i32* %105, i32** %110, align 8
  %111 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %112 = load i64, i64* %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %111, i64 %112
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 5
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @xSemaphoreGive(i32* %116)
  br label %118

118:                                              ; preds = %103, %49
  %119 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %120 = load i64, i64* %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %119, i64 %120
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %142

126:                                              ; preds = %118
  %127 = load i64, i64* %6, align 8
  %128 = icmp ugt i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = load i64, i64* %6, align 8
  %131 = load i32, i32* @RINGBUF_TYPE_NOSPLIT, align 4
  %132 = call i32* @xRingbufferCreate(i64 %130, i32 %131)
  %133 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @p_rmt_obj, align 8
  %134 = load i64, i64* %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %133, i64 %134
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 4
  store i32* %132, i32** %137, align 8
  %138 = load i64, i64* %5, align 8
  %139 = call i32 @rmt_set_rx_intr_en(i64 %138, i32 1)
  %140 = load i64, i64* %5, align 8
  %141 = call i32 @rmt_set_err_intr_en(i64 %140, i32 1)
  br label %142

142:                                              ; preds = %129, %126, %118
  %143 = call i32 @_lock_acquire_recursive(i32* @rmt_driver_isr_lock)
  %144 = load i32, i32* @s_rmt_driver_channels, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i32, i32* @rmt_driver_isr_default, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i64 @rmt_isr_register(i32 %147, i32* null, i32 %148, i32* @s_rmt_driver_intr_handle)
  store i64 %149, i64* %8, align 8
  br label %150

150:                                              ; preds = %146, %142
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* @ESP_OK, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load i64, i64* %5, align 8
  %156 = call i32 @BIT(i64 %155)
  %157 = load i32, i32* @s_rmt_driver_channels, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* @s_rmt_driver_channels, align 4
  %159 = load i64, i64* %5, align 8
  %160 = call i32 @rmt_set_tx_intr_en(i64 %159, i32 1)
  br label %161

161:                                              ; preds = %154, %150
  %162 = call i32 @_lock_release_recursive(i32* @rmt_driver_isr_lock)
  %163 = load i64, i64* %8, align 8
  store i64 %163, i64* %4, align 8
  br label %164

164:                                              ; preds = %161, %45, %30
  %165 = load i64, i64* %4, align 8
  ret i64 %165
}

declare dso_local i32 @RMT_CHECK(i32, i8*, i64) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @xSemaphoreCreateBinary(...) #1

declare dso_local i32 @xSemaphoreGive(i32*) #1

declare dso_local i32* @xRingbufferCreate(i64, i32) #1

declare dso_local i32 @rmt_set_rx_intr_en(i64, i32) #1

declare dso_local i32 @rmt_set_err_intr_en(i64, i32) #1

declare dso_local i32 @_lock_acquire_recursive(i32*) #1

declare dso_local i64 @rmt_isr_register(i32, i32*, i32, i32*) #1

declare dso_local i32 @rmt_set_tx_intr_en(i64, i32) #1

declare dso_local i32 @_lock_release_recursive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
