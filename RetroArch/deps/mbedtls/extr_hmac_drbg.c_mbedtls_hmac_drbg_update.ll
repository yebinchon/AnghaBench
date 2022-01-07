; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_hmac_drbg.c_mbedtls_hmac_drbg_update.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_hmac_drbg.c_mbedtls_hmac_drbg_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@MBEDTLS_MD_MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_hmac_drbg_update(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca [1 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @mbedtls_md_get_size(i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %19, %3
  %23 = phi i1 [ false, %3 ], [ %21, %19 ]
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 2, i32 1
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %8, align 1
  %27 = load i32, i32* @MBEDTLS_MD_MAX_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %10, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  %31 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %84, %22
  %33 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %8, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %88

39:                                               ; preds = %32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = call i32 @mbedtls_md_hmac_reset(%struct.TYPE_8__* %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @mbedtls_md_hmac_update(%struct.TYPE_8__* %44, i8* %47, i64 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %53 = call i32 @mbedtls_md_hmac_update(%struct.TYPE_8__* %51, i8* %52, i64 1)
  %54 = load i8, i8* %8, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %63

57:                                               ; preds = %39
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @mbedtls_md_hmac_update(%struct.TYPE_8__* %59, i8* %60, i64 %61)
  br label %63

63:                                               ; preds = %57, %39
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = call i32 @mbedtls_md_hmac_finish(%struct.TYPE_8__* %65, i8* %30)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @mbedtls_md_hmac_starts(%struct.TYPE_8__* %68, i8* %30, i64 %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @mbedtls_md_hmac_update(%struct.TYPE_8__* %72, i8* %75, i64 %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @mbedtls_md_hmac_finish(%struct.TYPE_8__* %79, i8* %82)
  br label %84

84:                                               ; preds = %63
  %85 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = add i8 %86, 1
  store i8 %87, i8* %85, align 1
  br label %32

88:                                               ; preds = %32
  %89 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %89)
  ret void
}

declare dso_local i64 @mbedtls_md_get_size(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mbedtls_md_hmac_reset(%struct.TYPE_8__*) #1

declare dso_local i32 @mbedtls_md_hmac_update(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i32 @mbedtls_md_hmac_finish(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @mbedtls_md_hmac_starts(%struct.TYPE_8__*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
