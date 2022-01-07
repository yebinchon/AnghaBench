; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/unit-test-app/components/test_utils/extr_test_utils.c_get_test_data_partition.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/unit-test-app/components/test_utils/extr_test_utils.c_get_test_data_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_PARTITION_TYPE_DATA = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"flash_test\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_test_data_partition() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @ESP_PARTITION_TYPE_DATA, align 4
  %3 = load i32, i32* @ESP_PARTITION_SUBTYPE_ANY, align 4
  %4 = call i32* @esp_partition_find_first(i32 %2, i32 %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @TEST_ASSERT_NOT_NULL(i32* %5)
  %7 = load i32*, i32** %1, align 8
  ret i32* %7
}

declare dso_local i32* @esp_partition_find_first(i32, i32, i8*) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
