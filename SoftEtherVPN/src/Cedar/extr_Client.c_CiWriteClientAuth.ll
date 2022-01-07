; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiWriteClientAuth.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiWriteClientAuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32*, i32*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

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
define dso_local void @CiWriteClientAuth(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = icmp eq %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  br label %100

12:                                               ; preds = %8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @CfgAddInt(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @CfgAddStr(i32* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %100 [
    i32 132, label %26
    i32 130, label %27
    i32 129, label %34
    i32 131, label %49
    i32 128, label %89
  ]

26:                                               ; preds = %12
  br label %100

27:                                               ; preds = %12
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SHA1_SIZE, align 4
  %33 = call i32 @CfgAddByte(i32* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %32)
  br label %100

34:                                               ; preds = %12
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_9__* @EncryptPassword(i32 %37)
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %5, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CfgAddByte(i32* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = call i32 @FreeBuf(%struct.TYPE_9__* %47)
  br label %100

49:                                               ; preds = %12
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %88

54:                                               ; preds = %49
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %88

59:                                               ; preds = %54
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = call %struct.TYPE_9__* @XToBuf(i32* %62, i32 0)
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %5, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @CfgAddByte(i32* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = call i32 @FreeBuf(%struct.TYPE_9__* %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = call %struct.TYPE_9__* @KToBuf(i32* %76, i32 0, i32* null)
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %5, align 8
  %78 = load i32*, i32** %3, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @CfgAddByte(i32* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %81, i32 %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = call i32 @FreeBuf(%struct.TYPE_9__* %86)
  br label %88

88:                                               ; preds = %59, %54, %49
  br label %100

89:                                               ; preds = %12
  %90 = load i32*, i32** %3, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @CfgAddStr(i32* %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %3, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @CfgAddStr(i32* %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %11, %12, %89, %88, %34, %27, %26
  ret void
}

declare dso_local i32 @CfgAddInt(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddStr(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddByte(i32*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @EncryptPassword(i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @XToBuf(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @KToBuf(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
