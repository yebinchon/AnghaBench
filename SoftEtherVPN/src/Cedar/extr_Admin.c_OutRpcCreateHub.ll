; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_OutRpcCreateHub.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_OutRpcCreateHub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"HashedPassword\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"SecurePassword\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Online\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"AdminPasswordPlainText\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"HubType\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OutRpcCreateHub(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp eq %struct.TYPE_3__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %46

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PackAddStr(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PackAddData(i32* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 4)
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @PackAddData(i32* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 4)
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PackAddBool(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PackAddStr(i32* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = call i32 @OutRpcHubOption(i32* %37, i32* %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PackAddInt(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @PackAddStr(i32*, i8*, i32) #1

declare dso_local i32 @PackAddData(i32*, i8*, i32, i32) #1

declare dso_local i32 @PackAddBool(i32*, i8*, i32) #1

declare dso_local i32 @OutRpcHubOption(i32*, i32*) #1

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
