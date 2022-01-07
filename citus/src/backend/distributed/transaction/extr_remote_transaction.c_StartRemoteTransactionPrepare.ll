; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_remote_transaction.c_StartRemoteTransactionPrepare.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_remote_transaction.c_StartRemoteTransactionPrepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MultiConnection = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@REMOTE_TRANS_INVALID = common dso_local global i64 0, align 8
@REMOTE_TRANS_PREPARING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"PREPARE TRANSACTION %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StartRemoteTransactionPrepare(%struct.MultiConnection* %0) #0 {
  %2 = alloca %struct.MultiConnection*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.MultiConnection* %0, %struct.MultiConnection** %2, align 8
  %7 = load %struct.MultiConnection*, %struct.MultiConnection** %2, align 8
  %8 = getelementptr inbounds %struct.MultiConnection, %struct.MultiConnection* %7, i32 0, i32 2
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %3, align 8
  store i32 1, i32* %5, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REMOTE_TRANS_INVALID, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REMOTE_TRANS_PREPARING, align 8
  %27 = icmp slt i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load %struct.MultiConnection*, %struct.MultiConnection** %2, align 8
  %31 = call i32 @Assign2PCIdentifier(%struct.MultiConnection* %30)
  %32 = load %struct.MultiConnection*, %struct.MultiConnection** %2, align 8
  %33 = getelementptr inbounds %struct.MultiConnection, %struct.MultiConnection* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.MultiConnection*, %struct.MultiConnection** %2, align 8
  %36 = getelementptr inbounds %struct.MultiConnection, %struct.MultiConnection* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_7__* @FindWorkerNode(i32 %34, i32 %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %6, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @LogTransactionRecord(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %41, %1
  %50 = call i32 @initStringInfo(%struct.TYPE_8__* %4)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @quote_literal_cstr(i32 %53)
  %55 = call i32 @appendStringInfo(%struct.TYPE_8__* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.MultiConnection*, %struct.MultiConnection** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @SendRemoteCommand(%struct.MultiConnection* %56, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %49
  %62 = load %struct.MultiConnection*, %struct.MultiConnection** %2, align 8
  %63 = call i32 @HandleRemoteTransactionConnectionError(%struct.MultiConnection* %62, i32 1)
  br label %68

64:                                               ; preds = %49
  %65 = load i64, i64* @REMOTE_TRANS_PREPARING, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %61
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @Assign2PCIdentifier(%struct.MultiConnection*) #1

declare dso_local %struct.TYPE_7__* @FindWorkerNode(i32, i32) #1

declare dso_local i32 @LogTransactionRecord(i32, i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @quote_literal_cstr(i32) #1

declare dso_local i32 @SendRemoteCommand(%struct.MultiConnection*, i32) #1

declare dso_local i32 @HandleRemoteTransactionConnectionError(%struct.MultiConnection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
