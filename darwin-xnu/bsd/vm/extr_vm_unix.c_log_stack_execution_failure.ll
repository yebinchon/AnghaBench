; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_unix.c_log_stack_execution_failure.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_unix.c_log_stack_execution_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [94 x i8] c"Data/Stack execution not permitted: %s[pid %d] at virtual address 0x%qx, protections were %s\0A\00", align 1
@prot_values = common dso_local global i32* null, align 8
@VM_PROT_ALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_stack_execution_failure(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = call %struct.TYPE_2__* (...) @current_proc()
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call %struct.TYPE_2__* (...) @current_proc()
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32*, i32** @prot_values, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @VM_PROT_ALL, align 8
  %15 = and i64 %13, %14
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @printf(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i8* %7, i32 %10, i32 %11, i32 %17)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @current_proc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
