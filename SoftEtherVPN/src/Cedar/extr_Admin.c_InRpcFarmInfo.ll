; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcFarmInfo.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcFarmInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i8*, i8*, %struct.TYPE_5__*, i32, i32*, i8*, i32, i32, i32, i32, i8* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"Id\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Controller\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ConnectedTime\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Ip\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Hostname\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Ports\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"ServerCert\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"DynamicHub\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"NumSessions\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"NumTcpConnections\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcFarmInfo(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = icmp eq %struct.TYPE_6__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %134

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = call i32 @Zero(%struct.TYPE_6__* %10, i32 88)
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @PackGetInt(i32* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 13
  store i8* %13, i8** %15, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @PackGetBool(i32* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 12
  store i32 %17, i32* %19, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @PackGetInt64(i32* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 11
  store i32 %21, i32* %23, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @PackGetIp32(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PackGetStr(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %31, i32 4)
  %33 = load i32*, i32** %4, align 8
  %34 = call i8* @PackGetInt(i32* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 8
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i8* @PackGetIndexCount(i32* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 8, %45
  %47 = trunc i64 %46 to i32
  %48 = call i8* @ZeroMalloc(i32 %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 7
  store i32* %49, i32** %51, align 8
  store i64 0, i64* %5, align 8
  br label %52

52:                                               ; preds = %68, %9
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %53, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = load i32*, i32** %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @PackGetIntEx(i32* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 7
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %62, i32* %67, align 4
  br label %68

68:                                               ; preds = %59
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %5, align 8
  br label %52

71:                                               ; preds = %52
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @PackGetX(i32* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i8* @PackGetIndexCount(i32* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 4, %84
  %86 = trunc i64 %85 to i32
  %87 = call i8* @ZeroMalloc(i32 %86)
  %88 = bitcast i8* %87 to %struct.TYPE_5__*
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 5
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %90, align 8
  store i64 0, i64* %5, align 8
  br label %91

91:                                               ; preds = %118, %71
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ult i64 %92, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %91
  %99 = load i32*, i32** %4, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i64, i64* %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @PackGetStrEx(i32* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %106, i32 4, i64 %107)
  %109 = load i32*, i32** %4, align 8
  %110 = load i64, i64* %5, align 8
  %111 = call i32 @PackGetBoolEx(i32* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i64 %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load i64, i64* %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i32 %111, i32* %117, align 4
  br label %118

118:                                              ; preds = %98
  %119 = load i64, i64* %5, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %5, align 8
  br label %91

121:                                              ; preds = %91
  %122 = load i32*, i32** %4, align 8
  %123 = call i8* @PackGetInt(i32* %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = call i8* @PackGetInt(i32* %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load i32*, i32** %4, align 8
  %131 = call i8* @PackGetInt(i32* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  br label %134

134:                                              ; preds = %121, %8
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @PackGetInt(i32*, i8*) #1

declare dso_local i32 @PackGetBool(i32*, i8*) #1

declare dso_local i32 @PackGetInt64(i32*, i8*) #1

declare dso_local i32 @PackGetIp32(i32*, i8*) #1

declare dso_local i32 @PackGetStr(i32*, i8*, i32, i32) #1

declare dso_local i8* @PackGetIndexCount(i32*, i8*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @PackGetIntEx(i32*, i8*, i64) #1

declare dso_local i32 @PackGetX(i32*, i8*) #1

declare dso_local i32 @PackGetStrEx(i32*, i8*, i32, i32, i64) #1

declare dso_local i32 @PackGetBoolEx(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
