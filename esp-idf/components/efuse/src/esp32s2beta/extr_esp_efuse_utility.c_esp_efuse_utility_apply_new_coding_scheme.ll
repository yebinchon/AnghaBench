; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32s2beta/extr_esp_efuse_utility.c_esp_efuse_utility_apply_new_coding_scheme.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32s2beta/extr_esp_efuse_utility.c_esp_efuse_utility_apply_new_coding_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@COUNT_EFUSE_BLOCKS = common dso_local global i32 0, align 4
@EFUSE_CODING_SCHEME_RS = common dso_local global i64 0, align 8
@range_write_addr_blocks = common dso_local global %struct.TYPE_3__* null, align 8
@range_read_addr_blocks = common dso_local global %struct.TYPE_4__* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Bits are not empty. Write operation is forbidden.\00", align 1
@ESP_ERR_CODING = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_efuse_utility_apply_new_coding_scheme() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 1, i32* %2, align 4
  br label %6

6:                                                ; preds = %73, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @COUNT_EFUSE_BLOCKS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %76

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @esp_efuse_get_coding_scheme(i32 %11)
  %13 = load i64, i64* @EFUSE_CODING_SCHEME_RS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %72

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @range_write_addr_blocks, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %68, %15
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @range_write_addr_blocks, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %23, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %22
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @REG_READ(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @range_read_addr_blocks, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %61, %35
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @range_read_addr_blocks, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sle i64 %43, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %42
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @esp_efuse_utility_read_reg(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @TAG, align 4
  %58 = call i32 @ESP_LOGE(i32 %57, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ESP_ERR_CODING, align 4
  store i32 %59, i32* %1, align 4
  br label %78

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %5, align 8
  %63 = add nsw i64 %62, 4
  store i64 %63, i64* %5, align 8
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %42

66:                                               ; preds = %42
  br label %71

67:                                               ; preds = %31
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %3, align 8
  %70 = add nsw i64 %69, 4
  store i64 %70, i64* %3, align 8
  br label %22

71:                                               ; preds = %66, %22
  br label %72

72:                                               ; preds = %71, %10
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %2, align 4
  br label %6

76:                                               ; preds = %6
  %77 = load i32, i32* @ESP_OK, align 4
  store i32 %77, i32* %1, align 4
  br label %78

78:                                               ; preds = %76, %56
  %79 = load i32, i32* %1, align 4
  ret i32 %79
}

declare dso_local i64 @esp_efuse_get_coding_scheme(i32) #1

declare dso_local i64 @REG_READ(i64) #1

declare dso_local i64 @esp_efuse_utility_read_reg(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
