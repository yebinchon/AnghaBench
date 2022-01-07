; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_sleh.c_handle_uncategorized.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_sleh.c_handle_uncategorized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EXC_BAD_INSTRUCTION = common dso_local global i32 0, align 4
@EXC_ARM_UNDEFINED = common dso_local global i32 0, align 4
@EXC_BREAKPOINT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Undefined kernel instruction: pc=%p instr=%x\0A\00", align 1
@EXC_ARM_BREAKPOINT = common dso_local global i32 0, align 4
@FASTTRAP_ARM32_INSTR = common dso_local global i32 0, align 4
@FASTTRAP_ARM32_RET_INSTR = common dso_local global i32 0, align 4
@FASTTRAP_ARM64_INSTR = common dso_local global i32 0, align 4
@FASTTRAP_ARM64_RET_INSTR = common dso_local global i32 0, align 4
@FASTTRAP_THUMB32_INSTR = common dso_local global i64 0, align 8
@FASTTRAP_THUMB32_RET_INSTR = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@PSR64_MODE_USER32_THUMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @handle_uncategorized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_uncategorized(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i32, i32* @EXC_BAD_INSTRUCTION, align 4
  store i32 %12, i32* %5, align 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %14 = load i32, i32* @EXC_ARM_UNDEFINED, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = getelementptr inbounds i32, i32* %13, i64 2
  br label %17

17:                                               ; preds = %17, %2
  %18 = phi i32* [ %15, %2 ], [ %19, %17 ]
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = icmp eq i32* %19, %16
  br i1 %20, label %21, label %17

21:                                               ; preds = %17
  store i32 2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  store i64 0, i64* %9, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @get_saved_state_pc(i32* %25)
  %27 = bitcast i64* %9 to i8*
  %28 = call i32 @COPYIN(i64 %26, i8* %27, i32 8)
  %29 = load i64, i64* %9, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  br label %36

31:                                               ; preds = %21
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @get_saved_state_pc(i32* %32)
  %34 = bitcast i32* %8 to i8*
  %35 = call i32 @COPYIN(i64 %33, i8* %34, i32 4)
  br label %36

36:                                               ; preds = %31, %24
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @get_saved_state_cpsr(i32* %37)
  %39 = call i64 @PSR64_IS_KERNEL(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @IS_ARM_GDB_TRAP(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load i32, i32* @EXC_BREAKPOINT, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i64, i64* @FALSE, align 8
  %48 = call i64 @ml_set_interrupts_enabled(i64 %47)
  store i64 %48, i64* %10, align 8
  %49 = call %struct.TYPE_8__* (...) @current_thread()
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %11, align 8
  %59 = inttoptr i64 %58 to %struct.TYPE_7__*
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %45
  %63 = load i32, i32* %5, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @DebuggerCall(i32 %63, i32* %64)
  %66 = load i64, i64* %10, align 8
  %67 = call i64 @ml_set_interrupts_enabled(i64 %66)
  br label %138

68:                                               ; preds = %41
  %69 = load i32*, i32** %3, align 8
  %70 = call i64 @get_saved_state_pc(i32* %69)
  %71 = inttoptr i64 %70 to i8*
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %36
  %76 = load i64, i64* %4, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @IS_THUMB_GDB_TRAP(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* @EXC_BREAKPOINT, align 4
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @EXC_ARM_BREAKPOINT, align 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %86, i32* %87, align 4
  br label %91

88:                                               ; preds = %78
  %89 = load i32, i32* %8, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %82
  br label %132

92:                                               ; preds = %75
  %93 = load i32, i32* %8, align 4
  %94 = call i64 @IS_ARM_GDB_TRAP(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32, i32* @EXC_BREAKPOINT, align 4
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* @EXC_ARM_BREAKPOINT, align 4
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %8, align 4
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %100, i32* %101, align 4
  br label %131

102:                                              ; preds = %92
  %103 = load i32, i32* %8, align 4
  %104 = and i32 %103, 65535
  %105 = call i64 @IS_THUMB_GDB_TRAP(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load i32, i32* @EXC_BREAKPOINT, align 4
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* @EXC_ARM_BREAKPOINT, align 4
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, 65535
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %112, i32* %113, align 4
  br label %130

114:                                              ; preds = %102
  %115 = load i32, i32* %8, align 4
  %116 = ashr i32 %115, 16
  %117 = call i64 @IS_THUMB_GDB_TRAP(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load i32, i32* @EXC_BREAKPOINT, align 4
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* @EXC_ARM_BREAKPOINT, align 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %8, align 4
  %124 = ashr i32 %123, 16
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %124, i32* %125, align 4
  br label %129

126:                                              ; preds = %114
  %127 = load i32, i32* %8, align 4
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %119
  br label %130

130:                                              ; preds = %129, %107
  br label %131

131:                                              ; preds = %130, %96
  br label %132

132:                                              ; preds = %131, %91
  %133 = load i32, i32* %5, align 4
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @exception_triage(i32 %133, i32* %134, i32 %135)
  %137 = call i32 @assert(i32 0)
  br label %138

138:                                              ; preds = %132, %62
  ret void
}

declare dso_local i32 @COPYIN(i64, i8*, i32) #1

declare dso_local i64 @get_saved_state_pc(i32*) #1

declare dso_local i64 @PSR64_IS_KERNEL(i32) #1

declare dso_local i32 @get_saved_state_cpsr(i32*) #1

declare dso_local i64 @IS_ARM_GDB_TRAP(i32) #1

declare dso_local i64 @ml_set_interrupts_enabled(i64) #1

declare dso_local %struct.TYPE_8__* @current_thread(...) #1

declare dso_local i32 @DebuggerCall(i32, i32*) #1

declare dso_local i32 @panic(i8*, i8*, i32) #1

declare dso_local i64 @IS_THUMB_GDB_TRAP(i32) #1

declare dso_local i32 @exception_triage(i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
