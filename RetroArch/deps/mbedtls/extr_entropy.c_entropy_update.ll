; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_entropy.c_entropy_update.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_entropy.c_entropy_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MBEDTLS_ENTROPY_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8, i8*, i64)* @entropy_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @entropy_update(%struct.TYPE_3__* %0, i8 zeroext %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [2 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32, i32* @MBEDTLS_ENTROPY_BLOCK_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %12, align 8
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %13, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i32, i32* @MBEDTLS_ENTROPY_BLOCK_SIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @mbedtls_sha256(i8* %25, i64 %26, i8* %17, i32 0)
  store i8* %17, i8** %13, align 8
  %28 = load i32, i32* @MBEDTLS_ENTROPY_BLOCK_SIZE, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %12, align 8
  br label %30

30:                                               ; preds = %24, %4
  %31 = load i8, i8* %6, align 1
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 %31, i8* %32, align 1
  %33 = load i64, i64* %12, align 8
  %34 = and i64 %33, 255
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  store i8 %35, i8* %36, align 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %40 = call i32 @mbedtls_sha256_update(i32* %38, i8* %39, i64 2)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %13, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @mbedtls_sha256_update(i32* %42, i8* %43, i64 %44)
  %46 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %46)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mbedtls_sha256(i8*, i64, i8*, i32) #2

declare dso_local i32 @mbedtls_sha256_update(i32*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
