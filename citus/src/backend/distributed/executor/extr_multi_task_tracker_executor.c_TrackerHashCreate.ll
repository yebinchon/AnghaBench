; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_TrackerHashCreate.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_TrackerHashCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@WORKER_LENGTH = common dso_local global i64 0, align 8
@tag_hash = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_FUNCTION = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not initialize task tracker hash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32)* @TrackerHashCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @TrackerHashCreate(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %8 = call i32 @memset(%struct.TYPE_4__* %5, i32 0, i32 24)
  %9 = load i64, i64* @WORKER_LENGTH, align 8
  %10 = add i64 %9, 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 4, i32* %12, align 8
  %13 = load i32, i32* @tag_hash, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @CurrentMemoryContext, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @HASH_ELEM, align 4
  %18 = load i32, i32* @HASH_FUNCTION, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @HASH_CONTEXT, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32* @hash_create(i8* %22, i32 %23, %struct.TYPE_4__* %5, i32 %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i32, i32* @FATAL, align 4
  %30 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @ereport(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %2
  %35 = load i32*, i32** %7, align 8
  ret i32* %35
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
