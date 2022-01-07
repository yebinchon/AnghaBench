; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_set_config.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpc_config_remote = type { i32, i32, i32* }

@KPC_CLASS_RAWPMU_MASK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@KPC_CLASS_CONFIGURABLE_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_POWER_MASK = common dso_local global i32 0, align 4
@kpc_config_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kpc_set_config(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kpc_config_remote, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %7, i32 0, i32 0
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %7, i32 0, i32 1
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @kpc_get_configurable_pmc_mask(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %7, i32 0, i32 2
  %14 = load i32*, i32** %5, align 8
  store i32* %14, i32** %13, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @KPC_CLASS_RAWPMU_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = call i64 (...) @kpc_multiple_clients()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @EPERM, align 4
  store i32 %25, i32* %3, align 4
  br label %53

26:                                               ; preds = %21, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @KPC_CLASS_POWER_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @EPERM, align 4
  store i32 %37, i32* %3, align 4
  br label %53

38:                                               ; preds = %31, %26
  %39 = call i32 @lck_mtx_lock(i32* @kpc_config_lock)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @KPC_CLASS_POWER_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %46 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %44, %38
  %50 = call i32 @kpc_set_config_arch(%struct.kpc_config_remote* %7)
  store i32 %50, i32* %6, align 4
  %51 = call i32 @lck_mtx_unlock(i32* @kpc_config_lock)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %36, %24
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @kpc_get_configurable_pmc_mask(i32) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @kpc_multiple_clients(...) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @kpc_set_config_arch(%struct.kpc_config_remote*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
