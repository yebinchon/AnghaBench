; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_pcnt.c_pcnt_unit_config.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_pcnt.c_pcnt_unit_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@PCNT_UNIT_MAX = common dso_local global i64 0, align 8
@PCNT_UNIT_ERR_STR = common dso_local global i8* null, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@PCNT_CHANNEL_MAX = common dso_local global i64 0, align 8
@PCNT_CHANNEL_ERR_STR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"PCNT pulse input io error\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"PCNT ctrl io error\00", align 1
@PCNT_COUNT_MAX = common dso_local global i32 0, align 4
@PCNT_COUNT_MODE_ERR_STR = common dso_local global i8* null, align 8
@PCNT_MODE_MAX = common dso_local global i32 0, align 4
@PCNT_CTRL_MODE_ERR_STR = common dso_local global i8* null, align 8
@pcnt_unit_config.pcnt_enable = internal global i32 0, align 4
@PERIPH_PCNT_MODULE = common dso_local global i32 0, align 4
@PCNT_EVT_H_LIM = common dso_local global i32 0, align 4
@PCNT_EVT_L_LIM = common dso_local global i32 0, align 4
@PCNT_EVT_ZERO = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcnt_unit_config(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @PCNT_UNIT_MAX, align 8
  %21 = icmp slt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i8*, i8** @PCNT_UNIT_ERR_STR, align 8
  %24 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %25 = call i32 @PCNT_CHECK(i32 %22, i8* %23, i32 %24)
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @PCNT_CHANNEL_MAX, align 8
  %28 = icmp slt i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i8*, i8** @PCNT_CHANNEL_ERR_STR, align 8
  %31 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %32 = call i32 @PCNT_CHECK(i32 %29, i8* %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @GPIO_IS_VALID_GPIO(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %40, %41
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i1 [ false, %35 ], [ %42, %39 ]
  br label %45

45:                                               ; preds = %43, %1
  %46 = phi i1 [ true, %1 ], [ %44, %43 ]
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %49 = call i32 @PCNT_CHECK(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @GPIO_IS_VALID_GPIO(i32 %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %52, %45
  %57 = phi i1 [ true, %45 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %60 = call i32 @PCNT_CHECK(i32 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PCNT_COUNT_MAX, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @PCNT_COUNT_MAX, align 4
  %71 = icmp slt i32 %69, %70
  br label %72

72:                                               ; preds = %66, %56
  %73 = phi i1 [ false, %56 ], [ %71, %66 ]
  %74 = zext i1 %73 to i32
  %75 = load i8*, i8** @PCNT_COUNT_MODE_ERR_STR, align 8
  %76 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %77 = call i32 @PCNT_CHECK(i32 %74, i8* %75, i32 %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @PCNT_MODE_MAX, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %72
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PCNT_MODE_MAX, align 4
  %88 = icmp slt i32 %86, %87
  br label %89

89:                                               ; preds = %83, %72
  %90 = phi i1 [ false, %72 ], [ %88, %83 ]
  %91 = zext i1 %90 to i32
  %92 = load i8*, i8** @PCNT_CTRL_MODE_ERR_STR, align 8
  %93 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %94 = call i32 @PCNT_CHECK(i32 %91, i8* %92, i32 %93)
  %95 = load i32, i32* @pcnt_unit_config.pcnt_enable, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32, i32* @PERIPH_PCNT_MODULE, align 4
  %99 = call i32 @periph_module_reset(i32 %98)
  store i32 1, i32* @pcnt_unit_config.pcnt_enable, align 4
  br label %100

100:                                              ; preds = %97, %89
  %101 = load i32, i32* @PERIPH_PCNT_MODULE, align 4
  %102 = call i32 @periph_module_enable(i32 %101)
  %103 = load i64, i64* %3, align 8
  %104 = load i32, i32* @PCNT_EVT_H_LIM, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @pcnt_set_event_value(i64 %103, i32 %104, i32 %107)
  %109 = load i64, i64* %3, align 8
  %110 = load i32, i32* @PCNT_EVT_L_LIM, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @pcnt_set_event_value(i64 %109, i32 %110, i32 %113)
  %115 = load i64, i64* %3, align 8
  %116 = load i32, i32* @PCNT_EVT_H_LIM, align 4
  %117 = call i32 @pcnt_event_disable(i64 %115, i32 %116)
  %118 = load i64, i64* %3, align 8
  %119 = load i32, i32* @PCNT_EVT_L_LIM, align 4
  %120 = call i32 @pcnt_event_disable(i64 %118, i32 %119)
  %121 = load i64, i64* %3, align 8
  %122 = load i32, i32* @PCNT_EVT_ZERO, align 4
  %123 = call i32 @pcnt_event_disable(i64 %121, i32 %122)
  %124 = load i64, i64* %3, align 8
  %125 = call i32 @pcnt_filter_disable(i64 %124)
  %126 = load i64, i64* %3, align 8
  %127 = load i64, i64* %4, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @pcnt_set_mode(i64 %126, i64 %127, i32 %130, i32 %133, i32 %136, i32 %139)
  %141 = load i64, i64* %3, align 8
  %142 = load i64, i64* %4, align 8
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @pcnt_set_pin(i64 %141, i64 %142, i32 %143, i32 %144)
  %146 = load i32, i32* @ESP_OK, align 4
  ret i32 %146
}

declare dso_local i32 @PCNT_CHECK(i32, i8*, i32) #1

declare dso_local i64 @GPIO_IS_VALID_GPIO(i32) #1

declare dso_local i32 @periph_module_reset(i32) #1

declare dso_local i32 @periph_module_enable(i32) #1

declare dso_local i32 @pcnt_set_event_value(i64, i32, i32) #1

declare dso_local i32 @pcnt_event_disable(i64, i32) #1

declare dso_local i32 @pcnt_filter_disable(i64) #1

declare dso_local i32 @pcnt_set_mode(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @pcnt_set_pin(i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
