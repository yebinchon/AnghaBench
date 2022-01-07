; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl.c_esp_local_ctrl_get_prop_values.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl.c_esp_local_ctrl_get_prop_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_12__**, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 (i64, %struct.TYPE_14__*, %struct.TYPE_13__*, i32)* }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@local_ctrl_inst_ctx = common dso_local global %struct.TYPE_16__* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Service not running\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid property index %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_local_ctrl_get_prop_values(i64 %0, i64* %1, %struct.TYPE_14__* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** @local_ctrl_inst_ctx, align 8
  %15 = icmp ne %struct.TYPE_16__* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @TAG, align 4
  %18 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %19, i32* %5, align 4
  br label %185

20:                                               ; preds = %4
  %21 = load i64*, i64** %7, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = icmp ne %struct.TYPE_14__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %28 = icmp ne %struct.TYPE_13__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26, %23, %20
  %30 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %30, i32* %5, align 4
  br label %185

31:                                               ; preds = %26
  store i64 0, i64* %10, align 8
  br label %32

32:                                               ; preds = %129, %31
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %132

36:                                               ; preds = %32
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** @local_ctrl_inst_ctx, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp uge i64 %40, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load i32, i32* @TAG, align 4
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %52, i32* %5, align 4
  br label %185

53:                                               ; preds = %36
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** @local_ctrl_inst_ctx, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %55, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %56, i64 %60
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 4
  store i32 %64, i32* %68, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** @local_ctrl_inst_ctx, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %70, align 8
  %72 = load i64*, i64** %7, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %71, i64 %75
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 3
  store i32 %79, i32* %83, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** @local_ctrl_inst_ctx, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %85, align 8
  %87 = load i64*, i64** %7, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %86, i64 %90
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  store i32 %94, i32* %98, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** @local_ctrl_inst_ctx, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %100, align 8
  %102 = load i64*, i64** %7, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %101, i64 %105
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  store i64 %109, i64* %113, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** @local_ctrl_inst_ctx, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %115, align 8
  %117 = load i64*, i64** %7, align 8
  %118 = load i64, i64* %10, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %116, i64 %120
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %126 = load i64, i64* %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 8
  br label %129

129:                                              ; preds = %53
  %130 = load i64, i64* %10, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %10, align 8
  br label %32

132:                                              ; preds = %32
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** @local_ctrl_inst_ctx, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  store %struct.TYPE_15__* %135, %struct.TYPE_15__** %11, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32 (i64, %struct.TYPE_14__*, %struct.TYPE_13__*, i32)*, i32 (i64, %struct.TYPE_14__*, %struct.TYPE_13__*, i32)** %137, align 8
  %139 = load i64, i64* %6, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 %138(i64 %139, %struct.TYPE_14__* %140, %struct.TYPE_13__* %141, i32 %144)
  store i32 %145, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %146

146:                                              ; preds = %180, %132
  %147 = load i64, i64* %13, align 8
  %148 = load i64, i64* %6, align 8
  %149 = icmp ult i64 %147, %148
  br i1 %149, label %150, label %183

150:                                              ; preds = %146
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** @local_ctrl_inst_ctx, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %152, align 8
  %154 = load i64*, i64** %7, align 8
  %155 = load i64, i64* %13, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %153, i64 %157
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %179

163:                                              ; preds = %150
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** @local_ctrl_inst_ctx, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %165, align 8
  %167 = load i64*, i64** %7, align 8
  %168 = load i64, i64* %13, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %166, i64 %170
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %176 = load i64, i64* %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  store i64 %174, i64* %178, align 8
  br label %179

179:                                              ; preds = %163, %150
  br label %180

180:                                              ; preds = %179
  %181 = load i64, i64* %13, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %13, align 8
  br label %146

183:                                              ; preds = %146
  %184 = load i32, i32* %12, align 4
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %183, %45, %29, %16
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
