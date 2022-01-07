; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadLocalBridgeCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadLocalBridgeCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceName\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"TapMode\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"TapMacAddress\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"NoPromiscuousMode\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"MonitorMode\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"LimitBroadcast\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadLocalBridgeCfg(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [6 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32, i32* @MAX_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = load i32, i32* @MAX_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = icmp eq %struct.TYPE_7__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %2
  store i32 1, i32* %10, align 4
  br label %99

27:                                               ; preds = %23
  %28 = trunc i64 %15 to i32
  %29 = call i32 @Zero(i8* %17, i32 %28)
  %30 = trunc i64 %19 to i32
  %31 = call i32 @Zero(i8* %20, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = trunc i64 %15 to i32
  %34 = call i64 @CfgGetStr(i32* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = trunc i64 %19 to i32
  %37 = call i64 @CfgGetStr(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %36)
  %38 = call i64 @IsEmptyStr(i8* %17)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %27
  %41 = call i64 @IsEmptyStr(i8* %20)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %27
  store i32 1, i32* %10, align 4
  br label %99

44:                                               ; preds = %40
  %45 = call %struct.TYPE_9__* (...) @GetOsInfo()
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @OS_IS_UNIX(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %86

50:                                               ; preds = %44
  %51 = load i32*, i32** %4, align 8
  %52 = call i64 @CfgGetBool(i32* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %50
  %55 = load i32, i32* @MAX_SIZE, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %11, align 8
  %58 = alloca i8, i64 %56, align 16
  store i64 %56, i64* %12, align 8
  store i32 1, i32* %8, align 4
  %59 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %60 = call i32 @Zero(i8* %59, i32 6)
  %61 = load i32*, i32** %4, align 8
  %62 = trunc i64 %56 to i32
  %63 = call i64 @CfgGetStr(i32* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %58, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %54
  %66 = call %struct.TYPE_8__* @StrToBin(i8* %58)
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %13, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %68 = icmp ne %struct.TYPE_8__* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 6
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @Copy(i8* %75, i32 %78, i32 6)
  br label %80

80:                                               ; preds = %74, %69, %65
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %82 = call i32 @FreeBuf(%struct.TYPE_8__* %81)
  br label %83

83:                                               ; preds = %80, %54
  %84 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %84)
  br label %85

85:                                               ; preds = %83, %50
  br label %86

86:                                               ; preds = %85, %44
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = call i64 @CfgGetBool(i32* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32*, i32** %4, align 8
  %93 = call i64 @CfgGetBool(i32* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32, i32* %8, align 4
  %95 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %96 = load i32*, i32** %4, align 8
  %97 = call i64 @CfgGetBool(i32* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %98 = call i32 @AddLocalBridge(i32 %89, i8* %17, i8* %20, i64 %91, i64 %93, i32 %94, i8* %95, i64 %97)
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %86, %43, %26
  %100 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %10, align 4
  switch i32 %101, label %103 [
    i32 0, label %102
    i32 1, label %102
  ]

102:                                              ; preds = %99, %99
  ret void

103:                                              ; preds = %99
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(i8*, i32) #2

declare dso_local i64 @CfgGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i64 @IsEmptyStr(i8*) #2

declare dso_local i64 @OS_IS_UNIX(i32) #2

declare dso_local %struct.TYPE_9__* @GetOsInfo(...) #2

declare dso_local i64 @CfgGetBool(i32*, i8*) #2

declare dso_local %struct.TYPE_8__* @StrToBin(i8*) #2

declare dso_local i32 @Copy(i8*, i32, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @AddLocalBridge(i32, i8*, i8*, i64, i64, i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
