; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Link.c_LinkServerSessionThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Link.c_LinkServerSessionThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@CONNECTION_HUB_LINK_SERVER = common dso_local global i32 0, align 4
@LINK_USER_NAME = common dso_local global i32 0, align 4
@LINK_USER_NAME_PRINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"LH_LINK_START\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"LH_LINK_STOP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LinkServerSessionThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %5, align 8
  %14 = load i32, i32* @MAX_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %2
  store i32 1, i32* %11, align 4
  br label %97

24:                                               ; preds = %20
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call %struct.TYPE_14__* @NewServerConnection(i32 %27, i32* null, i32* %28)
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %6, align 8
  %30 = load i32, i32* @CONNECTION_HUB_LINK_SERVER, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = call i32* @ZeroMalloc(i32 4)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @Copy(i32* %34, i32 %37, i32 4)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @LINK_USER_NAME, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = call %struct.TYPE_12__* @NewServerSession(i32 %41, %struct.TYPE_14__* %42, i32 %45, i32 %46, i32* %47)
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %7, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 5
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %56, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = call i32 @ReleaseConnection(%struct.TYPE_14__* %57)
  %59 = load i32, i32* @LINK_USER_NAME_PRINT, align 4
  %60 = call i32 @CopyStr(i32 %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @AddRef(i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @NoticeThreadInit(i32* %72)
  %74 = mul nuw i64 4, %15
  %75 = trunc i64 %74 to i32
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @UniStrCpy(i32* %17, i32 %75, i32 %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32, i8*, i32*, ...) @HLog(i32 %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %17, i32 %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %90 = call i32 @SessionMain(%struct.TYPE_12__* %89)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32, i8*, i32*, ...) @HLog(i32 %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %17)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %96 = call i32 @ReleaseSession(%struct.TYPE_12__* %95)
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %24, %23
  %98 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %11, align 4
  switch i32 %99, label %101 [
    i32 0, label %100
    i32 1, label %100
  ]

100:                                              ; preds = %97, %97
  ret void

101:                                              ; preds = %97
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_14__* @NewServerConnection(i32, i32*, i32*) #2

declare dso_local i32* @ZeroMalloc(i32) #2

declare dso_local i32 @Copy(i32*, i32, i32) #2

declare dso_local %struct.TYPE_12__* @NewServerSession(i32, %struct.TYPE_14__*, i32, i32, i32*) #2

declare dso_local i32 @ReleaseConnection(%struct.TYPE_14__*) #2

declare dso_local i32 @CopyStr(i32) #2

declare dso_local i32 @AddRef(i32) #2

declare dso_local i32 @NoticeThreadInit(i32*) #2

declare dso_local i32 @UniStrCpy(i32*, i32, i32) #2

declare dso_local i32 @HLog(i32, i8*, i32*, ...) #2

declare dso_local i32 @SessionMain(%struct.TYPE_12__*) #2

declare dso_local i32 @ReleaseSession(%struct.TYPE_12__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
