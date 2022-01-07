; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_get_balance.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_get_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.ledger_entry* }
%struct.ledger_entry = type { i32, i64, i64 }

@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@LF_TRACK_CREDIT_ONLY = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ledger_get_balance(%struct.TYPE_4__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ledger_entry*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @ENTRY_VALID(%struct.TYPE_4__* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %14, i32* %4, align 4
  br label %59

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.ledger_entry*, %struct.ledger_entry** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %18, i64 %20
  store %struct.ledger_entry* %21, %struct.ledger_entry** %8, align 8
  %22 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %23 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @LF_TRACK_CREDIT_ONLY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %15
  %29 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %30 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  br label %49

35:                                               ; preds = %15
  %36 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %37 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %42 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %43, 0
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i1 [ false, %35 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  br label %49

49:                                               ; preds = %45, %28
  %50 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %51 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %54 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = load i64*, i64** %7, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %49, %13
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @ENTRY_VALID(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
