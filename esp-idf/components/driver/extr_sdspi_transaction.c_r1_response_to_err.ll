; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdspi_transaction.c_r1_response_to_err.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdspi_transaction.c_r1_response_to_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_SPI_R1_NO_RESPONSE = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cmd=%d, R1 response not found\00", align 1
@ESP_ERR_TIMEOUT = common dso_local global i32 0, align 4
@SD_SPI_R1_CMD_CRC_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"cmd=%d, R1 response: command CRC error\00", align 1
@ESP_ERR_INVALID_CRC = common dso_local global i32 0, align 4
@SD_SPI_R1_ILLEGAL_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"cmd=%d, R1 response: command not supported\00", align 1
@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@SD_SPI_R1_ADDR_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"cmd=%d, R1 response: alignment error\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@SD_SPI_R1_PARAM_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"cmd=%d, R1 response: size error\00", align 1
@ESP_ERR_INVALID_SIZE = common dso_local global i32 0, align 4
@SD_SPI_R1_ERASE_RST = common dso_local global i32 0, align 4
@SD_SPI_R1_ERASE_SEQ_ERR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@SD_SPI_R1_IDLE_STATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"cmd=%d, R1 response: unexpected value 0x%02x\00", align 1
@ESP_ERR_INVALID_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @r1_response_to_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r1_response_to_err(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SD_SPI_R1_NO_RESPONSE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* @TAG, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i32, i8*, i32, ...) @ESP_LOGD(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @ESP_ERR_TIMEOUT, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  br label %97

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SD_SPI_R1_CMD_CRC_ERR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* @TAG, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i32, i8*, i32, ...) @ESP_LOGD(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ESP_ERR_INVALID_CRC, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  br label %96

28:                                               ; preds = %17
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SD_SPI_R1_ILLEGAL_CMD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @TAG, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (i32, i8*, i32, ...) @ESP_LOGD(i32 %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %95

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @SD_SPI_R1_ADDR_ERR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* @TAG, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i32, i8*, i32, ...) @ESP_LOGD(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %94

50:                                               ; preds = %39
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @SD_SPI_R1_PARAM_ERR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* @TAG, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i32, i8*, i32, ...) @ESP_LOGD(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @ESP_ERR_INVALID_SIZE, align 4
  %60 = load i32*, i32** %6, align 8
  store i32 %59, i32* %60, align 4
  br label %93

61:                                               ; preds = %50
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @SD_SPI_R1_ERASE_RST, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @SD_SPI_R1_ERASE_SEQ_ERR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66, %61
  %72 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %73 = load i32*, i32** %6, align 8
  store i32 %72, i32* %73, align 4
  br label %92

74:                                               ; preds = %66
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @SD_SPI_R1_IDLE_STATE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %91

80:                                               ; preds = %74
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* @TAG, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 (i32, i8*, i32, ...) @ESP_LOGD(i32 %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* @ESP_ERR_INVALID_RESPONSE, align 4
  %89 = load i32*, i32** %6, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %83, %80
  br label %91

91:                                               ; preds = %90, %79
  br label %92

92:                                               ; preds = %91, %71
  br label %93

93:                                               ; preds = %92, %55
  br label %94

94:                                               ; preds = %93, %44
  br label %95

95:                                               ; preds = %94, %33
  br label %96

96:                                               ; preds = %95, %22
  br label %97

97:                                               ; preds = %96, %11
  ret void
}

declare dso_local i32 @ESP_LOGD(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
