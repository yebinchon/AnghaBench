; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_mib.c_sysctl_mib_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_mib.c_sysctl_mib_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@cputype = common dso_local global i32 0, align 4
@cpusubtype = common dso_local global i32 0, align 4
@cputhreadtype = common dso_local global i64 0, align 8
@k64Bit = common dso_local global i32 0, align 4
@cpu64bit = common dso_local global i32 0, align 4
@CPU_THREADTYPE_NONE = common dso_local global i64 0, align 8
@sysctl__hw_cputhreadtype = common dso_local global i32 0, align 4
@cpufamily = common dso_local global i32 0, align 4
@cacheconfig = common dso_local global i32* null, align 8
@cachesize = common dso_local global i64* null, align 8
@packages = common dso_local global i32 0, align 4
@CPU_ARCH_ABI64 = common dso_local global i32 0, align 4
@breakpoint_flag = common dso_local global i32 0, align 4
@gNeon = common dso_local global i32 0, align 4
@gNeonFp16 = common dso_local global i32 0, align 4
@gNeonHpfp = common dso_local global i32 0, align 4
@watchpoint_flag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysctl_mib_init() #0 {
  %1 = call i32 (...) @cpu_type()
  store i32 %1, i32* @cputype, align 4
  %2 = call i32 (...) @cpu_subtype()
  store i32 %2, i32* @cpusubtype, align 4
  %3 = call i64 (...) @cpu_threadtype()
  store i64 %3, i64* @cputhreadtype, align 8
  %4 = call i32 (...) @_get_cpu_capabilities()
  %5 = load i32, i32* @k64Bit, align 4
  %6 = and i32 %4, %5
  %7 = load i32, i32* @k64Bit, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  store i32 %9, i32* @cpu64bit, align 4
  %10 = load i64, i64* @cputhreadtype, align 8
  %11 = load i64, i64* @CPU_THREADTYPE_NONE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @sysctl_register_oid(i32* @sysctl__hw_cputhreadtype)
  br label %15

15:                                               ; preds = %13, %0
  %16 = call i32 (...) @cpuid_cpufamily()
  store i32 %16, i32* @cpufamily, align 4
  %17 = call i32 @ml_cpu_cache_sharing(i32 0)
  %18 = load i32*, i32** @cacheconfig, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %17, i32* %19, align 4
  %20 = call i32 @ml_cpu_cache_sharing(i32 1)
  %21 = load i32*, i32** @cacheconfig, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %20, i32* %22, align 4
  %23 = call i32 @ml_cpu_cache_sharing(i32 2)
  %24 = load i32*, i32** @cacheconfig, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %23, i32* %25, align 4
  %26 = call i32 @ml_cpu_cache_sharing(i32 3)
  %27 = load i32*, i32** @cacheconfig, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** @cacheconfig, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  store i32 0, i32* %30, align 4
  %31 = call i64 @ml_cpu_cache_size(i32 0)
  %32 = load i64*, i64** @cachesize, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  store i64 %31, i64* %33, align 8
  %34 = call i64 @ml_cpu_cache_size(i32 1)
  %35 = load i64*, i64** @cachesize, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 %34, i64* %36, align 8
  %37 = call i64 @ml_cpu_cache_size(i32 2)
  %38 = load i64*, i64** @cachesize, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  store i64 %37, i64* %39, align 8
  %40 = call i64 @ml_cpu_cache_size(i32 3)
  %41 = load i64*, i64** @cachesize, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 3
  store i64 %40, i64* %42, align 8
  %43 = load i64*, i64** @cachesize, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 4
  store i64 0, i64* %44, align 8
  %45 = call i32 @ml_cpu_cache_sharing(i32 0)
  %46 = call %struct.TYPE_7__* (...) @cpuid_info()
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @roundup(i32 %45, i32 %48)
  %50 = call %struct.TYPE_7__* (...) @cpuid_info()
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %49, %52
  store i32 %53, i32* @packages, align 4
  ret void
}

declare dso_local i32 @cpu_type(...) #1

declare dso_local i32 @cpu_subtype(...) #1

declare dso_local i64 @cpu_threadtype(...) #1

declare dso_local i32 @_get_cpu_capabilities(...) #1

declare dso_local i32 @sysctl_register_oid(i32*) #1

declare dso_local i32 @cpuid_cpufamily(...) #1

declare dso_local i32 @ml_cpu_cache_sharing(i32) #1

declare dso_local i64 @ml_cpu_cache_size(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.TYPE_7__* @cpuid_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
