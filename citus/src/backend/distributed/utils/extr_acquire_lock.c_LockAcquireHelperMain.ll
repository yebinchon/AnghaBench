; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_acquire_lock.c_LockAcquireHelperMain.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_acquire_lock.c_LockAcquireHelperMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32 }

@MyBgworkerEntry = common dso_local global %struct.TYPE_10__* null, align 8
@INT4OID = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@lock_acquire_helper_sigterm = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"lock acquiring backend started for backend %d (cooldown %dms)\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [338 x i8] c"SELECT \0A    DISTINCT conflicting.pid,\0A    pg_terminate_backend(conflicting.pid)\0A  FROM pg_locks AS blocked\0A       JOIN pg_locks AS conflicting\0A         ON (conflicting.database = blocked.database\0A             AND conflicting.objid = blocked.objid)\0A WHERE conflicting.granted = true\0A   AND blocked.granted = false\0A   AND blocked.pid = $1;\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"canceling competing backends for backend %d\00", align 1
@STATE_RUNNING = common dso_local global i32 0, align 4
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@SPI_processed = common dso_local global i32 0, align 4
@SPI_tuptable = common dso_local global %struct.TYPE_9__* null, align 8
@WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"terminated conflicting backend %d\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"attempt to terminate conflicting backend %d was unsuccessful\00", align 1
@FATAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"cannot cancel competing backends for backend %d\00", align 1
@STATE_IDLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"lock acquiring backend finished for backend %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LockAcquireHelperMain(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1 x i32], align 4
  %11 = alloca [1 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @DatumGetInt32(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @MyBgworkerEntry, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %5, align 8
  store i64 0, i64* %6, align 8
  %23 = call i32 (...) @GetCurrentTimestamp()
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @TimestampTzPlusMilliseconds(i32 %24, i32 %27)
  store i32 %28, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %29 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %30 = load i32, i32* @INT4OID, align 4
  store i32 %30, i32* %29, align 4
  %31 = load i32, i32* @SIGTERM, align 4
  %32 = load i32, i32* @lock_acquire_helper_sigterm, align 4
  %33 = call i32 @pqsignal(i32 %31, i32 %32)
  %34 = call i32 (...) @BackgroundWorkerUnblockSignals()
  %35 = load i32, i32* @LOG, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, i32, ...) @elog(i32 %35, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %52, %1
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @DeadlineTimestampTzToTimeout(i32 %42)
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i64, i64* %6, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i64 @ShouldAcquireLock(i32 %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %47, %44
  %53 = phi i1 [ false, %44 ], [ %51, %47 ]
  br i1 %53, label %41, label %54

54:                                               ; preds = %52
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @InvalidOid, align 4
  %59 = call i32 @BackgroundWorkerInitializeConnectionByOid(i32 %57, i32 %58, i32 0)
  %60 = call i32 @initStringInfo(%struct.TYPE_7__* %4)
  %61 = call i32 @appendStringInfo(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([338 x i8], [338 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @Int32GetDatum(i32 %62)
  %64 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %134, %54
  %66 = call i64 @ShouldAcquireLock(i32 100)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %141

68:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %69 = load i32, i32* @LOG, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 (i32, i8*, i32, ...) @elog(i32 %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = call i32 (...) @SetCurrentStatementStartTimestamp()
  %73 = call i32 (...) @StartTransactionCommand()
  %74 = call i32 (...) @SPI_connect()
  %75 = call i32 (...) @GetTransactionSnapshot()
  %76 = call i32 @PushActiveSnapshot(i32 %75)
  %77 = load i32, i32* @STATE_RUNNING, align 4
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @pgstat_report_activity(i32 %77, i32* %79)
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %84 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %85 = call i32 @SPI_execute_with_args(i32* %82, i32 1, i32* %83, i32* %84, i32* null, i32 0, i32 0)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @SPI_OK_SELECT, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %130

89:                                               ; preds = %68
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %126, %89
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @SPI_processed, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %129

94:                                               ; preds = %90
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SPI_tuptable, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SPI_tuptable, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @SPI_getbinval(i32 %99, i32 %102, i32 1, i32* %16)
  %104 = call i32 @DatumGetInt32(i32 %103)
  store i32 %104, i32* %14, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SPI_tuptable, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SPI_tuptable, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @SPI_getbinval(i32 %109, i32 %112, i32 2, i32* %16)
  %114 = call i32 @DatumGetBool(i32 %113)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %94
  %118 = load i32, i32* @WARNING, align 4
  %119 = load i32, i32* %14, align 4
  %120 = call i32 (i32, i8*, i32, ...) @elog(i32 %118, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %125

121:                                              ; preds = %94
  %122 = load i32, i32* @INFO, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i32 (i32, i8*, i32, ...) @elog(i32 %122, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %121, %117
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %90

129:                                              ; preds = %90
  br label %134

130:                                              ; preds = %68
  %131 = load i32, i32* @FATAL, align 4
  %132 = load i32, i32* %3, align 4
  %133 = call i32 (i32, i8*, i32, ...) @elog(i32 %131, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %130, %129
  %135 = call i32 (...) @SPI_finish()
  %136 = call i32 (...) @PopActiveSnapshot()
  %137 = call i32 (...) @CommitTransactionCommand()
  %138 = call i32 @pgstat_report_stat(i32 0)
  %139 = load i32, i32* @STATE_IDLE, align 4
  %140 = call i32 @pgstat_report_activity(i32 %139, i32* null)
  br label %65

141:                                              ; preds = %65
  %142 = load i32, i32* @LOG, align 4
  %143 = load i32, i32* %3, align 4
  %144 = call i32 (i32, i8*, i32, ...) @elog(i32 %142, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  %145 = call i32 @proc_exit(i32 0)
  ret void
}

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @TimestampTzPlusMilliseconds(i32, i32) #1

declare dso_local i32 @pqsignal(i32, i32) #1

declare dso_local i32 @BackgroundWorkerUnblockSignals(...) #1

declare dso_local i32 @elog(i32, i8*, i32, ...) #1

declare dso_local i64 @DeadlineTimestampTzToTimeout(i32) #1

declare dso_local i64 @ShouldAcquireLock(i32) #1

declare dso_local i32 @BackgroundWorkerInitializeConnectionByOid(i32, i32, i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_7__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @SetCurrentStatementStartTimestamp(...) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @SPI_connect(...) #1

declare dso_local i32 @PushActiveSnapshot(i32) #1

declare dso_local i32 @GetTransactionSnapshot(...) #1

declare dso_local i32 @pgstat_report_activity(i32, i32*) #1

declare dso_local i32 @SPI_execute_with_args(i32*, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @SPI_getbinval(i32, i32, i32, i32*) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @SPI_finish(...) #1

declare dso_local i32 @PopActiveSnapshot(...) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

declare dso_local i32 @pgstat_report_stat(i32) #1

declare dso_local i32 @proc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
