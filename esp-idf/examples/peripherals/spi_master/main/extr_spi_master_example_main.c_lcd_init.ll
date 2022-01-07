; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/main/extr_spi_master_example_main.c_lcd_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/main/extr_spi_master_example_main.c_lcd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@PIN_NUM_DC = common dso_local global i32 0, align 4
@GPIO_MODE_OUTPUT = common dso_local global i32 0, align 4
@PIN_NUM_RST = common dso_local global i32 0, align 4
@PIN_NUM_BCKL = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"LCD ID: %08X\0A\00", align 1
@LCD_TYPE_ILI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ILI9341 detected.\0A\00", align 1
@LCD_TYPE_ST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"ST7789V detected.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"LCD ST7789V initialization.\0A\00", align 1
@st_init_cmds = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"LCD ILI9341 initialization.\0A\00", align 1
@ili_init_cmds = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lcd_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* @PIN_NUM_DC, align 4
  %9 = load i32, i32* @GPIO_MODE_OUTPUT, align 4
  %10 = call i32 @gpio_set_direction(i32 %8, i32 %9)
  %11 = load i32, i32* @PIN_NUM_RST, align 4
  %12 = load i32, i32* @GPIO_MODE_OUTPUT, align 4
  %13 = call i32 @gpio_set_direction(i32 %11, i32 %12)
  %14 = load i32, i32* @PIN_NUM_BCKL, align 4
  %15 = load i32, i32* @GPIO_MODE_OUTPUT, align 4
  %16 = call i32 @gpio_set_direction(i32 %14, i32 %15)
  %17 = load i32, i32* @PIN_NUM_RST, align 4
  %18 = call i32 @gpio_set_level(i32 %17, i32 0)
  %19 = load i32, i32* @portTICK_RATE_MS, align 4
  %20 = sdiv i32 100, %19
  %21 = call i32 @vTaskDelay(i32 %20)
  %22 = load i32, i32* @PIN_NUM_RST, align 4
  %23 = call i32 @gpio_set_level(i32 %22, i32 1)
  %24 = load i32, i32* @portTICK_RATE_MS, align 4
  %25 = sdiv i32 100, %24
  %26 = call i32 @vTaskDelay(i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @lcd_get_id(i32 %27)
  store i32 %28, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @LCD_TYPE_ILI, align 4
  store i32 %34, i32* %6, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @LCD_TYPE_ST, align 4
  store i32 %37, i32* %6, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @LCD_TYPE_ST, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @st_init_cmds, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %4, align 8
  br label %49

46:                                               ; preds = %39
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ili_init_cmds, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %4, align 8
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %94, %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 255
  br i1 %57, label %58, label %97

58:                                               ; preds = %50
  %59 = load i32, i32* %2, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @lcd_cmd(i32 %59, i32 %65)
  %67 = load i32, i32* %2, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 31
  %81 = call i32 @lcd_data(i32 %67, i32 %73, i32 %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 128
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %58
  %91 = load i32, i32* @portTICK_RATE_MS, align 4
  %92 = sdiv i32 100, %91
  %93 = call i32 @vTaskDelay(i32 %92)
  br label %94

94:                                               ; preds = %90, %58
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %50

97:                                               ; preds = %50
  %98 = load i32, i32* @PIN_NUM_BCKL, align 4
  %99 = call i32 @gpio_set_level(i32 %98, i32 0)
  ret void
}

declare dso_local i32 @gpio_set_direction(i32, i32) #1

declare dso_local i32 @gpio_set_level(i32, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @lcd_get_id(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @lcd_cmd(i32, i32) #1

declare dso_local i32 @lcd_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
