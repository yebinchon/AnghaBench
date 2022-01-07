; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_InRpcClientVersion.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_InRpcClientVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"ClientProductName\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ClientVersionString\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ClientBuildInfoString\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ClientVerInt\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ClientBuildInt\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ProcessId\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"OsType\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"IsVLanNameRegulated\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"IsVgcSupported\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ShowVgcLink\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"ClientId\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcClientVersion(%struct.TYPE_4__* %0, i32* %1) #0 {
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
  br label %62

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 @Zero(%struct.TYPE_4__* %12, i32 80)
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @PackGetStr(i32* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17, i32 4)
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PackGetStr(i32* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 4)
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PackGetStr(i32* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 4)
  %29 = load i32*, i32** %4, align 8
  %30 = call i8* @PackGetInt(i32* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i8* @PackGetInt(i32* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i8* @PackGetInt(i32* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @PackGetInt(i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i8* @PackGetBool(i32* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i8* @PackGetBool(i32* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i8* @PackGetBool(i32* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PackGetStr(i32* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %60, i32 4)
  br label %62

62:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @PackGetStr(i32*, i8*, i32, i32) #1

declare dso_local i8* @PackGetInt(i32*, i8*) #1

declare dso_local i8* @PackGetBool(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
