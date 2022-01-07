; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_mp_cpus_call_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_mp_cpus_call_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@mp_cpus_call_head = common dso_local global %struct.TYPE_3__* null, align 8
@CROSSCALL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"mp_cpus_call_wait() timeout, cpus: 0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @mp_cpus_call_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_cpus_call_wait(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = call i64 (...) @ml_get_interrupts_enabled()
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = call i64 (...) @get_preemption_level()
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i1 [ true, %3 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mp_cpus_call_head, align 8
  %20 = call i64 (...) @cpu_number()
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %7, align 8
  %22 = call i32 (...) @rdtsc64()
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %55, %15
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @queue_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = call i32 (...) @mp_cpus_call_action()
  br label %38

38:                                               ; preds = %36, %31
  %39 = call i32 @cpu_signal_handler(i32* null)
  br label %40

40:                                               ; preds = %38, %28
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @mp_spin_timeout(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %45, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @CROSSCALL_TIMEOUT, align 4
  %52 = call i32 @NMIPI_panic(i32 %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %44, %40
  br label %23

56:                                               ; preds = %23
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i64 @get_preemption_level(...) #1

declare dso_local i64 @cpu_number(...) #1

declare dso_local i32 @rdtsc64(...) #1

declare dso_local i32 @queue_empty(i32*) #1

declare dso_local i32 @mp_cpus_call_action(...) #1

declare dso_local i32 @cpu_signal_handler(i32*) #1

declare dso_local i64 @mp_spin_timeout(i32) #1

declare dso_local i32 @NMIPI_panic(i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
