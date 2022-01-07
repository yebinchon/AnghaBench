; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_RsaVerifyEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_RsaVerifyEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SIGN_HASH_SIZE = common dso_local global i32 0, align 4
@RSA_KEY_SIZE = common dso_local global i32 0, align 4
@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RsaVerifyEx(i8* %0, i32 %1, i8* %2, %struct.TYPE_3__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* @SIGN_HASH_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %5
  %25 = load i8*, i8** %9, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = icmp eq %struct.TYPE_3__* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %27, %24, %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %86

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @RSA_KEY_SIZE, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %39, %36
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32* @EVP_PKEY_get0_RSA(i32 %44)
  store i32* %45, i32** %15, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %86

49:                                               ; preds = %41
  %50 = mul nuw i64 4, %19
  %51 = trunc i64 %50 to i32
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @HashForSign(i32* %21, i32 %51, i8* %52, i32 %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %86

57:                                               ; preds = %49
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @RSA_size(i32* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @MAX(i32 %60, i32 1024)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i32* @ZeroMalloc(i32 %62)
  store i32* %63, i32** %14, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sdiv i32 %64, 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %70 = call i64 @RSA_public_decrypt(i32 %65, i8* %66, i32* %67, i32* %68, i32 %69)
  %71 = icmp sle i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %57
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @Free(i32* %73)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %86

75:                                               ; preds = %57
  %76 = load i32*, i32** %14, align 8
  %77 = load i32, i32* @SIGN_HASH_SIZE, align 4
  %78 = call i64 @Cmp(i32* %76, i32* %21, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32*, i32** %14, align 8
  %82 = call i32 @Free(i32* %81)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %86

83:                                               ; preds = %75
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @Free(i32* %84)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %86

86:                                               ; preds = %83, %80, %72, %56, %48, %35
  %87 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_PKEY_get0_RSA(i32) #2

declare dso_local i32 @HashForSign(i32*, i32, i8*, i32) #2

declare dso_local i32 @RSA_size(i32*) #2

declare dso_local i32 @MAX(i32, i32) #2

declare dso_local i32* @ZeroMalloc(i32) #2

declare dso_local i64 @RSA_public_decrypt(i32, i8*, i32*, i32*, i32) #2

declare dso_local i32 @Free(i32*) #2

declare dso_local i64 @Cmp(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
