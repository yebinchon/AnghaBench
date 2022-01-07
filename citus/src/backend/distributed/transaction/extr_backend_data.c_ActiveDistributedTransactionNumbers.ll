; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_backend_data.c_ActiveDistributedTransactionNumbers.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_backend_data.c_ActiveDistributedTransactionNumbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@NIL = common dso_local global i32* null, align 8
@MaxBackends = common dso_local global i32 0, align 4
@ProcGlobal = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ActiveDistributedTransactionNumbers() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__, align 4
  %5 = alloca i32*, align 8
  %6 = load i32*, i32** @NIL, align 8
  store i32* %6, i32** %1, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %45, %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @MaxBackends, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ProcGlobal, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i64 %16
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %3, align 8
  store i32* null, i32** %5, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %45

23:                                               ; preds = %11
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = call i32 @GetBackendDataForProc(%struct.TYPE_9__* %24, %struct.TYPE_10__* %4)
  %26 = call i32 @IsInDistributedTransaction(%struct.TYPE_10__* %4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %45

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %45

35:                                               ; preds = %29
  %36 = call i64 @palloc0(i32 4)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %1, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32* @lappend(i32* %42, i32* %43)
  store i32* %44, i32** %1, align 8
  br label %45

45:                                               ; preds = %35, %34, %28, %22
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %7

48:                                               ; preds = %7
  %49 = load i32*, i32** %1, align 8
  ret i32* %49
}

declare dso_local i32 @GetBackendDataForProc(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @IsInDistributedTransaction(%struct.TYPE_10__*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32* @lappend(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
