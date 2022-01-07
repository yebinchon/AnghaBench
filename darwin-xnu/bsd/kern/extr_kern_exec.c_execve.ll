; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_execve.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_execve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.execve_args = type { i32, i32, i32 }
%struct.__mac_execve_args = type { i32, i32, i32, i32 }

@VM_EXECVE = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @execve(i32 %0, %struct.execve_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.execve_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.__mac_execve_args, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.execve_args* %1, %struct.execve_args** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @VM_EXECVE, align 4
  %10 = load i32, i32* @DBG_FUNC_NONE, align 4
  %11 = call i32 @memoryshot(i32 %9, i32 %10)
  %12 = load %struct.execve_args*, %struct.execve_args** %5, align 8
  %13 = getelementptr inbounds %struct.execve_args, %struct.execve_args* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.__mac_execve_args, %struct.__mac_execve_args* %7, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load %struct.execve_args*, %struct.execve_args** %5, align 8
  %17 = getelementptr inbounds %struct.execve_args, %struct.execve_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.__mac_execve_args, %struct.__mac_execve_args* %7, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.execve_args*, %struct.execve_args** %5, align 8
  %21 = getelementptr inbounds %struct.execve_args, %struct.execve_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.__mac_execve_args, %struct.__mac_execve_args* %7, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @USER_ADDR_NULL, align 4
  %25 = getelementptr inbounds %struct.__mac_execve_args, %struct.__mac_execve_args* %7, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @__mac_execve(i32 %26, %struct.__mac_execve_args* %7, i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  ret i32 %29
}

declare dso_local i32 @memoryshot(i32, i32) #1

declare dso_local i32 @__mac_execve(i32, %struct.__mac_execve_args*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
