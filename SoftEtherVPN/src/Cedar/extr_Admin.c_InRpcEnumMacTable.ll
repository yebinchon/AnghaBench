; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcEnumMacTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcEnumMacTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i8*, i8*, i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SessionName\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"MacAddress\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"VlanId\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"CreatedTime\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"UpdatedTime\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"RemoteItem\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"RemoteHostname\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcEnumMacTable(%struct.TYPE_7__* %0, i32* %1) #0 {
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
  br label %93

13:                                               ; preds = %9
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @Zero(%struct.TYPE_7__* %14, i32 24)
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @PackGetStr(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19, i32 4)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @PackGetIndexCount(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 48, %28
  %30 = trunc i64 %29 to i32
  %31 = call %struct.TYPE_6__* @ZeroMalloc(i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %33, align 8
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %90, %13
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %35, %39
  br i1 %40, label %41, label %93

41:                                               ; preds = %34
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %45
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %6, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i8* @PackGetIntEx(i32* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 7
  store i8* %49, i8** %51, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @PackGetStrEx(i32* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 4, i64 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @PackGetDataEx2(i32* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 4, i64 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i8* @PackGetIntEx(i32* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i8* @PackGetInt64Ex(i32* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i8* @PackGetInt64Ex(i32* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @PackGetBoolEx(i32* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i64 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @PackGetStrEx(i32* %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %87, i32 4, i64 %88)
  br label %90

90:                                               ; preds = %41
  %91 = load i64, i64* %5, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %5, align 8
  br label %34

93:                                               ; preds = %12, %34
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @PackGetStr(i32*, i8*, i32, i32) #1

declare dso_local i32 @PackGetIndexCount(i32*, i8*) #1

declare dso_local %struct.TYPE_6__* @ZeroMalloc(i32) #1

declare dso_local i8* @PackGetIntEx(i32*, i8*, i64) #1

declare dso_local i32 @PackGetStrEx(i32*, i8*, i32, i32, i64) #1

declare dso_local i32 @PackGetDataEx2(i32*, i8*, i32, i32, i64) #1

declare dso_local i8* @PackGetInt64Ex(i32*, i8*, i64) #1

declare dso_local i32 @PackGetBoolEx(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
