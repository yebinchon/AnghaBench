; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_OutRpcEnumFarm.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_OutRpcEnumFarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"FarmMemberList\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Id\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Controller\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ConnectedTime\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"Ip\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Hostname\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"NumSessions\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"NumTcpConnections\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"NumHubs\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"AssignedClientLicense\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"AssignedBridgeLicense\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OutRpcEnumFarm(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = icmp eq %struct.TYPE_5__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %133

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @PackSetCurrentJsonGroupName(i32* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %127, %13
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %130

22:                                               ; preds = %16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %6, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @PackAddIntEx(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 %32, i64 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @PackAddBoolEx(i32* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %40, i64 %41, i64 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @PackAddTime64Ex(i32* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %49, i64 %50, i64 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @PackAddIp32Ex(i32* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %58, i64 %59, i64 %62)
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @PackAddStrEx(i32* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %67, i64 %68, i64 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @PackAddIntEx(i32* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %76, i64 %77, i64 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @PackAddIntEx(i32* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %85, i64 %86, i64 %89)
  %91 = load i32*, i32** %3, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @PackAddIntEx(i32* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %94, i64 %95, i64 %98)
  %100 = load i32*, i32** %3, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %5, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @PackAddIntEx(i32* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %103, i64 %104, i64 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %5, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @PackAddIntEx(i32* %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %112, i64 %113, i64 %116)
  %118 = load i32*, i32** %3, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %5, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @PackAddIntEx(i32* %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %121, i64 %122, i64 %125)
  br label %127

127:                                              ; preds = %22
  %128 = load i64, i64* %5, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %5, align 8
  br label %16

130:                                              ; preds = %16
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @PackSetCurrentJsonGroupName(i32* %131, i8* null)
  br label %133

133:                                              ; preds = %130, %12
  ret void
}

declare dso_local i32 @PackSetCurrentJsonGroupName(i32*, i8*) #1

declare dso_local i32 @PackAddIntEx(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddBoolEx(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddTime64Ex(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddIp32Ex(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddStrEx(i32*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
