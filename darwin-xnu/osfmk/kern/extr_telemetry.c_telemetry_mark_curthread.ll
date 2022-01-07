; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_telemetry.c_telemetry_mark_curthread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_telemetry.c_telemetry_mark_curthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@AST_TELEMETRY_USER = common dso_local global i32 0, align 4
@AST_TELEMETRY_KERNEL = common dso_local global i32 0, align 4
@AST_TELEMETRY_PMI = common dso_local global i32 0, align 4
@telemetry_needs_record = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telemetry_mark_curthread(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 (...) @current_thread()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @telemetry_is_active(i32 %8)
  %10 = load i64, i64* @FALSE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %37

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @AST_TELEMETRY_USER, align 4
  br label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @AST_TELEMETRY_KERNEL, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @AST_TELEMETRY_PMI, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* @telemetry_needs_record, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @thread_ast_set(i32 %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ast_propagate(i32 %35)
  br label %37

37:                                               ; preds = %30, %12
  ret void
}

declare dso_local i32 @current_thread(...) #1

declare dso_local i64 @telemetry_is_active(i32) #1

declare dso_local i32 @thread_ast_set(i32, i32) #1

declare dso_local i32 @ast_propagate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
