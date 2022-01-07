; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_sleh.c_handle_sw_step_debug.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_sleh.c_handle_sw_step_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"SW_STEP_DEBUG exception from kernel.\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"SW_STEP_DEBUG exception thread DebugData is NULL.\00", align 1
@PSR64_SS = common dso_local global i32 0, align 4
@DAIF_IRQF = common dso_local global i32 0, align 4
@DAIF_FIQF = common dso_local global i32 0, align 4
@EXC_BREAKPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @handle_sw_step_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_sw_step_debug(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = call %struct.TYPE_11__* (...) @current_thread()
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %3, align 8
  store i32 2, i32* %6, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @get_saved_state_cpsr(i32* %8)
  %10 = call i32 @PSR64_IS_USER(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @panic_with_thread_kernel_state(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, -2
  store i32 %30, i32* %28, align 4
  br label %34

31:                                               ; preds = %15
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @panic_with_thread_kernel_state(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32* %32)
  br label %34

34:                                               ; preds = %31, %21
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @get_saved_state_cpsr(i32* %42)
  %44 = load i32, i32* @PSR64_SS, align 4
  %45 = load i32, i32* @DAIF_IRQF, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @DAIF_FIQF, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %43, %49
  %51 = call i32 @set_saved_state_cpsr(i32* %38, i32 %50)
  %52 = load i32, i32* @EXC_BREAKPOINT, align 4
  store i32 %52, i32* %4, align 4
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 1, i32* %53, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @exception_triage(i32 %55, i32* %56, i32 %57)
  %59 = call i32 @assert(i32 0)
  ret void
}

declare dso_local %struct.TYPE_11__* @current_thread(...) #1

declare dso_local i32 @PSR64_IS_USER(i32) #1

declare dso_local i32 @get_saved_state_cpsr(i32*) #1

declare dso_local i32 @panic_with_thread_kernel_state(i8*, i32*) #1

declare dso_local i32 @set_saved_state_cpsr(i32*, i32) #1

declare dso_local i32 @exception_triage(i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
