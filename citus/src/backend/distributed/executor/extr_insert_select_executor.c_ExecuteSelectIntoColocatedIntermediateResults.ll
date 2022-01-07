; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_insert_select_executor.c_ExecuteSelectIntoColocatedIntermediateResults.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_insert_select_executor.c_ExecuteSelectIntoColocatedIntermediateResults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@NIL = common dso_local global i32* null, align 8
@DISTRIBUTE_BY_NONE = common dso_local global i8 0, align 1
@XACT_MODIFICATION_DATA = common dso_local global i32 0, align 4
@XactModificationLevel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*, i32*, %struct.TYPE_6__*, i8*)* @ExecuteSelectIntoColocatedIntermediateResults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ExecuteSelectIntoColocatedIntermediateResults(i32 %0, i32* %1, i32* %2, %struct.TYPE_6__* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i8* %4, i8** %10, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %21 = load i32*, i32** @NIL, align 8
  store i32* %21, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i8 0, i8* %15, align 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %16, align 8
  store i32* null, i32** %17, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call signext i8 @PartitionMethod(i32 %22)
  store i8 %23, i8* %15, align 1
  %24 = load i8, i8* %15, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 1, i32* %14, align 4
  br label %30

30:                                               ; preds = %29, %5
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32* @BuildColumnNameListFromTargetList(i32 %31, i32* %32)
  store i32* %33, i32** %13, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @PartitionColumnIndexFromColumnList(i32 %34, i32* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = call %struct.TYPE_7__* @CreateCitusCopyDestReceiver(i32 %37, i32* %38, i32 %39, %struct.TYPE_6__* %40, i32 %41, i8* %42)
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %16, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32* @copyObject(i32* %44)
  store i32* %45, i32** %17, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %49 = bitcast %struct.TYPE_7__* %48 to i32*
  %50 = call i32 @ExecuteQueryIntoDestReceiver(i32* %46, i32 %47, i32* %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @XACT_MODIFICATION_DATA, align 4
  store i32 %56, i32* @XactModificationLevel, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  ret i32* %59
}

declare dso_local signext i8 @PartitionMethod(i32) #1

declare dso_local i32* @BuildColumnNameListFromTargetList(i32, i32*) #1

declare dso_local i32 @PartitionColumnIndexFromColumnList(i32, i32*) #1

declare dso_local %struct.TYPE_7__* @CreateCitusCopyDestReceiver(i32, i32*, i32, %struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32* @copyObject(i32*) #1

declare dso_local i32 @ExecuteQueryIntoDestReceiver(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
