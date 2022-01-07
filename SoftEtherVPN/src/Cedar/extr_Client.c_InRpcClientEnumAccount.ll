; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_InRpcClientEnumAccount.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_InRpcClientEnumAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"NumItem\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"AccountName\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"UserName\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ServerName\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ProxyName\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"DeviceName\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ProxyType\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"StartupAccount\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Connected\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Port\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"CreateDateTime\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"UpdateDateTime\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"LastConnectDateTime\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcClientEnumAccount(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %130

13:                                               ; preds = %9
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = call i32 @Zero(%struct.TYPE_6__* %14, i32 16)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @PackGetNum(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 8, %23
  %25 = trunc i64 %24 to i32
  %26 = call i8* @ZeroMalloc(i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_5__**
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store %struct.TYPE_5__** %27, %struct.TYPE_5__*** %29, align 8
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %127, %13
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %130

37:                                               ; preds = %30
  %38 = call i8* @ZeroMalloc(i32 88)
  %39 = bitcast i8* %38 to %struct.TYPE_5__*
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %42, i64 %43
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %44, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %6, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 13
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @PackGetUniStrEx(i32* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 4, i64 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 12
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @PackGetStrEx(i32* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 4, i64 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @PackGetStrEx(i32* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 4, i64 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @PackGetStrEx(i32* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %66, i32 4, i64 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @PackGetStrEx(i32* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 4, i64 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i8* @PackGetIntEx(i32* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 8
  store i8* %77, i8** %79, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i8* @PackGetIntEx(i32* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64 %81)
  %83 = icmp ne i8* %82, null
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = load i64, i64* %5, align 8
  %90 = call i8* @PackGetIntEx(i32* %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64 %89)
  %91 = icmp ne i8* %90, null
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 1, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @PackGetBoolEx(i32* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i64 %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = load i64, i64* %5, align 8
  %103 = call i8* @PackGetIntEx(i32* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* %5, align 8
  %111 = call i32 @PackGetStrEx(i32* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %109, i32 4, i64 %110)
  %112 = load i32*, i32** %4, align 8
  %113 = load i64, i64* %5, align 8
  %114 = call i8* @PackGetInt64Ex(i32* %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i64 %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  %117 = load i32*, i32** %4, align 8
  %118 = load i64, i64* %5, align 8
  %119 = call i8* @PackGetInt64Ex(i32* %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i64 %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = load i64, i64* %5, align 8
  %124 = call i8* @PackGetInt64Ex(i32* %122, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i64 %123)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %37
  %128 = load i64, i64* %5, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %5, align 8
  br label %30

130:                                              ; preds = %12, %30
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @PackGetNum(i32*, i8*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @PackGetUniStrEx(i32*, i8*, i32, i32, i64) #1

declare dso_local i32 @PackGetStrEx(i32*, i8*, i32, i32, i64) #1

declare dso_local i8* @PackGetIntEx(i32*, i8*, i64) #1

declare dso_local i32 @PackGetBoolEx(i32*, i8*, i64) #1

declare dso_local i8* @PackGetInt64Ex(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
