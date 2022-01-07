; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_mk_timer.c_mk_timer_destroy_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_mk_timer.c_mk_timer_destroy_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mk_timer_destroy_trap_args = type { i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@IKOT_TIMER = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mk_timer_destroy_trap(%struct.mk_timer_destroy_trap_args* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mk_timer_destroy_trap_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mk_timer_destroy_trap_args* %0, %struct.mk_timer_destroy_trap_args** %3, align 8
  %8 = load %struct.mk_timer_destroy_trap_args*, %struct.mk_timer_destroy_trap_args** %3, align 8
  %9 = getelementptr inbounds %struct.mk_timer_destroy_trap_args, %struct.mk_timer_destroy_trap_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = call i32 (...) @current_space()
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @ipc_port_translate_receive(i32 %12, i32 %13, i32* %6)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @KERN_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %2, align 8
  br label %37

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @ip_kotype(i32 %21)
  %23 = load i64, i64* @IKOT_TIMER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ip_unlock(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @mach_port_destroy(i32 %28, i32 %29)
  store i64 %30, i64* %7, align 8
  br label %35

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ip_unlock(i32 %32)
  %34 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %2, align 8
  br label %37

37:                                               ; preds = %35, %18
  %38 = load i64, i64* %2, align 8
  ret i64 %38
}

declare dso_local i32 @current_space(...) #1

declare dso_local i64 @ipc_port_translate_receive(i32, i32, i32*) #1

declare dso_local i64 @ip_kotype(i32) #1

declare dso_local i32 @ip_unlock(i32) #1

declare dso_local i64 @mach_port_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
