; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_perform_blocking.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_perform_blocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.ledger_entry* }
%struct.ledger_entry = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@LEDGER_ACTION_BLOCK = common dso_local global i32 0, align 4
@LF_TRACKING_MAX = common dso_local global i32 0, align 4
@THREAD_INTERRUPTIBLE = common dso_local global i32 0, align 4
@THREAD_WAITING = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@LF_WAKE_NEEDED = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@AST_LEDGER = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*)* @ledger_perform_blocking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ledger_perform_blocking(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ledger_entry*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %75, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %78

13:                                               ; preds = %7
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.ledger_entry*, %struct.ledger_entry** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %16, i64 %18
  store %struct.ledger_entry* %19, %struct.ledger_entry** %6, align 8
  %20 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %21 = call i32 @limit_exceeded(%struct.ledger_entry* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %13
  %24 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %25 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @LEDGER_ACTION_BLOCK, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %13
  br label %75

31:                                               ; preds = %23
  %32 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %33 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @LF_TRACKING_MAX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %42 = load i32, i32* @THREAD_INTERRUPTIBLE, align 4
  %43 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %44 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %49 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %47, %52
  %54 = call i64 @assert_wait_deadline(%struct.ledger_entry* %41, i32 %42, i64 %53)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @THREAD_WAITING, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %31
  %59 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %59, i64* %2, align 8
  br label %80

60:                                               ; preds = %31
  %61 = load %struct.ledger_entry*, %struct.ledger_entry** %6, align 8
  %62 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %61, i32 0, i32 0
  %63 = load i32, i32* @LF_WAKE_NEEDED, align 4
  %64 = call i32 @flag_set(i32* %62, i32 %63)
  %65 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %66 = load i32, i32* @AST_LEDGER, align 4
  %67 = call i64 @thread_block_reason(i32 %65, i32* null, i32 %66)
  store i64 %67, i64* %5, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @THREAD_AWAKENED, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %72, i64* %2, align 8
  br label %80

73:                                               ; preds = %60
  %74 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %74, i64* %2, align 8
  br label %80

75:                                               ; preds = %30
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %7

78:                                               ; preds = %7
  %79 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %79, i64* %2, align 8
  br label %80

80:                                               ; preds = %78, %73, %71, %58
  %81 = load i64, i64* %2, align 8
  ret i64 %81
}

declare dso_local i32 @limit_exceeded(%struct.ledger_entry*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @assert_wait_deadline(%struct.ledger_entry*, i32, i64) #1

declare dso_local i32 @flag_set(i32*, i32) #1

declare dso_local i64 @thread_block_reason(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
