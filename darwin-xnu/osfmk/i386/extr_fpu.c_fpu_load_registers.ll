; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_load_registers.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_load_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_fx_thread_state = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@xstate_xmask = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"fpu_load_registers() bad layout: %d\0A\00", align 1
@fpu_YMM_capable = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fpu_load_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpu_load_registers(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.x86_fx_thread_state*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.x86_fx_thread_state*
  store %struct.x86_fx_thread_state* %6, %struct.x86_fx_thread_state** %3, align 8
  %7 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %3, align 8
  %8 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = call i32* (...) @current_task()
  %11 = icmp eq i32* %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %1
  %13 = call i32 (...) @current_thread()
  %14 = call i64 @thread_is_64bit_addr(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 130
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 128
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ true, %16 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  br label %34

25:                                               ; preds = %12
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 131
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 129
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i1 [ true, %25 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %31, %22
  %35 = phi i32 [ %24, %22 ], [ %33, %31 ]
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %1
  %38 = phi i1 [ true, %1 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %3, align 8
  %42 = call i32 @ALIGNED(%struct.x86_fx_thread_state* %41, i32 64)
  %43 = call i32 @assert(i32 %42)
  %44 = call i64 (...) @ml_get_interrupts_enabled()
  %45 = load i64, i64* @FALSE, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %4, align 4
  switch i32 %49, label %70 [
    i32 130, label %50
    i32 131, label %53
    i32 128, label %56
    i32 129, label %63
  ]

50:                                               ; preds = %37
  %51 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %3, align 8
  %52 = call i32 @fxrstor64(%struct.x86_fx_thread_state* %51)
  br label %73

53:                                               ; preds = %37
  %54 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %3, align 8
  %55 = call i32 @fxrstor(%struct.x86_fx_thread_state* %54)
  br label %73

56:                                               ; preds = %37
  %57 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %3, align 8
  %58 = load i32*, i32** @xstate_xmask, align 8
  %59 = call i64 (...) @current_xstate()
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @xrstor64(%struct.x86_fx_thread_state* %57, i32 %61)
  br label %73

63:                                               ; preds = %37
  %64 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %3, align 8
  %65 = load i32*, i32** @xstate_xmask, align 8
  %66 = call i64 (...) @current_xstate()
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @xrstor(%struct.x86_fx_thread_state* %64, i32 %68)
  br label %73

70:                                               ; preds = %37
  %71 = load i32, i32* %4, align 4
  %72 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70, %63, %56, %53, %50
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @current_task(...) #1

declare dso_local i64 @thread_is_64bit_addr(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @ALIGNED(%struct.x86_fx_thread_state*, i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @fxrstor64(%struct.x86_fx_thread_state*) #1

declare dso_local i32 @fxrstor(%struct.x86_fx_thread_state*) #1

declare dso_local i32 @xrstor64(%struct.x86_fx_thread_state*, i32) #1

declare dso_local i64 @current_xstate(...) #1

declare dso_local i32 @xrstor(%struct.x86_fx_thread_state*, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
