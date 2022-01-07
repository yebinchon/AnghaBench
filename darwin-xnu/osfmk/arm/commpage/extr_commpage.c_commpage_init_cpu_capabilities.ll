; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/commpage/extr_commpage.c_commpage_init_cpu_capabilities.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/commpage/extr_commpage.c_commpage_init_cpu_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@kCache128 = common dso_local global i32 0, align 4
@kCache64 = common dso_local global i32 0, align 4
@kCache32 = common dso_local global i32 0, align 4
@kUP = common dso_local global i32 0, align 4
@kNumCPUsShift = common dso_local global i32 0, align 4
@kFastThreadLocalStorage = common dso_local global i32 0, align 4
@_cpu_capabilities = common dso_local global i32 0, align 4
@_COMM_PAGE_CPU_CAPABILITIES = common dso_local global i64 0, align 8
@_COMM_PAGE_RW_OFFSET = common dso_local global i64 0, align 8
@ID_AA64ISAR0_EL1_ATOMIC_8_1 = common dso_local global i32 0, align 4
@ID_AA64ISAR0_EL1_ATOMIC_MASK = common dso_local global i32 0, align 4
@ID_AA64ISAR0_EL1_CRC32_EN = common dso_local global i32 0, align 4
@ID_AA64ISAR0_EL1_CRC32_MASK = common dso_local global i32 0, align 4
@gARMv81Atomics = common dso_local global i32 0, align 4
@gARMv8Crc32 = common dso_local global i32 0, align 4
@kHasARMv81Atomics = common dso_local global i32 0, align 4
@kHasARMv8Crc32 = common dso_local global i32 0, align 4
@kHasARMv8Crypto = common dso_local global i32 0, align 4
@kHasEvent = common dso_local global i32 0, align 4
@kHasFMA = common dso_local global i32 0, align 4
@kHasNeon = common dso_local global i32 0, align 4
@kHasNeonFP16 = common dso_local global i32 0, align 4
@kHasNeonHPFP = common dso_local global i32 0, align 4
@kHasVfp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @commpage_init_cpu_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commpage_init_cpu_capabilities() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 @ml_cpu_get_info(%struct.TYPE_5__* %3)
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %19 [
    i32 128, label %7
    i32 64, label %11
    i32 32, label %15
  ]

7:                                                ; preds = %0
  %8 = load i32, i32* @kCache128, align 4
  %9 = load i32, i32* %1, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %1, align 4
  br label %20

11:                                               ; preds = %0
  %12 = load i32, i32* @kCache64, align 4
  %13 = load i32, i32* %1, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %1, align 4
  br label %20

15:                                               ; preds = %0
  %16 = load i32, i32* @kCache32, align 4
  %17 = load i32, i32* %1, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %1, align 4
  br label %20

19:                                               ; preds = %0
  br label %20

20:                                               ; preds = %19, %15, %11, %7
  %21 = call i32 (...) @commpage_cpus()
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @kUP, align 4
  %26 = load i32, i32* %1, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @kNumCPUsShift, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %1, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* @kFastThreadLocalStorage, align 4
  %35 = load i32, i32* %1, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  store i32 %37, i32* @_cpu_capabilities, align 4
  %38 = load i32, i32* @_cpu_capabilities, align 4
  %39 = load i64, i64* @_COMM_PAGE_CPU_CAPABILITIES, align 8
  %40 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %41 = add nsw i64 %39, %40
  %42 = inttoptr i64 %41 to i32*
  store i32 %38, i32* %42, align 4
  ret void
}

declare dso_local i32 @ml_cpu_get_info(%struct.TYPE_5__*) #1

declare dso_local i32 @commpage_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
