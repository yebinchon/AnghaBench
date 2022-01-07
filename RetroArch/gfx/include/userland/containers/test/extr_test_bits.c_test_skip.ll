; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_skip.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Testing vc_container_bits_skip\00", align 1
@bits_0_to_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"test_skip\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Tried to skip %u bit%s, actually skipped %d bit%s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Final bit\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to skip final bit\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"End of stream not reached by skipping\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Beyond final bit\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"Unexpectedly succeeded skipping beyond expected end of stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_skip() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %7 = call i32 @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @bits_0_to_10, align 4
  %9 = load i32, i32* @bits_0_to_10, align 4
  %10 = call i32 @countof(i32 %9)
  %11 = call i32 @BITS_INIT(i32* null, i32* %1, i32 %8, i32 %10)
  %12 = call i32 @BITS_AVAILABLE(i32* null, i32* %1)
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %40, %0
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 11
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @BITS_SKIP(i32* null, i32* %1, i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @BITS_AVAILABLE(i32* null, i32* %1)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @plural_ext(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @plural_ext(i32 %33)
  %35 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 %31, i32 %32, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %25, %16
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %13

43:                                               ; preds = %13
  %44 = call i32 @BITS_SKIP(i32* null, i32* %1, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i64 @BITS_VALID(i32* null, i32* %1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = call i32 @BITS_AVAILABLE(i32* null, i32* %1)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = call i32 @BITS_SKIP(i32* null, i32* %1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %60 = call i64 @BITS_VALID(i32* null, i32* %1)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0))
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @LOG_DEBUG(i32*, i8*) #1

declare dso_local i32 @BITS_INIT(i32*, i32*, i32, i32) #1

declare dso_local i32 @countof(i32) #1

declare dso_local i32 @BITS_AVAILABLE(i32*, i32*) #1

declare dso_local i32 @BITS_SKIP(i32*, i32*, i32, i8*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*, ...) #1

declare dso_local i32 @plural_ext(i32) #1

declare dso_local i64 @BITS_VALID(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
