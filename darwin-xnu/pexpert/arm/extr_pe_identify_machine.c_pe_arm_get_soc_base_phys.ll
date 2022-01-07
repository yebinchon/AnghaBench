; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_identify_machine.c_pe_arm_get_soc_base_phys.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_identify_machine.c_pe_arm_get_soc_base_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"arm-io\00", align 1
@kSuccess = common dso_local global i64 0, align 8
@gPESoCDeviceType = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@gPESoCDeviceTypeBuffer = common dso_local global i64 0, align 8
@SOC_DEVICE_TYPE_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@gPESoCBasePhys = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pe_arm_get_soc_base_phys() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = call i64 @DTFindEntry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %2)
  %7 = load i64, i64* @kSuccess, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %0
  %10 = load i64, i64* @gPESoCDeviceType, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @DTGetProperty(i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %5, i32* %4)
  %15 = load i64, i64* @gPESoCDeviceTypeBuffer, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @SOC_DEVICE_TYPE_BUFFER_SIZE, align 4
  %18 = call i32 @strlcpy(i64 %15, i8* %16, i32 %17)
  %19 = load i64, i64* @gPESoCDeviceTypeBuffer, align 8
  store i64 %19, i64* @gPESoCDeviceType, align 8
  %20 = load i32, i32* %2, align 4
  %21 = bitcast i64** %3 to i8**
  %22 = call i32 @DTGetProperty(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %21, i32* %4)
  %23 = load i64*, i64** %3, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* @gPESoCBasePhys, align 8
  br label %26

26:                                               ; preds = %12, %9
  %27 = load i64, i64* @gPESoCBasePhys, align 8
  store i64 %27, i64* %1, align 8
  br label %29

28:                                               ; preds = %0
  store i64 0, i64* %1, align 8
  br label %29

29:                                               ; preds = %28, %26
  %30 = load i64, i64* %1, align 8
  ret i64 %30
}

declare dso_local i64 @DTFindEntry(i8*, i8*, i32*) #1

declare dso_local i32 @DTGetProperty(i32, i8*, i8**, i32*) #1

declare dso_local i32 @strlcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
