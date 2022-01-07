; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl.c_esp_local_ctrl_remove_property.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl.c_esp_local_ctrl_remove_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32, i32 (i32)* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Property %s not found\00", align 1
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@local_ctrl_inst_ctx = common dso_local global %struct.TYPE_3__* null, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_local_ctrl_remove_property(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @esp_local_ctrl_get_property_index(i8* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @TAG, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @ESP_LOGE(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  store i32 %14, i32* %2, align 4
  br label %111

15:                                               ; preds = %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @local_ctrl_inst_ctx, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = icmp ne i32 (i32)* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %15
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @local_ctrl_inst_ctx, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %29, i64 %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @local_ctrl_inst_ctx, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %38, i64 %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %35(i32 %44)
  br label %46

46:                                               ; preds = %26, %15
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @local_ctrl_inst_ctx, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %49, i64 %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = call i32 @free(%struct.TYPE_4__* %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @local_ctrl_inst_ctx, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %59, i64 %61
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = call i32 @free(%struct.TYPE_4__* %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @local_ctrl_inst_ctx, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %67, i64 %70
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %71, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %102, %46
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @local_ctrl_inst_ctx, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %105

80:                                               ; preds = %74
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @local_ctrl_inst_ctx, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %82, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %83, i64 %84
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = icmp eq %struct.TYPE_4__* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %105

89:                                               ; preds = %80
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @local_ctrl_inst_ctx, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %91, align 8
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %92, i64 %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @local_ctrl_inst_ctx, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = sub i64 %99, 1
  %101 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %98, i64 %100
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %101, align 8
  br label %102

102:                                              ; preds = %89
  %103 = load i64, i64* %5, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %5, align 8
  br label %74

105:                                              ; preds = %88, %74
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** @local_ctrl_inst_ctx, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, -1
  store i64 %109, i64* %107, align 8
  %110 = load i32, i32* @ESP_OK, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %105, %10
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @esp_local_ctrl_get_property_index(i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
