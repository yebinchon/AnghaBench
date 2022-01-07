; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_identify_machine.c_pe_arm_map_interrupt_controller.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_identify_machine.c_pe_arm_map_interrupt_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gSocPhys = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"pe_arm_map_interrupt_controller: soc_phys:  0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@kSuccess = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"pe_arm_map_interrupt_controller: found interrupt-controller\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@gPicBase = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"pe_arm_map_interrupt_controller: gPicBase: 0x%lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"pe_arm_map_interrupt_controller: failed to find the interrupt-controller.\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"pe_arm_map_interrupt_controller: found timer\0A\00", align 1
@gTimerBase = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [52 x i8] c"pe_arm_map_interrupt_controller: gTimerBase: 0x%lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"pe_arm_map_interrupt_controller: failed to find the timer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pe_arm_map_interrupt_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pe_arm_map_interrupt_controller() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 0, i64* %5, align 8
  %6 = call i64 (...) @pe_arm_get_soc_base_phys()
  store i64 %6, i64* @gSocPhys, align 8
  %7 = load i64, i64* @gSocPhys, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %62

13:                                               ; preds = %0
  %14 = call i64 @DTFindEntry(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %2)
  %15 = load i64, i64* @kSuccess, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i32, i32* %2, align 4
  %20 = bitcast i64** %3 to i8**
  %21 = call i32 @DTGetProperty(i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %20, i32* %4)
  %22 = load i64, i64* %5, align 8
  %23 = load i64*, i64** %3, align 8
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %22, %24
  %26 = load i64*, i64** %3, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @ml_io_map(i64 %25, i64 %28)
  store i64 %29, i64* @gPicBase, align 8
  %30 = load i64, i64* @gPicBase, align 8
  %31 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %17, %13
  %33 = load i64, i64* @gPicBase, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %62

37:                                               ; preds = %32
  %38 = call i64 @DTFindEntry(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* %2)
  %39 = load i64, i64* @kSuccess, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  %43 = load i32, i32* %2, align 4
  %44 = bitcast i64** %3 to i8**
  %45 = call i32 @DTGetProperty(i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %44, i32* %4)
  %46 = load i64, i64* %5, align 8
  %47 = load i64*, i64** %3, align 8
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %46, %48
  %50 = load i64*, i64** %3, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @ml_io_map(i64 %49, i64 %52)
  store i64 %53, i64* @gTimerBase, align 8
  %54 = load i64, i64* @gTimerBase, align 8
  %55 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %41, %37
  %57 = load i64, i64* @gTimerBase, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %62

61:                                               ; preds = %56
  store i32 1, i32* %1, align 4
  br label %62

62:                                               ; preds = %61, %59, %35, %12
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i64 @pe_arm_get_soc_base_phys(...) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @DTFindEntry(i8*, i8*, i32*) #1

declare dso_local i32 @DTGetProperty(i32, i8*, i8**, i32*) #1

declare dso_local i64 @ml_io_map(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
