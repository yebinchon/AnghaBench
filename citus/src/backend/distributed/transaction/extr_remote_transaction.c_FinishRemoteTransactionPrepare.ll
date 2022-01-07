; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_remote_transaction.c_FinishRemoteTransactionPrepare.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_remote_transaction.c_FinishRemoteTransactionPrepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MultiConnection = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@REMOTE_TRANS_PREPARING = common dso_local global i64 0, align 8
@REMOTE_TRANS_ABORTED = common dso_local global i64 0, align 8
@REMOTE_TRANS_PREPARED = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed to prepare transaction '%s' on host %s:%d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Try re-running the command.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FinishRemoteTransactionPrepare(%struct.MultiConnection* %0) #0 {
  %2 = alloca %struct.MultiConnection*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.MultiConnection* %0, %struct.MultiConnection** %2, align 8
  %6 = load %struct.MultiConnection*, %struct.MultiConnection** %2, align 8
  %7 = getelementptr inbounds %struct.MultiConnection, %struct.MultiConnection* %6, i32 0, i32 2
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 1, i32* %5, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @REMOTE_TRANS_PREPARING, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  %15 = load %struct.MultiConnection*, %struct.MultiConnection** %2, align 8
  %16 = call i32* @GetRemoteCommandResult(%struct.MultiConnection* %15, i32 1)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @IsResponseOK(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load i64, i64* @REMOTE_TRANS_ABORTED, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.MultiConnection*, %struct.MultiConnection** %2, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @HandleRemoteTransactionResultError(%struct.MultiConnection* %24, i32* %25, i32 1)
  br label %31

27:                                               ; preds = %1
  %28 = load i64, i64* @REMOTE_TRANS_PREPARED, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %20
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @PQclear(i32* %32)
  %34 = load %struct.MultiConnection*, %struct.MultiConnection** %2, align 8
  %35 = call i32 @ClearResults(%struct.MultiConnection* %34, i32 1)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ERROR, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.MultiConnection*, %struct.MultiConnection** %2, align 8
  %43 = getelementptr inbounds %struct.MultiConnection, %struct.MultiConnection* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.MultiConnection*, %struct.MultiConnection** %2, align 8
  %46 = getelementptr inbounds %struct.MultiConnection, %struct.MultiConnection* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i32 %47)
  %49 = call i32 @errhint(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 @ereport(i32 %38, i32 %49)
  br label %51

51:                                               ; preds = %37, %31
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @GetRemoteCommandResult(%struct.MultiConnection*, i32) #1

declare dso_local i32 @IsResponseOK(i32*) #1

declare dso_local i32 @HandleRemoteTransactionResultError(%struct.MultiConnection*, i32*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ClearResults(%struct.MultiConnection*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
