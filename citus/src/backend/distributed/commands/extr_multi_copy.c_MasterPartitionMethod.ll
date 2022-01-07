; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_MasterPartitionMethod.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_MasterPartitionMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32 }

@PARTITION_METHOD_QUERY = common dso_local global i32 0, align 4
@masterConnection = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"could not find a partition method for the table %s\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"could not get the partition method of the distributed table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_7__*)* @MasterPartitionMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @MasterPartitionMethod(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i8 0, i8* %3, align 1
  store i32* null, i32** %4, align 8
  store i32 1, i32* %5, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @quote_qualified_identifier(i8* %17, i8* %18)
  store i8* %19, i8** %8, align 8
  %20 = call %struct.TYPE_6__* (...) @makeStringInfo()
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %9, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = load i32, i32* @PARTITION_METHOD_QUERY, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @appendStringInfo(%struct.TYPE_6__* %21, i32 %22, i8* %23)
  %25 = load i32, i32* @masterConnection, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SendRemoteCommand(i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @masterConnection, align 4
  %33 = load i32, i32* @ERROR, align 4
  %34 = call i32 @ReportConnectionError(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %1
  %36 = load i32, i32* @masterConnection, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32* @GetRemoteCommandResult(i32 %36, i32 %37)
  store i32* %38, i32** %4, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @PQresultStatus(i32* %39)
  %41 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %35
  %44 = load i32*, i32** %4, align 8
  %45 = call i8* @PQgetvalue(i32* %44, i32 0, i32 0)
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48, %43
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = call i32 @ereport(i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %3, align 1
  br label %70

62:                                               ; preds = %35
  %63 = load i32, i32* @masterConnection, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* @WARNING, align 4
  %66 = call i32 @ReportResultError(i32 %63, i32* %64, i32 %65)
  %67 = load i32, i32* @ERROR, align 4
  %68 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %69 = call i32 @ereport(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %58
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @PQclear(i32* %71)
  %73 = load i32, i32* @masterConnection, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32* @GetRemoteCommandResult(i32 %73, i32 %74)
  store i32* %75, i32** %4, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = icmp ne i32* %76, null
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @Assert(i32 %79)
  %81 = load i8, i8* %3, align 1
  ret i8 %81
}

declare dso_local i8* @quote_qualified_identifier(i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @makeStringInfo(...) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @SendRemoteCommand(i32, i32) #1

declare dso_local i32 @ReportConnectionError(i32, i32) #1

declare dso_local i32* @GetRemoteCommandResult(i32, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @ReportResultError(i32, i32*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
