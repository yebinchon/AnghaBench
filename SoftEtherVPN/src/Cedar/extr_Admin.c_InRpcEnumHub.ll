; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcEnumHub.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcEnumHub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Online\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"HubType\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"NumSessions\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"NumUsers\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"NumGroups\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"NumMacTables\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"NumIpTables\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"LastCommTime\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"CreatedTime\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"LastLoginTime\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"NumLogin\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"IsTrafficFilled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcEnumHub(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = icmp eq %struct.TYPE_7__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %116

13:                                               ; preds = %9
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @Zero(%struct.TYPE_7__* %14, i32 16)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @PackGetIndexCount(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 112, %23
  %25 = trunc i64 %24 to i32
  %26 = call %struct.TYPE_6__* @ZeroMalloc(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %28, align 8
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %113, %13
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %116

36:                                               ; preds = %29
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %40
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %6, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 13
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @PackGetStrEx(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %45, i32 4, i64 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i8* @PackGetBoolEx(i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 12
  store i8* %50, i8** %52, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i8* @PackGetIntEx(i32* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 11
  store i8* %55, i8** %57, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i8* @PackGetIntEx(i32* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 10
  store i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i8* @PackGetIntEx(i32* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 9
  store i8* %65, i8** %67, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i8* @PackGetIntEx(i32* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 8
  store i8* %70, i8** %72, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i8* @PackGetIntEx(i32* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i64 %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i8* @PackGetIntEx(i32* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i8* @PackGetInt64Ex(i32* %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i64 %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = load i64, i64* %5, align 8
  %90 = call i8* @PackGetInt64Ex(i32* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i8* @PackGetInt64Ex(i32* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i64 %94)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = load i64, i64* %5, align 8
  %100 = call i8* @PackGetIntEx(i32* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i64 %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = load i64, i64* %5, align 8
  %105 = call i8* @PackGetBoolEx(i32* %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i64 %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32*, i32** %4, align 8
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @InRpcTrafficEx(i32* %109, i32* %110, i64 %111)
  br label %113

113:                                              ; preds = %36
  %114 = load i64, i64* %5, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %5, align 8
  br label %29

116:                                              ; preds = %12, %29
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @PackGetIndexCount(i32*, i8*) #1

declare dso_local %struct.TYPE_6__* @ZeroMalloc(i32) #1

declare dso_local i32 @PackGetStrEx(i32*, i8*, i32, i32, i64) #1

declare dso_local i8* @PackGetBoolEx(i32*, i8*, i64) #1

declare dso_local i8* @PackGetIntEx(i32*, i8*, i64) #1

declare dso_local i8* @PackGetInt64Ex(i32*, i8*, i64) #1

declare dso_local i32 @InRpcTrafficEx(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
