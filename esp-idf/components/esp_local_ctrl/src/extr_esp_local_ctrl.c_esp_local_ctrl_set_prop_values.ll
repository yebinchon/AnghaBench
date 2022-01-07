; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl.c_esp_local_ctrl_set_prop_values.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl.c_esp_local_ctrl_set_prop_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_13__, %struct.TYPE_12__** }
%struct.TYPE_13__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 (i64, %struct.TYPE_15__*, %struct.TYPE_14__*, i32)* }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32 }

@local_ctrl_inst_ctx = common dso_local global %struct.TYPE_17__* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Service not running\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Unable to allocate memory for properties array\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid property index %d\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Invalid property size %d. Expected %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_local_ctrl_set_prop_values(i64 %0, i64* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** @local_ctrl_inst_ctx, align 8
  %13 = icmp ne %struct.TYPE_17__* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @TAG, align 4
  %16 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %17, i32* %4, align 4
  br label %208

18:                                               ; preds = %3
  %19 = load i64*, i64** %6, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = icmp ne %struct.TYPE_14__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %25, i32* %4, align 4
  br label %208

26:                                               ; preds = %21
  %27 = load i64, i64* %5, align 8
  %28 = call %struct.TYPE_15__* @calloc(i64 %27, i32 24)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %8, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = icmp ne %struct.TYPE_15__* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @TAG, align 4
  %33 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %34, i32* %4, align 4
  br label %208

35:                                               ; preds = %26
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %188, %35
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %191

40:                                               ; preds = %36
  %41 = load i64*, i64** %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** @local_ctrl_inst_ctx, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp uge i64 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load i32, i32* @TAG, align 4
  %51 = load i64*, i64** %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = call i32 @free(%struct.TYPE_15__* %56)
  %58 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %58, i32* %4, align 4
  br label %208

59:                                               ; preds = %40
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** @local_ctrl_inst_ctx, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %61, align 8
  %63 = load i64*, i64** %6, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %62, i64 %66
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %70, %75
  br i1 %76, label %77, label %112

77:                                               ; preds = %59
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** @local_ctrl_inst_ctx, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %79, align 8
  %81 = load i64*, i64** %6, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %80, i64 %84
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %77
  %91 = load i32, i32* @TAG, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** @local_ctrl_inst_ctx, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %98, align 8
  %100 = load i64*, i64** %6, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %99, i64 %103
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %96, i64 %107)
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %110 = call i32 @free(%struct.TYPE_15__* %109)
  %111 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %111, i32* %4, align 4
  br label %208

112:                                              ; preds = %77, %59
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** @local_ctrl_inst_ctx, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %114, align 8
  %116 = load i64*, i64** %6, align 8
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %115, i64 %119
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %125 = load i64, i64* %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 4
  store i32 %123, i32* %127, align 4
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** @local_ctrl_inst_ctx, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %129, align 8
  %131 = load i64*, i64** %6, align 8
  %132 = load i64, i64* %9, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %130, i64 %134
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %140 = load i64, i64* %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 3
  store i32 %138, i32* %142, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** @local_ctrl_inst_ctx, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %144, align 8
  %146 = load i64*, i64** %6, align 8
  %147 = load i64, i64* %9, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %145, i64 %149
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %155 = load i64, i64* %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  store i32 %153, i32* %157, align 4
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** @local_ctrl_inst_ctx, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %159, align 8
  %161 = load i64*, i64** %6, align 8
  %162 = load i64, i64* %9, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %160, i64 %164
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %170 = load i64, i64* %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  store i64 %168, i64* %172, align 8
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** @local_ctrl_inst_ctx, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %174, align 8
  %176 = load i64*, i64** %6, align 8
  %177 = load i64, i64* %9, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %175, i64 %179
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %185 = load i64, i64* %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  store i32 %183, i32* %187, align 8
  br label %188

188:                                              ; preds = %112
  %189 = load i64, i64* %9, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %9, align 8
  br label %36

191:                                              ; preds = %36
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** @local_ctrl_inst_ctx, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  store %struct.TYPE_16__* %194, %struct.TYPE_16__** %10, align 8
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load i32 (i64, %struct.TYPE_15__*, %struct.TYPE_14__*, i32)*, i32 (i64, %struct.TYPE_15__*, %struct.TYPE_14__*, i32)** %196, align 8
  %198 = load i64, i64* %5, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 %197(i64 %198, %struct.TYPE_15__* %199, %struct.TYPE_14__* %200, i32 %203)
  store i32 %204, i32* %11, align 4
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %206 = call i32 @free(%struct.TYPE_15__* %205)
  %207 = load i32, i32* %11, align 4
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %191, %90, %49, %31, %24, %14
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local %struct.TYPE_15__* @calloc(i64, i32) #1

declare dso_local i32 @free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
