; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_ptr_and_skip_bytes.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_ptr_and_skip_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [110 x i8] c"Testing vc_container_bits_current_pointer, vc_container_bits_skip_bytes and vc_container_bits_bytes_available\00", align 1
@bits_0_to_10 = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Expected bytes available to initially match given size\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Expected initial current pointer to match original buffer\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"test_ptr_and_skip_bytes\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Expected current pointer to have moved by %u byte%s\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Tried to skip %u byte%s, actually skipped %d byte%s\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Reached end of stream too soon\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Expected stream to be valid\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Beyond end of stream\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"Unexpectedly succeeded skipping bytes beyond end of stream\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Expected stream to have been reset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_ptr_and_skip_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ptr_and_skip_bytes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %4, align 4
  %8 = call i32 @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** @bits_0_to_10, align 8
  %10 = load i32*, i32** @bits_0_to_10, align 8
  %11 = call i64 @countof(i32* %10)
  %12 = call i32 @BITS_INIT(i32* null, i32* %1, i32* %9, i64 %11)
  %13 = call i64 @BITS_BYTES_AVAILABLE(i32* null, i32* %1)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i32*, i32** @bits_0_to_10, align 8
  %16 = call i64 @countof(i32* %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %0
  %19 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %18, %0
  %23 = call i32* @BITS_CURRENT_POINTER(i32* null, i32* %1)
  %24 = load i32*, i32** @bits_0_to_10, align 8
  %25 = icmp ne i32* %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32*, i32** @bits_0_to_10, align 8
  store i32* %31, i32** %3, align 8
  store i64 0, i64* %2, align 8
  br label %32

32:                                               ; preds = %73, %30
  %33 = load i64, i64* %2, align 8
  %34 = icmp slt i64 %33, 4
  br i1 %34, label %35, label %76

35:                                               ; preds = %32
  %36 = load i64, i64* %2, align 8
  %37 = call i32 @BITS_SKIP_BYTES(i32* null, i32* %1, i64 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i64, i64* %2, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 %38
  store i32* %40, i32** %3, align 8
  %41 = call i32* @BITS_CURRENT_POINTER(i32* null, i32* %1)
  %42 = load i32*, i32** %3, align 8
  %43 = icmp ne i32* %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* %2, align 8
  %47 = call i32 @plural_ext(i64 %46)
  %48 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %45, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %44, %35
  %52 = call i64 @BITS_BYTES_AVAILABLE(i32* null, i32* %1)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %2, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* %5, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = sub nsw i64 %59, %60
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %2, align 8
  %63 = load i64, i64* %2, align 8
  %64 = call i32 @plural_ext(i64 %63)
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @plural_ext(i64 %66)
  %68 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i64 %62, i32 %64, i64 %65, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %58, %51
  %72 = load i64, i64* %6, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %71
  %74 = load i64, i64* %2, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %2, align 8
  br label %32

76:                                               ; preds = %32
  %77 = load i64, i64* %6, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %76
  %84 = call i64 @BITS_VALID(i32* null, i32* %1)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %83
  %91 = load i64, i64* %6, align 8
  %92 = add nsw i64 %91, 1
  %93 = call i32 @BITS_SKIP_BYTES(i32* null, i32* %1, i64 %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %94 = call i64 @BITS_VALID(i32* null, i32* %1)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0))
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %96, %90
  %101 = call i64 @BITS_BYTES_AVAILABLE(i32* null, i32* %1)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @LOG_DEBUG(i32*, i8*) #1

declare dso_local i32 @BITS_INIT(i32*, i32*, i32*, i64) #1

declare dso_local i64 @countof(i32*) #1

declare dso_local i64 @BITS_BYTES_AVAILABLE(i32*, i32*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*, ...) #1

declare dso_local i32* @BITS_CURRENT_POINTER(i32*, i32*) #1

declare dso_local i32 @BITS_SKIP_BYTES(i32*, i32*, i64, i8*) #1

declare dso_local i32 @plural_ext(i64) #1

declare dso_local i64 @BITS_VALID(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
