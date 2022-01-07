; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_systrace.c_dtrace_machtrace_syscall.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_systrace.c_dtrace_machtrace_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64*, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.mach_call_args = type { i32 }
%struct.TYPE_19__ = type { i64* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_24__ = type { i32, i64* }
%struct.TYPE_17__ = type { i32, i64* }

@VALID = common dso_local global i32 0, align 4
@SYSCALL_NUMBER_MASK = common dso_local global i32 0, align 4
@machtrace_sysent = common dso_local global %struct.TYPE_22__* null, align 8
@DTRACE_IDNONE = common dso_local global i32 0, align 4
@ARM64_SYSCALL_CODE_REG_NUM = common dso_local global i64 0, align 8
@PR_REQUESTED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_23__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mach_call_args*)* @dtrace_machtrace_syscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dtrace_machtrace_syscall(%struct.mach_call_args* %0) #0 {
  %2 = alloca %struct.mach_call_args*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64 (%struct.mach_call_args*)*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.mach_call_args* %0, %struct.mach_call_args** %2, align 8
  %11 = load %struct.mach_call_args*, %struct.mach_call_args** %2, align 8
  %12 = bitcast %struct.mach_call_args* %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = call i32 (...) @current_thread()
  %14 = load i32, i32* @VALID, align 4
  %15 = call i32 @pal_register_cache_state(i32 %13, i32 %14)
  %16 = call i32 (...) @current_thread()
  %17 = call i64 @find_user_regs(i32 %16)
  %18 = inttoptr i64 %17 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %9, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %20 = call i64 @is_saved_state64(%struct.TYPE_19__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %24 = call %struct.TYPE_24__* @saved_state64(%struct.TYPE_19__* %23)
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SYSCALL_NUMBER_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %3, align 4
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %31 = call %struct.TYPE_17__* @saved_state32(%struct.TYPE_19__* %30)
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** @machtrace_sysent, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i64 %38
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %4, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @DTRACE_IDNONE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %80

45:                                               ; preds = %35
  %46 = call i32 (...) @current_thread()
  %47 = call i32 @get_bsdthread_info(i32 %46)
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %49, %struct.TYPE_20__** %10, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %51 = icmp ne %struct.TYPE_20__* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i32*, i32** %7, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %52, %45
  %58 = load i32, i32* %5, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @machtrace_probe(i32 %58, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72)
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %75 = icmp ne %struct.TYPE_20__* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %57
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  store i8* null, i8** %78, align 8
  br label %79

79:                                               ; preds = %76, %57
  br label %80

80:                                               ; preds = %79, %35
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i64 (%struct.mach_call_args*)*
  store i64 (%struct.mach_call_args*)* %85, i64 (%struct.mach_call_args*)** %8, align 8
  %86 = load i64 (%struct.mach_call_args*)*, i64 (%struct.mach_call_args*)** %8, align 8
  %87 = load %struct.mach_call_args*, %struct.mach_call_args** %2, align 8
  %88 = call i64 %86(%struct.mach_call_args* %87)
  store i64 %88, i64* %6, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* @DTRACE_IDNONE, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %80
  %95 = load i32, i32* %5, align 4
  %96 = load i64, i64* %6, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @machtrace_probe(i32 %95, i32 %97, i32 0, i32 0, i32 0, i32 0)
  br label %99

99:                                               ; preds = %94, %80
  %100 = load i64, i64* %6, align 8
  ret i64 %100
}

declare dso_local i32 @pal_register_cache_state(i32, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i64 @find_user_regs(i32) #1

declare dso_local i64 @is_saved_state64(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_24__* @saved_state64(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_17__* @saved_state32(%struct.TYPE_19__*) #1

declare dso_local i32 @get_bsdthread_info(i32) #1

declare dso_local i32 @machtrace_probe(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
