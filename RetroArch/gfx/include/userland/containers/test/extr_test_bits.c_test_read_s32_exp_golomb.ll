; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_read_s32_exp_golomb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_read_s32_exp_golomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"Testing vc_container_bits_get_s32_exp_golomb\00", align 1
@exp_golomb_0_to_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"test_read_s32_exp_golomb\00", align 1
@exp_golomb_values = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Expected %u, got %u\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Final bit\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"Failed to get final Exp-Golomb value (expected a zero)\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Beyond final bit\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"Unexpectedly succeeded reading beyond expected end of stream\00", align 1
@exp_golomb_large = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Largest signed 32-bit value\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Failed to get largest signed 32-bit value: %d\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Just too large signed 33-bit value\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"Unexpectedly got slightly too large signed 32-bit value: %d\00", align 1
@exp_golomb_oversize = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"Larger signed 33-bit value\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Unexpectedly got signed 33-bit value: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_read_s32_exp_golomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_read_s32_exp_golomb() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = call i32 @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @exp_golomb_0_to_10, align 4
  %7 = load i32, i32* @exp_golomb_0_to_10, align 4
  %8 = call i32 @countof(i32 %7)
  %9 = call i32 @BITS_INIT(i32* null, i32* %1, i32 %6, i32 %8)
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %29, %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 11
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = call i32 @BITS_READ_S32_EXP(i32* null, i32* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32*, i32** @exp_golomb_values, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %15, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %22, %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %10

32:                                               ; preds = %10
  %33 = call i32 @BITS_READ_S32_EXP(i32* null, i32* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %33, i32* %3, align 4
  %34 = call i64 @BITS_VALID(i32* null, i32* %1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36, %32
  %40 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = call i32 @BITS_READ_S32_EXP(i32* null, i32* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 %44, i32* %3, align 4
  %45 = call i64 @BITS_VALID(i32* null, i32* %1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47, %43
  %51 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* @exp_golomb_large, align 4
  %56 = load i32, i32* @exp_golomb_large, align 4
  %57 = call i32 @countof(i32 %56)
  %58 = call i32 @BITS_INIT(i32* null, i32* %1, i32 %55, i32 %57)
  %59 = call i32 @BITS_READ_S32_EXP(i32* null, i32* %1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  store i32 %59, i32* %3, align 4
  %60 = call i64 @BITS_VALID(i32* null, i32* %1)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, -2147483647
  br i1 %64, label %65, label %70

65:                                               ; preds = %62, %54
  %66 = load i32, i32* %3, align 4
  %67 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %62
  %71 = call i32 @BITS_READ_S32_EXP(i32* null, i32* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  store i32 %71, i32* %3, align 4
  %72 = call i64 @BITS_VALID(i32* null, i32* %1)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74, %70
  %78 = load i32, i32* %3, align 4
  %79 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i32, i32* @exp_golomb_oversize, align 4
  %84 = load i32, i32* @exp_golomb_oversize, align 4
  %85 = call i32 @countof(i32 %84)
  %86 = call i32 @BITS_INIT(i32* null, i32* %1, i32 %83, i32 %85)
  %87 = call i32 @BITS_READ_S32_EXP(i32* null, i32* %1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  store i32 %87, i32* %3, align 4
  %88 = call i64 @BITS_VALID(i32* null, i32* %1)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %3, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90, %82
  %94 = load i32, i32* %3, align 4
  %95 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %93, %90
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @LOG_DEBUG(i32*, i8*) #1

declare dso_local i32 @BITS_INIT(i32*, i32*, i32, i32) #1

declare dso_local i32 @countof(i32) #1

declare dso_local i32 @BITS_READ_S32_EXP(i32*, i32*, i8*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*, ...) #1

declare dso_local i64 @BITS_VALID(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
