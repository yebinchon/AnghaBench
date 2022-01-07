; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledDeleteSession.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledDeleteSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@MAX_SESSION_NAME_LEN = common dso_local global i32 0, align 4
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SessionName\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiCalledDeleteSession(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @MAX_SESSION_NAME_LEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = icmp eq %struct.TYPE_8__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %2
  store i32 1, i32* %10, align 4
  br label %83

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = trunc i64 %18 to i32
  %29 = call i32 @PackGetStr(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %10, align 4
  br label %83

32:                                               ; preds = %26
  %33 = load i32*, i32** %4, align 8
  %34 = trunc i64 %13 to i32
  %35 = call i32 @PackGetStr(i32* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  br label %83

38:                                               ; preds = %32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @LockHubList(i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @GetHub(i32 %45, i8* %19)
  store i32* %46, i32** %8, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @UnlockHubList(i32 %49)
  %51 = load i32*, i32** %8, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  store i32 1, i32* %10, align 4
  br label %83

54:                                               ; preds = %38
  %55 = load i32*, i32** %8, align 8
  %56 = call %struct.TYPE_7__* @GetSessionByName(i32* %55, i8* %15)
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %9, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = icmp ne %struct.TYPE_7__* %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %76 = call i32 @StopSession(%struct.TYPE_7__* %75)
  br label %77

77:                                               ; preds = %74, %69, %64, %59
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = call i32 @ReleaseSession(%struct.TYPE_7__* %78)
  br label %80

80:                                               ; preds = %77, %54
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @ReleaseHub(i32* %81)
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %80, %53, %37, %31, %25
  %84 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %10, align 4
  switch i32 %85, label %87 [
    i32 0, label %86
    i32 1, label %86
  ]

86:                                               ; preds = %83, %83
  ret void

87:                                               ; preds = %83
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PackGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i32 @LockHubList(i32) #2

declare dso_local i32* @GetHub(i32, i8*) #2

declare dso_local i32 @UnlockHubList(i32) #2

declare dso_local %struct.TYPE_7__* @GetSessionByName(i32*, i8*) #2

declare dso_local i32 @StopSession(%struct.TYPE_7__*) #2

declare dso_local i32 @ReleaseSession(%struct.TYPE_7__*) #2

declare dso_local i32 @ReleaseHub(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
