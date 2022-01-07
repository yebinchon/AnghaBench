; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_CitusCopyFrom.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_CitusCopyFrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"must be superuser to COPY to or from an external program\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"Anyone can COPY to stdout or from stdin. psql's \\copy command also works for anyone.\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"must be superuser to COPY to or from a file\00", align 1
@masterConnection = common dso_local global i32* null, align 8
@NoLock = common dso_local global i32 0, align 4
@DISTRIBUTE_BY_HASH = common dso_local global i8 0, align 1
@DISTRIBUTE_BY_RANGE = common dso_local global i8 0, align 1
@DISTRIBUTE_BY_NONE = common dso_local global i8 0, align 1
@DISTRIBUTE_BY_APPEND = common dso_local global i8 0, align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"unsupported partition method\00", align 1
@XACT_MODIFICATION_DATA = common dso_local global i32 0, align 4
@XactModificationLevel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*)* @CitusCopyFrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CitusCopyFrom(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = call i32 (...) @BeginOrContinueCoordinatedTransaction()
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = call i32 (...) @superuser()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %24 = call i32 @errcode(i32 %23)
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @errhint(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %22, i32 %26)
  br label %35

28:                                               ; preds = %16
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @errhint(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @ereport(i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %28, %21
  br label %36

36:                                               ; preds = %35, %13, %2
  store i32* null, i32** @masterConnection, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = call i32 @IsCopyFromWorker(%struct.TYPE_7__* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @CopyFromWorkerNode(%struct.TYPE_7__* %42, i8* %43)
  br label %95

45:                                               ; preds = %36
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NoLock, align 4
  %50 = call i32 @RangeVarGetRelid(i32 %48, i32 %49, i32 0)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call signext i8 @PartitionMethod(i32 %51)
  store i8 %52, i8* %7, align 1
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @EnsurePartitionTableNotReplicated(i32 %53)
  %55 = load i8, i8* %7, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* @DISTRIBUTE_BY_HASH, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %45
  %61 = load i8, i8* %7, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8, i8* @DISTRIBUTE_BY_RANGE, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i8, i8* %7, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66, %60, %45
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @CopyToExistingShards(%struct.TYPE_7__* %73, i8* %74)
  br label %94

76:                                               ; preds = %66
  %77 = load i8, i8* %7, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8, i8* @DISTRIBUTE_BY_APPEND, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @CopyToNewShards(%struct.TYPE_7__* %83, i8* %84, i32 %85)
  br label %93

87:                                               ; preds = %76
  %88 = load i32, i32* @ERROR, align 4
  %89 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %90 = call i32 @errcode(i32 %89)
  %91 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %92 = call i32 @ereport(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %87, %82
  br label %94

94:                                               ; preds = %93, %72
  br label %95

95:                                               ; preds = %94, %41
  %96 = load i32, i32* @XACT_MODIFICATION_DATA, align 4
  store i32 %96, i32* @XactModificationLevel, align 4
  ret void
}

declare dso_local i32 @BeginOrContinueCoordinatedTransaction(...) #1

declare dso_local i32 @superuser(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @IsCopyFromWorker(%struct.TYPE_7__*) #1

declare dso_local i32 @CopyFromWorkerNode(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @RangeVarGetRelid(i32, i32, i32) #1

declare dso_local signext i8 @PartitionMethod(i32) #1

declare dso_local i32 @EnsurePartitionTableNotReplicated(i32) #1

declare dso_local i32 @CopyToExistingShards(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @CopyToNewShards(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
