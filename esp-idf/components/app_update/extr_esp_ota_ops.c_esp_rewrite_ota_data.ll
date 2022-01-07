; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_rewrite_ota_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_rewrite_ota_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @esp_rewrite_ota_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_rewrite_ota_data(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x %struct.TYPE_5__], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %13 = call i32* @read_otadata(%struct.TYPE_5__* %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  store i32 %17, i32* %2, align 4
  br label %87

18:                                               ; preds = %1
  %19 = call i32 (...) @get_ota_partition_count()
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @SUB_TYPE_ID(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %25, i32* %2, align 4
  br label %87

26:                                               ; preds = %18
  %27 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %28 = call i32 @bootloader_common_get_active_otadata(%struct.TYPE_5__* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %74

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 16
  store i32 %36, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %49, %31
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @SUB_TYPE_ID(i32 %39)
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* %6, align 4
  %43 = srem i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %43, %46
  %48 = icmp sgt i32 %38, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %37

52:                                               ; preds = %37
  %53 = load i32, i32* %7, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %54, 1
  store i32 %55, i32* %10, align 4
  %56 = call i8* (...) @set_new_state_otadata()
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i8* %56, i8** %60, align 8
  %61 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @SUB_TYPE_ID(i32 %62)
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* %6, align 4
  %66 = srem i32 %64, %65
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 %67, %68
  %70 = add nsw i32 %66, %69
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @rewrite_ota_seq(%struct.TYPE_5__* %61, i32 %70, i32 %71, i32* %72)
  store i32 %73, i32* %2, align 4
  br label %87

74:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  %75 = call i8* (...) @set_new_state_otadata()
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i8* %75, i8** %79, align 8
  %80 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @SUB_TYPE_ID(i32 %81)
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %11, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @rewrite_ota_seq(%struct.TYPE_5__* %80, i32 %83, i32 %84, i32* %85)
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %74, %52, %24, %16
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32* @read_otadata(%struct.TYPE_5__*) #1

declare dso_local i32 @get_ota_partition_count(...) #1

declare dso_local i32 @SUB_TYPE_ID(i32) #1

declare dso_local i32 @bootloader_common_get_active_otadata(%struct.TYPE_5__*) #1

declare dso_local i8* @set_new_state_otadata(...) #1

declare dso_local i32 @rewrite_ota_seq(%struct.TYPE_5__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
