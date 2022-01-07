; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_sleh.c_handle_user_abort.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_sleh.c_handle_user_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 }

@EXC_BAD_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Apparently on interrupt stack when taking user abort!\0A\00", align 1
@THROTTLE_LEVEL_NONE = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i8* null, align 8
@kernel_map = common dso_local global %struct.TYPE_6__* null, align 8
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@THREAD_ABORTSAFE = common dso_local global i32 0, align 4
@KERN_ABORTED = common dso_local global i64 0, align 8
@EXC_ARM_DA_ALIGN = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"User parity error.\00", align 1
@FSC_SYNC_PARITY = common dso_local global i64 0, align 8
@TH_OPT_DTRACE = common dso_local global i32 0, align 4
@pgtrace_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i64, i32, i8*)* @handle_user_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_user_abort(i32* %0, i32 %1, i8* %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x i8*], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %20 = load i32, i32* @EXC_BAD_ACCESS, align 4
  store i32 %20, i32* %13, align 4
  store i32 2, i32* %15, align 4
  %21 = call %struct.TYPE_7__* (...) @current_thread()
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %16, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 (...) @ml_at_interrupt_context()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @panic_with_thread_kernel_state(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32* %27)
  br label %29

29:                                               ; preds = %26, %6
  %30 = load i32, i32* @THROTTLE_LEVEL_NONE, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @is_vm_fault(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %102

36:                                               ; preds = %29
  %37 = load i8*, i8** @KERN_FAILURE, align 8
  %38 = ptrtoint i8* %37 to i64
  store i64 %38, i64* %17, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %18, align 8
  %42 = load i8*, i8** %9, align 8
  store i8* %42, i8** %19, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_map, align 8
  %45 = icmp ne %struct.TYPE_6__* %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %36
  %53 = call i64 (...) @user_tbi_enabled()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i8*, i8** %9, align 8
  %57 = call i8* @tbi_clear(i8* %56)
  store i8* %57, i8** %19, align 8
  br label %58

58:                                               ; preds = %55, %52, %36
  %59 = load i8*, i8** %12, align 8
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* @KERN_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @is_translation_fault(i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %19, align 8
  %72 = call i32 @trunc_page(i8* %71)
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @TRUE, align 4
  %75 = call i64 @arm_fast_fault(i32 %70, i32 %72, i32 %73, i32 %74)
  store i64 %75, i64* %17, align 8
  br label %76

76:                                               ; preds = %67, %63, %58
  %77 = load i64, i64* %17, align 8
  %78 = load i64, i64* @KERN_SUCCESS, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %82 = load i8*, i8** %19, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @FALSE, align 4
  %85 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %86 = load i32, i32* @THREAD_ABORTSAFE, align 4
  %87 = call i64 @vm_fault(%struct.TYPE_6__* %81, i8* %82, i32 %83, i32 %84, i32 %85, i32 %86, i32* null, i32 0)
  store i64 %87, i64* %17, align 8
  br label %88

88:                                               ; preds = %80, %76
  %89 = load i64, i64* %17, align 8
  %90 = load i64, i64* @KERN_SUCCESS, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %17, align 8
  %94 = load i64, i64* @KERN_ABORTED, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92, %88
  %97 = call i32 (...) @thread_exception_return()
  br label %98

98:                                               ; preds = %96, %92
  %99 = load i64, i64* %17, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  store i8* %100, i8** %101, align 16
  br label %120

102:                                              ; preds = %29
  %103 = load i64, i64* %10, align 8
  %104 = call i64 @is_alignment_fault(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i8*, i8** @EXC_ARM_DA_ALIGN, align 8
  %108 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  store i8* %107, i8** %108, align 16
  br label %119

109:                                              ; preds = %102
  %110 = load i64, i64* %10, align 8
  %111 = call i64 @is_parity_error(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %118

115:                                              ; preds = %109
  %116 = load i8*, i8** @KERN_FAILURE, align 8
  %117 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  store i8* %116, i8** %117, align 16
  br label %118

118:                                              ; preds = %115, %113
  br label %119

119:                                              ; preds = %118, %106
  br label %120

120:                                              ; preds = %119, %98
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 1
  store i8* %121, i8** %122, align 8
  %123 = load i32, i32* %13, align 4
  %124 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @exception_triage(i32 %123, i8** %124, i32 %125)
  %127 = call i32 @assert(i32 0)
  ret void
}

declare dso_local %struct.TYPE_7__* @current_thread(...) #1

declare dso_local i64 @ml_at_interrupt_context(...) #1

declare dso_local i32 @panic_with_thread_kernel_state(i8*, i32*) #1

declare dso_local i64 @is_vm_fault(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @user_tbi_enabled(...) #1

declare dso_local i8* @tbi_clear(i8*) #1

declare dso_local i32 @is_translation_fault(i64) #1

declare dso_local i64 @arm_fast_fault(i32, i32, i32, i32) #1

declare dso_local i32 @trunc_page(i8*) #1

declare dso_local i64 @vm_fault(%struct.TYPE_6__*, i8*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @thread_exception_return(...) #1

declare dso_local i64 @is_alignment_fault(i64) #1

declare dso_local i64 @is_parity_error(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @exception_triage(i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
