; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_Enc_tls1_P_hash.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_Enc_tls1_P_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Enc_tls1_P_hash(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %25 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %20, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %21, align 8
  store i8* %23, i8** %18, align 8
  store i8* %24, i8** %19, align 8
  %29 = load i8*, i8** %18, align 8
  %30 = call i32 @Zero(i8* %29, i32 1)
  %31 = load i8*, i8** %19, align 8
  %32 = call i32 @Zero(i8* %31, i32 1)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @EVP_MD_size(i32* %33)
  store i32 %34, i32* %15, align 4
  %35 = load i8*, i8** %18, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @HMAC_Init_ex(i8* %35, i8* %36, i32 %37, i32* %38, i32* null)
  %40 = load i8*, i8** %19, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @HMAC_Init_ex(i8* %40, i8* %41, i32 %42, i32* %43, i32* null)
  %45 = load i8*, i8** %18, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @HMAC_Update(i8* %45, i8* %46, i32 %47)
  %49 = load i8*, i8** %18, align 8
  %50 = call i32 @HMAC_Final(i8* %49, i8* %28, i32* %22)
  store i32 0, i32* %16, align 4
  br label %51

51:                                               ; preds = %88, %7
  %52 = load i8*, i8** %18, align 8
  %53 = call i32 @HMAC_Init_ex(i8* %52, i8* null, i32 0, i32* null, i32* null)
  %54 = load i8*, i8** %19, align 8
  %55 = call i32 @HMAC_Init_ex(i8* %54, i8* null, i32 0, i32* null, i32* null)
  %56 = load i8*, i8** %18, align 8
  %57 = load i32, i32* %22, align 4
  %58 = call i32 @HMAC_Update(i8* %56, i8* %28, i32 %57)
  %59 = load i8*, i8** %19, align 8
  %60 = load i32, i32* %22, align 4
  %61 = call i32 @HMAC_Update(i8* %59, i8* %28, i32 %60)
  %62 = load i8*, i8** %18, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @HMAC_Update(i8* %62, i8* %63, i32 %64)
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %51
  %70 = load i8*, i8** %18, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @HMAC_Final(i8* %70, i8* %71, i32* %17)
  %73 = load i32, i32* %17, align 4
  %74 = load i8*, i8** %13, align 8
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %13, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %14, align 4
  %79 = sub i32 %78, %77
  store i32 %79, i32* %14, align 4
  %80 = load i8*, i8** %19, align 8
  %81 = call i32 @HMAC_Final(i8* %80, i8* %28, i32* %22)
  br label %88

82:                                               ; preds = %51
  %83 = load i8*, i8** %18, align 8
  %84 = call i32 @HMAC_Final(i8* %83, i8* %28, i32* %22)
  %85 = load i8*, i8** %13, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @memcpy(i8* %85, i8* %28, i32 %86)
  br label %89

88:                                               ; preds = %69
  br label %51

89:                                               ; preds = %82
  %90 = load i8*, i8** %18, align 8
  %91 = call i32 @HMAC_CTX_cleanup(i8* %90)
  %92 = load i8*, i8** %19, align 8
  %93 = call i32 @HMAC_CTX_cleanup(i8* %92)
  %94 = trunc i64 %26 to i32
  %95 = call i32 @Zero(i8* %28, i32 %94)
  %96 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %96)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(i8*, i32) #2

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32 @HMAC_Init_ex(i8*, i8*, i32, i32*, i32*) #2

declare dso_local i32 @HMAC_Update(i8*, i8*, i32) #2

declare dso_local i32 @HMAC_Final(i8*, i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @HMAC_CTX_cleanup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
