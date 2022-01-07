; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_read_write_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_read_write_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@ESP_ERR_NOT_FOUND = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"E(w): i=%d, cnt=%d val=%d\0A\0A\00", align 1
@ESP_FAIL = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"E(r): i=%d, cnt=%d rval=%d val=%d\0A\0A\00", align 1
@ESP_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @read_write_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_write_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %3, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %21 = call i32* @fopen(i32 %14, i8* %20)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i8*, i8** @ESP_ERR_NOT_FOUND, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  br label %89

28:                                               ; preds = %1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @srand(i32 %31)
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %79, %28
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %33
  %40 = call i64 (...) @rand()
  store i64 %40, i64* %6, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @fwrite(i64* %6, i32 8, i32 1, i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i64, i64* %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 (i8*, i64, i32, i64, ...) @ets_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %51, i32 %52, i64 %53)
  %55 = load i8*, i8** @ESP_FAIL, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  br label %86

58:                                               ; preds = %45
  br label %78

59:                                               ; preds = %39
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @fread(i64* %8, i32 8, i32 1, i32* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64, %59
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i32 (i8*, i64, i32, i64, ...) @ets_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %69, i32 %70, i64 %71, i64 %72)
  %74 = load i8*, i8** @ESP_FAIL, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  br label %86

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %58
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %5, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %5, align 8
  br label %33

82:                                               ; preds = %33
  %83 = load i8*, i8** @ESP_OK, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %82, %68, %50
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @fclose(i32* %87)
  br label %89

89:                                               ; preds = %86, %24
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @xSemaphoreGive(i32 %92)
  %94 = call i32 @vTaskDelay(i32 1)
  %95 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @rand(...) #1

declare dso_local i32 @fwrite(i64*, i32, i32, i32*) #1

declare dso_local i32 @ets_printf(i8*, i64, i32, i64, ...) #1

declare dso_local i32 @fread(i64*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
