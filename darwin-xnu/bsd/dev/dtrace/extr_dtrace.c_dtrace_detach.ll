; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_detach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@DDI_SUCCESS = common dso_local global i32 0, align 4
@DDI_FAILURE = common dso_local global i32 0, align 4
@cpu_lock = common dso_local global i32 0, align 4
@dtrace_provider_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_opens = common dso_local global i64 0, align 8
@dtrace_helpers = common dso_local global i64 0, align 8
@dtrace_provider = common dso_local global i32* null, align 8
@KDI_DTSET_DTRACE_DEACTIVATE = common dso_local global i32 0, align 4
@dtrace_anon = common dso_local global i32 0, align 4
@dtrace_cpu_setup = common dso_local global i64 0, align 8
@dtrace_cpu_init = common dso_local global i32* null, align 8
@dtrace_helpers_cleanup = common dso_local global i32* null, align 8
@dtrace_helpers_fork = common dso_local global i32* null, align 8
@dtrace_cpustart_init = common dso_local global i32* null, align 8
@dtrace_cpustart_fini = common dso_local global i32* null, align 8
@dtrace_debugger_init = common dso_local global i32* null, align 8
@dtrace_debugger_fini = common dso_local global i32* null, align 8
@dtrace_kreloc_init = common dso_local global i32* null, align 8
@dtrace_kreloc_fini = common dso_local global i32* null, align 8
@dtrace_modload = common dso_local global i32* null, align 8
@dtrace_modunload = common dso_local global i32* null, align 8
@dtrace_helptrace_enabled = common dso_local global i64 0, align 8
@dtrace_helptrace_buffer = common dso_local global i32* null, align 8
@dtrace_helptrace_bufsize = common dso_local global i32 0, align 4
@dtrace_probes = common dso_local global i32* null, align 8
@dtrace_nprobes = common dso_local global i32 0, align 4
@dtrace_strings = common dso_local global i32* null, align 8
@dtrace_byprov = common dso_local global i32* null, align 8
@dtrace_bymod = common dso_local global i32* null, align 8
@dtrace_byfunc = common dso_local global i32* null, align 8
@dtrace_byname = common dso_local global i32* null, align 8
@dtrace_state_cache = common dso_local global i32 0, align 4
@dtrace_arena = common dso_local global i32 0, align 4
@dtrace_toxrange = common dso_local global i32* null, align 8
@dtrace_toxranges_max = common dso_local global i32 0, align 4
@dtrace_toxranges = common dso_local global i64 0, align 8
@dtrace_devi = common dso_local global i32* null, align 8
@dtrace_softstate = common dso_local global i32 0, align 4
@dtrace_vtime_references = common dso_local global i64 0, align 8
@dtrace_retained = common dso_local global i32* null, align 8
@dtrace_taskq = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @dtrace_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_detach(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %11 [
    i32 129, label %8
    i32 128, label %9
  ]

8:                                                ; preds = %2
  br label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @DDI_SUCCESS, align 4
  store i32 %10, i32* %3, align 4
  br label %113

11:                                               ; preds = %2
  %12 = load i32, i32* @DDI_FAILURE, align 4
  store i32 %12, i32* %3, align 4
  br label %113

13:                                               ; preds = %8
  %14 = call i32 @lck_mtx_lock(i32* @cpu_lock)
  %15 = call i32 @lck_mtx_lock(i32* @dtrace_provider_lock)
  %16 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %17 = load i64, i64* @dtrace_opens, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i64, i64* @dtrace_helpers, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %25 = call i32 @lck_mtx_unlock(i32* @dtrace_provider_lock)
  %26 = call i32 @lck_mtx_unlock(i32* @cpu_lock)
  %27 = load i32, i32* @DDI_FAILURE, align 4
  store i32 %27, i32* %3, align 4
  br label %113

28:                                               ; preds = %13
  %29 = load i32*, i32** @dtrace_provider, align 8
  %30 = ptrtoint i32* %29 to i32
  %31 = call i64 @dtrace_unregister(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %35 = call i32 @lck_mtx_unlock(i32* @dtrace_provider_lock)
  %36 = call i32 @lck_mtx_unlock(i32* @cpu_lock)
  %37 = load i32, i32* @DDI_FAILURE, align 4
  store i32 %37, i32* %3, align 4
  br label %113

38:                                               ; preds = %28
  store i32* null, i32** @dtrace_provider, align 8
  %39 = call %struct.TYPE_4__* (...) @dtrace_anon_grab()
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %6, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = call i32 @dtrace_state_destroy(%struct.TYPE_4__* %48)
  %50 = load i32, i32* @KDI_DTSET_DTRACE_DEACTIVATE, align 4
  %51 = call i32 @kdi_dtrace_set(i32 %50)
  br label %52

52:                                               ; preds = %41, %38
  %53 = call i32 @bzero(i32* @dtrace_anon, i32 4)
  %54 = load i64, i64* @dtrace_cpu_setup, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = call i32 @unregister_cpu_setup_func(i32* %55, i32* null)
  store i32* null, i32** @dtrace_cpu_init, align 8
  store i32* null, i32** @dtrace_helpers_cleanup, align 8
  store i32* null, i32** @dtrace_helpers_fork, align 8
  store i32* null, i32** @dtrace_cpustart_init, align 8
  store i32* null, i32** @dtrace_cpustart_fini, align 8
  store i32* null, i32** @dtrace_debugger_init, align 8
  store i32* null, i32** @dtrace_debugger_fini, align 8
  store i32* null, i32** @dtrace_kreloc_init, align 8
  store i32* null, i32** @dtrace_kreloc_fini, align 8
  store i32* null, i32** @dtrace_modload, align 8
  store i32* null, i32** @dtrace_modunload, align 8
  %57 = call i32 @lck_mtx_unlock(i32* @cpu_lock)
  %58 = load i64, i64* @dtrace_helptrace_enabled, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32*, i32** @dtrace_helptrace_buffer, align 8
  %62 = load i32, i32* @dtrace_helptrace_bufsize, align 4
  %63 = call i32 @kmem_free(i32* %61, i32 %62)
  store i32* null, i32** @dtrace_helptrace_buffer, align 8
  br label %64

64:                                               ; preds = %60, %52
  %65 = load i32*, i32** @dtrace_probes, align 8
  %66 = load i32, i32* @dtrace_nprobes, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @kmem_free(i32* %65, i32 %69)
  store i32* null, i32** @dtrace_probes, align 8
  store i32 0, i32* @dtrace_nprobes, align 4
  %71 = load i32*, i32** @dtrace_strings, align 8
  %72 = call i32 @dtrace_hash_destroy(i32* %71)
  %73 = load i32*, i32** @dtrace_byprov, align 8
  %74 = call i32 @dtrace_hash_destroy(i32* %73)
  %75 = load i32*, i32** @dtrace_bymod, align 8
  %76 = call i32 @dtrace_hash_destroy(i32* %75)
  %77 = load i32*, i32** @dtrace_byfunc, align 8
  %78 = call i32 @dtrace_hash_destroy(i32* %77)
  %79 = load i32*, i32** @dtrace_byname, align 8
  %80 = call i32 @dtrace_hash_destroy(i32* %79)
  store i32* null, i32** @dtrace_strings, align 8
  store i32* null, i32** @dtrace_byprov, align 8
  store i32* null, i32** @dtrace_bymod, align 8
  store i32* null, i32** @dtrace_byfunc, align 8
  store i32* null, i32** @dtrace_byname, align 8
  %81 = load i32, i32* @dtrace_state_cache, align 4
  %82 = call i32 @kmem_cache_destroy(i32 %81)
  %83 = load i32, i32* @dtrace_arena, align 4
  %84 = call i32 @vmem_destroy(i32 %83)
  %85 = load i32*, i32** @dtrace_toxrange, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %64
  %88 = load i32*, i32** @dtrace_toxrange, align 8
  %89 = load i32, i32* @dtrace_toxranges_max, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i32 @kmem_free(i32* %88, i32 %92)
  store i32* null, i32** @dtrace_toxrange, align 8
  store i64 0, i64* @dtrace_toxranges, align 8
  store i32 0, i32* @dtrace_toxranges_max, align 4
  br label %94

94:                                               ; preds = %87, %64
  %95 = load i32*, i32** @dtrace_devi, align 8
  %96 = call i32 @ddi_remove_minor_node(i32* %95, i32* null)
  store i32* null, i32** @dtrace_devi, align 8
  %97 = call i32 @ddi_soft_state_fini(i32* @dtrace_softstate)
  %98 = load i64, i64* @dtrace_vtime_references, align 8
  %99 = icmp eq i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @ASSERT(i32 %100)
  %102 = load i64, i64* @dtrace_opens, align 8
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @ASSERT(i32 %104)
  %106 = load i32*, i32** @dtrace_retained, align 8
  %107 = icmp eq i32* %106, null
  %108 = zext i1 %107 to i32
  %109 = call i32 @ASSERT(i32 %108)
  %110 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %111 = call i32 @lck_mtx_unlock(i32* @dtrace_provider_lock)
  %112 = load i32, i32* @DDI_SUCCESS, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %94, %33, %23, %11, %9
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i64 @dtrace_unregister(i32) #1

declare dso_local %struct.TYPE_4__* @dtrace_anon_grab(...) #1

declare dso_local i32 @dtrace_state_destroy(%struct.TYPE_4__*) #1

declare dso_local i32 @kdi_dtrace_set(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @unregister_cpu_setup_func(i32*, i32*) #1

declare dso_local i32 @kmem_free(i32*, i32) #1

declare dso_local i32 @dtrace_hash_destroy(i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @vmem_destroy(i32) #1

declare dso_local i32 @ddi_remove_minor_node(i32*, i32*) #1

declare dso_local i32 @ddi_soft_state_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
