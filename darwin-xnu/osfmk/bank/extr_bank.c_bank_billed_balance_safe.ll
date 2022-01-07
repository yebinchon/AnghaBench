; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/bank/extr_bank.c_bank_billed_balance_safe.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/bank/extr_bank.c_bank_billed_balance_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@BANK_TASK_NULL = common dso_local global i32* null, align 8
@task_ledgers = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bank_billed_balance_safe(%struct.TYPE_4__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load i32*, i32** @BANK_TASK_NULL, align 8
  store i32* %13, i32** %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %14 = call i32 (...) @global_bank_task_lock()
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @bank_task_reference(i32* %23)
  br label %25

25:                                               ; preds = %19, %3
  %26 = call i32 (...) @global_bank_task_unlock()
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @bank_billed_balance(i32* %30, i64* %10, i64* %11)
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @bank_task_dealloc(i32* %32, i32 1)
  br label %61

34:                                               ; preds = %25
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @task_ledgers, i32 0, i32 1), align 4
  %39 = call i64 @ledger_get_entries(i32 %37, i32 %38, i64* %8, i64* %9)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @KERN_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = sub nsw i64 %44, %45
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %43, %34
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @task_ledgers, i32 0, i32 0), align 4
  %52 = call i64 @ledger_get_entries(i32 %50, i32 %51, i64* %8, i64* %9)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @KERN_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = sub nsw i64 %57, %58
  store i64 %59, i64* %11, align 8
  br label %60

60:                                               ; preds = %56, %47
  br label %61

61:                                               ; preds = %60, %29
  %62 = load i64, i64* %10, align 8
  %63 = load i64*, i64** %5, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64*, i64** %6, align 8
  store i64 %64, i64* %65, align 8
  ret void
}

declare dso_local i32 @global_bank_task_lock(...) #1

declare dso_local i32 @bank_task_reference(i32*) #1

declare dso_local i32 @global_bank_task_unlock(...) #1

declare dso_local i32 @bank_billed_balance(i32*, i64*, i64*) #1

declare dso_local i32 @bank_task_dealloc(i32*, i32) #1

declare dso_local i64 @ledger_get_entries(i32, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
