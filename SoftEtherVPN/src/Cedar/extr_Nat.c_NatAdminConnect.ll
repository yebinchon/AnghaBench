; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NatAdminConnect.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NatAdminConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_SIZE = common dso_local global i32 0, align 4
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@ERR_CONNECT_FAILED = common dso_local global i64 0, align 8
@ERR_PROTOCOL_ERROR = common dso_local global i64 0, align 8
@ERR_DISCONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"auth_random\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"secure_password\00", align 1
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@TIMEOUT_INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @NatAdminConnect(i32* %0, i8* %1, i64 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %20 = load i32, i32* @SHA1_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @SHA1_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %5
  %30 = load i8*, i8** %8, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %10, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i64*, i64** %11, align 8
  %40 = icmp eq i64* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38, %35, %32, %29, %5
  %42 = load i64*, i64** %11, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  %46 = load i64*, i64** %11, align 8
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %41
  store i32* null, i32** %6, align 8
  store i32 1, i32* %19, align 4
  br label %144

48:                                               ; preds = %38
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32* @Connect(i8* %49, i64 %50)
  store i32* %51, i32** %15, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i64, i64* @ERR_CONNECT_FAILED, align 8
  %56 = load i64*, i64** %11, align 8
  store i64 %55, i64* %56, align 8
  store i32* null, i32** %6, align 8
  store i32 1, i32* %19, align 4
  br label %144

57:                                               ; preds = %48
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @StartSSL(i32* %58, i32* null, i32* null)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i64, i64* @ERR_PROTOCOL_ERROR, align 8
  %63 = load i64*, i64** %11, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @ReleaseSock(i32* %64)
  store i32* null, i32** %6, align 8
  store i32 1, i32* %19, align 4
  br label %144

66:                                               ; preds = %57
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @SetTimeout(i32* %67, i32 5000)
  %69 = load i32*, i32** %15, align 8
  %70 = call i32* @HttpClientRecv(i32* %69)
  store i32* %70, i32** %17, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load i64, i64* @ERR_DISCONNECTED, align 8
  %75 = load i64*, i64** %11, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = call i32 @ReleaseSock(i32* %76)
  store i32* null, i32** %6, align 8
  store i32 1, i32* %19, align 4
  br label %144

78:                                               ; preds = %66
  %79 = load i32*, i32** %17, align 8
  %80 = load i32, i32* @SHA1_SIZE, align 4
  %81 = call i32 @PackGetData2(i32* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %26, i32 %80)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32*, i32** %17, align 8
  %85 = call i32 @FreePack(i32* %84)
  %86 = load i64, i64* @ERR_PROTOCOL_ERROR, align 8
  %87 = load i64*, i64** %11, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = call i32 @ReleaseSock(i32* %88)
  store i32* null, i32** %6, align 8
  store i32 1, i32* %19, align 4
  br label %144

90:                                               ; preds = %78
  %91 = load i32*, i32** %17, align 8
  %92 = call i32 @FreePack(i32* %91)
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @SecurePassword(i32* %23, i8* %93, i32* %26)
  %95 = call i32* (...) @NewPack()
  store i32* %95, i32** %17, align 8
  %96 = load i32*, i32** %17, align 8
  %97 = load i32, i32* @SHA1_SIZE, align 4
  %98 = call i32 @PackAddData(i32* %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %23, i32 %97)
  %99 = load i32*, i32** %15, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = call i32 @HttpClientSend(i32* %99, i32* %100)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %90
  %104 = load i32*, i32** %17, align 8
  %105 = call i32 @FreePack(i32* %104)
  %106 = load i64, i64* @ERR_DISCONNECTED, align 8
  %107 = load i64*, i64** %11, align 8
  store i64 %106, i64* %107, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = call i32 @ReleaseSock(i32* %108)
  store i32* null, i32** %6, align 8
  store i32 1, i32* %19, align 4
  br label %144

110:                                              ; preds = %90
  %111 = load i32*, i32** %17, align 8
  %112 = call i32 @FreePack(i32* %111)
  %113 = load i32*, i32** %15, align 8
  %114 = call i32* @HttpClientRecv(i32* %113)
  store i32* %114, i32** %17, align 8
  %115 = load i32*, i32** %17, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load i64, i64* @ERR_DISCONNECTED, align 8
  %119 = load i64*, i64** %11, align 8
  store i64 %118, i64* %119, align 8
  %120 = load i32*, i32** %15, align 8
  %121 = call i32 @ReleaseSock(i32* %120)
  store i32* null, i32** %6, align 8
  store i32 1, i32* %19, align 4
  br label %144

122:                                              ; preds = %110
  %123 = load i32*, i32** %17, align 8
  %124 = call i64 @GetErrorFromPack(i32* %123)
  store i64 %124, i64* %18, align 8
  %125 = load i32*, i32** %17, align 8
  %126 = call i32 @FreePack(i32* %125)
  %127 = load i64, i64* %18, align 8
  %128 = load i64, i64* @ERR_NO_ERROR, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = load i64, i64* %18, align 8
  %132 = load i64*, i64** %11, align 8
  store i64 %131, i64* %132, align 8
  %133 = load i32*, i32** %15, align 8
  %134 = call i32 @ReleaseSock(i32* %133)
  store i32* null, i32** %6, align 8
  store i32 1, i32* %19, align 4
  br label %144

135:                                              ; preds = %122
  %136 = load i32*, i32** %15, align 8
  %137 = load i32, i32* @TIMEOUT_INFINITE, align 4
  %138 = call i32 @SetTimeout(i32* %136, i32 %137)
  %139 = load i32*, i32** %15, align 8
  %140 = call i32* @StartRpcClient(i32* %139, i32* null)
  store i32* %140, i32** %16, align 8
  %141 = load i32*, i32** %15, align 8
  %142 = call i32 @ReleaseSock(i32* %141)
  %143 = load i32*, i32** %16, align 8
  store i32* %143, i32** %6, align 8
  store i32 1, i32* %19, align 4
  br label %144

144:                                              ; preds = %135, %130, %117, %103, %83, %73, %61, %54, %47
  %145 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32*, i32** %6, align 8
  ret i32* %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @Connect(i8*, i64) #2

declare dso_local i32 @StartSSL(i32*, i32*, i32*) #2

declare dso_local i32 @ReleaseSock(i32*) #2

declare dso_local i32 @SetTimeout(i32*, i32) #2

declare dso_local i32* @HttpClientRecv(i32*) #2

declare dso_local i32 @PackGetData2(i32*, i8*, i32*, i32) #2

declare dso_local i32 @FreePack(i32*) #2

declare dso_local i32 @SecurePassword(i32*, i8*, i32*) #2

declare dso_local i32* @NewPack(...) #2

declare dso_local i32 @PackAddData(i32*, i8*, i32*, i32) #2

declare dso_local i32 @HttpClientSend(i32*, i32*) #2

declare dso_local i64 @GetErrorFromPack(i32*) #2

declare dso_local i32* @StartRpcClient(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
