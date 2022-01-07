; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32s2beta/extr_esp_efuse_api.c_esp_efuse_set_write_protect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32s2beta/extr_esp_efuse_api.c_esp_efuse_set_write_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFUSE_BLK1 = common dso_local global i64 0, align 8
@ESP_EFUSE_WR_DIS_BLK1 = common dso_local global i32 0, align 4
@EFUSE_BLK2 = common dso_local global i64 0, align 8
@ESP_EFUSE_WR_DIS_SYS_DATA_PART1 = common dso_local global i32 0, align 4
@EFUSE_BLK3 = common dso_local global i64 0, align 8
@ESP_EFUSE_WR_DIS_USER_DATA = common dso_local global i32 0, align 4
@EFUSE_BLK4 = common dso_local global i64 0, align 8
@ESP_EFUSE_WR_DIS_KEY0 = common dso_local global i32 0, align 4
@EFUSE_BLK5 = common dso_local global i64 0, align 8
@ESP_EFUSE_WR_DIS_KEY1 = common dso_local global i32 0, align 4
@EFUSE_BLK6 = common dso_local global i64 0, align 8
@ESP_EFUSE_WR_DIS_KEY2 = common dso_local global i32 0, align 4
@EFUSE_BLK7 = common dso_local global i64 0, align 8
@ESP_EFUSE_WR_DIS_KEY3 = common dso_local global i32 0, align 4
@EFUSE_BLK8 = common dso_local global i64 0, align 8
@ESP_EFUSE_WR_DIS_KEY4 = common dso_local global i32 0, align 4
@EFUSE_BLK9 = common dso_local global i64 0, align 8
@ESP_EFUSE_WR_DIS_KEY5 = common dso_local global i32 0, align 4
@EFUSE_BLK10 = common dso_local global i64 0, align 8
@ESP_EFUSE_WR_DIS_SYS_DATA_PART2 = common dso_local global i32 0, align 4
@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_efuse_set_write_protect(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @EFUSE_BLK1, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ESP_EFUSE_WR_DIS_BLK1, align 4
  %9 = call i32 @esp_efuse_write_field_cnt(i32 %8, i32 1)
  store i32 %9, i32* %2, align 4
  br label %84

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @EFUSE_BLK2, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @ESP_EFUSE_WR_DIS_SYS_DATA_PART1, align 4
  %16 = call i32 @esp_efuse_write_field_cnt(i32 %15, i32 1)
  store i32 %16, i32* %2, align 4
  br label %84

17:                                               ; preds = %10
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @EFUSE_BLK3, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @ESP_EFUSE_WR_DIS_USER_DATA, align 4
  %23 = call i32 @esp_efuse_write_field_cnt(i32 %22, i32 1)
  store i32 %23, i32* %2, align 4
  br label %84

24:                                               ; preds = %17
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @EFUSE_BLK4, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @ESP_EFUSE_WR_DIS_KEY0, align 4
  %30 = call i32 @esp_efuse_write_field_cnt(i32 %29, i32 1)
  store i32 %30, i32* %2, align 4
  br label %84

31:                                               ; preds = %24
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @EFUSE_BLK5, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @ESP_EFUSE_WR_DIS_KEY1, align 4
  %37 = call i32 @esp_efuse_write_field_cnt(i32 %36, i32 1)
  store i32 %37, i32* %2, align 4
  br label %84

38:                                               ; preds = %31
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @EFUSE_BLK6, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @ESP_EFUSE_WR_DIS_KEY2, align 4
  %44 = call i32 @esp_efuse_write_field_cnt(i32 %43, i32 1)
  store i32 %44, i32* %2, align 4
  br label %84

45:                                               ; preds = %38
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* @EFUSE_BLK7, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @ESP_EFUSE_WR_DIS_KEY3, align 4
  %51 = call i32 @esp_efuse_write_field_cnt(i32 %50, i32 1)
  store i32 %51, i32* %2, align 4
  br label %84

52:                                               ; preds = %45
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @EFUSE_BLK8, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @ESP_EFUSE_WR_DIS_KEY4, align 4
  %58 = call i32 @esp_efuse_write_field_cnt(i32 %57, i32 1)
  store i32 %58, i32* %2, align 4
  br label %84

59:                                               ; preds = %52
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* @EFUSE_BLK9, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @ESP_EFUSE_WR_DIS_KEY5, align 4
  %65 = call i32 @esp_efuse_write_field_cnt(i32 %64, i32 1)
  store i32 %65, i32* %2, align 4
  br label %84

66:                                               ; preds = %59
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @EFUSE_BLK10, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @ESP_EFUSE_WR_DIS_SYS_DATA_PART2, align 4
  %72 = call i32 @esp_efuse_write_field_cnt(i32 %71, i32 1)
  store i32 %72, i32* %2, align 4
  br label %84

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %70, %63, %56, %49, %42, %35, %28, %21, %14, %7
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @esp_efuse_write_field_cnt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
