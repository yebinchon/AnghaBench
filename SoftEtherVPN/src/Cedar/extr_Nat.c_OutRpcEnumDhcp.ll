; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_OutRpcEnumDhcp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_OutRpcEnumDhcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"NumItem\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DhcpTable\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Id\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"LeasedTime\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ExpireTime\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"MacAddress\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"IpAddress\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Hostname\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OutRpcEnumDhcp(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %107

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @PackAddInt(i32* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @PackAddStr(i32* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @PackSetCurrentJsonGroupName(i32* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %26

26:                                               ; preds = %101, %13
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %104

32:                                               ; preds = %26
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %6, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @PackAddIntEx(i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %41, i64 %42, i64 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @PackAddTime64Ex(i32* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %50, i64 %51, i64 %54)
  %56 = load i32*, i32** %3, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @PackAddTime64Ex(i32* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %59, i64 %60, i64 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @PackAddDataEx(i32* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %68, i32 6, i64 %69, i64 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %5, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @PackAddIp32Ex(i32* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %77, i64 %78, i64 %81)
  %83 = load i32*, i32** %3, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* %5, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @PackAddIntEx(i32* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %86, i64 %87, i64 %90)
  %92 = load i32*, i32** %3, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %5, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @PackAddStrEx(i32* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %95, i64 %96, i64 %99)
  br label %101

101:                                              ; preds = %32
  %102 = load i64, i64* %5, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %5, align 8
  br label %26

104:                                              ; preds = %26
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @PackSetCurrentJsonGroupName(i32* %105, i8* null)
  br label %107

107:                                              ; preds = %104, %12
  ret void
}

declare dso_local i32 @PackAddInt(i32*, i8*, i64) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i32) #1

declare dso_local i32 @PackSetCurrentJsonGroupName(i32*, i8*) #1

declare dso_local i32 @PackAddIntEx(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddTime64Ex(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddDataEx(i32*, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @PackAddIp32Ex(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddStrEx(i32*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
