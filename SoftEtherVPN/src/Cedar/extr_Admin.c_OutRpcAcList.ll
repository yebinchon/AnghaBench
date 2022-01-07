; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_OutRpcAcList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_OutRpcAcList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"NumItem\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ACList\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Id\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Deny\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"IpAddress\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Masked\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"SubnetMask\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OutRpcAcList(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  br label %85

15:                                               ; preds = %11
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @LIST_NUM(i32* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @PackAddInt(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PackAddStr(i32* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @PackSetCurrentJsonGroupName(i32* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %31

31:                                               ; preds = %79, %15
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %82

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call %struct.TYPE_6__* @LIST_DATA(i32* %36, i64 %37)
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %8, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @PackAddIntEx(i32* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %42, i64 %43, i64 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @PackAddBoolEx(i32* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %49, i64 %50, i64 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @PackAddIpEx(i32* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %55, i64 %56, i64 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @PackAddBoolEx(i32* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %62, i64 %63, i64 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @PackAddIpEx(i32* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32* %68, i64 %69, i64 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @PackAddIntEx(i32* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %75, i64 %76, i64 %77)
  br label %79

79:                                               ; preds = %35
  %80 = load i64, i64* %5, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %5, align 8
  br label %31

82:                                               ; preds = %31
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @PackSetCurrentJsonGroupName(i32* %83, i8* null)
  br label %85

85:                                               ; preds = %82, %14
  ret void
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i32 @PackAddInt(i32*, i8*, i64) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i32) #1

declare dso_local i32 @PackSetCurrentJsonGroupName(i32*, i8*) #1

declare dso_local %struct.TYPE_6__* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @PackAddIntEx(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddBoolEx(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddIpEx(i32*, i8*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
