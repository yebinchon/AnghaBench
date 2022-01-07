; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_read_u32_exp_golomb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_read_u32_exp_golomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"Testing vc_container_bits_get_u32_exp_golomb\00", align 1
@exp_golomb_0_to_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"test_read_u32_exp_golomb\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Expected %u, got %u\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Final bit\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to get final bit (expected a 1)\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Beyond end of stream\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"Unexpectedly succeeded reading beyond expected end of stream\00", align 1
@exp_golomb_large = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Second largest 32-bit value\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Failed to get second largest 32-bit value\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Largest 32-bit value\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Failed to get largest 32-bit value\00", align 1
@exp_golomb_oversize = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"Unsigned 33-bit value\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Unexpectedly got 33-bit value: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_read_u32_exp_golomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_read_u32_exp_golomb() #0 {
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

10:                                               ; preds = %25, %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 11
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = call i32 @BITS_READ_U32_EXP(i32* null, i32* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %18, %13
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %10

28:                                               ; preds = %10
  %29 = call i32 @BITS_READ_U32(i32* null, i32* %1, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %29, i32* %3, align 4
  %30 = call i64 @BITS_VALID(i32* null, i32* %1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32, %28
  %36 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = call i32 @BITS_READ_U32_EXP(i32* null, i32* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 %40, i32* %3, align 4
  %41 = call i64 @BITS_VALID(i32* null, i32* %1)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43, %39
  %47 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* @exp_golomb_large, align 4
  %52 = load i32, i32* @exp_golomb_large, align 4
  %53 = call i32 @countof(i32 %52)
  %54 = call i32 @BITS_INIT(i32* null, i32* %1, i32 %51, i32 %53)
  %55 = call i32 @BITS_READ_U32_EXP(i32* null, i32* %1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, -2
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %50
  %63 = call i32 @BITS_READ_U32_EXP(i32* null, i32* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* @exp_golomb_oversize, align 4
  %72 = load i32, i32* @exp_golomb_oversize, align 4
  %73 = call i32 @countof(i32 %72)
  %74 = call i32 @BITS_INIT(i32* null, i32* %1, i32 %71, i32 %73)
  %75 = call i32 @BITS_READ_U32_EXP(i32* null, i32* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  store i32 %75, i32* %3, align 4
  %76 = call i64 @BITS_VALID(i32* null, i32* %1)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78, %70
  %82 = load i32, i32* %3, align 4
  %83 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %78
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @LOG_DEBUG(i32*, i8*) #1

declare dso_local i32 @BITS_INIT(i32*, i32*, i32, i32) #1

declare dso_local i32 @countof(i32) #1

declare dso_local i32 @BITS_READ_U32_EXP(i32*, i32*, i8*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*, ...) #1

declare dso_local i32 @BITS_READ_U32(i32*, i32*, i32, i8*) #1

declare dso_local i64 @BITS_VALID(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
