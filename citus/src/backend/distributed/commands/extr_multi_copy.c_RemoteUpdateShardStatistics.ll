; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_RemoteUpdateShardStatistics.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_RemoteUpdateShardStatistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@UPDATE_SHARD_STATISTICS_QUERY = common dso_local global i32 0, align 4
@masterConnection = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"could not update shard statistics\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @RemoteUpdateShardStatistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RemoteUpdateShardStatistics(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32 1, i32* %4, align 4
  %6 = call %struct.TYPE_4__* (...) @makeStringInfo()
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %8 = load i32, i32* @UPDATE_SHARD_STATISTICS_QUERY, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @appendStringInfo(%struct.TYPE_4__* %7, i32 %8, i32 %9)
  %11 = load i32, i32* @masterConnection, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @SendRemoteCommand(i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @masterConnection, align 4
  %19 = load i32, i32* @ERROR, align 4
  %20 = call i32 @ReportConnectionError(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* @masterConnection, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32* @GetRemoteCommandResult(i32 %22, i32 %23)
  store i32* %24, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @PQresultStatus(i32* %25)
  %27 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @ERROR, align 4
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @ereport(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %21
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @PQclear(i32* %34)
  %36 = load i32, i32* @masterConnection, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32* @GetRemoteCommandResult(i32 %36, i32 %37)
  store i32* %38, i32** %3, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = icmp ne i32* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  ret void
}

declare dso_local %struct.TYPE_4__* @makeStringInfo(...) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @SendRemoteCommand(i32, i32) #1

declare dso_local i32 @ReportConnectionError(i32, i32) #1

declare dso_local i32* @GetRemoteCommandResult(i32, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
