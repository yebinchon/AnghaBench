; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_adc_cal/extr_esp_adc_cal.c_esp_adc_cal_characterize.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_adc_cal/extr_esp_adc_cal.c_esp_adc_cal_characterize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32, i64, i64, i64, i32, i32 }

@ADC_UNIT_1 = common dso_local global i64 0, align 8
@ADC_UNIT_2 = common dso_local global i64 0, align 8
@ADC_WIDTH_MAX = common dso_local global i64 0, align 8
@EFUSE_TP_ENABLED = common dso_local global i64 0, align 8
@ESP_ADC_CAL_VAL_EFUSE_TP = common dso_local global i32 0, align 4
@EFUSE_VREF_ENABLED = common dso_local global i64 0, align 8
@ESP_ADC_CAL_VAL_EFUSE_VREF = common dso_local global i32 0, align 4
@ESP_ADC_CAL_VAL_DEFAULT_VREF = common dso_local global i32 0, align 4
@LUT_ENABLED = common dso_local global i64 0, align 8
@ADC_ATTEN_DB_11 = common dso_local global i64 0, align 8
@lut_adc1_low = common dso_local global i32* null, align 8
@lut_adc2_low = common dso_local global i32* null, align 8
@lut_adc1_high = common dso_local global i32* null, align 8
@lut_adc2_high = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_adc_cal_characterize(i64 %0, i64 %1, i64 %2, i32 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @ADC_UNIT_1, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @ADC_UNIT_2, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %20, %5
  %25 = phi i1 [ true, %5 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @ADC_WIDTH_MAX, align 8
  %34 = icmp slt i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = call i32 (...) @check_efuse_tp()
  store i32 %37, i32* %11, align 4
  %38 = call i32 (...) @check_efuse_vref()
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %24
  %42 = load i64, i64* @EFUSE_TP_ENABLED, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @read_efuse_tp_high(i64 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @read_efuse_tp_low(i64 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 7
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 6
  %57 = call i32 @characterize_using_two_point(i64 %49, i64 %50, i32 %51, i32 %52, i32* %54, i32* %56)
  %58 = load i32, i32* @ESP_ADC_CAL_VAL_EFUSE_TP, align 4
  store i32 %58, i32* %13, align 4
  br label %87

59:                                               ; preds = %41, %24
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load i64, i64* @EFUSE_VREF_ENABLED, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = call i32 (...) @read_efuse_vref()
  store i32 %66, i32* %16, align 4
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 7
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 6
  %74 = call i32 @characterize_using_vref(i64 %67, i64 %68, i32 %69, i32* %71, i32* %73)
  %75 = load i32, i32* @ESP_ADC_CAL_VAL_EFUSE_VREF, align 4
  store i32 %75, i32* %13, align 4
  br label %86

76:                                               ; preds = %62, %59
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 7
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 6
  %84 = call i32 @characterize_using_vref(i64 %77, i64 %78, i32 %79, i32* %81, i32* %83)
  %85 = load i32, i32* @ESP_ADC_CAL_VAL_DEFAULT_VREF, align 4
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %76, %65
  br label %87

87:                                               ; preds = %86, %44
  %88 = load i64, i64* %6, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 5
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* @EFUSE_VREF_ENABLED, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %87
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i32 (...) @read_efuse_vref()
  br label %106

104:                                              ; preds = %99, %87
  %105 = load i32, i32* %9, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load i64, i64* @LUT_ENABLED, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %139

112:                                              ; preds = %106
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* @ADC_ATTEN_DB_11, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %139

116:                                              ; preds = %112
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* @ADC_UNIT_1, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32*, i32** @lut_adc1_low, align 8
  br label %124

122:                                              ; preds = %116
  %123 = load i32*, i32** @lut_adc2_low, align 8
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32* [ %121, %120 ], [ %123, %122 ]
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  store i32* %125, i32** %127, align 8
  %128 = load i64, i64* %6, align 8
  %129 = load i64, i64* @ADC_UNIT_1, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i32*, i32** @lut_adc1_high, align 8
  br label %135

133:                                              ; preds = %124
  %134 = load i32*, i32** @lut_adc2_high, align 8
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32* [ %132, %131 ], [ %134, %133 ]
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  store i32* %136, i32** %138, align 8
  br label %144

139:                                              ; preds = %112, %106
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  store i32* null, i32** %141, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  store i32* null, i32** %143, align 8
  br label %144

144:                                              ; preds = %139, %135
  %145 = load i32, i32* %13, align 4
  ret i32 %145
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @check_efuse_tp(...) #1

declare dso_local i32 @check_efuse_vref(...) #1

declare dso_local i32 @read_efuse_tp_high(i64) #1

declare dso_local i32 @read_efuse_tp_low(i64) #1

declare dso_local i32 @characterize_using_two_point(i64, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @read_efuse_vref(...) #1

declare dso_local i32 @characterize_using_vref(i64, i64, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
