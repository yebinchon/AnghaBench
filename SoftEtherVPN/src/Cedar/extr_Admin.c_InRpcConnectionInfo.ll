; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcConnectionInfo.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcConnectionInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Ip\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Port\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ConnectedTime\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Hostname\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ServerStr\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ClientStr\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ServerVer\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ServerBuild\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"ClientVer\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"ClientBuild\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcConnectionInfo(%struct.TYPE_4__* %0, i32* %1) #0 {
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
  br label %66

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 @Zero(%struct.TYPE_4__* %12, i32 72)
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PackGetStr(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %17, i32 4)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @PackGetIp32(i32* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @PackGetInt(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 9
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @PackGetInt64(i32* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PackGetStr(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %34, i32 4)
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PackGetStr(i32* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %39, i32 4)
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @PackGetStr(i32* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %44, i32 4)
  %46 = load i32*, i32** %4, align 8
  %47 = call i8* @PackGetInt(i32* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i8* @PackGetInt(i32* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i8* @PackGetInt(i32* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i8* @PackGetInt(i32* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i8* @PackGetInt(i32* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @PackGetStr(i32*, i8*, i32, i32) #1

declare dso_local i32 @PackGetIp32(i32*, i8*) #1

declare dso_local i8* @PackGetInt(i32*, i8*) #1

declare dso_local i32 @PackGetInt64(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
