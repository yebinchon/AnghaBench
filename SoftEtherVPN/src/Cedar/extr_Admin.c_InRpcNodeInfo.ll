; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcNodeInfo.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcNodeInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i8*, i8*, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"ClientProductName\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ServerProductName\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ClientOsName\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ClientOsVer\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ClientOsProductId\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ClientHostname\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"ServerHostname\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"ProxyHostname\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"UniqueId\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"ClientProductVer\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"ClientProductBuild\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"ServerProductVer\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"ServerProductBuild\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"ClientIpAddress\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"ClientIpAddress6\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"ClientPort\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"ServerIpAddress\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"ServerIpAddress6\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"ServerPort2\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"ProxyIpAddress\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"ProxyIpAddress6\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"ProxyPort\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcNodeInfo(%struct.TYPE_4__* %0, i32* %1) #0 {
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
  br label %119

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 @Zero(%struct.TYPE_4__* %12, i32 144)
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 22
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PackGetStr(i32* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17, i32 4)
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 21
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @PackGetStr(i32* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 4)
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 20
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PackGetStr(i32* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 4)
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 19
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PackGetStr(i32* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32 4)
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 18
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PackGetStr(i32* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %37, i32 4)
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 17
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PackGetStr(i32* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %42, i32 4)
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 16
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PackGetStr(i32* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %47, i32 4)
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 15
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PackGetStr(i32* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %52, i32 4)
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 14
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PackGetStr(i32* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %57, i32 4)
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 13
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PackGetData2(i32* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %62, i32 4)
  %64 = load i32*, i32** %4, align 8
  %65 = call i8* @PackGetInt(i32* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 12
  store i8* %65, i8** %67, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i8* @PackGetInt(i32* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 11
  store i8* %69, i8** %71, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = call i8* @PackGetInt(i32* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 10
  store i8* %73, i8** %75, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i8* @PackGetInt(i32* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 9
  store i8* %77, i8** %79, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i8* @PackGetIp32(i32* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 8
  store i8* %81, i8** %83, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @PackGetData2(i32* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %87, i32 4)
  %89 = load i32*, i32** %4, align 8
  %90 = call i8* @PackGetInt(i32* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 6
  store i8* %90, i8** %92, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = call i8* @PackGetIp32(i32* %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @PackGetData2(i32* %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 %100, i32 4)
  %102 = load i32*, i32** %4, align 8
  %103 = call i8* @PackGetInt(i32* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = call i8* @PackGetIp32(i32* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @PackGetData2(i32* %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 %113, i32 4)
  %115 = load i32*, i32** %4, align 8
  %116 = call i8* @PackGetInt(i32* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %11, %10
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @PackGetStr(i32*, i8*, i32, i32) #1

declare dso_local i32 @PackGetData2(i32*, i8*, i32, i32) #1

declare dso_local i8* @PackGetInt(i32*, i8*) #1

declare dso_local i8* @PackGetIp32(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
