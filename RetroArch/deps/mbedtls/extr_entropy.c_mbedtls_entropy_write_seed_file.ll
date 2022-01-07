; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_entropy.c_mbedtls_entropy_write_seed_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_entropy.c_mbedtls_entropy_write_seed_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_ENTROPY_FILE_IO_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ENTROPY_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_entropy_write_seed_file(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @MBEDTLS_ERR_ENTROPY_FILE_IO_ERROR, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @MBEDTLS_ENTROPY_BLOCK_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @MBEDTLS_ERR_ENTROPY_FILE_IO_ERROR, align 4
  store i32 %20, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %40

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @MBEDTLS_ENTROPY_BLOCK_SIZE, align 4
  %24 = call i32 @mbedtls_entropy_func(i32* %22, i8* %15, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %36

27:                                               ; preds = %21
  %28 = load i32, i32* @MBEDTLS_ENTROPY_BLOCK_SIZE, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @fwrite(i8* %15, i32 1, i32 %28, i32* %29)
  %31 = load i32, i32* @MBEDTLS_ENTROPY_BLOCK_SIZE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @MBEDTLS_ERR_ENTROPY_FILE_IO_ERROR, align 4
  store i32 %34, i32* %6, align 4
  br label %36

35:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %33, %26
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @fclose(i32* %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %40

40:                                               ; preds = %36, %19
  %41 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @mbedtls_entropy_func(i32*, i8*, i32) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
