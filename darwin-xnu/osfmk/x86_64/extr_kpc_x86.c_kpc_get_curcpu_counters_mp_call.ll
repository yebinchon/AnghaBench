; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_kpc_x86.c_kpc_get_curcpu_counters_mp_call.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_kpc_x86.c_kpc_get_curcpu_counters_mp_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpc_get_counters_remote = type { i32, i32, %struct.kpc_get_counters_remote*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @kpc_get_curcpu_counters_mp_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kpc_get_curcpu_counters_mp_call(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kpc_get_counters_remote*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.kpc_get_counters_remote*
  store %struct.kpc_get_counters_remote* %7, %struct.kpc_get_counters_remote** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.kpc_get_counters_remote*, %struct.kpc_get_counters_remote** %3, align 8
  %9 = call i32 @assert(%struct.kpc_get_counters_remote* %8)
  %10 = load %struct.kpc_get_counters_remote*, %struct.kpc_get_counters_remote** %3, align 8
  %11 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %10, i32 0, i32 2
  %12 = load %struct.kpc_get_counters_remote*, %struct.kpc_get_counters_remote** %11, align 8
  %13 = call i32 @assert(%struct.kpc_get_counters_remote* %12)
  %14 = call i32 (...) @cpu_number()
  %15 = load %struct.kpc_get_counters_remote*, %struct.kpc_get_counters_remote** %3, align 8
  %16 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %14, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.kpc_get_counters_remote*, %struct.kpc_get_counters_remote** %3, align 8
  %20 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.kpc_get_counters_remote*, %struct.kpc_get_counters_remote** %3, align 8
  %23 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %22, i32 0, i32 2
  %24 = load %struct.kpc_get_counters_remote*, %struct.kpc_get_counters_remote** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %24, i64 %26
  %28 = call i32 @kpc_get_curcpu_counters(i32 %21, i32* null, %struct.kpc_get_counters_remote* %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.kpc_get_counters_remote*, %struct.kpc_get_counters_remote** %3, align 8
  %30 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %29, i32 0, i32 1
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @hw_atomic_add(i32* %30, i32 %31)
  ret void
}

declare dso_local i32 @assert(%struct.kpc_get_counters_remote*) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @kpc_get_curcpu_counters(i32, i32*, %struct.kpc_get_counters_remote*) #1

declare dso_local i32 @hw_atomic_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
