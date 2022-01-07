; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_kpc_get_curcpu_counters_xcall.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_kpc_get_curcpu_counters_xcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpc_get_counters_remote = type { i32, i32, i32*, i32 }

@kpc_xread_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @kpc_get_curcpu_counters_xcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kpc_get_curcpu_counters_xcall(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kpc_get_counters_remote*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.kpc_get_counters_remote*
  store %struct.kpc_get_counters_remote* %7, %struct.kpc_get_counters_remote** %3, align 8
  %8 = load %struct.kpc_get_counters_remote*, %struct.kpc_get_counters_remote** %3, align 8
  %9 = icmp ne %struct.kpc_get_counters_remote* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.kpc_get_counters_remote*, %struct.kpc_get_counters_remote** %3, align 8
  %13 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = call i32 (...) @cpu_number()
  %19 = load %struct.kpc_get_counters_remote*, %struct.kpc_get_counters_remote** %3, align 8
  %20 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %18, %21
  store i32 %22, i32* %4, align 4
  %23 = load %struct.kpc_get_counters_remote*, %struct.kpc_get_counters_remote** %3, align 8
  %24 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.kpc_get_counters_remote*, %struct.kpc_get_counters_remote** %3, align 8
  %27 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @kpc_get_curcpu_counters(i32 %25, i32* null, i32* %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.kpc_get_counters_remote*, %struct.kpc_get_counters_remote** %3, align 8
  %34 = getelementptr inbounds %struct.kpc_get_counters_remote, %struct.kpc_get_counters_remote* %33, i32 0, i32 1
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @hw_atomic_add(i32* %34, i32 %35)
  %37 = call i64 @hw_atomic_sub(i32* @kpc_xread_sync, i32 1)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = call i32 @thread_wakeup(i32 ptrtoint (i32* @kpc_xread_sync to i32))
  br label %41

41:                                               ; preds = %39, %1
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @kpc_get_curcpu_counters(i32, i32*, i32*) #1

declare dso_local i32 @hw_atomic_add(i32*, i32) #1

declare dso_local i64 @hw_atomic_sub(i32*, i32) #1

declare dso_local i32 @thread_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
