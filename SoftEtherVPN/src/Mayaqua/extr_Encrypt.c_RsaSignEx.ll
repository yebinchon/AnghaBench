; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_RsaSignEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_RsaSignEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SIGN_HASH_SIZE = common dso_local global i32 0, align 4
@EVP_PKEY_RSA = common dso_local global i64 0, align 8
@RSA_KEY_SIZE = common dso_local global i32 0, align 4
@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RsaSignEx(i8* %0, i8* %1, i32 %2, %struct.TYPE_3__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @SIGN_HASH_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %5
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %26 = icmp eq %struct.TYPE_3__* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @EVP_PKEY_base_id(i32 %30)
  %32 = load i64, i64* @EVP_PKEY_RSA, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %24, %21, %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %65

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @RSA_KEY_SIZE, align 4
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sdiv i32 %42, 8
  %44 = call i32 @Zero(i8* %41, i32 %43)
  %45 = mul nuw i64 4, %16
  %46 = trunc i64 %45 to i32
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @HashForSign(i32* %18, i32 %46, i8* %47, i32 %48)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %65

52:                                               ; preds = %40
  %53 = mul nuw i64 4, %16
  %54 = trunc i64 %53 to i32
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @EVP_PKEY_get0_RSA(i32 %58)
  %60 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %61 = call i64 @RSA_private_encrypt(i32 %54, i32* %18, i8* %55, i32 %59, i32 %60)
  %62 = icmp sle i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %65

64:                                               ; preds = %52
  store i32 1, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %65

65:                                               ; preds = %64, %63, %51, %34
  %66 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @EVP_PKEY_base_id(i32) #2

declare dso_local i32 @Zero(i8*, i32) #2

declare dso_local i32 @HashForSign(i32*, i32, i8*, i32) #2

declare dso_local i64 @RSA_private_encrypt(i32, i32*, i8*, i32, i32) #2

declare dso_local i32 @EVP_PKEY_get0_RSA(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
