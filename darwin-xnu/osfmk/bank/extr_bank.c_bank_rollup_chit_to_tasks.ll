; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/bank/extr_bank.c_bank_rollup_chit_to_tasks.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/bank/extr_bank.c_bank_rollup_chit_to_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@bank_ledgers = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@BANK_ACCOUNT_INFO = common dso_local global i32 0, align 4
@BANK_SETTLE_CPU_TIME = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@task_ledgers = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@BANK_SETTLE_ENERGY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i32, i32)* @bank_rollup_chit_to_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bank_rollup_chit_to_tasks(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %104

18:                                               ; preds = %5
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bank_ledgers, i32 0, i32 1), align 4
  %21 = call i64 @ledger_get_entries(i64 %19, i32 %20, i32* %11, i32* %12)
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @KERN_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %18
  %26 = load i32, i32* @KDEBUG_TRACE, align 4
  %27 = load i32, i32* @BANK_ACCOUNT_INFO, align 4
  %28 = load i32, i32* @BANK_SETTLE_CPU_TIME, align 4
  %29 = call i32 @BANK_CODE(i32 %27, i32 %28)
  %30 = load i32, i32* @DBG_FUNC_NONE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %26, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 0)
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %25
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @task_ledgers, i32 0, i32 3), align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @ledger_credit(i64 %40, i32 %41, i32 %42)
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @task_ledgers, i32 0, i32 3), align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @ledger_debit(i64 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %25
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @task_ledgers, i32 0, i32 2), align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @ledger_credit(i64 %52, i32 %53, i32 %54)
  %56 = load i64, i64* %8, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @task_ledgers, i32 0, i32 2), align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @ledger_debit(i64 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %51, %48
  br label %61

61:                                               ; preds = %60, %18
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bank_ledgers, i32 0, i32 0), align 4
  %64 = call i64 @ledger_get_entries(i64 %62, i32 %63, i32* %11, i32* %12)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* @KERN_SUCCESS, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %104

68:                                               ; preds = %61
  %69 = load i32, i32* @KDEBUG_TRACE, align 4
  %70 = load i32, i32* @BANK_ACCOUNT_INFO, align 4
  %71 = load i32, i32* @BANK_SETTLE_ENERGY, align 4
  %72 = call i32 @BANK_CODE(i32 %70, i32 %71)
  %73 = load i32, i32* @DBG_FUNC_NONE, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %69, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 0)
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %68
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @task_ledgers, i32 0, i32 1), align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @ledger_credit(i64 %83, i32 %84, i32 %85)
  %87 = load i64, i64* %7, align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @task_ledgers, i32 0, i32 1), align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @ledger_debit(i64 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %82, %68
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i64, i64* %8, align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @task_ledgers, i32 0, i32 0), align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @ledger_credit(i64 %95, i32 %96, i32 %97)
  %99 = load i64, i64* %8, align 8
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @task_ledgers, i32 0, i32 0), align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @ledger_debit(i64 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %94, %91
  br label %104

104:                                              ; preds = %17, %103, %61
  ret void
}

declare dso_local i64 @ledger_get_entries(i64, i32, i32*, i32*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BANK_CODE(i32, i32) #1

declare dso_local i32 @ledger_credit(i64, i32, i32) #1

declare dso_local i32 @ledger_debit(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
