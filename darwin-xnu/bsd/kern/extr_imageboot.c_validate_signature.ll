; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_validate_signature.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_validate_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.validate_signature.exponent = private unnamed_addr constant [3 x i32] [i32 1, i32 0, i32 1], align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHUNKLIST_PUBKEY_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"rsa_make_pub() failed\00", align 1
@CC_DIGEST_OID_SHA256 = common dso_local global i32 0, align 4
@SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"rsa_verify() failed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INVALID_SIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i64, i32*)* @validate_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_signature(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca [3 x i32], align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %18 = bitcast [3 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast ([3 x i32]* @__const.validate_signature.exponent to i8*), i64 12, i1 false)
  %19 = load i64, i64* %8, align 8
  %20 = call i32* @kalloc(i64 %19)
  store i32* %20, i32** %16, align 8
  %21 = call i32* @kalloc(i64 4)
  store i32* %21, i32** %17, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32* @kalloc(i64 %22)
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %16, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %5
  %27 = load i32*, i32** %17, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %14, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26, %5
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %12, align 4
  br label %68

34:                                               ; preds = %29
  %35 = load i32*, i32** %17, align 8
  %36 = call i32 @bzero(i32* %35, i32 4)
  %37 = load i32*, i32** %16, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @key_byteswap(i32* %37, i32* %38, i64 %39)
  %41 = load i32*, i32** %14, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @key_byteswap(i32* %41, i32* %42, i64 %43)
  %45 = load i32*, i32** %17, align 8
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %47 = load i32, i32* @CHUNKLIST_PUBKEY_LEN, align 4
  %48 = load i32*, i32** %16, align 8
  %49 = call i32 @rsa_make_pub(i32* %45, i32 12, i32* %46, i32 %47, i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %34
  %53 = call i32 @AUTHPRNT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %68

54:                                               ; preds = %34
  %55 = load i32*, i32** %17, align 8
  %56 = load i32, i32* @CC_DIGEST_OID_SHA256, align 4
  %57 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @rsa_verify_pkcs1v15(i32* %55, i32 %56, i32 %57, i32* %58, i64 %59, i32* %60, i32* %13)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  %65 = call i32 @AUTHPRNT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %12, align 4
  br label %68

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %64, %52, %32
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @kfree_safe(i32* %69)
  %71 = load i32*, i32** %17, align 8
  %72 = call i32 @kfree_safe(i32* %71)
  %73 = load i32*, i32** %16, align 8
  %74 = call i32 @kfree_safe(i32* %73)
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %6, align 4
  br label %85

79:                                               ; preds = %68
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 0, i32* %6, align 4
  br label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @INVALID_SIG, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %82, %77
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @kalloc(i64) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @key_byteswap(i32*, i32*, i64) #2

declare dso_local i32 @rsa_make_pub(i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @AUTHPRNT(i8*) #2

declare dso_local i32 @rsa_verify_pkcs1v15(i32*, i32, i32, i32*, i64, i32*, i32*) #2

declare dso_local i32 @kfree_safe(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
