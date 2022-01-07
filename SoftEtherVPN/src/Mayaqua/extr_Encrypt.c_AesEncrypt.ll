; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_AesEncrypt.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_AesEncrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AesEncrypt(i8* %0, i8* %1, i32 %2, %struct.TYPE_3__* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %25 = icmp eq %struct.TYPE_3__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %10, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %20, %17, %5
  br label %108

30:                                               ; preds = %26
  %31 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @ERR_print_errors_fp(i32 %35)
  br label %108

37:                                               ; preds = %30
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @EVP_CIPHER_CTX_set_padding(i32* %38, i32 0)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %67 [
    i32 16, label %43
    i32 24, label %51
    i32 32, label %59
  ]

43:                                               ; preds = %37
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 (...) @EVP_aes_128_cbc()
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @EVP_EncryptInit_ex(i32* %44, i32 %45, i32* null, i32 %48, i8* %49)
  store i32 %50, i32* %14, align 4
  br label %67

51:                                               ; preds = %37
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 (...) @EVP_aes_192_cbc()
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @EVP_EncryptInit_ex(i32* %52, i32 %53, i32* null, i32 %56, i8* %57)
  store i32 %58, i32* %14, align 4
  br label %67

59:                                               ; preds = %37
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 (...) @EVP_aes_256_cbc()
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @EVP_EncryptInit_ex(i32* %60, i32 %61, i32* null, i32 %64, i8* %65)
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %37, %59, %51, %43
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 @ERR_print_errors_fp(i32 %71)
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @EVP_CIPHER_CTX_free(i32* %73)
  br label %108

75:                                               ; preds = %67
  %76 = load i32*, i32** %11, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @EVP_EncryptUpdate(i32* %76, i8* %77, i32* %12, i8* %78, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 @ERR_print_errors_fp(i32 %84)
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @EVP_CIPHER_CTX_free(i32* %86)
  br label %108

88:                                               ; preds = %75
  %89 = load i32*, i32** %11, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = call i32 @EVP_EncryptFinal_ex(i32* %89, i8* %93, i32* %13)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load i32, i32* @stderr, align 4
  %99 = call i32 @ERR_print_errors_fp(i32 %98)
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @EVP_CIPHER_CTX_free(i32* %100)
  br label %108

102:                                              ; preds = %88
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %12, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @EVP_CIPHER_CTX_free(i32* %106)
  br label %108

108:                                              ; preds = %102, %97, %83, %70, %34, %29
  ret void
}

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_padding(i32*, i32) #1

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32, i32*, i32, i8*) #1

declare dso_local i32 @EVP_aes_128_cbc(...) #1

declare dso_local i32 @EVP_aes_192_cbc(...) #1

declare dso_local i32 @EVP_aes_256_cbc(...) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

declare dso_local i32 @EVP_EncryptUpdate(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @EVP_EncryptFinal_ex(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
