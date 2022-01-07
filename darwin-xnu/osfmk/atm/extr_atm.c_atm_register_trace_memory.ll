; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/atm/extr_atm.c_atm_register_trace_memory.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/atm/extr_atm.c_atm_register_trace_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@MACH_PORT_NULL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@disable_atm = common dso_local global i64 0, align 8
@ATM_TRACE_DISABLE = common dso_local global i32 0, align 4
@KERN_NOT_SUPPORTED = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@MAX_TRACE_BUFFER_SIZE = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@ATM_TASK_DESCRIPTOR_NULL = common dso_local global i32* null, align 8
@KERN_NO_SPACE = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @atm_register_trace_memory(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @MACH_PORT_NULL, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* @disable_atm, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = call i32 (...) @atm_get_diagnostic_config()
  %19 = load i32, i32* @ATM_TRACE_DISABLE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %3
  %23 = load i64, i64* @KERN_NOT_SUPPORTED, align 8
  store i64 %23, i64* %4, align 8
  br label %103

24:                                               ; preds = %17
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = call %struct.TYPE_7__* (...) @current_task()
  %27 = icmp ne %struct.TYPE_7__* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %29, i64* %4, align 8
  br label %103

30:                                               ; preds = %24
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %52, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = icmp eq i8* %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @PAGE_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @MAX_TRACE_BUFFER_SIZE, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %43, %40, %35, %30
  %53 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %53, i64* %4, align 8
  br label %103

54:                                               ; preds = %48
  %55 = call i32 (...) @current_map()
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @VM_PROT_READ, align 4
  %60 = call i64 @mach_make_memory_entry_64(i32 %57, i32* %12, i32 %58, i32 %59, i32* %9, i32* null)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @KERN_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i64, i64* %10, align 8
  store i64 %65, i64* %4, align 8
  br label %103

66:                                               ; preds = %54
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = call i32* @atm_task_descriptor_alloc_init(i32 %67, i32 %68, %struct.TYPE_7__* %69)
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** @ATM_TASK_DESCRIPTOR_NULL, align 8
  %73 = icmp eq i32* %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @ipc_port_release_send(i32 %75)
  %77 = load i64, i64* @KERN_NO_SPACE, align 8
  store i64 %77, i64* %4, align 8
  br label %103

78:                                               ; preds = %66
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = call i32 @task_lock(%struct.TYPE_7__* %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i32*, i32** %8, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32* %86, i32** %88, align 8
  %89 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %89, i64* %10, align 8
  br label %92

90:                                               ; preds = %78
  %91 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %91, i64* %10, align 8
  br label %92

92:                                               ; preds = %90, %85
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = call i32 @task_unlock(%struct.TYPE_7__* %93)
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @KERN_SUCCESS, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @atm_task_descriptor_dealloc(i32* %99)
  br label %101

101:                                              ; preds = %98, %92
  %102 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %102, i64* %4, align 8
  br label %103

103:                                              ; preds = %101, %74, %64, %52, %28, %22
  %104 = load i64, i64* %4, align 8
  ret i64 %104
}

declare dso_local i32 @atm_get_diagnostic_config(...) #1

declare dso_local %struct.TYPE_7__* @current_task(...) #1

declare dso_local i32 @current_map(...) #1

declare dso_local i64 @mach_make_memory_entry_64(i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32* @atm_task_descriptor_alloc_init(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ipc_port_release_send(i32) #1

declare dso_local i32 @task_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @atm_task_descriptor_dealloc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
