; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_reduce_bytes.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_reduce_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"Testing vc_container_bits_reduce_bytes\00", align 1
@bits_0_to_10 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Expected bytes available to initially match given size\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Expected initial current pointer to match original buffer\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"test_reduce_bytes\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Did not expect current pointer to have moved\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"Tried to reduce by %u byte%s, actually reduced by %d byte%s\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Reached end of stream too soon\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Expected stream to be valid\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Reducing an empty stream\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Unexpectedly succeeded reducing by too many bytes\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Expected stream to have been reset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_reduce_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_reduce_bytes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  %7 = call i32 @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* @bits_0_to_10, align 8
  %9 = load i64, i64* @bits_0_to_10, align 8
  %10 = call i64 @countof(i64 %9)
  %11 = call i32 @BITS_INIT(i32* null, i32* %1, i64 %8, i64 %10)
  %12 = call i64 @BITS_BYTES_AVAILABLE(i32* null, i32* %1)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @bits_0_to_10, align 8
  %15 = call i64 @countof(i64 %14)
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %0
  %18 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %0
  %22 = call i64 @BITS_CURRENT_POINTER(i32* null, i32* %1)
  %23 = load i64, i64* @bits_0_to_10, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %21
  store i64 0, i64* %2, align 8
  br label %30

30:                                               ; preds = %65, %29
  %31 = load i64, i64* %2, align 8
  %32 = icmp slt i64 %31, 4
  br i1 %32, label %33, label %68

33:                                               ; preds = %30
  %34 = load i64, i64* %2, align 8
  %35 = call i32 @BITS_REDUCE_BYTES(i32* null, i32* %1, i64 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i64 @BITS_CURRENT_POINTER(i32* null, i32* %1)
  %37 = load i64, i64* @bits_0_to_10, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = call i64 @BITS_BYTES_AVAILABLE(i32* null, i32* %1)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %2, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = sub nsw i64 %51, %52
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %2, align 8
  %55 = load i64, i64* %2, align 8
  %56 = call i32 @plural_ext(i64 %55)
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @plural_ext(i64 %58)
  %60 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i64 %54, i32 %56, i64 %57, i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %50, %43
  %64 = load i64, i64* %5, align 8
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %63
  %66 = load i64, i64* %2, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %2, align 8
  br label %30

68:                                               ; preds = %30
  %69 = load i64, i64* %5, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %68
  %76 = call i64 @BITS_VALID(i32* null, i32* %1)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i64, i64* %5, align 8
  %84 = add nsw i64 %83, 1
  %85 = call i32 @BITS_REDUCE_BYTES(i32* null, i32* %1, i64 %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %86 = call i64 @BITS_VALID(i32* null, i32* %1)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %82
  %93 = call i64 @BITS_AVAILABLE(i32* null, i32* %1)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %95, %92
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @LOG_DEBUG(i32*, i8*) #1

declare dso_local i32 @BITS_INIT(i32*, i32*, i64, i64) #1

declare dso_local i64 @countof(i64) #1

declare dso_local i64 @BITS_BYTES_AVAILABLE(i32*, i32*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*, ...) #1

declare dso_local i64 @BITS_CURRENT_POINTER(i32*, i32*) #1

declare dso_local i32 @BITS_REDUCE_BYTES(i32*, i32*, i64, i8*) #1

declare dso_local i32 @plural_ext(i64) #1

declare dso_local i64 @BITS_VALID(i32*, i32*) #1

declare dso_local i64 @BITS_AVAILABLE(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
