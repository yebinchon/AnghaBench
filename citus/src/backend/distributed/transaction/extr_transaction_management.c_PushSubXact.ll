; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_transaction_management.c_PushSubXact.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_transaction_management.c_PushSubXact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@CurTransactionContext = common dso_local global i32 0, align 4
@activeSetStmts = common dso_local global i32 0, align 4
@activeSubXactContexts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @PushSubXact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PushSubXact(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @CurTransactionContext, align 4
  %6 = call i32 @MemoryContextSwitchTo(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = call %struct.TYPE_4__* @palloc(i32 8)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %4, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @activeSetStmts, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = load i32, i32* @activeSubXactContexts, align 4
  %16 = call i32 @lcons(%struct.TYPE_4__* %14, i32 %15)
  store i32 %16, i32* @activeSubXactContexts, align 4
  %17 = call i32 (...) @makeStringInfo()
  store i32 %17, i32* @activeSetStmts, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @MemoryContextSwitchTo(i32 %18)
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_4__* @palloc(i32) #1

declare dso_local i32 @lcons(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @makeStringInfo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
