; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_executor.c_CitusExecutorStart.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_executor.c_CitusExecutorStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"cannot join local tables and reference tables in a transaction block\00", align 1
@WritableStandbyCoordinator = common dso_local global i64 0, align 8
@XactReadOnly = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CitusExecutorStart(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %5, align 8
  %9 = call i64 (...) @CitusHasBeenLoaded()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = call i64 @IsLocalReferenceTableJoinPlan(%struct.TYPE_7__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = call i64 (...) @IsMultiStatementTransaction()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = call i32 @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @ereport(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %15, %11
  br label %25

25:                                               ; preds = %24, %2
  %26 = call i64 (...) @RecoveryInProgress()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i64, i64* @WritableStandbyCoordinator, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @IsCitusPlan(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = call i32 (...) @PG_TRY()
  store i32 0, i32* @XactReadOnly, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @standard_ExecutorStart(%struct.TYPE_6__* %39, i32 %40)
  store i32 1, i32* @XactReadOnly, align 4
  %42 = call i32 (...) @PG_CATCH()
  store i32 1, i32* @XactReadOnly, align 4
  %43 = call i32 (...) @PG_RE_THROW()
  %44 = call i32 (...) @PG_END_TRY()
  br label %49

45:                                               ; preds = %31, %28, %25
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @standard_ExecutorStart(%struct.TYPE_6__* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %37
  ret void
}

declare dso_local i64 @CitusHasBeenLoaded(...) #1

declare dso_local i64 @IsLocalReferenceTableJoinPlan(%struct.TYPE_7__*) #1

declare dso_local i64 @IsMultiStatementTransaction(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i64 @IsCitusPlan(i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @standard_ExecutorStart(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @PG_RE_THROW(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
