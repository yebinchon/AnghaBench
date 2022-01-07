; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_OutRpcClientGetAccount.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_OutRpcClientGetAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"AccountName\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"StartupAccount\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"CheckServerCert\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"RetryOnServerCert\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ServerCert\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ShortcutKey\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"CreateDateTime\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"UpdateDateTime\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"LastConnectDateTime\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OutRpcClientGetAccount(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  br label %83

12:                                               ; preds = %8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @PackAddUniStr(i32* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @PackAddInt(i32* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PackAddInt(i32* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PackAddInt(i32* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %12
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = call i32* @XToBuf(i32* %40, i32 0)
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @PackAddBuf(i32* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @FreeBuf(i32* %48)
  br label %50

50:                                               ; preds = %44, %37
  br label %51

51:                                               ; preds = %50, %12
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @OutRpcClientOption(i32* %52, i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @OutRpcClientAuth(i32* %57, i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SHA1_SIZE, align 4
  %67 = call i32 @PackAddData(i32* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @PackAddTime64(i32* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @PackAddTime64(i32* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %3, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @PackAddTime64(i32* %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %51, %11
  ret void
}

declare dso_local i32 @PackAddUniStr(i32*, i8*, i32) #1

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #1

declare dso_local i32* @XToBuf(i32*, i32) #1

declare dso_local i32 @PackAddBuf(i32*, i8*, i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @OutRpcClientOption(i32*, i32) #1

declare dso_local i32 @OutRpcClientAuth(i32*, i32) #1

declare dso_local i32 @PackAddData(i32*, i8*, i32, i32) #1

declare dso_local i32 @PackAddTime64(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
