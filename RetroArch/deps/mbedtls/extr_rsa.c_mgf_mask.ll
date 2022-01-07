; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_rsa.c_mgf_mask.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_rsa.c_mgf_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@MBEDTLS_MD_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64, %struct.TYPE_6__*)* @mgf_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgf_mask(i8* %0, i64 %1, i8* %2, i64 %3, %struct.TYPE_6__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [4 x i8], align 1
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %10, align 8
  %18 = load i32, i32* @MBEDTLS_MD_MAX_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @MBEDTLS_MD_MAX_SIZE, align 4
  %23 = call i32 @memset(i8* %21, i32 0, i32 %22)
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %25 = call i32 @memset(i8* %24, i32 0, i32 4)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mbedtls_md_get_size(i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %14, align 8
  br label %31

31:                                               ; preds = %74, %5
  %32 = load i64, i64* %7, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %31
  %35 = load i32, i32* %15, align 4
  %36 = zext i32 %35 to i64
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* %15, align 4
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %17, align 8
  br label %43

43:                                               ; preds = %41, %34
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = call i32 @mbedtls_md_starts(%struct.TYPE_6__* %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @mbedtls_md_update(%struct.TYPE_6__* %46, i8* %47, i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %53 = call i32 @mbedtls_md_update(%struct.TYPE_6__* %51, i8* %52, i32 4)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %55 = call i32 @mbedtls_md_finish(%struct.TYPE_6__* %54, i8* %21)
  store i64 0, i64* %16, align 8
  br label %56

56:                                               ; preds = %71, %43
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* %17, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i64, i64* %16, align 8
  %62 = getelementptr inbounds i8, i8* %21, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %14, align 8
  %67 = load i8, i8* %65, align 1
  %68 = zext i8 %67 to i32
  %69 = xor i32 %68, %64
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %65, align 1
  br label %71

71:                                               ; preds = %60
  %72 = load i64, i64* %16, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %16, align 8
  br label %56

74:                                               ; preds = %56
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 3
  %76 = load i8, i8* %75, align 1
  %77 = add i8 %76, 1
  store i8 %77, i8* %75, align 1
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* %7, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %7, align 8
  br label %31

81:                                               ; preds = %31
  %82 = trunc i64 %19 to i32
  %83 = call i32 @mbedtls_zeroize(i8* %21, i32 %82)
  %84 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %84)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @mbedtls_md_get_size(i32) #2

declare dso_local i32 @mbedtls_md_starts(%struct.TYPE_6__*) #2

declare dso_local i32 @mbedtls_md_update(%struct.TYPE_6__*, i8*, i32) #2

declare dso_local i32 @mbedtls_md_finish(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @mbedtls_zeroize(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
