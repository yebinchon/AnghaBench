; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CncCheckCert.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CncCheckCert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"check_cert\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"AccountName\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ServerName\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"parent_x\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"old_x\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"DiffWarning\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"Ok\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"SaveServerCert\00", align 1
@CncCheckCertHaltThread = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CncCheckCert(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = icmp eq %struct.TYPE_7__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  br label %123

15:                                               ; preds = %11
  %16 = call i32* (...) @CncConnect()
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %123

20:                                               ; preds = %15
  %21 = call i32* (...) @NewPack()
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @PackAddStr(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PackAddUniStr(i32* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @PackAddStr(i32* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @PackAddX(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PackAddX(i32* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PackAddX(i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @PackAddBool(i32* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @PackAddBool(i32* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @PackAddBool(i32* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %62)
  %64 = load i32*, i32** %5, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @SendPack(i32* %64, i32* %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @FreePack(i32* %67)
  %69 = call %struct.TYPE_8__* @ZeroMalloc(i32 24)
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %7, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  store i32* %70, i32** %72, align 8
  %73 = call i32 (...) @NewEvent()
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  store i32* %76, i32** %78, align 8
  %79 = load i32, i32* @CncCheckCertHaltThread, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = call i32* @NewThread(i32 %79, %struct.TYPE_8__* %80)
  store i32* %81, i32** %8, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = call i32* @RecvPack(i32* %82)
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %101

86:                                               ; preds = %20
  %87 = load i32*, i32** %6, align 8
  %88 = call i8* @PackGetBool(i32* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call i8* @PackGetBool(i32* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i8* @PackGetBool(i32* %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @FreePack(i32* %99)
  br label %101

101:                                              ; preds = %86, %20
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @Set(i32 %106)
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* @INFINITE, align 4
  %110 = call i32 @WaitThread(i32* %108, i32 %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ReleaseEvent(i32 %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %116 = call i32 @Free(%struct.TYPE_8__* %115)
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @ReleaseThread(i32* %117)
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @Disconnect(i32* %119)
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @ReleaseSock(i32* %121)
  br label %123

123:                                              ; preds = %101, %19, %14
  ret void
}

declare dso_local i32* @CncConnect(...) #1

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #1

declare dso_local i32 @PackAddUniStr(i32*, i8*, i32) #1

declare dso_local i32 @PackAddX(i32*, i8*, i32) #1

declare dso_local i32 @PackAddBool(i32*, i8*, i8*) #1

declare dso_local i32 @SendPack(i32*, i32*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local %struct.TYPE_8__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewEvent(...) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_8__*) #1

declare dso_local i32* @RecvPack(i32*) #1

declare dso_local i8* @PackGetBool(i32*, i8*) #1

declare dso_local i32 @Set(i32) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @ReleaseEvent(i32) #1

declare dso_local i32 @Free(%struct.TYPE_8__*) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i32 @Disconnect(i32*) #1

declare dso_local i32 @ReleaseSock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
