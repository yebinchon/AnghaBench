; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_transaction_management.c_IsMultiStatementTransaction.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_transaction_management.c_IsMultiStatementTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DoBlockLevel = common dso_local global i64 0, align 8
@StoredProcedureLevel = common dso_local global i64 0, align 8
@FunctionCallLevel = common dso_local global i64 0, align 8
@FunctionOpensTransactionBlock = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsMultiStatementTransaction() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @IsTransactionBlock()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %21

5:                                                ; preds = %0
  %6 = load i64, i64* @DoBlockLevel, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 1, i32* %1, align 4
  br label %21

9:                                                ; preds = %5
  %10 = load i64, i64* @StoredProcedureLevel, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 1, i32* %1, align 4
  br label %21

13:                                               ; preds = %9
  %14 = load i64, i64* @FunctionCallLevel, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i64, i64* @FunctionOpensTransactionBlock, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %1, align 4
  br label %21

20:                                               ; preds = %16, %13
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %20, %19, %12, %8, %4
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i64 @IsTransactionBlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
