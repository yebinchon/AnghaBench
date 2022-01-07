; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_local_executor.c_ShouldExecuteTasksLocally.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_local_executor.c_ShouldExecuteTasksLocally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EnableLocalExecution = common dso_local global i32 0, align 4
@LocalExecutionHappened = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ShouldExecuteTasksLocally(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @EnableLocalExecution, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

8:                                                ; preds = %1
  %9 = load i64, i64* @LocalExecutionHappened, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = call i64 (...) @IsMultiStatementTransaction()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = call i64 (...) @InCoordinatedTransaction()
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ true, %11 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @Assert(i32 %19)
  store i32 1, i32* %2, align 4
  br label %49

21:                                               ; preds = %8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @list_length(i32* %22)
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @linitial(i32* %29)
  %31 = inttoptr i64 %30 to i32*
  %32 = call i64 @TaskAccessesLocalNode(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = call i32 (...) @AnyConnectionAccessedPlacements()
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %2, align 4
  br label %49

39:                                               ; preds = %28, %21
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* @LocalExecutionHappened, align 8
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  store i32 0, i32* %2, align 4
  br label %49

48:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %42, %34, %17, %7
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @IsMultiStatementTransaction(...) #1

declare dso_local i64 @InCoordinatedTransaction(...) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i64 @TaskAccessesLocalNode(i32*) #1

declare dso_local i64 @linitial(i32*) #1

declare dso_local i32 @AnyConnectionAccessedPlacements(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
