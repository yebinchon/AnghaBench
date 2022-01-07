; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpuid.c_cpuid_get_cpufamily.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpuid.c_cpuid_get_cpufamily.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@CPUFAMILY_ARM_14 = common dso_local global i32 0, align 4
@CPUFAMILY_ARM_13 = common dso_local global i32 0, align 4
@CPUFAMILY_ARM_15 = common dso_local global i32 0, align 4
@CPUFAMILY_ARM_11 = common dso_local global i32 0, align 4
@CPUFAMILY_ARM_9 = common dso_local global i32 0, align 4
@CPUFAMILY_UNKNOWN = common dso_local global i32 0, align 4
@CPUFAMILY_ARM_XSCALE = common dso_local global i32 0, align 4
@CPUFAMILY_ARM_SWIFT = common dso_local global i32 0, align 4
@CPUFAMILY_ARM_CYCLONE = common dso_local global i32 0, align 4
@CPUFAMILY_ARM_TYPHOON = common dso_local global i32 0, align 4
@CPUFAMILY_ARM_TWISTER = common dso_local global i32 0, align 4
@CPUFAMILY_ARM_HURRICANE = common dso_local global i32 0, align 4
@CPUFAMILY_ARM_MONSOON_MISTRAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuid_get_cpufamily() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call %struct.TYPE_4__* (...) @cpuid_info()
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %46 [
    i32 129, label %6
    i32 128, label %24
    i32 130, label %26
  ]

6:                                                ; preds = %0
  %7 = call %struct.TYPE_4__* (...) @cpuid_info()
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %21 [
    i32 141, label %11
    i32 142, label %13
    i32 143, label %15
    i32 147, label %17
    i32 146, label %17
    i32 144, label %19
    i32 145, label %19
  ]

11:                                               ; preds = %6
  %12 = load i32, i32* @CPUFAMILY_ARM_14, align 4
  store i32 %12, i32* %1, align 4
  br label %23

13:                                               ; preds = %6
  %14 = load i32, i32* @CPUFAMILY_ARM_13, align 4
  store i32 %14, i32* %1, align 4
  br label %23

15:                                               ; preds = %6
  %16 = load i32, i32* @CPUFAMILY_ARM_15, align 4
  store i32 %16, i32* %1, align 4
  br label %23

17:                                               ; preds = %6, %6
  %18 = load i32, i32* @CPUFAMILY_ARM_11, align 4
  store i32 %18, i32* %1, align 4
  br label %23

19:                                               ; preds = %6, %6
  %20 = load i32, i32* @CPUFAMILY_ARM_9, align 4
  store i32 %20, i32* %1, align 4
  br label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @CPUFAMILY_UNKNOWN, align 4
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %19, %17, %15, %13, %11
  br label %48

24:                                               ; preds = %0
  %25 = load i32, i32* @CPUFAMILY_ARM_XSCALE, align 4
  store i32 %25, i32* %1, align 4
  br label %48

26:                                               ; preds = %0
  %27 = call %struct.TYPE_4__* (...) @cpuid_info()
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %43 [
    i32 135, label %31
    i32 140, label %33
    i32 132, label %35
    i32 131, label %35
    i32 134, label %37
    i32 133, label %37
    i32 139, label %39
    i32 138, label %39
    i32 136, label %41
    i32 137, label %41
  ]

31:                                               ; preds = %26
  %32 = load i32, i32* @CPUFAMILY_ARM_SWIFT, align 4
  store i32 %32, i32* %1, align 4
  br label %45

33:                                               ; preds = %26
  %34 = load i32, i32* @CPUFAMILY_ARM_CYCLONE, align 4
  store i32 %34, i32* %1, align 4
  br label %45

35:                                               ; preds = %26, %26
  %36 = load i32, i32* @CPUFAMILY_ARM_TYPHOON, align 4
  store i32 %36, i32* %1, align 4
  br label %45

37:                                               ; preds = %26, %26
  %38 = load i32, i32* @CPUFAMILY_ARM_TWISTER, align 4
  store i32 %38, i32* %1, align 4
  br label %45

39:                                               ; preds = %26, %26
  %40 = load i32, i32* @CPUFAMILY_ARM_HURRICANE, align 4
  store i32 %40, i32* %1, align 4
  br label %45

41:                                               ; preds = %26, %26
  %42 = load i32, i32* @CPUFAMILY_ARM_MONSOON_MISTRAL, align 4
  store i32 %42, i32* %1, align 4
  br label %45

43:                                               ; preds = %26
  %44 = load i32, i32* @CPUFAMILY_UNKNOWN, align 4
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %43, %41, %39, %37, %35, %33, %31
  br label %48

46:                                               ; preds = %0
  %47 = load i32, i32* @CPUFAMILY_UNKNOWN, align 4
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %46, %45, %24, %23
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_4__* @cpuid_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
