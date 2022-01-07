; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiWriteAccountData.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiWriteAccountData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"ClientOption\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ClientAuth\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"StartupAccount\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"CheckServerCert\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"RetryOnServerCert\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"CreateDateTime\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"UpdateDateTime\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"LastConnectDateTime\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ServerCert\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"ShortcutKey\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CiWriteAccountData(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [64 x i8], align 16
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %91

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @CfgCreateFolder(i32* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CiWriteClientOption(i32 %15, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @CfgCreateFolder(i32* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @CiWriteClientAuth(i32 %21, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CfgAddBool(i32* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @CfgAddBool(i32* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CfgAddBool(i32* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @CfgAddInt64(i32* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CfgAddInt64(i32* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @CfgAddInt64(i32* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %13
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32* @XToBuf(i32* %63, i32 0)
  store i32* %64, i32** %5, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32*, i32** %3, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @CfgAddBuf(i32* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @FreeBuf(i32* %71)
  br label %73

73:                                               ; preds = %67, %60
  br label %74

74:                                               ; preds = %73, %13
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SHA1_SIZE, align 4
  %79 = call i32 @IsZero(i32 %77, i32 %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %74
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SHA1_SIZE, align 4
  %87 = call i32 @BinToStr(i8* %82, i32 64, i32 %85, i32 %86)
  %88 = load i32*, i32** %3, align 8
  %89 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %90 = call i32 @CfgAddStr(i32* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %12, %81, %74
  ret void
}

declare dso_local i32 @CiWriteClientOption(i32, i32) #1

declare dso_local i32 @CfgCreateFolder(i32*, i8*) #1

declare dso_local i32 @CiWriteClientAuth(i32, i32) #1

declare dso_local i32 @CfgAddBool(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddInt64(i32*, i8*, i32) #1

declare dso_local i32* @XToBuf(i32*, i32) #1

declare dso_local i32 @CfgAddBuf(i32*, i8*, i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @IsZero(i32, i32) #1

declare dso_local i32 @BinToStr(i8*, i32, i32, i32) #1

declare dso_local i32 @CfgAddStr(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
