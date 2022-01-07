; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_cpu_thread_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_cpu_thread_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }

@x86_topo_lock = common dso_local global i32 0, align 4
@topoParmsInited = common dso_local global i32 0, align 4
@CPU_THREADTYPE_INTEL_HTT = common dso_local global i32 0, align 4
@CPU_THREADTYPE_NONE = common dso_local global i32 0, align 4
@x86_pkgs = common dso_local global %struct.TYPE_19__* null, align 8
@machine_info = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cpu_thread_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  store i32* null, i32** %4, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %5, align 8
  %8 = call i32 @mp_safe_spin_lock(i32* @x86_topo_lock)
  %9 = load i32, i32* @topoParmsInited, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 (...) @initTopoParms()
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i32, i32* %2, align 4
  %15 = call %struct.TYPE_21__* @cpu_datap(i32 %14)
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %6, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @x86_lcpu_init(i32 %19)
  %21 = call i64 (...) @cpu_is_hyperthreaded()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i32, i32* @CPU_THREADTYPE_INTEL_HTT, align 4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %31

27:                                               ; preds = %13
  %28 = load i32, i32* @CPU_THREADTYPE_NONE, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %23
  br label %32

32:                                               ; preds = %54, %31
  %33 = load i32, i32* %2, align 4
  %34 = call %struct.TYPE_19__* @x86_package_find(i32 %33)
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %5, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = icmp eq %struct.TYPE_19__* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = call i32 @simple_unlock(i32* @x86_topo_lock)
  %39 = load i32, i32* %2, align 4
  %40 = call %struct.TYPE_19__* @x86_package_alloc(i32 %39)
  store %struct.TYPE_19__* %40, %struct.TYPE_19__** %5, align 8
  %41 = call i32 @mp_safe_spin_lock(i32* @x86_topo_lock)
  %42 = load i32, i32* %2, align 4
  %43 = call %struct.TYPE_19__* @x86_package_find(i32 %42)
  %44 = icmp ne %struct.TYPE_19__* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = call i32 @x86_package_free(%struct.TYPE_19__* %46)
  br label %54

48:                                               ; preds = %37
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** @x86_pkgs, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %51, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %52, %struct.TYPE_19__** @x86_pkgs, align 8
  br label %53

53:                                               ; preds = %48, %32
  br label %54

54:                                               ; preds = %53, %45
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = icmp eq %struct.TYPE_19__* %55, null
  br i1 %56, label %32, label %57

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %79, %57
  %59 = load i32, i32* %2, align 4
  %60 = call i32* @x86_die_find(i32 %59)
  store i32* %60, i32** %4, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = call i32 @simple_unlock(i32* @x86_topo_lock)
  %65 = load i32, i32* %2, align 4
  %66 = call i32* @x86_die_alloc(i32 %65)
  store i32* %66, i32** %4, align 8
  %67 = call i32 @mp_safe_spin_lock(i32* @x86_topo_lock)
  %68 = load i32, i32* %2, align 4
  %69 = call i32* @x86_die_find(i32 %68)
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @x86_die_free(i32* %72)
  br label %79

74:                                               ; preds = %63
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @x86_package_add_die(%struct.TYPE_19__* %75, i32* %76)
  br label %78

78:                                               ; preds = %74, %58
  br label %79

79:                                               ; preds = %78, %71
  %80 = load i32*, i32** %4, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %58, label %82

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %109, %82
  %84 = load i32, i32* %2, align 4
  %85 = call %struct.TYPE_20__* @x86_core_find(i32 %84)
  store %struct.TYPE_20__* %85, %struct.TYPE_20__** %3, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %87 = icmp eq %struct.TYPE_20__* %86, null
  br i1 %87, label %88, label %108

88:                                               ; preds = %83
  %89 = call i32 @simple_unlock(i32* @x86_topo_lock)
  %90 = load i32, i32* %2, align 4
  %91 = call %struct.TYPE_20__* @x86_core_alloc(i32 %90)
  store %struct.TYPE_20__* %91, %struct.TYPE_20__** %3, align 8
  %92 = call i32 @mp_safe_spin_lock(i32* @x86_topo_lock)
  %93 = load i32, i32* %2, align 4
  %94 = call %struct.TYPE_20__* @x86_core_find(i32 %93)
  %95 = icmp ne %struct.TYPE_20__* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %98 = call i32 @x86_core_free(%struct.TYPE_20__* %97)
  br label %109

99:                                               ; preds = %88
  %100 = load i32*, i32** %4, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %102 = call i32 @x86_die_add_core(i32* %100, %struct.TYPE_20__* %101)
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %105 = call i32 @x86_package_add_core(%struct.TYPE_19__* %103, %struct.TYPE_20__* %104)
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @machine_info, i32 0, i32 0), align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @machine_info, i32 0, i32 0), align 4
  br label %108

108:                                              ; preds = %99, %83
  br label %109

109:                                              ; preds = %108, %96
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %111 = icmp eq %struct.TYPE_20__* %110, null
  br i1 %111, label %83, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @machine_info, i32 0, i32 1), align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @machine_info, i32 0, i32 1), align 4
  %115 = call i32 @simple_unlock(i32* @x86_topo_lock)
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = call i32 @x86_core_add_lcpu(%struct.TYPE_20__* %116, i32* %118)
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = call i32 @x86_die_add_lcpu(i32 %122, i32* %124)
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = call i32 @x86_package_add_lcpu(i32 %128, i32* %130)
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = call i32 @x86_lcpu_add_caches(i32* %133)
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %136 = bitcast %struct.TYPE_20__* %135 to i8*
  ret i8* %136
}

declare dso_local i32 @mp_safe_spin_lock(i32*) #1

declare dso_local i32 @initTopoParms(...) #1

declare dso_local %struct.TYPE_21__* @cpu_datap(i32) #1

declare dso_local i32 @x86_lcpu_init(i32) #1

declare dso_local i64 @cpu_is_hyperthreaded(...) #1

declare dso_local %struct.TYPE_19__* @x86_package_find(i32) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local %struct.TYPE_19__* @x86_package_alloc(i32) #1

declare dso_local i32 @x86_package_free(%struct.TYPE_19__*) #1

declare dso_local i32* @x86_die_find(i32) #1

declare dso_local i32* @x86_die_alloc(i32) #1

declare dso_local i32 @x86_die_free(i32*) #1

declare dso_local i32 @x86_package_add_die(%struct.TYPE_19__*, i32*) #1

declare dso_local %struct.TYPE_20__* @x86_core_find(i32) #1

declare dso_local %struct.TYPE_20__* @x86_core_alloc(i32) #1

declare dso_local i32 @x86_core_free(%struct.TYPE_20__*) #1

declare dso_local i32 @x86_die_add_core(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @x86_package_add_core(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @x86_core_add_lcpu(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @x86_die_add_lcpu(i32, i32*) #1

declare dso_local i32 @x86_package_add_lcpu(i32, i32*) #1

declare dso_local i32 @x86_lcpu_add_caches(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
