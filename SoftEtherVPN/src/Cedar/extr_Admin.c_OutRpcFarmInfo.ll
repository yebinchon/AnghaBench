; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_OutRpcFarmInfo.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_OutRpcFarmInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32, i32, %struct.TYPE_4__*, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"Id\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Controller\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ConnectedTime\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Ip\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Hostname\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Ports\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"ServerCert\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"HubsList\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"DynamicHub\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"NumSessions\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"NumTcpConnections\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OutRpcFarmInfo(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  br label %127

12:                                               ; preds = %8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 13
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @PackAddInt(i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @PackAddBool(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PackAddTime64(i32* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PackAddIp32(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PackAddStr(i32* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PackAddInt(i32* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  store i64 0, i64* %5, align 8
  br label %43

43:                                               ; preds = %62, %12
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 7
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @PackAddIntEx(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %56, i64 %57, i64 %60)
  br label %62

62:                                               ; preds = %49
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %5, align 8
  br label %43

65:                                               ; preds = %43
  %66 = load i32*, i32** %3, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @PackAddX(i32* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @PackSetCurrentJsonGroupName(i32* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %73

73:                                               ; preds = %106, %65
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %109

79:                                               ; preds = %73
  %80 = load i32*, i32** %3, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %5, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @PackAddStrEx(i32* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %87, i64 %88, i64 %91)
  %93 = load i32*, i32** %3, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 5
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %5, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @PackAddBoolEx(i32* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %100, i64 %101, i64 %104)
  br label %106

106:                                              ; preds = %79
  %107 = load i64, i64* %5, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %5, align 8
  br label %73

109:                                              ; preds = %73
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @PackSetCurrentJsonGroupName(i32* %110, i8* null)
  %112 = load i32*, i32** %3, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @PackAddInt(i32* %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @PackAddInt(i32* %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %120)
  %122 = load i32*, i32** %3, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @PackAddInt(i32* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %109, %11
  ret void
}

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #1

declare dso_local i32 @PackAddBool(i32*, i8*, i32) #1

declare dso_local i32 @PackAddTime64(i32*, i8*, i32) #1

declare dso_local i32 @PackAddIp32(i32*, i8*, i32) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i32) #1

declare dso_local i32 @PackAddIntEx(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddX(i32*, i8*, i32) #1

declare dso_local i32 @PackSetCurrentJsonGroupName(i32*, i8*) #1

declare dso_local i32 @PackAddStrEx(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddBoolEx(i32*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
