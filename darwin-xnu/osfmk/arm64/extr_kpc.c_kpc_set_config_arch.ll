; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_kpc_set_config_arch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_kpc_set_config_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpc_config_remote = type { %struct.kpc_config_remote*, i32 }

@whitelist_disabled = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@kpc_config_sync = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@kpc_set_config_xcall = common dso_local global i32 0, align 4
@kpc_configured = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kpc_set_config_arch(%struct.kpc_config_remote* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kpc_config_remote*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.kpc_config_remote* %0, %struct.kpc_config_remote** %3, align 8
  %6 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %7 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @kpc_popcount(i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %11 = call i32 @assert(%struct.kpc_config_remote* %10)
  %12 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %13 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %12, i32 0, i32 0
  %14 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %13, align 8
  %15 = call i32 @assert(%struct.kpc_config_remote* %14)
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %39, %1
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load i32, i32* @whitelist_disabled, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %25 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %24, i32 0, i32 0
  %26 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %26, i64 %27
  %29 = bitcast %struct.kpc_config_remote* %28 to { %struct.kpc_config_remote*, i32 }*
  %30 = getelementptr inbounds { %struct.kpc_config_remote*, i32 }, { %struct.kpc_config_remote*, i32 }* %29, i32 0, i32 0
  %31 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %30, align 8
  %32 = getelementptr inbounds { %struct.kpc_config_remote*, i32 }, { %struct.kpc_config_remote*, i32 }* %29, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @config_in_whitelist(%struct.kpc_config_remote* %31, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %23
  %37 = load i32, i32* @EPERM, align 4
  store i32 %37, i32* %2, align 4
  br label %47

38:                                               ; preds = %23, %20
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %5, align 8
  br label %16

42:                                               ; preds = %16
  %43 = load i32, i32* @TRUE, align 4
  %44 = load i32, i32* @kpc_set_config_xcall, align 4
  %45 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %46 = call i32 @cpu_broadcast_xcall(i32* @kpc_config_sync, i32 %43, i32 %44, %struct.kpc_config_remote* %45)
  store i32 1, i32* @kpc_configured, align 4
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %36
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @kpc_popcount(i32) #1

declare dso_local i32 @assert(%struct.kpc_config_remote*) #1

declare dso_local i32 @config_in_whitelist(%struct.kpc_config_remote*, i32) #1

declare dso_local i32 @cpu_broadcast_xcall(i32*, i32, i32, %struct.kpc_config_remote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
