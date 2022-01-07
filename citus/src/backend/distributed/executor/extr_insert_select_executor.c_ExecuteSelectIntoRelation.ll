; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_insert_select_executor.c_ExecuteSelectIntoRelation.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_insert_select_executor.c_ExecuteSelectIntoRelation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@DISTRIBUTE_BY_NONE = common dso_local global i8 0, align 1
@XACT_MODIFICATION_DATA = common dso_local global i32 0, align 4
@XactModificationLevel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, %struct.TYPE_6__*)* @ExecuteSelectIntoRelation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExecuteSelectIntoRelation(i32 %0, i32* %1, i32* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %19 = load i32*, i32** @NIL, align 8
  store i32* %19, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i8 0, i8* %13, align 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %14, align 8
  store i32* null, i32** %15, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call signext i8 @PartitionMethod(i32 %20)
  store i8 %21, i8* %13, align 1
  %22 = load i8, i8* %13, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %28

28:                                               ; preds = %27, %4
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i32* @BuildColumnNameListFromTargetList(i32 %29, i32* %30)
  store i32* %31, i32** %11, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @PartitionColumnIndexFromColumnList(i32 %32, i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call %struct.TYPE_7__* @CreateCitusCopyDestReceiver(i32 %35, i32* %36, i32 %37, %struct.TYPE_6__* %38, i32 %39, i32* null)
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %14, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32* @copyObject(i32* %41)
  store i32* %42, i32** %15, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %46 = bitcast %struct.TYPE_7__* %45 to i32*
  %47 = call i32 @ExecuteQueryIntoDestReceiver(i32* %43, i32 %44, i32* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @XACT_MODIFICATION_DATA, align 4
  store i32 %53, i32* @XactModificationLevel, align 4
  ret void
}

declare dso_local signext i8 @PartitionMethod(i32) #1

declare dso_local i32* @BuildColumnNameListFromTargetList(i32, i32*) #1

declare dso_local i32 @PartitionColumnIndexFromColumnList(i32, i32*) #1

declare dso_local %struct.TYPE_7__* @CreateCitusCopyDestReceiver(i32, i32*, i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32* @copyObject(i32*) #1

declare dso_local i32 @ExecuteQueryIntoDestReceiver(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
