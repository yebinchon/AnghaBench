; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_monotonic_arm64.c_mt_cpu_run.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_monotonic_arm64.c_mt_cpu_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.mt_cpu }
%struct.mt_cpu = type { i32* }

@FALSE = common dso_local global i64 0, align 8
@MT_CORE_NFIXED = common dso_local global i32 0, align 4
@PMCR0 = common dso_local global i32 0, align 4
@PMCR0_INIT = common dso_local global i32 0, align 4
@PMCR0_FIXED_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt_cpu_run(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt_cpu*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = call i64 (...) @ml_get_interrupts_enabled()
  %11 = load i64, i64* @FALSE, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.mt_cpu* %16, %struct.mt_cpu** %4, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %31, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MT_CORE_NFIXED, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.mt_cpu*, %struct.mt_cpu** %4, align 8
  %24 = getelementptr inbounds %struct.mt_cpu, %struct.mt_cpu* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mt_core_set_snap(i32 %22, i32 %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %17

34:                                               ; preds = %17
  %35 = call i32 (...) @core_init_execution_modes()
  %36 = load i32, i32* @PMCR0, align 4
  %37 = call i32 @__builtin_arm_rsr64(i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @PMCR0_INIT, align 4
  %39 = load i32, i32* @PMCR0_FIXED_EN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @PMCR0, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @__builtin_arm_wsr64(i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @mt_core_set_snap(i32, i32) #1

declare dso_local i32 @core_init_execution_modes(...) #1

declare dso_local i32 @__builtin_arm_rsr64(i32) #1

declare dso_local i32 @__builtin_arm_wsr64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
