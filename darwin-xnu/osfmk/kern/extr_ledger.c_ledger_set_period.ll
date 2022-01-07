; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_set_period.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_set_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.ledger_entry* }
%struct.ledger_entry = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"ledger_set_period: %llx\0A\00", align 1
@KERN_INVALID_VALUE = common dso_local global i32 0, align 4
@LEDGER_LIMIT_INFINITY = common dso_local global i64 0, align 8
@LF_TRACKING_MAX = common dso_local global i32 0, align 4
@LF_REFILL_SCHEDULED = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ledger_set_period(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ledger_entry*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @lprintf(i8* %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ENTRY_VALID(%struct.TYPE_9__* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %18, i32* %4, align 4
  br label %61

19:                                               ; preds = %3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.ledger_entry*, %struct.ledger_entry** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %22, i64 %24
  store %struct.ledger_entry* %25, %struct.ledger_entry** %8, align 8
  %26 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %27 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LEDGER_LIMIT_INFINITY, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %34 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @LF_TRACKING_MAX, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %19
  %40 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %40, i32* %4, align 4
  br label %61

41:                                               ; preds = %19
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @nsecs_to_abstime(i32 %42)
  %44 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %45 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = call i32 (...) @mach_absolute_time()
  %49 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %50 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ledger_zero_balance(%struct.TYPE_9__* %53, i32 %54)
  %56 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %57 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %56, i32 0, i32 1
  %58 = load i32, i32* @LF_REFILL_SCHEDULED, align 4
  %59 = call i32 @flag_set(i32* %57, i32 %58)
  %60 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %41, %39, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @lprintf(i8*) #1

declare dso_local i32 @ENTRY_VALID(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nsecs_to_abstime(i32) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @ledger_zero_balance(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @flag_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
