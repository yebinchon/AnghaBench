; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Bridge.c_BrBridgeThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Bridge.c_BrBridgeThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@CONNECTION_HUB_BRIDGE = common dso_local global i32 0, align 4
@BRIDGE_USER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"LH_START_BRIDGE\00", align 1
@BRIDGE_USER_NAME_PRINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Bridge %s Start.\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Bridge %s Stop.\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"LH_STOP_BRIDGE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BrBridgeThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* @MAX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  store i32 1, i32* %11, align 4
  br label %108

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %5, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call %struct.TYPE_16__* @NewServerConnection(i32 %27, i32* null, i32* %28)
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %6, align 8
  %30 = load i32, i32* @CONNECTION_HUB_BRIDGE, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = load i32, i32* @BRIDGE_USER_NAME, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.TYPE_14__* @NewServerSession(i32 %35, %struct.TYPE_16__* %36, %struct.TYPE_15__* %39, i32 %40, i32 %43)
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %7, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @HLog(%struct.TYPE_15__* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %55)
  %57 = trunc i64 %13 to i32
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @StrCpy(i8* %15, i32 %57, i32 %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %8, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @AddRef(i32 %67)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  store %struct.TYPE_17__* %71, %struct.TYPE_17__** %73, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %76, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %78 = call i32 @ReleaseConnection(%struct.TYPE_16__* %77)
  %79 = load i32, i32* @BRIDGE_USER_NAME_PRINT, align 4
  %80 = call i32 @CopyStr(i32 %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %85, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @AddRef(i32 %88)
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @NoticeThreadInit(i32* %90)
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @Debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %97 = call i32 @SessionMain(%struct.TYPE_14__* %96)
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @Debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %103 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @HLog(%struct.TYPE_15__* %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %105 = call i32 @ReleaseHub(%struct.TYPE_15__* %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %107 = call i32 @ReleaseSession(%struct.TYPE_14__* %106)
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %22, %21
  %109 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %11, align 4
  switch i32 %110, label %112 [
    i32 0, label %111
    i32 1, label %111
  ]

111:                                              ; preds = %108, %108
  ret void

112:                                              ; preds = %108
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_16__* @NewServerConnection(i32, i32*, i32*) #2

declare dso_local %struct.TYPE_14__* @NewServerSession(i32, %struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32) #2

declare dso_local i32 @HLog(%struct.TYPE_15__*, i8*, i8*, ...) #2

declare dso_local i32 @StrCpy(i8*, i32, i32) #2

declare dso_local i32 @AddRef(i32) #2

declare dso_local i32 @ReleaseConnection(%struct.TYPE_16__*) #2

declare dso_local i32 @CopyStr(i32) #2

declare dso_local i32 @NoticeThreadInit(i32*) #2

declare dso_local i32 @Debug(i8*, i32) #2

declare dso_local i32 @SessionMain(%struct.TYPE_14__*) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_15__*) #2

declare dso_local i32 @ReleaseSession(%struct.TYPE_14__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
