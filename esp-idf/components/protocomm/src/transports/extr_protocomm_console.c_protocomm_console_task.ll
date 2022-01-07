; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_console.c_protocomm_console_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_console.c_protocomm_console_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Initializing UART on port %d\00", align 1
@__const.protocomm_console_task.console_config = private unnamed_addr constant %struct.TYPE_5__ { i32 8, i32 256 }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"\0A>> \00", align 1
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@UART_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Console dispatcher error\0A\00", align 1
@pc_console = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"Console stopped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @protocomm_console_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @protocomm_console_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca %struct.TYPE_5__, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @TAG, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ESP_LOGD(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @uart_driver_install(i32 %16, i32 256, i32 0, i32 8, i32* %8, i32 0)
  %18 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.TYPE_5__* @__const.protocomm_console_task.console_config to i8*), i64 8, i1 false)
  %19 = call i32 @esp_console_init(%struct.TYPE_5__* %10)
  %20 = call i32 (...) @esp_console_register_help_command()
  br label %21

21:                                               ; preds = %103, %1
  %22 = call i64 (...) @stopped()
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %104

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @uart_write_bytes(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %29 = call i32 @memset(i8* %28, i32 0, i32 256)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %89, %25
  %31 = load i32, i32* %8, align 4
  %32 = bitcast %struct.TYPE_4__* %9 to i8*
  %33 = load i32, i32* @portTICK_RATE_MS, align 4
  %34 = sdiv i32 10, %33
  %35 = call i64 @xQueueReceive(i32 %31, i8* %32, i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @pdPASS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = call i64 (...) @stopped()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %91

43:                                               ; preds = %39
  br label %78

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UART_DATA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %73, %49
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %53
  %55 = call i64 @uart_read_bytes(i32 %51, i8* %54, i32 1, i32 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 13
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @uart_write_bytes(i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  br label %73

67:                                               ; preds = %57
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %70
  %72 = call i32 @uart_write_bytes(i32 %68, i8* %71, i32 1)
  br label %73

73:                                               ; preds = %67, %64
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %50

76:                                               ; preds = %50
  br label %77

77:                                               ; preds = %76, %44
  br label %78

78:                                               ; preds = %77, %43
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 255
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 13
  br label %89

89:                                               ; preds = %81, %78
  %90 = phi i1 [ false, %78 ], [ %88, %81 ]
  br i1 %90, label %30, label %91

91:                                               ; preds = %89, %42
  %92 = call i64 (...) @stopped()
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %104

95:                                               ; preds = %91
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %97 = call i64 @esp_console_run(i8* %96, i32* %6)
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %7, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @TAG, align 4
  %102 = call i32 @ESP_LOGE(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %104

103:                                              ; preds = %95
  br label %21

104:                                              ; preds = %100, %94, %21
  store i32* null, i32** @pc_console, align 8
  %105 = call i32 (...) @esp_console_deinit()
  %106 = load i32, i32* @TAG, align 4
  %107 = call i32 @ESP_LOGI(i32 %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %108 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @uart_driver_install(i32, i32, i32, i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @esp_console_init(%struct.TYPE_5__*) #1

declare dso_local i32 @esp_console_register_help_command(...) #1

declare dso_local i64 @stopped(...) #1

declare dso_local i32 @uart_write_bytes(i32, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @xQueueReceive(i32, i8*, i32) #1

declare dso_local i64 @uart_read_bytes(i32, i8*, i32, i32) #1

declare dso_local i64 @esp_console_run(i8*, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_console_deinit(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
