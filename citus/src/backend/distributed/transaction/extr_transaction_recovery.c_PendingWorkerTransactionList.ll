; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_transaction_recovery.c_PendingWorkerTransactionList.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_transaction_recovery.c_PendingWorkerTransactionList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [65 x i8] c"SELECT gid FROM pg_prepared_xacts WHERE gid LIKE 'citus\\_%d\\_%%'\00", align 1
@ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @PendingWorkerTransactionList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PendingWorkerTransactionList(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %13 = call %struct.TYPE_4__* (...) @makeStringInfo()
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %3, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32*, i32** @NIL, align 8
  store i32* %14, i32** %9, align 8
  %15 = call i32 (...) @GetLocalGroupId()
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @appendStringInfo(%struct.TYPE_4__* %16, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SendRemoteCommand(i32* %19, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @ERROR, align 4
  %29 = call i32 @ReportConnectionError(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %1
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32* @GetRemoteCommandResult(i32* %31, i32 %32)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @IsResponseOK(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i32*, i32** %2, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @ERROR, align 4
  %41 = call i32 @ReportResultError(i32* %38, i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %30
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @PQntuples(i32* %43)
  store i32 %44, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %57, %42
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @PQgetvalue(i32* %50, i32 %51, i32 0)
  store i8* %52, i8** %12, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @pstrdup(i8* %54)
  %56 = call i32* @lappend(i32* %53, i32 %55)
  store i32* %56, i32** %9, align 8
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %45

60:                                               ; preds = %45
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @PQclear(i32* %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @ForgetResults(i32* %63)
  %65 = load i32*, i32** %9, align 8
  ret i32* %65
}

declare dso_local %struct.TYPE_4__* @makeStringInfo(...) #1

declare dso_local i32 @GetLocalGroupId(...) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @SendRemoteCommand(i32*, i32) #1

declare dso_local i32 @ReportConnectionError(i32*, i32) #1

declare dso_local i32* @GetRemoteCommandResult(i32*, i32) #1

declare dso_local i32 @IsResponseOK(i32*) #1

declare dso_local i32 @ReportResultError(i32*, i32*, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32 @pstrdup(i8*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ForgetResults(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
