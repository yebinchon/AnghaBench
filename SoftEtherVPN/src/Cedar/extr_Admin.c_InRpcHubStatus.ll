; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcHubStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcHubStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Online\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"HubType\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"NumSessions\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"NumSessionsClient\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"NumSessionsBridge\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"NumAccessLists\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"NumUsers\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"NumGroups\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"NumMacTables\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"NumIpTables\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"SecureNATEnabled\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"LastCommTime\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"CreatedTime\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"LastLoginTime\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"NumLogin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcHubStatus(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = call i32 @Zero(%struct.TYPE_4__* %5, i32 136)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = icmp eq %struct.TYPE_4__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %83

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 16
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @PackGetStr(i32* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17, i32 4)
  %19 = load i32*, i32** %4, align 8
  %20 = call i8* @PackGetBool(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 15
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @PackGetInt(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 14
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i8* @PackGetInt(i32* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 13
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i8* @PackGetInt(i32* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 12
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i8* @PackGetInt(i32* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i8* @PackGetInt(i32* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 10
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i8* @PackGetInt(i32* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 9
  store i8* %44, i8** %46, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i8* @PackGetInt(i32* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 8
  store i8* %48, i8** %50, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i8* @PackGetInt(i32* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 7
  store i8* %52, i8** %54, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i8* @PackGetInt(i32* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = call i8* @PackGetBool(i32* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @InRpcTraffic(i32* %64, i32* %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i8* @PackGetInt64(i32* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i8* @PackGetInt64(i32* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = call i8* @PackGetInt64(i32* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i8* @PackGetInt(i32* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @PackGetStr(i32*, i8*, i32, i32) #1

declare dso_local i8* @PackGetBool(i32*, i8*) #1

declare dso_local i8* @PackGetInt(i32*, i8*) #1

declare dso_local i32 @InRpcTraffic(i32*, i32*) #1

declare dso_local i8* @PackGetInt64(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
