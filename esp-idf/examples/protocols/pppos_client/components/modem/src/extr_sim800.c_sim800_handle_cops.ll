; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_sim800.c_sim800_handle_cops.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_sim800.c_sim800_handle_cops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ESP_FAIL = common dso_local global i32 0, align 4
@MODEM_RESULT_CODE_SUCCESS = common dso_local global i32 0, align 4
@MODEM_STATE_SUCCESS = common dso_local global i32 0, align 4
@MODEM_RESULT_CODE_ERROR = common dso_local global i32 0, align 4
@MODEM_STATE_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"+COPS\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@MODEM_MAX_OPERATOR_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @sim800_handle_cops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sim800_handle_cops(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [3 x i8*], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* @ESP_FAIL, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @MODEM_RESULT_CODE_SUCCESS, align 4
  %15 = call i64 @strstr(i8* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = load i32, i32* @MODEM_STATE_SUCCESS, align 4
  %20 = call i32 @esp_modem_process_command_done(%struct.TYPE_4__* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %83

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @MODEM_RESULT_CODE_ERROR, align 4
  %24 = call i64 @strstr(i8* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = load i32, i32* @MODEM_STATE_FAIL, align 4
  %29 = call i32 @esp_modem_process_command_done(%struct.TYPE_4__* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %82

30:                                               ; preds = %21
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %81, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  %39 = call i8* @malloc(i64 %38)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strcpy(i8* %40, i8* %41)
  store i8* null, i8** %8, align 8
  store i64 0, i64* %10, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i8* @strtok_r(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 %45
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %52, %34
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %10, align 8
  %56 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 %55
  store i8* %53, i8** %56, align 8
  br label %47

57:                                               ; preds = %47
  %58 = load i64, i64* %10, align 8
  %59 = icmp uge i64 %58, 3
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MODEM_MAX_OPERATOR_LENGTH, align 4
  %65 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 2
  %66 = load i8*, i8** %65, align 16
  %67 = call i32 @snprintf(i32 %63, i32 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp sgt i32 %68, 2
  br i1 %69, label %70, label %77

70:                                               ; preds = %60
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @strip_cr_lf_tail(i32 %73, i32 %74)
  %76 = load i32, i32* @ESP_OK, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %70, %60
  br label %78

78:                                               ; preds = %77, %57
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @free(i8* %79)
  br label %81

81:                                               ; preds = %78, %30
  br label %82

82:                                               ; preds = %81, %26
  br label %83

83:                                               ; preds = %82, %17
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @strstr(i8*, i32) #1

declare dso_local i32 @esp_modem_process_command_done(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @strip_cr_lf_tail(i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
