; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_set_period.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_set_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpc_config_remote = type { i32, i32, i32* }

@KPC_CLASS_CONFIGURABLE_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_POWER_MASK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@kpc_config_lock = common dso_local global i32 0, align 4
@KPC_CLASS_FIXED_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"setting period %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kpc_set_period(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kpc_config_remote, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %6, i32 0, i32 0
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %7, align 8
  %9 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %6, i32 0, i32 1
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @kpc_get_configurable_pmc_mask(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %6, i32 0, i32 2
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %12, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @assert(i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @KPC_CLASS_POWER_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @EPERM, align 4
  store i32 %26, i32* %3, align 4
  br label %51

27:                                               ; preds = %20, %2
  %28 = call i32 @lck_mtx_lock(i32* @kpc_config_lock)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @KPC_CLASS_FIXED_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = call i32 @lck_mtx_unlock(i32* @kpc_config_lock)
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %3, align 4
  br label %51

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @KPC_CLASS_POWER_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %43 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @kprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = call i32 @kpc_set_period_arch(%struct.kpc_config_remote* %6)
  %50 = call i32 @lck_mtx_unlock(i32* @kpc_config_lock)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %33, %25
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @kpc_get_configurable_pmc_mask(i32) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @kprintf(i8*, i32) #1

declare dso_local i32 @kpc_set_period_arch(%struct.kpc_config_remote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
