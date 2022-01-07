; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_rtmpdh.c_test_random_shared_secret.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_rtmpdh.c_test_random_shared_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Mismatched generated shared key\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Generated shared key ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_random_shared_secret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_random_shared_secret() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [128 x i32], align 16
  %5 = alloca [128 x i32], align 16
  %6 = alloca [128 x i32], align 16
  %7 = alloca [128 x i32], align 16
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %8 = call i32* @ff_dh_init(i32 1024)
  store i32* %8, i32** %1, align 8
  %9 = call i32* @ff_dh_init(i32 1024)
  store i32* %9, i32** %2, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32*, i32** %2, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %0
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = call i32 @AVERROR(i32 %16)
  store i32 %17, i32* %3, align 4
  br label %65

18:                                               ; preds = %12
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @ff_dh_generate_public_key(i32* %19)
  store i32 %20, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %65

23:                                               ; preds = %18
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @ff_dh_generate_public_key(i32* %24)
  store i32 %25, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %65

28:                                               ; preds = %23
  %29 = load i32*, i32** %1, align 8
  %30 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %31 = call i32 @ff_dh_write_public_key(i32* %29, i32* %30, i32 512)
  store i32 %31, i32* %3, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %65

34:                                               ; preds = %28
  %35 = load i32*, i32** %2, align 8
  %36 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %37 = call i32 @ff_dh_write_public_key(i32* %35, i32* %36, i32 512)
  store i32 %37, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %65

40:                                               ; preds = %34
  %41 = load i32*, i32** %1, align 8
  %42 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %43 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %44 = call i32 @ff_dh_compute_shared_secret_key(i32* %41, i32* %42, i32 512, i32* %43, i32 512)
  store i32 %44, i32* %3, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %65

47:                                               ; preds = %40
  %48 = load i32*, i32** %2, align 8
  %49 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %50 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %51 = call i32 @ff_dh_compute_shared_secret_key(i32* %48, i32* %49, i32 512, i32* %50, i32 512)
  store i32 %51, i32* %3, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %65

54:                                               ; preds = %47
  %55 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %56 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %57 = call i64 @memcmp(i32* %55, i32* %56, i32 512)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %54
  %63 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59
  br label %65

65:                                               ; preds = %64, %53, %46, %39, %33, %27, %22, %15
  %66 = load i32*, i32** %1, align 8
  %67 = call i32 @ff_dh_free(i32* %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @ff_dh_free(i32* %68)
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32* @ff_dh_init(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_dh_generate_public_key(i32*) #1

declare dso_local i32 @ff_dh_write_public_key(i32*, i32*, i32) #1

declare dso_local i32 @ff_dh_compute_shared_secret_key(i32*, i32*, i32, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ff_dh_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
