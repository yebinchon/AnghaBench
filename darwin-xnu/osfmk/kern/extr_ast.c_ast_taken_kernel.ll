; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ast.c_ast_taken_kernel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ast.c_ast_taken_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TH_IDLE = common dso_local global i32 0, align 4
@AST_PREEMPTION = common dso_local global i64 0, align 8
@AST_URGENT = common dso_local global i64 0, align 8
@AST_PREEMPT = common dso_local global i32 0, align 4
@c_ast_taken_block = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_taken_kernel() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32, align 4
  %3 = call i64 (...) @ml_get_interrupts_enabled()
  %4 = load i64, i64* @FALSE, align 8
  %5 = icmp eq i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = call %struct.TYPE_4__* (...) @current_thread()
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %1, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TH_IDLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i64, i64* @AST_PREEMPTION, align 8
  %17 = call i32 @ast_off(i64 %16)
  br label %50

18:                                               ; preds = %0
  %19 = load i64, i64* @AST_URGENT, align 8
  %20 = call i64 @ast_peek(i64 %19)
  %21 = load i64, i64* @AST_URGENT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %50

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %26 = call i64 @waitq_wait_possible(%struct.TYPE_4__* %25)
  %27 = load i64, i64* @FALSE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* @AST_URGENT, align 8
  %31 = call i32 @ast_consume(i64 %30)
  br label %50

32:                                               ; preds = %24
  %33 = load i64, i64* @AST_PREEMPTION, align 8
  %34 = call i32 @ast_consume(i64 %33)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @AST_PREEMPT, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* @c_ast_taken_block, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @c_ast_taken_block, align 4
  %41 = call i32 @counter(i32 %39)
  %42 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @thread_block_reason(i32 %42, i32* null, i32 %43)
  %45 = call i64 (...) @ml_get_interrupts_enabled()
  %46 = load i64, i64* @FALSE, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  br label %50

50:                                               ; preds = %32, %29, %23, %15
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local %struct.TYPE_4__* @current_thread(...) #1

declare dso_local i32 @ast_off(i64) #1

declare dso_local i64 @ast_peek(i64) #1

declare dso_local i64 @waitq_wait_possible(%struct.TYPE_4__*) #1

declare dso_local i32 @ast_consume(i64) #1

declare dso_local i32 @counter(i32) #1

declare dso_local i32 @thread_block_reason(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
