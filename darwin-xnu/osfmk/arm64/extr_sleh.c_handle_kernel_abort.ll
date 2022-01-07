; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_sleh.c_handle_kernel_abort.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_sleh.c_handle_kernel_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Unexpected abort while on interrupt stack.\00", align 1
@KERN_FAILURE = common dso_local global i64 0, align 8
@gVirtBase = common dso_local global i64 0, align 8
@static_memory_end = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Unexpected fault in kernel static region\0A\00", align 1
@THREAD_NULL = common dso_local global %struct.TYPE_8__* null, align 8
@kernel_map = common dso_local global %struct.TYPE_7__* null, align 8
@THREAD_UNINT = common dso_local global i32 0, align 4
@THREAD_ABORTSAFE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_PROTECTION_FAILURE = common dso_local global i64 0, align 8
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unaligned kernel data abort.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Kernel parity error.\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Unclassified kernel abort (fault_code=0x%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Kernel data abort.\00", align 1
@FSC_SYNC_PARITY = common dso_local global i64 0, align 8
@PSR64_PAN = common dso_local global i32 0, align 4
@TH_OPT_DTRACE = common dso_local global i32 0, align 4
@pan_exception_level = common dso_local global i32 0, align 4
@pan_fault_value = common dso_local global i8 0, align 1
@pan_ro_addr = common dso_local global i64 0, align 8
@pan_test_addr = common dso_local global i64 0, align 8
@pgtrace_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i64, i64, i32, i64)* @handle_kernel_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_kernel_abort(i32* %0, i32 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %17 = call %struct.TYPE_8__* (...) @current_thread()
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 (...) @ml_at_interrupt_context()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @panic_with_thread_kernel_state(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32* %22)
  br label %24

24:                                               ; preds = %21, %6
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @is_vm_fault(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %99

28:                                               ; preds = %24
  %29 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @gVirtBase, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @static_memory_end, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @panic_with_thread_kernel_state(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32* %38)
  br label %40

40:                                               ; preds = %37, %33, %28
  %41 = load i64, i64* %9, align 8
  %42 = call i64 @VM_KERNEL_ADDRESS(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @THREAD_NULL, align 8
  %47 = icmp eq %struct.TYPE_8__* %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %40
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kernel_map, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %15, align 8
  %50 = load i32, i32* @THREAD_UNINT, align 4
  store i32 %50, i32* %16, align 4
  br label %56

51:                                               ; preds = %44
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %15, align 8
  %55 = load i32, i32* @THREAD_ABORTSAFE, align 4
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %51, %48
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @is_translation_fault(i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %56
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @trunc_page(i64 %64)
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i64 @arm_fast_fault(i32 %63, i32 %65, i32 %66, i32 %67)
  store i64 %68, i64* %14, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* @KERN_SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %121

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %56
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* @KERN_PROTECTION_FAILURE, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @FALSE, align 4
  %83 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i64 @vm_fault(%struct.TYPE_7__* %79, i64 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32* null, i32 0)
  store i64 %85, i64* %14, align 8
  br label %86

86:                                               ; preds = %78, %74
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* @KERN_SUCCESS, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %121

91:                                               ; preds = %86
  %92 = load i64, i64* %12, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32*, i32** %7, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @set_saved_state_pc(i32* %95, i64 %96)
  br label %121

98:                                               ; preds = %91
  br label %118

99:                                               ; preds = %24
  %100 = load i64, i64* %10, align 8
  %101 = call i64 @is_alignment_fault(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @panic_with_thread_kernel_state(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* %104)
  br label %117

106:                                              ; preds = %99
  %107 = load i64, i64* %10, align 8
  %108 = call i64 @is_parity_error(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @panic_with_thread_kernel_state(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* %111)
  br label %116

113:                                              ; preds = %106
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @kprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %113, %110
  br label %117

117:                                              ; preds = %116, %103
  br label %118

118:                                              ; preds = %117, %98
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @panic_with_thread_kernel_state(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %119)
  br label %121

121:                                              ; preds = %118, %94, %90, %72
  ret void
}

declare dso_local %struct.TYPE_8__* @current_thread(...) #1

declare dso_local i64 @ml_at_interrupt_context(...) #1

declare dso_local i32 @panic_with_thread_kernel_state(i8*, i32*) #1

declare dso_local i64 @is_vm_fault(i64) #1

declare dso_local i64 @VM_KERNEL_ADDRESS(i64) #1

declare dso_local i32 @is_translation_fault(i64) #1

declare dso_local i64 @arm_fast_fault(i32, i32, i32, i32) #1

declare dso_local i32 @trunc_page(i64) #1

declare dso_local i64 @vm_fault(%struct.TYPE_7__*, i64, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @set_saved_state_pc(i32*, i64) #1

declare dso_local i64 @is_alignment_fault(i64) #1

declare dso_local i64 @is_parity_error(i64) #1

declare dso_local i32 @kprintf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
