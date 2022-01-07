; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_EtherLog.c_EcConnect.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_EtherLog.c_EcConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@EL_ADMIN_PORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@ERR_CONNECT_FAILED = common dso_local global i64 0, align 8
@ERR_PROTOCOL_ERROR = common dso_local global i64 0, align 8
@ERR_AUTH_FAILED = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EcConnect(i8* %0, i64 %1, i8* %2, i32** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32** %3, i32*** %9, align 8
  %17 = load i32, i32* @SHA1_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* @SHA1_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %24 = load i32, i32* @SHA1_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %30

30:                                               ; preds = %29, %4
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64, i64* @EL_ADMIN_PORT, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i8*, i8** %8, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32**, i32*** %9, align 8
  %41 = icmp eq i32** %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %43, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %97

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32* @Connect(i8* %45, i64 %46)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i64, i64* @ERR_CONNECT_FAILED, align 8
  store i64 %51, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %97

52:                                               ; preds = %44
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @SetTimeout(i32* %53, i32 5000)
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @StrLen(i8* %56)
  %58 = call i32 @Sha0(i32* %20, i8* %55, i32 %57)
  %59 = mul nuw i64 4, %22
  %60 = trunc i64 %59 to i32
  %61 = call i32 @Zero(i32* %23, i32 %60)
  %62 = load i32*, i32** %10, align 8
  %63 = mul nuw i64 4, %22
  %64 = trunc i64 %63 to i32
  %65 = call i32 @RecvAll(i32* %62, i32* %23, i32 %64, i32 0)
  %66 = call i32 @SecurePassword(i32* %26, i32* %20, i32* %23)
  %67 = load i32*, i32** %10, align 8
  %68 = mul nuw i64 4, %25
  %69 = trunc i64 %68 to i32
  %70 = call i32 @SendAll(i32* %67, i32* %26, i32 %69, i32 0)
  store i32 0, i32* %15, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @RecvAll(i32* %71, i32* %15, i32 4, i32 0)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %52
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @ReleaseSock(i32* %75)
  %77 = load i64, i64* @ERR_PROTOCOL_ERROR, align 8
  store i64 %77, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %97

78:                                               ; preds = %52
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @Endian32(i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @ReleaseSock(i32* %84)
  %86 = load i64, i64* @ERR_AUTH_FAILED, align 8
  store i64 %86, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %97

87:                                               ; preds = %78
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* @INFINITE, align 4
  %90 = call i32 @SetTimeout(i32* %88, i32 %89)
  %91 = load i32*, i32** %10, align 8
  %92 = call i32* @StartRpcClient(i32* %91, i32* null)
  %93 = load i32**, i32*** %9, align 8
  store i32* %92, i32** %93, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @ReleaseSock(i32* %94)
  %96 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %96, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %97

97:                                               ; preds = %87, %83, %74, %50, %42
  %98 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i64, i64* %5, align 8
  ret i64 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @Connect(i8*, i64) #2

declare dso_local i32 @SetTimeout(i32*, i32) #2

declare dso_local i32 @Sha0(i32*, i8*, i32) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @Zero(i32*, i32) #2

declare dso_local i32 @RecvAll(i32*, i32*, i32, i32) #2

declare dso_local i32 @SecurePassword(i32*, i32*, i32*) #2

declare dso_local i32 @SendAll(i32*, i32*, i32, i32) #2

declare dso_local i32 @ReleaseSock(i32*) #2

declare dso_local i32 @Endian32(i32) #2

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
