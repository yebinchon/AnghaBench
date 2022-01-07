; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_OutRpcServerStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_OutRpcServerStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"ServerType\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"NumHubTotal\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"NumHubStandalone\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"NumHubStatic\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"NumHubDynamic\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"NumSessionsTotal\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"NumSessionsLocal\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"NumSessionsRemote\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"NumTcpConnections\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"NumTcpConnectionsLocal\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"NumTcpConnectionsRemote\00", align 1
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
define dso_local void @OutRpcServerStatus(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp eq %struct.TYPE_3__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %130

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 23
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PackAddInt(i32* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 22
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PackAddInt(i32* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 21
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @PackAddInt(i32* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 20
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PackAddInt(i32* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 19
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PackAddInt(i32* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 18
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PackAddInt(i32* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 17
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PackAddInt(i32* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 16
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PackAddInt(i32* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 15
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PackAddInt(i32* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 14
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PackAddInt(i32* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 13
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PackAddInt(i32* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 12
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PackAddInt(i32* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 11
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @PackAddInt(i32* %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @PackAddInt(i32* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @PackAddInt(i32* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PackAddTime64(i32* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %90)
  %92 = load i32*, i32** %3, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @PackAddInt64(i32* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %95)
  %97 = load i32*, i32** %3, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @PackAddInt(i32* %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 %100)
  %102 = load i32*, i32** %3, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @PackAddInt(i32* %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %3, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @PackAddInt(i32* %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 %110)
  %112 = load i32*, i32** %3, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @PackAddInt(i32* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @PackAddTime64(i32* %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 %120)
  %122 = load i32*, i32** %3, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = call i32 @OutRpcTraffic(i32* %122, i32* %124)
  %126 = load i32*, i32** %3, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = call i32 @OutRpcMemInfo(i32* %126, i32* %128)
  br label %130

130:                                              ; preds = %11, %10
  ret void
}

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #1

declare dso_local i32 @PackAddTime64(i32*, i8*, i32) #1

declare dso_local i32 @PackAddInt64(i32*, i8*, i32) #1

declare dso_local i32 @OutRpcTraffic(i32*, i32*) #1

declare dso_local i32 @OutRpcMemInfo(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
