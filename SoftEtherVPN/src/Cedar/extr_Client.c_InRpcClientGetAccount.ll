; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_InRpcClientGetAccount.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_InRpcClientGetAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"AccountName\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"StartupAccount\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"CheckServerCert\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"RetryOnServerCert\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ServerCert\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"CreateDateTime\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"UpdateDateTime\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"LastConnectDateTime\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ShortcutKey\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcClientGetAccount(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  br label %87

12:                                               ; preds = %8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = call i32 @Zero(%struct.TYPE_4__* %13, i32 64)
  %15 = call i8* @ZeroMalloc(i32 4)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 8
  store i8* %15, i8** %17, align 8
  %18 = call i8* @ZeroMalloc(i32 4)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 7
  store i8* %18, i8** %20, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PackGetUniStr(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %24, i32 4)
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @PackGetInt(i32* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @PackGetInt(i32* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @PackGetInt(i32* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i32* @PackGetBuf(i32* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %12
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @BufToX(i32* %52, i32 0)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 9
  store i32 %53, i32* %55, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @FreeBuf(i32* %56)
  br label %58

58:                                               ; preds = %51, %12
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @InRpcClientOption(i8* %61, i32* %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 7
  %66 = load i8*, i8** %65, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @InRpcClientAuth(i8* %66, i32* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i8* @PackGetInt64(i32* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = call i8* @PackGetInt64(i32* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i8* @PackGetInt64(i32* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SHA1_SIZE, align 4
  %86 = call i32 @PackGetData2(i32* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %58, %11
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @PackGetUniStr(i32*, i8*, i32, i32) #1

declare dso_local i64 @PackGetInt(i32*, i8*) #1

declare dso_local i32* @PackGetBuf(i32*, i8*) #1

declare dso_local i32 @BufToX(i32*, i32) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @InRpcClientOption(i8*, i32*) #1

declare dso_local i32 @InRpcClientAuth(i8*, i32*) #1

declare dso_local i8* @PackGetInt64(i32*, i8*) #1

declare dso_local i32 @PackGetData2(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
