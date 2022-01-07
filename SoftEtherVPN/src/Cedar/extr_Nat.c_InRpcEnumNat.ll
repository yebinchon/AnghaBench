; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_InRpcEnumNat.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_InRpcEnumNat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"NumItem\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Id\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Protocol\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SrcIp\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"SrcHost\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"SrcPort\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"DestIp\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"DestHost\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"DestPort\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"CreatedTime\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"LastCommTime\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"SendSize\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"RecvSize\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"TcpStatus\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcEnumNat(%struct.TYPE_7__* %0, i32* %1) #0 {
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
  br label %117

13:                                               ; preds = %9
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @Zero(%struct.TYPE_7__* %14, i32 24)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @PackGetInt(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @PackGetStr(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 4)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 104, %28
  %30 = trunc i64 %29 to i32
  %31 = call %struct.TYPE_6__* @ZeroMalloc(i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %33, align 8
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %114, %13
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %35, %39
  br i1 %40, label %41, label %117

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
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 12
  store i8* %49, i8** %51, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i8* @PackGetIntEx(i32* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 11
  store i8* %54, i8** %56, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i8* @PackGetIntEx(i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 10
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @PackGetStrEx(i32* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %65, i32 4, i64 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i8* @PackGetIntEx(i32* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 8
  store i8* %70, i8** %72, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i8* @PackGetIntEx(i32* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64 %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @PackGetStrEx(i32* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %81, i32 4, i64 %82)
  %84 = load i32*, i32** %4, align 8
  %85 = load i64, i64* %5, align 8
  %86 = call i8* @PackGetIntEx(i32* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i64 %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i8* @PackGetInt64Ex(i32* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = load i64, i64* %5, align 8
  %96 = call i8* @PackGetInt64Ex(i32* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i64 %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = load i64, i64* %5, align 8
  %101 = call i8* @PackGetInt64Ex(i32* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i64 %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = load i64, i64* %5, align 8
  %106 = call i8* @PackGetInt64Ex(i32* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i64 %105)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = load i64, i64* %5, align 8
  %111 = call i8* @PackGetIntEx(i32* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i64 %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %41
  %115 = load i64, i64* %5, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %5, align 8
  br label %34

117:                                              ; preds = %12, %34
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @PackGetInt(i32*, i8*) #1

declare dso_local i32 @PackGetStr(i32*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @ZeroMalloc(i32) #1

declare dso_local i8* @PackGetIntEx(i32*, i8*, i64) #1

declare dso_local i32 @PackGetStrEx(i32*, i8*, i32, i32, i64) #1

declare dso_local i8* @PackGetInt64Ex(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
