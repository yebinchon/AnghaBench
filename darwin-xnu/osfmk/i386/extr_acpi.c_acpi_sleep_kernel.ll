; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_acpi.c_acpi_sleep_kernel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_acpi.c_acpi_sleep_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"acpi_sleep_kernel hib=%d, cpu=%d\0A\00", align 1
@real_ncpus = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Error %d trying to transition CPU %d to OFF\00", align 1
@DBG_HIBERNATE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@kdebug_enable = common dso_local global i64 0, align 8
@save_kdebug_enable = common dso_local global i64 0, align 8
@acpi_sleep_abstime = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@disable_serial_output = common dso_local global i64 0, align 8
@wake_nkdbufs = common dso_local global i64 0, align 8
@trace_wrap = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@acpi_wake_abstime = common dso_local global i64 0, align 8
@acpi_hibernate = common dso_local global i32 0, align 4
@acpi_wake_postrebase_abstime = common dso_local global i64 0, align 8
@slave_pstart = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_sleep_kernel(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = call %struct.TYPE_6__* (...) @current_cpu_datap()
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = call i32 (...) @cpu_number()
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 (i8*, i64, ...) @kprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %18)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %40, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @real_ncpus, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %40

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @pmCPUExitHaltToOff(i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @KERN_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %29
  br label %40

40:                                               ; preds = %39, %28
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %20

43:                                               ; preds = %20
  %44 = call i32 (...) @lapic_shutdown()
  %45 = call i32 (...) @pmTimerSave()
  %46 = call i32 (...) @clear_ts()
  %47 = load i32, i32* @DBG_HIBERNATE, align 4
  %48 = call i32 @IOKDBG_CODE(i32 %47, i32 0)
  %49 = load i32, i32* @DBG_FUNC_START, align 4
  %50 = or i32 %48, %49
  %51 = call i32 (i32, ...) @KDBG(i32 %50)
  %52 = load i64, i64* @kdebug_enable, align 8
  store i64 %52, i64* @save_kdebug_enable, align 8
  store i64 0, i64* @kdebug_enable, align 8
  %53 = call i64 (...) @mach_absolute_time()
  store i64 %53, i64* @acpi_sleep_abstime, align 8
  %54 = load i64, i64* @FALSE, align 8
  %55 = load i64, i64* @disable_serial_output, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = call i32 (...) @pal_serial_init()
  br label %59

59:                                               ; preds = %57, %43
  %60 = load i64, i64* @FALSE, align 8
  store i64 %60, i64* %5, align 8
  %61 = call %struct.TYPE_6__* (...) @current_cpu_datap()
  %62 = call i32 @cpu_syscall_init(%struct.TYPE_6__* %61)
  %63 = call i32 (...) @ucode_update_wake()
  %64 = call i32 (...) @pmMarkAllCPUsOff()
  %65 = call i64 (...) @lapic_probe()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = call i32 (...) @lapic_configure()
  br label %69

69:                                               ; preds = %67, %59
  %70 = call i64 (...) @mach_absolute_time()
  %71 = load i64, i64* %10, align 8
  %72 = sub nsw i64 %70, %71
  %73 = load i64, i64* %11, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %11, align 8
  %75 = call i32 (...) @rtc_decrementer_configure()
  %76 = load i64, i64* @save_kdebug_enable, align 8
  store i64 %76, i64* @kdebug_enable, align 8
  %77 = load i64, i64* @kdebug_enable, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %69
  %80 = load i64, i64* @wake_nkdbufs, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = call i64 (...) @mach_absolute_time()
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* @wake_nkdbufs, align 8
  %85 = load i64, i64* @trace_wrap, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* @TRUE, align 8
  %89 = call i32 @kdebug_trace_start(i64 %84, i32* null, i32 %87, i64 %88)
  %90 = call i64 (...) @mach_absolute_time()
  %91 = load i64, i64* %10, align 8
  %92 = sub nsw i64 %90, %91
  %93 = load i64, i64* %12, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %12, align 8
  br label %95

95:                                               ; preds = %82, %79
  br label %96

96:                                               ; preds = %95, %69
  %97 = call i64 (...) @mach_absolute_time()
  store i64 %97, i64* %10, align 8
  %98 = call i32 (...) @init_fpu()
  %99 = call i32 (...) @clear_ts()
  %100 = call i32 (...) @IOCPURunPlatformActiveActions()
  %101 = load i32, i32* @DBG_HIBERNATE, align 4
  %102 = call i32 @IOKDBG_CODE(i32 %101, i32 0)
  %103 = load i32, i32* @DBG_FUNC_END, align 4
  %104 = or i32 %102, %103
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* @acpi_wake_abstime, align 8
  %109 = call i32 (i32, ...) @KDBG(i32 %104, i64 %105, i64 %106, i64 %107, i64 %108)
  %110 = call %struct.TYPE_6__* (...) @current_cpu_datap()
  %111 = call i32 @pmCPUMarkRunning(%struct.TYPE_6__* %110)
  %112 = call i32 (...) @pmTimerRestore()
  %113 = call i32 (...) @rtc_timer_start()
  ret void
}

declare dso_local %struct.TYPE_6__* @current_cpu_datap(...) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @kprintf(i8*, i64, ...) #1

declare dso_local i64 @pmCPUExitHaltToOff(i32) #1

declare dso_local i32 @panic(i8*, i64, i32) #1

declare dso_local i32 @lapic_shutdown(...) #1

declare dso_local i32 @pmTimerSave(...) #1

declare dso_local i32 @clear_ts(...) #1

declare dso_local i32 @KDBG(i32, ...) #1

declare dso_local i32 @IOKDBG_CODE(i32, i32) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @pal_serial_init(...) #1

declare dso_local i32 @cpu_syscall_init(%struct.TYPE_6__*) #1

declare dso_local i32 @ucode_update_wake(...) #1

declare dso_local i32 @pmMarkAllCPUsOff(...) #1

declare dso_local i64 @lapic_probe(...) #1

declare dso_local i32 @lapic_configure(...) #1

declare dso_local i32 @rtc_decrementer_configure(...) #1

declare dso_local i32 @kdebug_trace_start(i64, i32*, i32, i64) #1

declare dso_local i32 @init_fpu(...) #1

declare dso_local i32 @IOCPURunPlatformActiveActions(...) #1

declare dso_local i32 @pmCPUMarkRunning(%struct.TYPE_6__*) #1

declare dso_local i32 @pmTimerRestore(...) #1

declare dso_local i32 @rtc_timer_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
