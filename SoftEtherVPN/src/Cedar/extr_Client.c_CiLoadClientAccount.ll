; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiLoadClientAccount.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiLoadClientAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"ClientOption\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ClientAuth\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"StartupAccount\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"CheckServerCert\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"RetryOnServerCert\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"CreateDateTime\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"UpdateDateTime\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"LastConnectDateTime\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ServerCert\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ShortcutKey\00", align 1
@SHA1_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @CiLoadClientAccount(i32* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %116

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @CfgGetFolder(i32* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @CfgGetFolder(i32* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %19
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %116

28:                                               ; preds = %24
  %29 = call %struct.TYPE_10__* @ZeroMalloc(i32 72)
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %4, align 8
  %30 = call i32 (...) @NewLock()
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @CiLoadClientOption(i32* %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @CiLoadClientAuth(i32* %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i8* @CfgGetBool(i32* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = call i8* @CfgGetBool(i32* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = call i8* @CfgGetBool(i32* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i8* @CfgGetInt64(i32* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i8* @CfgGetInt64(i32* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = call i8* @CfgGetInt64(i32* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = call %struct.TYPE_9__* @CfgGetBuf(i32* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %7, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = icmp ne %struct.TYPE_9__* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %28
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = call i32 @BufToX(%struct.TYPE_9__* %70, i32 0)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = call i32 @FreeBuf(%struct.TYPE_9__* %74)
  br label %76

76:                                               ; preds = %69, %28
  %77 = load i32*, i32** %3, align 8
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %79 = call i64 @CfgGetStr(i32* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %78, i32 64)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %76
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %83 = call %struct.TYPE_9__* @StrToBin(i8* %82)
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %9, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SHA1_SIZE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* @SHA1_SIZE, align 8
  %97 = call i32 @Copy(i32 %92, i32 %95, i64 %96)
  br label %98

98:                                               ; preds = %89, %81
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %100 = call i32 @FreeBuf(%struct.TYPE_9__* %99)
  br label %101

101:                                              ; preds = %98, %76
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* @SHA1_SIZE, align 8
  %106 = call i64 @IsZero(i32 %104, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* @SHA1_SIZE, align 8
  %113 = call i32 @Rand(i32 %111, i64 %112)
  br label %114

114:                                              ; preds = %108, %101
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %115, %struct.TYPE_10__** %2, align 8
  br label %116

116:                                              ; preds = %114, %27, %12
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %117
}

declare dso_local i32* @CfgGetFolder(i32*, i8*) #1

declare dso_local %struct.TYPE_10__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i32 @CiLoadClientOption(i32*) #1

declare dso_local i32 @CiLoadClientAuth(i32*) #1

declare dso_local i8* @CfgGetBool(i32*, i8*) #1

declare dso_local i8* @CfgGetInt64(i32*, i8*) #1

declare dso_local %struct.TYPE_9__* @CfgGetBuf(i32*, i8*) #1

declare dso_local i32 @BufToX(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_9__*) #1

declare dso_local i64 @CfgGetStr(i32*, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @StrToBin(i8*) #1

declare dso_local i32 @Copy(i32, i32, i64) #1

declare dso_local i64 @IsZero(i32, i64) #1

declare dso_local i32 @Rand(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
