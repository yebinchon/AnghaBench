; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_transaction_recovery.c_RecoverPreparedTransactionOnWorker.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_transaction_recovery.c_RecoverPreparedTransactionOnWorker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"COMMIT PREPARED %s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ROLLBACK PREPARED %s\00", align 1
@QUERY_SEND_FAILED = common dso_local global i32 0, align 4
@RESPONSE_NOT_OKAY = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"recovered a prepared transaction on %s:%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32)* @RecoverPreparedTransactionOnWorker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RecoverPreparedTransactionOnWorker(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call %struct.TYPE_8__* (...) @makeStringInfo()
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @quote_literal_cstr(i8* %17)
  %19 = call i32 @appendStringInfo(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @quote_literal_cstr(i8* %22)
  %24 = call i32 @appendStringInfo(%struct.TYPE_8__* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ExecuteOptionalRemoteCommand(%struct.TYPE_9__* %26, i32 %29, i32** %9)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @QUERY_SEND_FAILED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %59

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @RESPONSE_NOT_OKAY, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %59

40:                                               ; preds = %35
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @PQclear(i32* %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @ClearResults(%struct.TYPE_9__* %43, i32 %44)
  %46 = load i32, i32* @LOG, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @errcontext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = call i32 @ereport(i32 %46, i32 %57)
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %40, %39, %34
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_8__* @makeStringInfo(...) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @quote_literal_cstr(i8*) #1

declare dso_local i32 @ExecuteOptionalRemoteCommand(%struct.TYPE_9__*, i32, i32**) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ClearResults(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @errcontext(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
