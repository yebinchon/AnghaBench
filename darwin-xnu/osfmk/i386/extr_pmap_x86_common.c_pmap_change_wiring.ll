; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_change_wiring.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_change_wiring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@PT_ENTRY_NULL = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"pmap_change_wiring(%p,0x%llx,%d): pte missing\00", align 1
@task_ledgers = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PTE_WIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_change_wiring(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = call i32 @PMAP_LOCK(%struct.TYPE_12__* %8)
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32* @pmap_pte(%struct.TYPE_12__* %10, i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** @PT_ENTRY_NULL, align 8
  %14 = icmp eq i32* %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @iswired(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @task_ledgers, i32 0, i32 0), align 4
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = call i32 @pmap_ledger_credit(%struct.TYPE_12__* %29, i32 %30, i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = call i32 @OSAddAtomic(i32 1, i32* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @PTE_WIRED, align 4
  %39 = call i32 @pmap_update_pte(i32* %37, i32 0, i32 %38)
  br label %68

40:                                               ; preds = %23, %20
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %40
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @iswired(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 1
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = call i32 @OSAddAtomic(i32 -1, i32* %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @task_ledgers, i32 0, i32 0), align 4
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = call i32 @pmap_ledger_debit(%struct.TYPE_12__* %60, i32 %61, i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @PTE_WIRED, align 4
  %66 = call i32 @pmap_update_pte(i32* %64, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %48, %43, %40
  br label %68

68:                                               ; preds = %67, %28
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = call i32 @PMAP_UNLOCK(%struct.TYPE_12__* %69)
  ret void
}

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_12__*) #1

declare dso_local i32* @pmap_pte(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @iswired(i32) #1

declare dso_local i32 @pmap_ledger_credit(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @pmap_update_pte(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pmap_ledger_debit(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
