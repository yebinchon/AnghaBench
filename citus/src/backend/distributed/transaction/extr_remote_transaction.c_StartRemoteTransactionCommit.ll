; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_remote_transaction.c_StartRemoteTransactionCommit.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_remote_transaction.c_StartRemoteTransactionCommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, i64 }
%struct.TYPE_11__ = type { i8* }

@REMOTE_TRANS_INVALID = common dso_local global i64 0, align 8
@REMOTE_TRANS_1PC_ABORTING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"ROLLBACK\00", align 1
@REMOTE_TRANS_PREPARED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"COMMIT PREPARED %s\00", align 1
@REMOTE_TRANS_2PC_COMMITTING = common dso_local global i64 0, align 8
@REMOTE_TRANS_1PC_COMMITTING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StartRemoteTransactionCommit(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REMOTE_TRANS_INVALID, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @REMOTE_TRANS_1PC_ABORTING, align 8
  %20 = icmp slt i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %1
  %28 = load i64, i64* @REMOTE_TRANS_1PC_ABORTING, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = call i32 @ForgetResults(%struct.TYPE_13__* %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = call i32 @SendRemoteCommand(%struct.TYPE_13__* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %27
  br label %77

38:                                               ; preds = %1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @REMOTE_TRANS_PREPARED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = call i32 @initStringInfo(%struct.TYPE_11__* %6)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @quote_literal_cstr(i32 %48)
  %50 = call i32 @appendStringInfo(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i64, i64* @REMOTE_TRANS_2PC_COMMITTING, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @SendRemoteCommand(%struct.TYPE_13__* %54, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %44
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %61 = call i32 @HandleRemoteTransactionConnectionError(%struct.TYPE_13__* %60, i32 0)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = call i32 @WarnAboutLeakedPreparedTransaction(%struct.TYPE_13__* %62, i32 1)
  br label %64

64:                                               ; preds = %59, %44
  br label %76

65:                                               ; preds = %38
  %66 = load i64, i64* @REMOTE_TRANS_1PC_COMMITTING, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = call i32 @SendRemoteCommand(%struct.TYPE_13__* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %74 = call i32 @HandleRemoteTransactionConnectionError(%struct.TYPE_13__* %73, i32 0)
  br label %75

75:                                               ; preds = %72, %65
  br label %76

76:                                               ; preds = %75, %64
  br label %77

77:                                               ; preds = %76, %37
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ForgetResults(%struct.TYPE_13__*) #1

declare dso_local i32 @SendRemoteCommand(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_11__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @quote_literal_cstr(i32) #1

declare dso_local i32 @HandleRemoteTransactionConnectionError(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @WarnAboutLeakedPreparedTransaction(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
