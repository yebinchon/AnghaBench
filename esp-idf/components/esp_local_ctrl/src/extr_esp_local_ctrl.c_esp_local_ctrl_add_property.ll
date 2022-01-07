; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl.c_esp_local_ctrl_add_property.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl.c_esp_local_ctrl_add_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__**, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@local_ctrl_inst_ctx = common dso_local global %struct.TYPE_9__* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Service not running\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Property with name %s exists\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Max properties limit reached. Cannot add property %s\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Failed to allocate memory for new property %s\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Failed to allocate memory for property data %s\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_local_ctrl_add_property(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_ctrl_inst_ctx, align 8
  %6 = icmp ne %struct.TYPE_9__* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @TAG, align 4
  %9 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %10, i32* %2, align 4
  br label %170

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %11
  %20 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %20, i32* %2, align 4
  br label %170

21:                                               ; preds = %14
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @esp_local_ctrl_get_property_index(i32 %24)
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* @TAG, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %33, i32* %2, align 4
  br label %170

34:                                               ; preds = %21
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_ctrl_inst_ctx, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_ctrl_inst_ctx, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load i32, i32* @TAG, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %49, i32* %2, align 4
  br label %170

50:                                               ; preds = %34
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_ctrl_inst_ctx, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %4, align 8
  %54 = call %struct.TYPE_10__* @calloc(i32 1, i32 24)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_ctrl_inst_ctx, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %57, i64 %58
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_ctrl_inst_ctx, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %61, align 8
  %63 = load i64, i64* %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %62, i64 %63
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = icmp ne %struct.TYPE_10__* %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %50
  %68 = load i32, i32* @TAG, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %68, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %73, i32* %2, align 4
  br label %170

74:                                               ; preds = %50
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strdup(i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_ctrl_inst_ctx, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %81, i64 %82
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 5
  store i32 %78, i32* %85, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_ctrl_inst_ctx, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %87, align 8
  %89 = load i64, i64* %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %88, i64 %89
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %114, label %95

95:                                               ; preds = %74
  %96 = load i32, i32* @TAG, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %96, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_ctrl_inst_ctx, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %102, align 8
  %104 = load i64, i64* %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %103, i64 %104
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = call i32 @free(%struct.TYPE_10__* %106)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_ctrl_inst_ctx, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %109, align 8
  %111 = load i64, i64* %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %110, i64 %111
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %112, align 8
  %113 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %113, i32* %2, align 4
  br label %170

114:                                              ; preds = %74
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_ctrl_inst_ctx, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %119, align 8
  %121 = load i64, i64* %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %120, i64 %121
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 4
  store i32 %117, i32* %124, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_ctrl_inst_ctx, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %129, align 8
  %131 = load i64, i64* %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %130, i64 %131
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 3
  store i32 %127, i32* %134, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_ctrl_inst_ctx, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %139, align 8
  %141 = load i64, i64* %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %140, i64 %141
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  store i32 %137, i32* %144, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_ctrl_inst_ctx, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %149, align 8
  %151 = load i64, i64* %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %150, i64 %151
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  store i32 %147, i32* %154, align 4
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_ctrl_inst_ctx, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %159, align 8
  %161 = load i64, i64* %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %160, i64 %161
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  store i32 %157, i32* %164, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_ctrl_inst_ctx, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %166, align 8
  %169 = load i32, i32* @ESP_OK, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %114, %95, %67, %43, %27, %19, %7
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i64 @esp_local_ctrl_get_property_index(i32) #1

declare dso_local %struct.TYPE_10__* @calloc(i32, i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
