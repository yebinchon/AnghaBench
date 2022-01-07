; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_Enc_tls1_PRF.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_Enc_tls1_PRF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Enc_tls1_PRF(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = call i32* (...) @EVP_md5()
  store i32* %20, i32** %13, align 8
  %21 = call i32* (...) @EVP_sha1()
  store i32* %21, i32** %14, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i64 @Malloc(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %19, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %15, align 4
  %27 = load i8*, i8** %9, align 8
  store i8* %27, i8** %17, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8* %31, i8** %18, align 8
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 1
  %34 = load i32, i32* %15, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %15, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = load i8*, i8** %17, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @Enc_tls1_P_hash(i32* %36, i8* %37, i32 %38, i8* %39, i32 %40, i8* %41, i32 %42)
  %44 = load i32*, i32** %14, align 8
  %45 = load i8*, i8** %18, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %19, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @Enc_tls1_P_hash(i32* %44, i8* %45, i32 %46, i8* %47, i32 %48, i8* %49, i32 %50)
  store i32 0, i32* %16, align 4
  br label %52

52:                                               ; preds = %71, %6
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load i8*, i8** %19, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = xor i32 %68, %62
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %66, align 1
  br label %71

71:                                               ; preds = %56
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %16, align 4
  br label %52

74:                                               ; preds = %52
  %75 = load i8*, i8** %19, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @memset(i8* %75, i32 0, i32 %76)
  %78 = load i8*, i8** %19, align 8
  %79 = call i32 @Free(i8* %78)
  ret void
}

declare dso_local i32* @EVP_md5(...) #1

declare dso_local i32* @EVP_sha1(...) #1

declare dso_local i64 @Malloc(i32) #1

declare dso_local i32 @Enc_tls1_P_hash(i32*, i8*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
