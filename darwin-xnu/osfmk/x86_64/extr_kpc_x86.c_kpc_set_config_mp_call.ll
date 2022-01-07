; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_kpc_x86.c_kpc_set_config_mp_call.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_kpc_x86.c_kpc_set_config_mp_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpc_config_remote = type { i32, i32, %struct.kpc_config_remote* }

@FALSE = common dso_local global i32 0, align 4
@KPC_CLASS_FIXED_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_CONFIGURABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @kpc_set_config_mp_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kpc_set_config_mp_call(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kpc_config_remote*, align 8
  %4 = alloca %struct.kpc_config_remote*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.kpc_config_remote*
  store %struct.kpc_config_remote* %9, %struct.kpc_config_remote** %3, align 8
  store %struct.kpc_config_remote* null, %struct.kpc_config_remote** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %11 = call i32 @assert(%struct.kpc_config_remote* %10)
  %12 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %13 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %12, i32 0, i32 2
  %14 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %13, align 8
  %15 = call i32 @assert(%struct.kpc_config_remote* %14)
  %16 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %17 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %20 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %19, i32 0, i32 2
  %21 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %20, align 8
  store %struct.kpc_config_remote* %21, %struct.kpc_config_remote** %4, align 8
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i32 @ml_set_interrupts_enabled(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @KPC_CLASS_FIXED_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %1
  %29 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %29, i64 %31
  %33 = call i32 @kpc_set_fixed_config(%struct.kpc_config_remote* %32)
  %34 = load i32, i32* @KPC_CLASS_FIXED_MASK, align 4
  %35 = call i64 @kpc_get_config_count(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %28, %1
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %46, i64 %48
  %50 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %51 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @kpc_set_configurable_config(%struct.kpc_config_remote* %49, i32 %52)
  %54 = load %struct.kpc_config_remote*, %struct.kpc_config_remote** %3, align 8
  %55 = getelementptr inbounds %struct.kpc_config_remote, %struct.kpc_config_remote* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @kpc_popcount(i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %45, %40
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ml_set_interrupts_enabled(i32 %63)
  ret void
}

declare dso_local i32 @assert(%struct.kpc_config_remote*) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @kpc_set_fixed_config(%struct.kpc_config_remote*) #1

declare dso_local i64 @kpc_get_config_count(i32) #1

declare dso_local i32 @kpc_set_configurable_config(%struct.kpc_config_remote*, i32) #1

declare dso_local i64 @kpc_popcount(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
