; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_InRpcEnumDhcp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_InRpcEnumDhcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i8*, i32, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"NumItem\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Id\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"LeasedTime\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ExpireTime\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"MacAddress\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"IpAddress\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Hostname\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcEnumDhcp(%struct.TYPE_7__* %0, i32* %1) #0 {
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
  br label %87

13:                                               ; preds = %9
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @Zero(%struct.TYPE_7__* %14, i32 24)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @PackGetInt(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 48, %23
  %25 = trunc i64 %24 to i32
  %26 = call %struct.TYPE_6__* @ZeroMalloc(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %28, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PackGetStr(i32* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 4)
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %84, %13
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %35, %39
  br i1 %40, label %41, label %87

41:                                               ; preds = %34
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %45
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %6, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i8* @PackGetIntEx(i32* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i8* @PackGetInt64Ex(i32* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i8* @PackGetInt64Ex(i32* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @PackGetDataEx2(i32* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %65, i32 6, i64 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @PackGetIp32Ex(i32* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i8* @PackGetIntEx(i32* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @PackGetStrEx(i32* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %81, i32 4, i64 %82)
  br label %84

84:                                               ; preds = %41
  %85 = load i64, i64* %5, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %5, align 8
  br label %34

87:                                               ; preds = %12, %34
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @PackGetInt(i32*, i8*) #1

declare dso_local %struct.TYPE_6__* @ZeroMalloc(i32) #1

declare dso_local i32 @PackGetStr(i32*, i8*, i32, i32) #1

declare dso_local i8* @PackGetIntEx(i32*, i8*, i64) #1

declare dso_local i8* @PackGetInt64Ex(i32*, i8*, i64) #1

declare dso_local i32 @PackGetDataEx2(i32*, i8*, i32, i32, i64) #1

declare dso_local i32 @PackGetIp32Ex(i32*, i8*, i64) #1

declare dso_local i32 @PackGetStrEx(i32*, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
