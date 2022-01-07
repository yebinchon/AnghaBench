; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_bg96.c_bg96_handle_cgmm.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_bg96.c_bg96_handle_cgmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ESP_FAIL = common dso_local global i32 0, align 4
@MODEM_RESULT_CODE_SUCCESS = common dso_local global i32 0, align 4
@MODEM_STATE_SUCCESS = common dso_local global i32 0, align 4
@MODEM_RESULT_CODE_ERROR = common dso_local global i32 0, align 4
@MODEM_STATE_FAIL = common dso_local global i32 0, align 4
@MODEM_MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @bg96_handle_cgmm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bg96_handle_cgmm(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @ESP_FAIL, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @MODEM_RESULT_CODE_SUCCESS, align 4
  %10 = call i64 @strstr(i8* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = load i32, i32* @MODEM_STATE_SUCCESS, align 4
  %15 = call i32 @esp_modem_process_command_done(%struct.TYPE_4__* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @MODEM_RESULT_CODE_ERROR, align 4
  %19 = call i64 @strstr(i8* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = load i32, i32* @MODEM_STATE_FAIL, align 4
  %24 = call i32 @esp_modem_process_command_done(%struct.TYPE_4__* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %42

25:                                               ; preds = %16
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MODEM_MAX_NAME_LENGTH, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @snprintf(i32 %28, i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @strip_cr_lf_tail(i32 %37, i32 %38)
  %40 = load i32, i32* @ESP_OK, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %34, %25
  br label %42

42:                                               ; preds = %41, %21
  br label %43

43:                                               ; preds = %42, %12
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @strstr(i8*, i32) #1

declare dso_local i32 @esp_modem_process_command_done(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @strip_cr_lf_tail(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
