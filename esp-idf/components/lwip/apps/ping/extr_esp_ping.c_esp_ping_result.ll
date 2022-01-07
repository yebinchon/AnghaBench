; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/apps/ping/extr_esp_ping.c_esp_ping_result.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/apps/ping/extr_esp_ping.c_esp_ping_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 (i32, %struct.TYPE_4__*)* }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32, i32, i32, i64, i64, i64 }

@ESP_OK = common dso_local global i32 0, align 4
@ping_option_info = common dso_local global %struct.TYPE_5__* null, align 8
@PING_RES_FINISH = common dso_local global i64 0, align 8
@PING_RES_TIMEOUT = common dso_local global i64 0, align 8
@PING_TARGET_RES_FN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_ping_result(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @ESP_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 9
  store i64 %9, i64* %12, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @PING_RES_FINISH, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %92

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 8
  store i64 %17, i64* %20, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 7
  store i64 %21, i64* %24, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %25
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @PING_RES_TIMEOUT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %16
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %91

47:                                               ; preds = %16
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %54, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %53, %47
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %53
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %66, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i64 %73, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %65
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %78
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %77, %41
  br label %92

92:                                               ; preds = %91, %3
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32 (i32, %struct.TYPE_4__*)*, i32 (i32, %struct.TYPE_4__*)** %94, align 8
  %96 = icmp ne i32 (i32, %struct.TYPE_4__*)* %95, null
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32 (i32, %struct.TYPE_4__*)*, i32 (i32, %struct.TYPE_4__*)** %99, align 8
  %101 = load i32, i32* @PING_TARGET_RES_FN, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = call i32 %100(i32 %101, %struct.TYPE_4__* %103)
  %105 = load i64, i64* %4, align 8
  %106 = load i64, i64* @PING_RES_FINISH, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %97
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ping_option_info, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = call i32 @memset(%struct.TYPE_4__* %110, i32 0, i32 4)
  br label %112

112:                                              ; preds = %108, %97
  br label %113

113:                                              ; preds = %112, %92
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
