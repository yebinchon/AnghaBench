; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_machine.c_host_reboot.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_machine.c_host_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOST_PRIV_NULL = common dso_local global i32* null, align 8
@KERN_INVALID_HOST = common dso_local global i32 0, align 4
@realhost = common dso_local global i32 0, align 4
@HOST_REBOOT_UPSDELAY = common dso_local global i32 0, align 4
@kPEUPSDelayHaltCPU = common dso_local global i32 0, align 4
@HOST_REBOOT_HALT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@HOST_REBOOT_DEBUGGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host_reboot(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = load i32*, i32** @HOST_PRIV_NULL, align 8
  %8 = icmp eq i32* %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @KERN_INVALID_HOST, align 4
  store i32 %10, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, @realhost
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @HOST_REBOOT_UPSDELAY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load i32, i32* @kPEUPSDelayHaltCPU, align 4
  %22 = call i32 @PEHaltRestart(i32 %21)
  br label %31

23:                                               ; preds = %11
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @HOST_REBOOT_HALT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @halt_all_cpus(i32 %29)
  br label %31

31:                                               ; preds = %23, %20
  %32 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %9
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @PEHaltRestart(i32) #1

declare dso_local i32 @halt_all_cpus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
