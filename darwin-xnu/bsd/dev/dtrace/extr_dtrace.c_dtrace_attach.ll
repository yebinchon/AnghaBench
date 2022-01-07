; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32* }

@cpu_lock = common dso_local global i32 0, align 4
@dtrace_provider_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_devi = common dso_local global i32* null, align 8
@dtrace_module_loaded = common dso_local global i32 0, align 4
@dtrace_modload = common dso_local global i32 0, align 4
@dtrace_module_unloaded = common dso_local global i32 0, align 4
@dtrace_modunload = common dso_local global i32 0, align 4
@dtrace_cpu_setup_initial = common dso_local global i32 0, align 4
@dtrace_cpu_init = common dso_local global i32 0, align 4
@dtrace_helpers_destroy = common dso_local global i32 0, align 4
@dtrace_helpers_cleanup = common dso_local global i32 0, align 4
@dtrace_helpers_duplicate = common dso_local global i32 0, align 4
@dtrace_helpers_fork = common dso_local global i32 0, align 4
@dtrace_suspend = common dso_local global i8* null, align 8
@dtrace_cpustart_init = common dso_local global i8* null, align 8
@dtrace_resume = common dso_local global i8* null, align 8
@dtrace_cpustart_fini = common dso_local global i8* null, align 8
@dtrace_debugger_init = common dso_local global i8* null, align 8
@dtrace_debugger_fini = common dso_local global i8* null, align 8
@dtrace_cpu_setup = common dso_local global i64 0, align 8
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"dtrace\00", align 1
@UINT32_MAX = common dso_local global i32 0, align 4
@VM_SLEEP = common dso_local global i32 0, align 4
@VMC_IDENTIFIER = common dso_local global i32 0, align 4
@dtrace_arena = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"dtrace_state_cache\00", align 1
@NCPU = common dso_local global i64 0, align 8
@DTRACE_STATE_ALIGN = common dso_local global i32 0, align 4
@dtrace_state_cache = common dso_local global i32 0, align 4
@dtrace_strkey_probe_provider = common dso_local global i32 0, align 4
@dtrace_probe_t = common dso_local global i32 0, align 4
@dtpr_nextprov = common dso_local global i32 0, align 4
@dtpr_prevprov = common dso_local global i32 0, align 4
@dtrace_byprov = common dso_local global i8* null, align 8
@dtrace_strkey_deref_offset = common dso_local global i32 0, align 4
@dtpr_mod = common dso_local global i32 0, align 4
@dtpr_nextmod = common dso_local global i32 0, align 4
@dtpr_prevmod = common dso_local global i32 0, align 4
@dtrace_bymod = common dso_local global i8* null, align 8
@dtpr_func = common dso_local global i32 0, align 4
@dtpr_nextfunc = common dso_local global i32 0, align 4
@dtpr_prevfunc = common dso_local global i32 0, align 4
@dtrace_byfunc = common dso_local global i8* null, align 8
@dtpr_name = common dso_local global i32 0, align 4
@dtpr_nextname = common dso_local global i32 0, align 4
@dtpr_prevname = common dso_local global i32 0, align 4
@dtrace_byname = common dso_local global i8* null, align 8
@dtrace_retain_max = common dso_local global i32 0, align 4
@CE_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"illegal value (%lu) for dtrace_retain_max; setting to 1\00", align 1
@dtrace_toxrange_add = common dso_local global i32 0, align 4
@dtrace_provider_attr = common dso_local global i32 0, align 4
@DTRACE_PRIV_NONE = common dso_local global i32 0, align 4
@dtrace_provider_ops = common dso_local global i32 0, align 4
@dtrace_provider = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@dtrace_probeid_begin = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@dtrace_probeid_end = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@dtrace_probeid_error = common dso_local global i8* null, align 8
@dtrace_helptrace_enabled = common dso_local global i64 0, align 8
@dtrace_helptrace_buffer = common dso_local global i32* null, align 8
@dtrace_helptrace_bufsize = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@dtrace_helptrace_next = common dso_local global i64 0, align 8
@dtrace_anon = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@dtrace_retained = common dso_local global i32* null, align 8
@dtrace_kernel_symbol_mode = common dso_local global i64 0, align 8
@DTRACE_KERNEL_SYMBOLS_FROM_USERSPACE = common dso_local global i64 0, align 8
@DTRACE_KERNEL_SYMBOLS_FROM_KERNEL = common dso_local global i64 0, align 8
@DDI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @dtrace_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_attach(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %4, align 8
  %6 = call i32 @lck_mtx_lock(i32* @cpu_lock)
  %7 = call i32 @lck_mtx_lock(i32* @dtrace_provider_lock)
  %8 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %9 = load i32*, i32** %2, align 8
  store i32* %9, i32** @dtrace_devi, align 8
  %10 = load i32, i32* @dtrace_module_loaded, align 4
  store i32 %10, i32* @dtrace_modload, align 4
  %11 = load i32, i32* @dtrace_module_unloaded, align 4
  store i32 %11, i32* @dtrace_modunload, align 4
  %12 = load i32, i32* @dtrace_cpu_setup_initial, align 4
  store i32 %12, i32* @dtrace_cpu_init, align 4
  %13 = load i32, i32* @dtrace_helpers_destroy, align 4
  store i32 %13, i32* @dtrace_helpers_cleanup, align 4
  %14 = load i32, i32* @dtrace_helpers_duplicate, align 4
  store i32 %14, i32* @dtrace_helpers_fork, align 4
  %15 = load i8*, i8** @dtrace_suspend, align 8
  store i8* %15, i8** @dtrace_cpustart_init, align 8
  %16 = load i8*, i8** @dtrace_resume, align 8
  store i8* %16, i8** @dtrace_cpustart_fini, align 8
  %17 = load i8*, i8** @dtrace_suspend, align 8
  store i8* %17, i8** @dtrace_debugger_init, align 8
  %18 = load i8*, i8** @dtrace_resume, align 8
  store i8* %18, i8** @dtrace_debugger_fini, align 8
  %19 = load i64, i64* @dtrace_cpu_setup, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32 @register_cpu_setup_func(i32* %20, i32* null)
  %22 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %23 = call i32 @LCK_MTX_ASSERT(i32* @cpu_lock, i32 %22)
  %24 = load i32, i32* @UINT32_MAX, align 4
  %25 = load i32, i32* @VM_SLEEP, align 4
  %26 = load i32, i32* @VMC_IDENTIFIER, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @vmem_create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* inttoptr (i64 1 to i8*), i32 %24, i32 1, i32* null, i32* null, i32* null, i32 0, i32 %27)
  store i32 %28, i32* @dtrace_arena, align 4
  %29 = load i64, i64* @NCPU, align 8
  %30 = trunc i64 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @DTRACE_STATE_ALIGN, align 4
  %35 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0)
  store i32 %35, i32* @dtrace_state_cache, align 4
  %36 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %37 = call i32 @LCK_MTX_ASSERT(i32* @cpu_lock, i32 %36)
  %38 = load i32, i32* @dtrace_strkey_probe_provider, align 4
  %39 = load i32, i32* @dtrace_probe_t, align 4
  %40 = load i32, i32* @dtpr_nextprov, align 4
  %41 = call i32 @offsetof(i32 %39, i32 %40)
  %42 = load i32, i32* @dtrace_probe_t, align 4
  %43 = load i32, i32* @dtpr_prevprov, align 4
  %44 = call i32 @offsetof(i32 %42, i32 %43)
  %45 = call i8* @dtrace_hash_create(i32 %38, i32 0, i32 %41, i32 %44)
  store i8* %45, i8** @dtrace_byprov, align 8
  %46 = load i32, i32* @dtrace_strkey_deref_offset, align 4
  %47 = load i32, i32* @dtrace_probe_t, align 4
  %48 = load i32, i32* @dtpr_mod, align 4
  %49 = call i32 @offsetof(i32 %47, i32 %48)
  %50 = load i32, i32* @dtrace_probe_t, align 4
  %51 = load i32, i32* @dtpr_nextmod, align 4
  %52 = call i32 @offsetof(i32 %50, i32 %51)
  %53 = load i32, i32* @dtrace_probe_t, align 4
  %54 = load i32, i32* @dtpr_prevmod, align 4
  %55 = call i32 @offsetof(i32 %53, i32 %54)
  %56 = call i8* @dtrace_hash_create(i32 %46, i32 %49, i32 %52, i32 %55)
  store i8* %56, i8** @dtrace_bymod, align 8
  %57 = load i32, i32* @dtrace_strkey_deref_offset, align 4
  %58 = load i32, i32* @dtrace_probe_t, align 4
  %59 = load i32, i32* @dtpr_func, align 4
  %60 = call i32 @offsetof(i32 %58, i32 %59)
  %61 = load i32, i32* @dtrace_probe_t, align 4
  %62 = load i32, i32* @dtpr_nextfunc, align 4
  %63 = call i32 @offsetof(i32 %61, i32 %62)
  %64 = load i32, i32* @dtrace_probe_t, align 4
  %65 = load i32, i32* @dtpr_prevfunc, align 4
  %66 = call i32 @offsetof(i32 %64, i32 %65)
  %67 = call i8* @dtrace_hash_create(i32 %57, i32 %60, i32 %63, i32 %66)
  store i8* %67, i8** @dtrace_byfunc, align 8
  %68 = load i32, i32* @dtrace_strkey_deref_offset, align 4
  %69 = load i32, i32* @dtrace_probe_t, align 4
  %70 = load i32, i32* @dtpr_name, align 4
  %71 = call i32 @offsetof(i32 %69, i32 %70)
  %72 = load i32, i32* @dtrace_probe_t, align 4
  %73 = load i32, i32* @dtpr_nextname, align 4
  %74 = call i32 @offsetof(i32 %72, i32 %73)
  %75 = load i32, i32* @dtrace_probe_t, align 4
  %76 = load i32, i32* @dtpr_prevname, align 4
  %77 = call i32 @offsetof(i32 %75, i32 %76)
  %78 = call i8* @dtrace_hash_create(i32 %68, i32 %71, i32 %74, i32 %77)
  store i8* %78, i8** @dtrace_byname, align 8
  %79 = load i32, i32* @dtrace_retain_max, align 4
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %81, label %85

81:                                               ; preds = %1
  %82 = load i32, i32* @CE_WARN, align 4
  %83 = load i32, i32* @dtrace_retain_max, align 4
  %84 = call i32 @cmn_err(i32 %82, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  store i32 1, i32* @dtrace_retain_max, align 4
  br label %85

85:                                               ; preds = %81, %1
  %86 = load i32, i32* @dtrace_toxrange_add, align 4
  %87 = call i32 @dtrace_toxic_ranges(i32 %86)
  %88 = load i32, i32* @DTRACE_PRIV_NONE, align 4
  %89 = call i32 @dtrace_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* @dtrace_provider_attr, i32 %88, i32 0, i32* @dtrace_provider_ops, i32* null, i64* %3)
  %90 = load i32*, i32** @dtrace_provider, align 8
  %91 = icmp ne i32* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 @ASSERT(i32 %92)
  %94 = load i32*, i32** @dtrace_provider, align 8
  %95 = ptrtoint i32* %94 to i64
  %96 = load i64, i64* %3, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @ASSERT(i32 %98)
  %100 = load i32*, i32** @dtrace_provider, align 8
  %101 = ptrtoint i32* %100 to i64
  %102 = call i8* @dtrace_probe_create(i64 %101, i32* null, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 1, i32* null)
  store i8* %102, i8** @dtrace_probeid_begin, align 8
  %103 = load i32*, i32** @dtrace_provider, align 8
  %104 = ptrtoint i32* %103 to i64
  %105 = call i8* @dtrace_probe_create(i64 %104, i32* null, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* null)
  store i8* %105, i8** @dtrace_probeid_end, align 8
  %106 = load i32*, i32** @dtrace_provider, align 8
  %107 = ptrtoint i32* %106 to i64
  %108 = call i8* @dtrace_probe_create(i64 %107, i32* null, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 3, i32* null)
  store i8* %108, i8** @dtrace_probeid_error, align 8
  %109 = call i32 (...) @dtrace_anon_property()
  %110 = call i32 @lck_mtx_unlock(i32* @cpu_lock)
  %111 = load i64, i64* @dtrace_helptrace_enabled, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %85
  %114 = load i32*, i32** @dtrace_helptrace_buffer, align 8
  %115 = icmp eq i32* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 @ASSERT(i32 %116)
  %118 = load i32, i32* @dtrace_helptrace_bufsize, align 4
  %119 = load i32, i32* @KM_SLEEP, align 4
  %120 = call i32* @kmem_zalloc(i32 %118, i32 %119)
  store i32* %120, i32** @dtrace_helptrace_buffer, align 8
  store i64 0, i64* @dtrace_helptrace_next, align 8
  br label %121

121:                                              ; preds = %113, %85
  %122 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dtrace_anon, i32 0, i32 1), align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %150

124:                                              ; preds = %121
  %125 = load i32*, i32** @dtrace_retained, align 8
  %126 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dtrace_anon, i32 0, i32 1), align 8
  %127 = icmp eq i32* %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @ASSERT(i32 %128)
  %130 = load i64, i64* @dtrace_kernel_symbol_mode, align 8
  %131 = load i64, i64* @DTRACE_KERNEL_SYMBOLS_FROM_USERSPACE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i64, i64* @DTRACE_KERNEL_SYMBOLS_FROM_KERNEL, align 8
  store i64 %134, i64* @dtrace_kernel_symbol_mode, align 8
  br label %135

135:                                              ; preds = %133, %124
  %136 = call i32 @dtrace_enabling_provide(i32* null)
  %137 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dtrace_anon, i32 0, i32 2), align 8
  store i32* %137, i32** %4, align 8
  %138 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %139 = call i32 @lck_mtx_unlock(i32* @dtrace_provider_lock)
  %140 = call i32 @lck_mtx_lock(i32* @cpu_lock)
  %141 = call i32 @lck_mtx_lock(i32* @dtrace_provider_lock)
  %142 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %143 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dtrace_anon, i32 0, i32 1), align 8
  store i32* %143, i32** %5, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %135
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @dtrace_enabling_match(i32* %146, i32* null, i32* null)
  br label %148

148:                                              ; preds = %145, %135
  %149 = call i32 @lck_mtx_unlock(i32* @cpu_lock)
  br label %150

150:                                              ; preds = %148, %121
  %151 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %152 = call i32 @lck_mtx_unlock(i32* @dtrace_provider_lock)
  %153 = load i32*, i32** %4, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32*, i32** %4, align 8
  %157 = call i32 @dtrace_state_go(i32* %156, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dtrace_anon, i32 0, i32 0))
  br label %158

158:                                              ; preds = %155, %150
  %159 = load i32, i32* @DDI_SUCCESS, align 4
  ret i32 %159
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @register_cpu_setup_func(i32*, i32*) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @vmem_create(i8*, i8*, i32, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i8* @dtrace_hash_create(i32, i32, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @cmn_err(i32, i8*, i32) #1

declare dso_local i32 @dtrace_toxic_ranges(i32) #1

declare dso_local i32 @dtrace_register(i8*, i32*, i32, i32, i32*, i32*, i64*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @dtrace_probe_create(i64, i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @dtrace_anon_property(...) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @dtrace_enabling_provide(i32*) #1

declare dso_local i32 @dtrace_enabling_match(i32*, i32*, i32*) #1

declare dso_local i32 @dtrace_state_go(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
