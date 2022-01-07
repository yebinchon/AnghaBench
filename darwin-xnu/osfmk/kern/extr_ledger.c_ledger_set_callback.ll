; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_set_callback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_set_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.entry_template* }
%struct.entry_template = type { %struct.ledger_callback* }
%struct.ledger_callback = type { i8*, i8*, i64 }

@KERN_INVALID_VALUE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ledger_set_callback(%struct.TYPE_5__* %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.entry_template*, align 8
  %13 = alloca %struct.ledger_callback*, align 8
  %14 = alloca %struct.ledger_callback*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17, %5
  %24 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %24, i32* %6, align 4
  br label %65

25:                                               ; preds = %17
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = call i64 @kalloc(i32 24)
  %30 = inttoptr i64 %29 to %struct.ledger_callback*
  store %struct.ledger_callback* %30, %struct.ledger_callback** %14, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.ledger_callback*, %struct.ledger_callback** %14, align 8
  %33 = getelementptr inbounds %struct.ledger_callback, %struct.ledger_callback* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.ledger_callback*, %struct.ledger_callback** %14, align 8
  %36 = getelementptr inbounds %struct.ledger_callback, %struct.ledger_callback* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load %struct.ledger_callback*, %struct.ledger_callback** %14, align 8
  %39 = getelementptr inbounds %struct.ledger_callback, %struct.ledger_callback* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %41

40:                                               ; preds = %25
  store %struct.ledger_callback* null, %struct.ledger_callback** %14, align 8
  br label %41

41:                                               ; preds = %40, %28
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = call i32 @template_lock(%struct.TYPE_5__* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.entry_template*, %struct.entry_template** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.entry_template, %struct.entry_template* %46, i64 %48
  store %struct.entry_template* %49, %struct.entry_template** %12, align 8
  %50 = load %struct.entry_template*, %struct.entry_template** %12, align 8
  %51 = getelementptr inbounds %struct.entry_template, %struct.entry_template* %50, i32 0, i32 0
  %52 = load %struct.ledger_callback*, %struct.ledger_callback** %51, align 8
  store %struct.ledger_callback* %52, %struct.ledger_callback** %13, align 8
  %53 = load %struct.ledger_callback*, %struct.ledger_callback** %14, align 8
  %54 = load %struct.entry_template*, %struct.entry_template** %12, align 8
  %55 = getelementptr inbounds %struct.entry_template, %struct.entry_template* %54, i32 0, i32 0
  store %struct.ledger_callback* %53, %struct.ledger_callback** %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = call i32 @template_unlock(%struct.TYPE_5__* %56)
  %58 = load %struct.ledger_callback*, %struct.ledger_callback** %13, align 8
  %59 = icmp ne %struct.ledger_callback* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %41
  %61 = load %struct.ledger_callback*, %struct.ledger_callback** %13, align 8
  %62 = call i32 @kfree(%struct.ledger_callback* %61, i32 24)
  br label %63

63:                                               ; preds = %60, %41
  %64 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %23
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @template_lock(%struct.TYPE_5__*) #1

declare dso_local i32 @template_unlock(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.ledger_callback*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
