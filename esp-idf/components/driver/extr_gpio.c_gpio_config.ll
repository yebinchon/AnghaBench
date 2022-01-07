; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_gpio.c_gpio_config.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_gpio.c_gpio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64 }

@GPIO_PIN_COUNT = common dso_local global i32 0, align 4
@GPIO_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"GPIO_PIN mask error \00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@GPIO_PIN_MUX_REG = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"IO%d is not a valid GPIO\00", align 1
@GPIO_MODE_DEF_INPUT = common dso_local global i32 0, align 4
@GPIO_MODE_DEF_OD = common dso_local global i32 0, align 4
@GPIO = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GPIO_MODE_DEF_OUTPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"GPIO[%d]| InputEn: %d| OutputEn: %d| OpenDrain: %d| Pullup: %d| Pulldown: %d| Intr:%d \00", align 1
@PIN_FUNC_GPIO = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@GPIO_SEL_34 = common dso_local global i32 0, align 4
@GPIO_SEL_35 = common dso_local global i32 0, align 4
@GPIO_SEL_36 = common dso_local global i32 0, align 4
@GPIO_SEL_37 = common dso_local global i32 0, align 4
@GPIO_SEL_38 = common dso_local global i32 0, align 4
@GPIO_SEL_39 = common dso_local global i32 0, align 4
@GPIO_SEL_46 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_config(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GPIO_PIN_COUNT, align 4
  %24 = shl i32 1, %23
  %25 = icmp sge i32 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19, %1
  %27 = load i32, i32* @GPIO_TAG, align 4
  %28 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %29, i32* %2, align 4
  br label %173

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %167, %30
  %32 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %37, %38
  %40 = call i32 @BIT(i32 0)
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %164

43:                                               ; preds = %31
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @GPIO_TAG, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %50, i32* %2, align 4
  br label %173

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @RTC_GPIO_IS_VALID_GPIO(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @rtc_gpio_deinit(i32 %56)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GPIO_MODE_DEF_INPUT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  store i32 1, i32* %7, align 4
  %66 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PIN_INPUT_ENABLE(i32 %70)
  br label %79

72:                                               ; preds = %58
  %73 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @PIN_INPUT_DISABLE(i32 %77)
  br label %79

79:                                               ; preds = %72, %65
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @GPIO_MODE_DEF_OD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  store i32 1, i32* %9, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @GPIO, i32 0, i32 0), align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  br label %98

92:                                               ; preds = %79
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @GPIO, i32 0, i32 0), align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %92, %86
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @GPIO_MODE_DEF_OUTPUT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  store i32 1, i32* %8, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @gpio_output_enable(i32 %106)
  br label %111

108:                                              ; preds = %98
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @gpio_output_disable(i32 %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  store i32 1, i32* %10, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @gpio_pullup_en(i32 %117)
  br label %122

119:                                              ; preds = %111
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @gpio_pullup_dis(i32 %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  store i32 1, i32* %11, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @gpio_pulldown_en(i32 %128)
  br label %133

130:                                              ; preds = %122
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @gpio_pulldown_dis(i32 %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i32, i32* @GPIO_TAG, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @ESP_LOGI(i32 %134, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %143)
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @gpio_set_intr_type(i32 %145, i32 %148)
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %133
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @gpio_intr_enable(i32 %155)
  br label %160

157:                                              ; preds = %133
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @gpio_intr_disable(i32 %158)
  br label %160

160:                                              ; preds = %157, %154
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %163 = call i32 @PIN_FUNC_SELECT(i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %31
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @GPIO_PIN_COUNT, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %31, label %171

171:                                              ; preds = %167
  %172 = load i32, i32* @ESP_OK, align 4
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %171, %46, %26
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @RTC_GPIO_IS_VALID_GPIO(i32) #1

declare dso_local i32 @rtc_gpio_deinit(i32) #1

declare dso_local i32 @PIN_INPUT_ENABLE(i32) #1

declare dso_local i32 @PIN_INPUT_DISABLE(i32) #1

declare dso_local i32 @gpio_output_enable(i32) #1

declare dso_local i32 @gpio_output_disable(i32) #1

declare dso_local i32 @gpio_pullup_en(i32) #1

declare dso_local i32 @gpio_pullup_dis(i32) #1

declare dso_local i32 @gpio_pulldown_en(i32) #1

declare dso_local i32 @gpio_pulldown_dis(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gpio_set_intr_type(i32, i32) #1

declare dso_local i32 @gpio_intr_enable(i32) #1

declare dso_local i32 @gpio_intr_disable(i32) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
