; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_cpu_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i8*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@CR4_PGE = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_6__* null, align 8
@FALSE = common dso_local global i8* null, align 8
@TASK_MAP_64BIT = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_SMEP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@pmap_smep_enabled = common dso_local global i8* null, align 8
@CR4_SMEP = common dso_local global i32 0, align 4
@CPUID_LEAF7_FEATURE_SMAP = common dso_local global i32 0, align 4
@pmap_smap_enabled = common dso_local global i8* null, align 8
@CR4_SMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_cpu_init() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i8*, align 8
  %3 = call %struct.TYPE_5__* (...) @current_cpu_datap()
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %1, align 8
  %4 = call i32 (...) @get_cr4()
  %5 = load i32, i32* @CR4_PGE, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @set_cr4(i32 %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_pmap, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_7__* @cpu_shadowp(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 %15, i32* %20, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_pmap, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** @FALSE, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @TASK_MAP_64BIT, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = call i32 (...) @pmap_pcid_configure()
  %33 = call i32 (...) @cpuid_leaf7_features()
  %34 = load i32, i32* @CPUID_LEAF7_FEATURE_SMEP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %0
  %38 = load i8*, i8** @TRUE, align 8
  store i8* %38, i8** @pmap_smep_enabled, align 8
  %39 = load i8*, i8** @pmap_smep_enabled, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = call i32 (...) @get_cr4()
  %43 = load i32, i32* @CR4_SMEP, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @set_cr4(i32 %44)
  br label %46

46:                                               ; preds = %41, %37
  br label %47

47:                                               ; preds = %46, %0
  %48 = call i32 (...) @cpuid_leaf7_features()
  %49 = load i32, i32* @CPUID_LEAF7_FEATURE_SMAP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load i8*, i8** @TRUE, align 8
  store i8* %53, i8** @pmap_smap_enabled, align 8
  %54 = load i8*, i8** @pmap_smap_enabled, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = call i32 (...) @get_cr4()
  %58 = load i32, i32* @CR4_SMAP, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @set_cr4(i32 %59)
  br label %61

61:                                               ; preds = %56, %52
  br label %62

62:                                               ; preds = %61, %47
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i8*, i8** @TRUE, align 8
  store i8* %68, i8** %2, align 8
  %69 = call i32 @cpu_pmc_control(i8** %2)
  br label %70

70:                                               ; preds = %67, %62
  ret void
}

declare dso_local %struct.TYPE_5__* @current_cpu_datap(...) #1

declare dso_local i32 @set_cr4(i32) #1

declare dso_local i32 @get_cr4(...) #1

declare dso_local %struct.TYPE_7__* @cpu_shadowp(i32) #1

declare dso_local i32 @pmap_pcid_configure(...) #1

declare dso_local i32 @cpuid_leaf7_features(...) #1

declare dso_local i32 @cpu_pmc_control(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
