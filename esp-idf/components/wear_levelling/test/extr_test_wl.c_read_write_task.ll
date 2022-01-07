; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wear_levelling/test/extr_test_wl.c_read_write_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wear_levelling/test/extr_test_wl.c_read_write_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i8*, i64, i32, i64, i32 }

@ESP_OK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"E: i=%d, cnt=%d rval=%d val=%d\0A\0A\00", align 1
@ESP_FAIL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @read_write_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_write_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %3, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @srand(i32 %12)
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %76, %1
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %79

20:                                               ; preds = %14
  %21 = call i32 (...) @rand()
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = mul i64 %33, 4
  %35 = add i64 %32, %34
  %36 = call i8* @wl_write(i32 %29, i64 %35, i32* %6, i32 4)
  store i8* %36, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** @ESP_OK, align 8
  %39 = icmp ne i8* %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  %41 = load i8*, i8** %4, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  br label %83

44:                                               ; preds = %26
  br label %75

45:                                               ; preds = %20
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = mul i64 %52, 4
  %54 = add i64 %51, %53
  %55 = call i8* @wl_read(i32 %48, i64 %54, i32* %7, i32 4)
  store i8* %55, i8** %4, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = load i8*, i8** @ESP_OK, align 8
  %58 = icmp ne i8* %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59, %45
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ets_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %64, i64 %67, i32 %68, i32 %69)
  %71 = load i8*, i8** @ESP_FAIL, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  br label %83

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %44
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %5, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %5, align 8
  br label %14

79:                                               ; preds = %14
  %80 = load i8*, i8** @ESP_OK, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %79, %63, %40
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @xSemaphoreGive(i32 %86)
  %88 = call i32 @vTaskDelay(i32 1)
  %89 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i8* @wl_write(i32, i64, i32*, i32) #1

declare dso_local i8* @wl_read(i32, i64, i32*, i32) #1

declare dso_local i32 @ets_printf(i8*, i64, i64, i32, i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
