; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_identify_machine.c_pe_arm_init_debug.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_identify_machine.c_pe_arm_init_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gSocPhys = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"pe_arm_init_debug: failed to initialize gSocPhys == 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"cpu-debug-interface\00", align 1
@kSuccess = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"pe_arm_init_debug: failed to find cpu-debug-interface\0A\00", align 1
@bootarg_panic_trace = common dso_local global i32 0, align 4
@cpu_halt = common dso_local global i32 0, align 4
@enable_alt_trace = common dso_local global i32 0, align 4
@enable_trace = common dso_local global i32 0, align 4
@panic_trace_lock = common dso_local global i32 0, align 4
@trace_halt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pe_arm_init_debug(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i64, i64* @gSocPhys, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %38

10:                                               ; preds = %1
  %11 = call i64 @DTFindEntry(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  %12 = load i64, i64* @kSuccess, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load i8*, i8** %2, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = bitcast i64** %4 to i8**
  %20 = call i64 @DTGetProperty(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %19, i32* %5)
  %21 = load i64, i64* @kSuccess, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load i8*, i8** %2, align 8
  %25 = load i64, i64* @gSocPhys, align 8
  %26 = load i64*, i64** %4, align 8
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %25, %27
  %29 = load i64*, i64** %4, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ml_io_map(i64 %28, i64 %31)
  %33 = call i32 @ml_init_arm_debug_interface(i8* %24, i32 %32)
  br label %34

34:                                               ; preds = %23, %17
  br label %35

35:                                               ; preds = %34, %14
  br label %38

36:                                               ; preds = %10
  %37 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %8, %36, %35
  ret void
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @DTFindEntry(i8*, i8*, i32*) #1

declare dso_local i64 @DTGetProperty(i32, i8*, i8**, i32*) #1

declare dso_local i32 @ml_init_arm_debug_interface(i8*, i32) #1

declare dso_local i32 @ml_io_map(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
