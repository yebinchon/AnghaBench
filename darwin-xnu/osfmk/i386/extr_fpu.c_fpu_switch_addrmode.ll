; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_switch_addrmode.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_switch_addrmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.x86_fx_thread_state* }
%struct.x86_fx_thread_state = type { i32, i64 }

@FP = common dso_local global i64 0, align 8
@FXSAVE64 = common dso_local global i32 0, align 4
@FXSAVE32 = common dso_local global i32 0, align 4
@XSAVE64 = common dso_local global i32 0, align 4
@XSAVE32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpu_switch_addrmode(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.x86_fx_thread_state*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  store %struct.x86_fx_thread_state* %9, %struct.x86_fx_thread_state** %5, align 8
  %10 = call i32 (...) @mp_disable_preemption()
  %11 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %12 = icmp ne %struct.x86_fx_thread_state* %11, null
  br i1 %12, label %13, label %46

13:                                               ; preds = %2
  %14 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %15 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %13
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = call i64 @thread_xstate(%struct.TYPE_6__* %19)
  %21 = load i64, i64* @FP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @FXSAVE64, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @FXSAVE32, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %33 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %45

34:                                               ; preds = %18
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @XSAVE64, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @XSAVE32, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %44 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %30
  br label %46

46:                                               ; preds = %45, %13, %2
  %47 = call i32 (...) @mp_enable_preemption()
  ret void
}

declare dso_local i32 @mp_disable_preemption(...) #1

declare dso_local i64 @thread_xstate(%struct.TYPE_6__*) #1

declare dso_local i32 @mp_enable_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
