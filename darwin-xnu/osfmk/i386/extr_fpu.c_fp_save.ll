; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fp_save.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fp_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.x86_fx_thread_state* }
%struct.x86_fx_thread_state = type { i64 }

@CR0_TS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fp_save(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.x86_fx_thread_state*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.TYPE_3__* @THREAD_TO_PCB(i32 %5)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  store %struct.x86_fx_thread_state* %9, %struct.x86_fx_thread_state** %4, align 8
  %10 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %4, align 8
  %11 = icmp ne %struct.x86_fx_thread_state* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %4, align 8
  %15 = icmp ne %struct.x86_fx_thread_state* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %4, align 8
  %18 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %16
  %22 = call i32 (...) @get_cr0()
  %23 = load i32, i32* @CR0_TS, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64, i64* @TRUE, align 8
  %29 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %4, align 8
  %30 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %4, align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @thread_is_64bit_addr(i32 %32)
  %34 = call i32 @fpu_store_registers(%struct.x86_fx_thread_state* %31, i32 %33)
  br label %35

35:                                               ; preds = %21, %16, %1
  ret void
}

declare dso_local %struct.TYPE_3__* @THREAD_TO_PCB(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_cr0(...) #1

declare dso_local i32 @fpu_store_registers(%struct.x86_fx_thread_state*, i32) #1

declare dso_local i32 @thread_is_64bit_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
