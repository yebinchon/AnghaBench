; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/bleprph/main/extr_scli.c_scli_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/bleprph/main/extr_scli.c_scli_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@__const.scli_task.console_config = private unnamed_addr constant %struct.TYPE_5__ { i32 8, i32 256 }, align 4
@stop = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i64 0, align 8
@pdPASS = common dso_local global i64 0, align 8
@UART_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @scli_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scli_task(i8* %0) #0 {
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
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @uart_driver_install(i32 %13, i32 256, i32 0, i32 8, i32* %8, i32 0)
  %15 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_5__* @__const.scli_task.console_config to i8*), i64 8, i1 false)
  %16 = call i32 @esp_console_init(%struct.TYPE_5__* %10)
  br label %17

17:                                               ; preds = %100, %1
  %18 = load i32, i32* @stop, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %101

21:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %23 = call i32 @memset(i8* %22, i32 0, i32 256)
  br label %24

24:                                               ; preds = %83, %21
  %25 = load i32, i32* %8, align 4
  %26 = bitcast %struct.TYPE_4__* %9 to i8*
  %27 = load i64, i64* @portMAX_DELAY, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i64 @xQueueReceive(i32 %25, i8* %26, i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @pdPASS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i32, i32* @stop, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %85

37:                                               ; preds = %33
  br label %72

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @UART_DATA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %67, %43
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %47
  %49 = call i64 @uart_read_bytes(i32 %45, i8* %48, i32 1, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 13
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @uart_write_bytes(i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %67

61:                                               ; preds = %51
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %64
  %66 = call i32 @uart_write_bytes(i32 %62, i8* %65, i32 1)
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %44

70:                                               ; preds = %44
  br label %71

71:                                               ; preds = %70, %38
  br label %72

72:                                               ; preds = %71, %37
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 255
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 13
  br label %83

83:                                               ; preds = %75, %72
  %84 = phi i1 [ false, %72 ], [ %82, %75 ]
  br i1 %84, label %24, label %85

85:                                               ; preds = %83, %36
  %86 = load i32, i32* @stop, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %101

89:                                               ; preds = %85
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %91 = call i32 @strlen(i8* %90)
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %93
  store i8 0, i8* %94, align 1
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %96 = call i64 @esp_console_run(i8* %95, i32* %6)
  store i64 %96, i64* %7, align 8
  %97 = load i64, i64* %7, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %101

100:                                              ; preds = %89
  br label %17

101:                                              ; preds = %99, %88, %17
  %102 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @uart_driver_install(i32, i32, i32, i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @esp_console_init(%struct.TYPE_5__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @xQueueReceive(i32, i8*, i32) #1

declare dso_local i64 @uart_read_bytes(i32, i8*, i32, i32) #1

declare dso_local i32 @uart_write_bytes(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @esp_console_run(i8*, i32*) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
