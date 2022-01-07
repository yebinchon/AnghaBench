; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_host.c_sdmmc_host_init_slot.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_host.c_sdmmc_host_init_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@SDMMC_SLOT_FLAG_INTERNAL_PULLUP = common dso_local global i32 0, align 4
@s_intr_handle = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@sdmmc_slot_info = common dso_local global %struct.TYPE_7__* null, align 8
@SDMMC_SLOT_WIDTH_DEFAULT = common dso_local global i32 0, align 4
@s_slot_width = common dso_local global i32* null, align 8
@GPIO_INTR_DISABLE = common dso_local global i32 0, align 4
@GPIO_MODE_OUTPUT = common dso_local global i32 0, align 4
@GPIO_FUNC_IN_HIGH = common dso_local global i32 0, align 4
@SDMMC_SLOT_NO_CD = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"using GPIO%d as CD pin\00", align 1
@GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@GPIO_FUNC_IN_LOW = common dso_local global i32 0, align 4
@SDMMC_SLOT_NO_WP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"using GPIO%d as WP pin\00", align 1
@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdmmc_host_init_slot(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_9__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SDMMC_SLOT_FLAG_INTERNAL_PULLUP, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sdmmc_host_pullup_en(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %2
  %29 = load i32, i32* @s_intr_handle, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %32, i64* %3, align 8
  br label %206

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %40, i64* %3, align 8
  br label %206

41:                                               ; preds = %36, %33
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = icmp eq %struct.TYPE_8__* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %45, i64* %3, align 8
  br label %206

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sdmmc_slot_info, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %10, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @SDMMC_SLOT_WIDTH_DEFAULT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %46
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  br label %76

67:                                               ; preds = %46
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %74, i64* %3, align 8
  br label %206

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %63
  %77 = load i32, i32* %9, align 4
  %78 = load i32*, i32** @s_slot_width, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @configure_pin(i32 %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 12
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @configure_pin(i32 %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @configure_pin(i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = icmp sge i32 %94, 4
  br i1 %95, label %96, label %141

96:                                               ; preds = %76
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @configure_pin(i32 %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @configure_pin(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %106 = load i32, i32* @GPIO_INTR_DISABLE, align 4
  store i32 %106, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i32 0, i32* %107, align 4
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  store i32 0, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  %110 = load i32, i32* @GPIO_MODE_OUTPUT, align 4
  store i32 %110, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @BIT(i32 %114)
  store i32 %115, i32* %111, align 4
  %116 = call i32 @gpio_config(%struct.TYPE_9__* %11)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @gpio_set_level(i32 %119, i32 1)
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, 8
  br i1 %122, label %123, label %140

123:                                              ; preds = %96
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @configure_pin(i32 %126)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @configure_pin(i32 %130)
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @configure_pin(i32 %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @configure_pin(i32 %138)
  br label %140

140:                                              ; preds = %123, %96
  br label %141

141:                                              ; preds = %140, %76
  %142 = load i32, i32* @GPIO_FUNC_IN_HIGH, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @gpio_matrix_in(i32 %142, i32 %145, i32 0)
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @SDMMC_SLOT_NO_CD, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %141
  %151 = load i32, i32* @TAG, align 4
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @ESP_LOGD(i32 %151, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @gpio_pad_select_gpio(i32 %154)
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %158 = call i32 @gpio_set_direction(i32 %156, i32 %157)
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %12, align 4
  br label %162

160:                                              ; preds = %141
  %161 = load i32, i32* @GPIO_FUNC_IN_LOW, align 4
  store i32 %161, i32* %12, align 4
  br label %162

162:                                              ; preds = %160, %150
  %163 = load i32, i32* %12, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @gpio_matrix_in(i32 %163, i32 %166, i32 0)
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @SDMMC_SLOT_NO_WP, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %162
  %172 = load i32, i32* @TAG, align 4
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @ESP_LOGD(i32 %172, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @gpio_pad_select_gpio(i32 %175)
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %179 = call i32 @gpio_set_direction(i32 %177, i32 %178)
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %13, align 4
  br label %183

181:                                              ; preds = %162
  %182 = load i32, i32* @GPIO_FUNC_IN_HIGH, align 4
  store i32 %182, i32* %13, align 4
  br label %183

183:                                              ; preds = %181, %171
  %184 = load i32, i32* %13, align 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @gpio_matrix_in(i32 %184, i32 %187, i32 1)
  %189 = load i32, i32* %4, align 4
  %190 = call i64 @sdmmc_host_set_card_clk(i32 %189, i32 400)
  store i64 %190, i64* %14, align 8
  %191 = load i64, i64* %14, align 8
  %192 = load i64, i64* @ESP_OK, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %183
  %195 = load i64, i64* %14, align 8
  store i64 %195, i64* %3, align 8
  br label %206

196:                                              ; preds = %183
  %197 = load i32, i32* %4, align 4
  %198 = call i64 @sdmmc_host_set_bus_width(i32 %197, i32 1)
  store i64 %198, i64* %14, align 8
  %199 = load i64, i64* %14, align 8
  %200 = load i64, i64* @ESP_OK, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %196
  %203 = load i64, i64* %14, align 8
  store i64 %203, i64* %3, align 8
  br label %206

204:                                              ; preds = %196
  %205 = load i64, i64* @ESP_OK, align 8
  store i64 %205, i64* %3, align 8
  br label %206

206:                                              ; preds = %204, %202, %194, %73, %44, %39, %31
  %207 = load i64, i64* %3, align 8
  ret i64 %207
}

declare dso_local i32 @sdmmc_host_pullup_en(i32, i32) #1

declare dso_local i32 @configure_pin(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @gpio_config(%struct.TYPE_9__*) #1

declare dso_local i32 @gpio_set_level(i32, i32) #1

declare dso_local i32 @gpio_matrix_in(i32, i32, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @gpio_pad_select_gpio(i32) #1

declare dso_local i32 @gpio_set_direction(i32, i32) #1

declare dso_local i64 @sdmmc_host_set_card_clk(i32, i32) #1

declare dso_local i64 @sdmmc_host_set_bus_width(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
