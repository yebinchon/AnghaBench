; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_set_limit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_set_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.ledger_entry* }
%struct.ledger_entry = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@KERN_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ledger_set_limit: %lld\0A\00", align 1
@LEDGER_LIMIT_INFINITY = common dso_local global i64 0, align 8
@LF_REFILL_SCHEDULED = common dso_local global i32 0, align 4
@LF_TRACKING_MAX = common dso_local global i32 0, align 4
@LF_CALLED_BACK = common dso_local global i32 0, align 4
@LF_WARNED = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ledger_set_limit(%struct.TYPE_9__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ledger_entry*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @ENTRY_VALID(%struct.TYPE_9__* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %16, i32* %5, align 4
  br label %101

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @lprintf(i8* %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.ledger_entry*, %struct.ledger_entry** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %23, i64 %25
  store %struct.ledger_entry* %26, %struct.ledger_entry** %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @LEDGER_LIMIT_INFINITY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ledger_disable_refill(%struct.TYPE_9__* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %17
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %38 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %40 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @LF_REFILL_SCHEDULED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %34
  %46 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %47 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @LF_TRACKING_MAX, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %56 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %45, %34
  %60 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %61 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %60, i32 0, i32 1
  %62 = load i32, i32* @LF_CALLED_BACK, align 4
  %63 = call i32 @flag_clear(i32* %61, i32 %62)
  %64 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %65 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %64, i32 0, i32 1
  %66 = load i32, i32* @LF_WARNED, align 4
  %67 = call i32 @flag_clear(i32* %65, i32 %66)
  %68 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %69 = call i32 @ledger_limit_entry_wakeup(%struct.ledger_entry* %68)
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %59
  %73 = load i32, i32* %9, align 4
  %74 = icmp sle i32 %73, 100
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i64, i64* %8, align 8
  %78 = icmp sgt i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @LEDGER_LIMIT_INFINITY, align 8
  %83 = icmp ne i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %87 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = mul nsw i32 %88, %89
  %91 = sdiv i32 %90, 100
  %92 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %93 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  br label %99

94:                                               ; preds = %59
  %95 = load i64, i64* @LEDGER_LIMIT_INFINITY, align 8
  %96 = trunc i64 %95 to i32
  %97 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %98 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %94, %72
  %100 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %15
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @ENTRY_VALID(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lprintf(i8*) #1

declare dso_local i32 @ledger_disable_refill(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @flag_clear(i32*, i32) #1

declare dso_local i32 @ledger_limit_entry_wakeup(%struct.ledger_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
