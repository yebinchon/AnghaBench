; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiLoadClientAuth.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiLoadClientAuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"AuthType\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Username\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"HashedPassword\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"EncryptedPassword\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ClientCert\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ClientKey\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"SecurePublicCertName\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"SecurePrivateKeyName\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @CiLoadClientAuth(i32* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %88

10:                                               ; preds = %1
  %11 = call %struct.TYPE_4__* @ZeroMalloc(i32 32)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @CfgGetInt(i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CfgGetStr(i32* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 4)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %86 [
    i32 132, label %24
    i32 130, label %25
    i32 129, label %32
    i32 131, label %50
    i32 128, label %75
  ]

24:                                               ; preds = %10
  br label %86

25:                                               ; preds = %10
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SHA1_SIZE, align 4
  %31 = call i32 @CfgGetByte(i32* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 %30)
  br label %86

32:                                               ; preds = %10
  %33 = load i32*, i32** %3, align 8
  %34 = call i32* @CfgGetBuf(i32* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i32*, i32** %6, align 8
  %39 = call i8* @DecryptPassword(i32* %38)
  store i8* %39, i8** %5, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @StrCpy(i32 %42, i32 4, i8* %43)
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @Free(i8* %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @FreeBuf(i32* %47)
  br label %49

49:                                               ; preds = %37, %32
  br label %86

50:                                               ; preds = %10
  %51 = load i32*, i32** %3, align 8
  %52 = call i32* @CfgGetBuf(i32* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @BufToX(i32* %56, i32 0)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @FreeBuf(i32* %61)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32* @CfgGetBuf(i32* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32* %64, i32** %6, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @BufToK(i32* %68, i32 1, i32 0, i32* null)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %60
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @FreeBuf(i32* %73)
  br label %86

75:                                               ; preds = %10
  %76 = load i32*, i32** %3, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @CfgGetStr(i32* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %79, i32 4)
  %81 = load i32*, i32** %3, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @CfgGetStr(i32* %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %84, i32 4)
  br label %86

86:                                               ; preds = %10, %75, %72, %49, %25, %24
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %87, %struct.TYPE_4__** %2, align 8
  br label %88

88:                                               ; preds = %86, %9
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %89
}

declare dso_local %struct.TYPE_4__* @ZeroMalloc(i32) #1

declare dso_local i32 @CfgGetInt(i32*, i8*) #1

declare dso_local i32 @CfgGetStr(i32*, i8*, i32, i32) #1

declare dso_local i32 @CfgGetByte(i32*, i8*, i32, i32) #1

declare dso_local i32* @CfgGetBuf(i32*, i8*) #1

declare dso_local i8* @DecryptPassword(i32*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @BufToX(i32*, i32) #1

declare dso_local i32 @BufToK(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
