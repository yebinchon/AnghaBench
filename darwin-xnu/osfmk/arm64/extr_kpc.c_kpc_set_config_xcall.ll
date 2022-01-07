; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_kpc_set_config_xcall.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_kpc_set_config_xcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpc_config_remote = type { i32, i32, %struct.kpc_config_remote* }

@KPC_CLASS_CONFIGURABLE_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_RAWPMU_MASK = common dso_local global i32 0, align 4
@RAWPMU_CONFIG_COUNT = common dso_local global i64 0, align 8
@kpc_config_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @kpc_set_config_xcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kpc_set_config_xcall(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kpc_config_remote*, align 8
  %4 = alloca %struct.kpc_config_remote*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.kpc_config_remote*
  store %struct.kpc_config_remote* %7, %struct.kpc_config_remote** %3, align 8
  store %struct.kpc_config_remote* null, %struct.kpc_config_remote** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %9 = call i32 @assert(%struct.kpc_config_remote* %8)
  %10 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %11 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %10, i32 0, i32 2
  %12 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %11, align 8
  %13 = call i32 @assert(%struct.kpc_config_remote* %12)
  %14 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %15 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %18 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %17, i32 0, i32 2
  %19 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %18, align 8
  store %struct.kpc_config_remote* %19, %struct.kpc_config_remote** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %4, align 8
  %26 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %27 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kpc_set_configurable_config(%struct.kpc_config_remote* %25, i32 %28)
  %30 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %31 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @kpc_popcount(i32 %32)
  %34 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %4, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %34, i64 %35
  store %struct.kpc_config_remote* %36, %struct.kpc_config_remote** %4, align 8
  br label %37

37:                                               ; preds = %24, %1
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @KPC_CLASS_RAWPMU_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %4, align 8
  %44 = call i32 @kpc_set_rawpmu_config(%struct.kpc_config_remote* %43)
  %45 = load i64, i64* @RAWPMU_CONFIG_COUNT, align 8
  %46 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %4, align 8
  %47 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %46, i64 %45
  store %struct.kpc_config_remote* %47, %struct.kpc_config_remote** %4, align 8
  br label %48

48:                                               ; preds = %42, %37
  %49 = call i64 @hw_atomic_sub(i32* @kpc_config_sync, i32 1)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @thread_wakeup(i32 ptrtoint (i32* @kpc_config_sync to i32))
  br label %53

53:                                               ; preds = %51, %48
  ret void
}

declare dso_local i32 @assert(%struct.kpc_config_remote*) #1

declare dso_local i32 @kpc_set_configurable_config(%struct.kpc_config_remote*, i32) #1

declare dso_local i32 @kpc_popcount(i32) #1

declare dso_local i32 @kpc_set_rawpmu_config(%struct.kpc_config_remote*) #1

declare dso_local i64 @hw_atomic_sub(i32*, i32) #1

declare dso_local i32 @thread_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
