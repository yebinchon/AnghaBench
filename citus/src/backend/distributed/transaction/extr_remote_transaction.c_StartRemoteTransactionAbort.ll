; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_remote_transaction.c_StartRemoteTransactionAbort.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_remote_transaction.c_StartRemoteTransactionAbort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i8* }

@REMOTE_TRANS_INVALID = common dso_local global i64 0, align 8
@REMOTE_TRANS_PREPARING = common dso_local global i64 0, align 8
@REMOTE_TRANS_PREPARED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"ROLLBACK PREPARED %s\00", align 1
@REMOTE_TRANS_2PC_ABORTING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"ROLLBACK\00", align 1
@REMOTE_TRANS_1PC_ABORTING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StartRemoteTransactionAbort(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REMOTE_TRANS_INVALID, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @REMOTE_TRANS_PREPARING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @REMOTE_TRANS_PREPARED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %21, %1
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = call i32 @ForgetResults(%struct.TYPE_16__* %28)
  %30 = call i32 @initStringInfo(%struct.TYPE_14__* %6)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @quote_literal_cstr(i32 %33)
  %35 = call i32 @appendStringInfo(%struct.TYPE_14__* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @SendRemoteCommand(%struct.TYPE_16__* %36, i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %27
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = call i32 @HandleRemoteTransactionConnectionError(%struct.TYPE_16__* %42, i32 0)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %45 = call i32 @WarnAboutLeakedPreparedTransaction(%struct.TYPE_16__* %44, i32 0)
  br label %50

46:                                               ; preds = %27
  %47 = load i64, i64* @REMOTE_TRANS_2PC_ABORTING, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %41
  br label %70

51:                                               ; preds = %21
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %53 = call i32 @ClearResultsIfReady(%struct.TYPE_16__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %57 = call i32 @ShutdownConnection(%struct.TYPE_16__* %56)
  br label %70

58:                                               ; preds = %51
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %60 = call i32 @SendRemoteCommand(%struct.TYPE_16__* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %64 = call i32 @MarkRemoteTransactionFailed(%struct.TYPE_16__* %63, i32 0)
  br label %69

65:                                               ; preds = %58
  %66 = load i64, i64* @REMOTE_TRANS_1PC_ABORTING, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %62
  br label %70

70:                                               ; preds = %55, %69, %50
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ForgetResults(%struct.TYPE_16__*) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_14__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @quote_literal_cstr(i32) #1

declare dso_local i32 @SendRemoteCommand(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @HandleRemoteTransactionConnectionError(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @WarnAboutLeakedPreparedTransaction(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ClearResultsIfReady(%struct.TYPE_16__*) #1

declare dso_local i32 @ShutdownConnection(%struct.TYPE_16__*) #1

declare dso_local i32 @MarkRemoteTransactionFailed(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
