; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcServerStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcServerStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"ServerType\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"NumTcpConnections\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"NumTcpConnectionsLocal\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"NumTcpConnectionsRemote\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"NumHubTotal\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"NumHubStandalone\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"NumHubStatic\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"NumHubDynamic\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"NumSessionsTotal\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"NumSessionsLocal\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"NumSessionsRemote\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"NumMacTables\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"NumIpTables\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"NumUsers\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"NumGroups\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"CurrentTime\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"CurrentTick\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"AssignedBridgeLicenses\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"AssignedClientLicenses\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"AssignedBridgeLicensesTotal\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"AssignedClientLicensesTotal\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"StartTime\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcServerStatus(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = icmp eq %struct.TYPE_4__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %110

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 @Zero(%struct.TYPE_4__* %12, i32 184)
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @PackGetInt(i32* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 23
  store i8* %15, i8** %17, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @PackGetInt(i32* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 22
  store i8* %19, i8** %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i8* @PackGetInt(i32* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 21
  store i8* %23, i8** %25, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @PackGetInt(i32* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 20
  store i8* %27, i8** %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i8* @PackGetInt(i32* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 19
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i8* @PackGetInt(i32* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 18
  store i8* %35, i8** %37, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i8* @PackGetInt(i32* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 17
  store i8* %39, i8** %41, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i8* @PackGetInt(i32* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 16
  store i8* %43, i8** %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i8* @PackGetInt(i32* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 15
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i8* @PackGetInt(i32* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 14
  store i8* %51, i8** %53, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i8* @PackGetInt(i32* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 13
  store i8* %55, i8** %57, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i8* @PackGetInt(i32* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 12
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i8* @PackGetInt(i32* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 11
  store i8* %63, i8** %65, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = call i8* @PackGetInt(i32* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 10
  store i8* %67, i8** %69, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call i8* @PackGetInt(i32* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 9
  store i8* %71, i8** %73, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = call i8* @PackGetInt64(i32* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 8
  store i8* %75, i8** %77, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = call i8* @PackGetInt64(i32* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 7
  store i8* %79, i8** %81, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call i8* @PackGetInt(i32* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = call i8* @PackGetInt(i32* %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = call i8* @PackGetInt(i32* %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = call i8* @PackGetInt(i32* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0))
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = call i8* @PackGetInt64(i32* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @InRpcTraffic(i32* %103, i32* %104)
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @InRpcMemInfo(i32* %107, i32* %108)
  br label %110

110:                                              ; preds = %11, %10
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @PackGetInt(i32*, i8*) #1

declare dso_local i8* @PackGetInt64(i32*, i8*) #1

declare dso_local i32 @InRpcTraffic(i32*, i32*) #1

declare dso_local i32 @InRpcMemInfo(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
