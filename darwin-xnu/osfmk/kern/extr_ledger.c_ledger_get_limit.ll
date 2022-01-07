; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_get_limit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_get_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.ledger_entry* }
%struct.ledger_entry = type { i32 }

@KERN_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ledger_get_limit: %lld\0A\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ledger_get_limit(%struct.TYPE_4__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ledger_entry*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @ENTRY_VALID(%struct.TYPE_4__* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %14, i32* %4, align 4
  br label %32

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
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @lprintf(i8* %29)
  %31 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %15, %13
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @ENTRY_VALID(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @lprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
