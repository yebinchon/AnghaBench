; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadHubLinkCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadHubLinkCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"Policy\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Online\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ClientOption\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ClientAuth\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"CheckServerCert\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ServerCert\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadHubLinkCfg(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = icmp eq %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  br label %93

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @CfgGetFolder(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %93

24:                                               ; preds = %18
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @SiLoadPolicyCfg(i32* %9, i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @CfgGetBool(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i32* @CfgGetFolder(i32* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32* @CiLoadClientOption(i32* %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32* @CfgGetFolder(i32* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %35 = call i32* @CiLoadClientAuth(i32* %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = load i32*, i32** %7, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38, %24
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @Free(i32* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @CiFreeClientAuth(i32* %44)
  br label %93

46:                                               ; preds = %38
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call %struct.TYPE_9__* @NewLink(i32 %49, %struct.TYPE_10__* %50, i32* %51, i32* %52, i32* %9)
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %10, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %88

56:                                               ; preds = %46
  %57 = load i32*, i32** %3, align 8
  %58 = call i8* @CfgGetBool(i32* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = call i32* @CfgGetBuf(i32* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @BufToX(i32* %66, i32 0)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @FreeBuf(i32* %70)
  br label %72

72:                                               ; preds = %65, %56
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %79 = call i32 @SetLinkOnline(%struct.TYPE_9__* %78)
  br label %85

80:                                               ; preds = %72
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %84 = call i32 @SetLinkOffline(%struct.TYPE_9__* %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %87 = call i32 @ReleaseLink(%struct.TYPE_9__* %86)
  br label %88

88:                                               ; preds = %85, %46
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @Free(i32* %89)
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @CiFreeClientAuth(i32* %91)
  br label %93

93:                                               ; preds = %88, %41, %23, %17
  ret void
}

declare dso_local i32* @CfgGetFolder(i32*, i8*) #1

declare dso_local i32 @SiLoadPolicyCfg(i32*, i32*) #1

declare dso_local i8* @CfgGetBool(i32*, i8*) #1

declare dso_local i32* @CiLoadClientOption(i32*) #1

declare dso_local i32* @CiLoadClientAuth(i32*) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @CiFreeClientAuth(i32*) #1

declare dso_local %struct.TYPE_9__* @NewLink(i32, %struct.TYPE_10__*, i32*, i32*, i32*) #1

declare dso_local i32* @CfgGetBuf(i32*, i8*) #1

declare dso_local i32 @BufToX(i32*, i32) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @SetLinkOnline(%struct.TYPE_9__*) #1

declare dso_local i32 @SetLinkOffline(%struct.TYPE_9__*) #1

declare dso_local i32 @ReleaseLink(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
