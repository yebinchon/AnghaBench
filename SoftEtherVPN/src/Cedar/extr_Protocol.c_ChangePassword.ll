; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ChangePassword.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ChangePassword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32* }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@MD5_SIZE = common dso_local global i32 0, align 4
@ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"hubname\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"secure_old_password\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"new_password\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"new_password_ntlm\00", align 1
@ERR_DISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ChangePassword(i32* %0, i32* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_5__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %25 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* @SHA1_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %15, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %16, align 8
  %30 = load i32, i32* @SHA1_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %17, align 8
  %33 = load i32, i32* @SHA1_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %18, align 8
  %36 = load i32, i32* @MD5_SIZE, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %19, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %6
  %42 = load i32*, i32** %9, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %10, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %11, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %12, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %13, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53, %50, %47, %44, %41, %6
  %57 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  store i32 %57, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %133

58:                                               ; preds = %53
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call %struct.TYPE_5__* @NewRpcSessionEx(i32* %59, i32* %60, i32* %14, i32* null)
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %21, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %63 = icmp ne %struct.TYPE_5__* %62, null
  br i1 %63, label %64, label %131

64:                                               ; preds = %58
  %65 = call i32* (...) @NewPack()
  store i32* %65, i32** %23, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %20, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @HashPassword(i32* %29, i8* %71, i8* %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @SecurePassword(i32* %32, i32* %29, i32 %78)
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = call i32 @HashPassword(i32* %35, i8* %80, i8* %81)
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @GenerateNtPasswordHash(i32* %38, i8* %83)
  %85 = load i32*, i32** %23, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = call i32 @PackAddClientVersion(i32* %85, %struct.TYPE_6__* %88)
  %90 = load i32*, i32** %23, align 8
  %91 = call i32 @PackAddStr(i32* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32*, i32** %23, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @PackAddStr(i32* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %93)
  %95 = load i32*, i32** %23, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @PackAddStr(i32* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  %98 = load i32*, i32** %23, align 8
  %99 = load i32, i32* @SHA1_SIZE, align 4
  %100 = call i32 @PackAddData(i32* %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* %32, i32 %99)
  %101 = load i32*, i32** %23, align 8
  %102 = load i32, i32* @SHA1_SIZE, align 4
  %103 = call i32 @PackAddData(i32* %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %35, i32 %102)
  %104 = load i32*, i32** %23, align 8
  %105 = load i32, i32* @MD5_SIZE, align 4
  %106 = call i32 @PackAddData(i32* %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32* %38, i32 %105)
  %107 = load i32*, i32** %20, align 8
  %108 = load i32*, i32** %23, align 8
  %109 = call i64 @HttpClientSend(i32* %107, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %64
  %112 = load i32*, i32** %20, align 8
  %113 = call i32* @HttpClientRecv(i32* %112)
  store i32* %113, i32** %24, align 8
  %114 = load i32*, i32** %24, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @ERR_DISCONNECTED, align 4
  store i32 %117, i32* %14, align 4
  br label %121

118:                                              ; preds = %111
  %119 = load i32*, i32** %24, align 8
  %120 = call i32 @GetErrorFromPack(i32* %119)
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %118, %116
  %122 = load i32*, i32** %24, align 8
  %123 = call i32 @FreePack(i32* %122)
  br label %126

124:                                              ; preds = %64
  %125 = load i32, i32* @ERR_DISCONNECTED, align 4
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %124, %121
  %127 = load i32*, i32** %23, align 8
  %128 = call i32 @FreePack(i32* %127)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %130 = call i32 @ReleaseSession(%struct.TYPE_5__* %129)
  br label %131

131:                                              ; preds = %126, %58
  %132 = load i32, i32* %14, align 4
  store i32 %132, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %133

133:                                              ; preds = %131, %56
  %134 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_5__* @NewRpcSessionEx(i32*, i32*, i32*, i32*) #2

declare dso_local i32* @NewPack(...) #2

declare dso_local i32 @HashPassword(i32*, i8*, i8*) #2

declare dso_local i32 @SecurePassword(i32*, i32*, i32) #2

declare dso_local i32 @GenerateNtPasswordHash(i32*, i8*) #2

declare dso_local i32 @PackAddClientVersion(i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #2

declare dso_local i32 @PackAddData(i32*, i8*, i32*, i32) #2

declare dso_local i64 @HttpClientSend(i32*, i32*) #2

declare dso_local i32* @HttpClientRecv(i32*) #2

declare dso_local i32 @GetErrorFromPack(i32*) #2

declare dso_local i32 @FreePack(i32*) #2

declare dso_local i32 @ReleaseSession(%struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
