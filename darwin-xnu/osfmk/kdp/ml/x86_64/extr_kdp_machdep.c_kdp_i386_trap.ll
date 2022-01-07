; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/x86_64/extr_kdp_machdep.c_kdp_i386_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/x86_64/extr_kdp_machdep.c_kdp_i386_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [73 x i8] c"Debugger: Unexpected kernel trap number: 0x%x, RIP: 0x%llx, CR2: 0x%llx\0A\00", align 1
@kdp = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@FALSE = common dso_local global i32 0, align 4
@EFL_TF = common dso_local global i32 0, align 4
@EXC_ARITHMETIC = common dso_local global i32 0, align 4
@EXC_I386_DIVERR = common dso_local global i32 0, align 4
@EXC_SOFTWARE = common dso_local global i32 0, align 4
@EXC_I386_INTOFLT = common dso_local global i32 0, align 4
@EXC_I386_BOUNDFLT = common dso_local global i32 0, align 4
@EXC_BAD_INSTRUCTION = common dso_local global i32 0, align 4
@EXC_I386_INVOPFLT = common dso_local global i32 0, align 4
@EXC_I386_SEGNPFLT = common dso_local global i32 0, align 4
@EXC_I386_STKFLT = common dso_local global i32 0, align 4
@EXC_I386_GPFLT = common dso_local global i32 0, align 4
@EXC_BAD_ACCESS = common dso_local global i32 0, align 4
@EXC_I386_ALIGNFLT = common dso_local global i32 0, align 4
@EXC_BREAKPOINT = common dso_local global i32 0, align 4
@EXC_I386_BPTFLT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdp_i386_trap(i32 %0, %struct.TYPE_8__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 135
  br i1 %15, label %16, label %34

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 138
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @kprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @kdp, i32 0, i32 0), align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %5, align 4
  br label %131

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33, %16, %4
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @ml_set_interrupts_enabled(i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = call i32 (...) @disable_preemption()
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @EFL_TF, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = call i32 (...) @enable_preemption_no_check()
  br label %47

47:                                               ; preds = %45, %34
  %48 = load i32, i32* %6, align 4
  switch i32 %48, label %96 [
    i32 137, label %49
    i32 132, label %52
    i32 133, label %55
    i32 134, label %58
    i32 130, label %61
    i32 129, label %69
    i32 136, label %77
    i32 131, label %85
    i32 128, label %90
    i32 138, label %93
    i32 135, label %93
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* @EXC_ARITHMETIC, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @EXC_I386_DIVERR, align 4
  store i32 %51, i32* %11, align 4
  br label %99

52:                                               ; preds = %47
  %53 = load i32, i32* @EXC_SOFTWARE, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* @EXC_I386_INTOFLT, align 4
  store i32 %54, i32* %11, align 4
  br label %99

55:                                               ; preds = %47
  %56 = load i32, i32* @EXC_ARITHMETIC, align 4
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* @EXC_I386_BOUNDFLT, align 4
  store i32 %57, i32* %11, align 4
  br label %99

58:                                               ; preds = %47
  %59 = load i32, i32* @EXC_BAD_INSTRUCTION, align 4
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @EXC_I386_INVOPFLT, align 4
  store i32 %60, i32* %11, align 4
  br label %99

61:                                               ; preds = %47
  %62 = load i32, i32* @EXC_BAD_INSTRUCTION, align 4
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* @EXC_I386_SEGNPFLT, align 4
  store i32 %63, i32* %11, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %12, align 4
  br label %99

69:                                               ; preds = %47
  %70 = load i32, i32* @EXC_BAD_INSTRUCTION, align 4
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* @EXC_I386_STKFLT, align 4
  store i32 %71, i32* %11, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %12, align 4
  br label %99

77:                                               ; preds = %47
  %78 = load i32, i32* @EXC_BAD_INSTRUCTION, align 4
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* @EXC_I386_GPFLT, align 4
  store i32 %79, i32* %11, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %12, align 4
  br label %99

85:                                               ; preds = %47
  %86 = load i32, i32* @EXC_BAD_ACCESS, align 4
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %11, align 4
  %88 = load i64, i64* %9, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %12, align 4
  br label %99

90:                                               ; preds = %47
  %91 = load i32, i32* @EXC_SOFTWARE, align 4
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* @EXC_I386_ALIGNFLT, align 4
  store i32 %92, i32* %11, align 4
  br label %99

93:                                               ; preds = %47, %47
  %94 = load i32, i32* @EXC_BREAKPOINT, align 4
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* @EXC_I386_BPTFLT, align 4
  store i32 %95, i32* %11, align 4
  br label %99

96:                                               ; preds = %47
  %97 = load i32, i32* @EXC_BAD_INSTRUCTION, align 4
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %96, %93, %90, %85, %77, %69, %61, %58, %55, %52, %49
  %100 = call %struct.TYPE_10__* (...) @current_cpu_datap()
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = icmp ne %struct.TYPE_8__* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %106 = call %struct.TYPE_10__* (...) @current_cpu_datap()
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  store %struct.TYPE_8__* %105, %struct.TYPE_8__** %107, align 8
  %108 = call %struct.TYPE_10__* (...) @current_cpu_datap()
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  store %struct.TYPE_8__* %110, %struct.TYPE_8__** %7, align 8
  br label %111

111:                                              ; preds = %104, %99
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %116 = call i32 @handle_debugger_trap(i32 %112, i32 %113, i32 %114, %struct.TYPE_8__* %115)
  %117 = call i32 (...) @enable_preemption()
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @ml_set_interrupts_enabled(i32 %118)
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @EFL_TF, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %111
  %128 = call i32 (...) @disable_preemption()
  br label %129

129:                                              ; preds = %127, %111
  %130 = load i32, i32* @TRUE, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %129, %31
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @kprintf(i8*, i32, i32, i32) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @disable_preemption(...) #1

declare dso_local i32 @enable_preemption_no_check(...) #1

declare dso_local %struct.TYPE_10__* @current_cpu_datap(...) #1

declare dso_local i32 @handle_debugger_trap(i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @enable_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
