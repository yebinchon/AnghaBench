; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminConnectMain.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminConnectMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }

@SHA1_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"accept_empty_password\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"secure_password\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"hubname\00", align 1
@ERR_DISCONNECTED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"empty_password\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @AdminConnectMain(i32* %0, i32* %1, i8* %2, i8* %3, i64* %4, i8* %5, i8* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i64* %4, i64** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %25 = load i32, i32* @SHA1_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %18, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %19, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i64*, i64** %14, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = call %struct.TYPE_6__* @NewRpcSessionEx2(i32* %29, i32* %30, i64* %31, i8* %32, i8* %33)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %20, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %36 = icmp eq %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  store i32 1, i32* %24, align 4
  br label %121

38:                                               ; preds = %8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %21, align 8
  %44 = call i32* (...) @NewPack()
  store i32* %44, i32** %22, align 8
  %45 = load i32*, i32** %22, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = call i32 @PackAddClientVersion(i32* %45, %struct.TYPE_7__* %48)
  %50 = load i32*, i32** %22, align 8
  %51 = call i32 @PackAddStr(i32* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32*, i32** %22, align 8
  %53 = call i32 @PackAddBool(i32* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %54 = call i32 @GetWinVer(i32* %23)
  %55 = load i32*, i32** %22, align 8
  %56 = call i32 @OutRpcWinVer(i32* %55, i32* %23)
  %57 = load i8*, i8** %13, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @SecurePassword(i32* %28, i8* %57, i32 %62)
  %64 = load i32*, i32** %22, align 8
  %65 = mul nuw i64 4, %26
  %66 = trunc i64 %65 to i32
  %67 = call i32 @PackAddData(i32* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %28, i32 %66)
  %68 = load i8*, i8** %12, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %38
  %71 = load i32*, i32** %22, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @PackAddStr(i32* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %70, %38
  %75 = load i32*, i32** %21, align 8
  %76 = load i32*, i32** %22, align 8
  %77 = call i32 @HttpClientSend(i32* %75, i32* %76)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32*, i32** %22, align 8
  %81 = call i32 @FreePack(i32* %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %83 = call i32 @ReleaseSession(%struct.TYPE_6__* %82)
  %84 = load i64, i64* @ERR_DISCONNECTED, align 8
  %85 = load i64*, i64** %14, align 8
  store i64 %84, i64* %85, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  store i32 1, i32* %24, align 4
  br label %121

86:                                               ; preds = %74
  %87 = load i32*, i32** %22, align 8
  %88 = call i32 @FreePack(i32* %87)
  %89 = load i32*, i32** %21, align 8
  %90 = call i32* @HttpClientRecv(i32* %89)
  store i32* %90, i32** %22, align 8
  %91 = load i32*, i32** %22, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %95 = call i32 @ReleaseSession(%struct.TYPE_6__* %94)
  %96 = load i64, i64* @ERR_DISCONNECTED, align 8
  %97 = load i64*, i64** %14, align 8
  store i64 %96, i64* %97, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  store i32 1, i32* %24, align 4
  br label %121

98:                                               ; preds = %86
  %99 = load i32*, i32** %22, align 8
  %100 = call i64 @GetErrorFromPack(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %104 = call i32 @ReleaseSession(%struct.TYPE_6__* %103)
  %105 = load i32*, i32** %22, align 8
  %106 = call i64 @GetErrorFromPack(i32* %105)
  %107 = load i64*, i64** %14, align 8
  store i64 %106, i64* %107, align 8
  %108 = load i32*, i32** %22, align 8
  %109 = call i32 @FreePack(i32* %108)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  store i32 1, i32* %24, align 4
  br label %121

110:                                              ; preds = %98
  %111 = load i32*, i32** %17, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32*, i32** %22, align 8
  %115 = call i32 @PackGetBool(i32* %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32*, i32** %17, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i32*, i32** %22, align 8
  %119 = call i32 @FreePack(i32* %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %120, %struct.TYPE_6__** %9, align 8
  store i32 1, i32* %24, align 4
  br label %121

121:                                              ; preds = %117, %102, %93, %79, %37
  %122 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  ret %struct.TYPE_6__* %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_6__* @NewRpcSessionEx2(i32*, i32*, i64*, i8*, i8*) #2

declare dso_local i32* @NewPack(...) #2

declare dso_local i32 @PackAddClientVersion(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #2

declare dso_local i32 @PackAddBool(i32*, i8*, i32) #2

declare dso_local i32 @GetWinVer(i32*) #2

declare dso_local i32 @OutRpcWinVer(i32*, i32*) #2

declare dso_local i32 @SecurePassword(i32*, i8*, i32) #2

declare dso_local i32 @PackAddData(i32*, i8*, i32*, i32) #2

declare dso_local i32 @HttpClientSend(i32*, i32*) #2

declare dso_local i32 @FreePack(i32*) #2

declare dso_local i32 @ReleaseSession(%struct.TYPE_6__*) #2

declare dso_local i32* @HttpClientRecv(i32*) #2

declare dso_local i64 @GetErrorFromPack(i32*) #2

declare dso_local i32 @PackGetBool(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
