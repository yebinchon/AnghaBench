; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_serial.c_serial_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_serial.c_serial_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (...)* }

@uart_initted = common dso_local global i32 0, align 4
@gPESF = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"reinit serial\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dcc\00", align 1
@dcc_serial_functions = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"boot-console\00", align 1
@kSuccess = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@uart_base = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"uart0\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@BCM2837_AUX_BASE = common dso_local global i64 0, align 8
@BCM2837_AUX_SIZE = common dso_local global i64 0, align 8
@BCM2837_GPIO_BASE = common dso_local global i64 0, align 8
@BCM2837_GPIO_SIZE = common dso_local global i64 0, align 8
@DOCKCHANNEL_DRAIN_PERIOD = common dso_local global i64 0, align 8
@dock_agent_base = common dso_local global i8* null, align 8
@dockchannel_uart_serial_functions = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@dockfifo_uart_serial_functions = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@dt_pclk = common dso_local global i64 0, align 8
@dt_sampling = common dso_local global i64 0, align 8
@dt_ubrdiv = common dso_local global i64 0, align 8
@ln2410_serial_functions = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@max_dockchannel_drain_period = common dso_local global i64 0, align 8
@pi3_aux_base_vaddr = common dso_local global i8* null, align 8
@pi3_gpio_base_vaddr = common dso_local global i8* null, align 8
@pi3_uart_serial_functions = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@shmcon_serial_functions = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@uart16x50_serial_functions = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@use_sw_drain = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serial_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  store i32* null, i32** %2, align 8
  store i64* null, i64** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load i32, i32* @uart_initted, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gPESF, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gPESF, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32 (...)*, i32 (...)** %16, align 8
  %18 = call i32 (...) %17()
  %19 = call i32 @kprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %103

20:                                               ; preds = %11, %0
  store i64 0, i64* %4, align 8
  %21 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %4, i32 8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store %struct.TYPE_9__* @dcc_serial_functions, %struct.TYPE_9__** @gPESF, align 8
  store i32 1, i32* @uart_initted, align 4
  store i32 1, i32* %1, align 4
  br label %103

24:                                               ; preds = %20
  %25 = call i64 (...) @pe_arm_get_soc_base_phys()
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %1, align 4
  br label %103

29:                                               ; preds = %24
  %30 = call i64 @DTFindEntry(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* null, i32** %2)
  %31 = load i64, i64* @kSuccess, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load i32*, i32** %2, align 8
  %35 = bitcast i64** %6 to i8**
  %36 = call i32 @DTGetProperty(i32* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %35, i64* %3)
  %37 = load i64, i64* %5, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %37, %39
  %41 = load i64*, i64** %6, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @ml_io_map(i64 %40, i64 %43)
  store i8* %44, i8** @uart_base, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @DTGetProperty(i32* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %8, i64* %3)
  br label %50

50:                                               ; preds = %47, %33
  br label %98

51:                                               ; preds = %29
  %52 = call i64 @DTFindEntry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32** %2)
  %53 = load i64, i64* @kSuccess, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load i32*, i32** %2, align 8
  %57 = bitcast i64** %6 to i8**
  %58 = call i32 @DTGetProperty(i32* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %57, i64* %3)
  %59 = load i64, i64* %5, align 8
  %60 = load i64*, i64** %6, align 8
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %59, %61
  %63 = load i64*, i64** %6, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = call i8* @ml_io_map(i64 %62, i64 %65)
  store i8* %66, i8** @uart_base, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @DTGetProperty(i32* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %8, i64* %3)
  br label %72

72:                                               ; preds = %69, %55
  br label %97

73:                                               ; preds = %51
  %74 = call i64 @DTFindEntry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32** %2)
  %75 = load i64, i64* @kSuccess, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %73
  %78 = load i32*, i32** %2, align 8
  %79 = bitcast i64** %6 to i8**
  %80 = call i32 @DTGetProperty(i32* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %79, i64* %3)
  %81 = load i64, i64* %5, align 8
  %82 = load i64*, i64** %6, align 8
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %81, %83
  %85 = load i64*, i64** %6, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @ml_io_map(i64 %84, i64 %87)
  store i8* %88, i8** @uart_base, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %77
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @DTGetProperty(i32* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %8, i64* %3)
  br label %94

94:                                               ; preds = %91, %77
  br label %96

95:                                               ; preds = %73
  store i32 0, i32* %1, align 4
  br label %103

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %72
  br label %98

98:                                               ; preds = %97, %50
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gPESF, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32 (...)*, i32 (...)** %100, align 8
  %102 = call i32 (...) %101()
  store i32 1, i32* @uart_initted, align 4
  store i32 1, i32* %1, align 4
  br label %103

103:                                              ; preds = %98, %95, %28, %23, %14
  %104 = load i32, i32* %1, align 4
  ret i32 %104
}

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i64 @PE_parse_boot_argn(i8*, i64*, i32) #1

declare dso_local i64 @pe_arm_get_soc_base_phys(...) #1

declare dso_local i64 @DTFindEntry(i8*, i8*, i32**) #1

declare dso_local i32 @DTGetProperty(i32*, i8*, i8**, i64*) #1

declare dso_local i8* @ml_io_map(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
