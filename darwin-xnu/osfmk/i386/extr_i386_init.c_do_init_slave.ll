; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_init.c_do_init_slave.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_init.c_do_init_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FULL_SLAVE_INIT = common dso_local global i8* null, align 8
@I386_INIT_SLAVE = common dso_local global i32 0, align 4
@CR0_NW = common dso_local global i32 0, align 4
@CR0_CD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"i386_init_slave() CPU%d: phys (%d) active.\0A\00", align 1
@FAST_SLAVE_INIT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"do_init_slave() returned from slave_main()\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @do_init_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_init_slave(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i8*, i8** @FULL_SLAVE_INIT, align 8
  store i8* %4, i8** %3, align 8
  %5 = load i32, i32* @I386_INIT_SLAVE, align 4
  %6 = call i32 @postcode(i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %1
  %10 = call i32 (...) @get_cr0()
  %11 = load i32, i32* @CR0_NW, align 4
  %12 = load i32, i32* @CR0_CD, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  %16 = call i32 @set_cr0(i32 %15)
  %17 = call i32 (...) @get_cpu_number()
  %18 = call i32 (...) @get_cpu_phys_number()
  %19 = call i32 @DBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = call i32 (...) @ml_get_interrupts_enabled()
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = call i32 (...) @current_cpu_datap()
  %26 = call i32 @cpu_syscall_init(i32 %25)
  %27 = call i32 (...) @pmap_cpu_init()
  %28 = call i32 (...) @LAPIC_INIT()
  %29 = call i32 (...) @lapic_configure()
  %30 = call i32 (...) @LAPIC_DUMP()
  %31 = call i32 (...) @LAPIC_CPU_MAP_DUMP()
  %32 = call i32 (...) @init_fpu()
  %33 = call i32 (...) @ucode_update_wake()
  br label %36

34:                                               ; preds = %1
  %35 = load i8*, i8** @FAST_SLAVE_INIT, align 8
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %34, %9
  %37 = call i32 (...) @cpu_thread_init()
  %38 = call i32 (...) @cpu_init()
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @slave_main(i8* %39)
  %41 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @postcode(i32) #1

declare dso_local i32 @set_cr0(i32) #1

declare dso_local i32 @get_cr0(...) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @get_cpu_number(...) #1

declare dso_local i32 @get_cpu_phys_number(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @cpu_syscall_init(i32) #1

declare dso_local i32 @current_cpu_datap(...) #1

declare dso_local i32 @pmap_cpu_init(...) #1

declare dso_local i32 @LAPIC_INIT(...) #1

declare dso_local i32 @lapic_configure(...) #1

declare dso_local i32 @LAPIC_DUMP(...) #1

declare dso_local i32 @LAPIC_CPU_MAP_DUMP(...) #1

declare dso_local i32 @init_fpu(...) #1

declare dso_local i32 @ucode_update_wake(...) #1

declare dso_local i32 @cpu_thread_init(...) #1

declare dso_local i32 @cpu_init(...) #1

declare dso_local i32 @slave_main(i8*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
