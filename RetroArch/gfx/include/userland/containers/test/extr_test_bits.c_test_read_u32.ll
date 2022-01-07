; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_read_u32.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_read_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"Testing vc_container_bits_get_u32\00", align 1
@bits_0_to_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"test_read_u32\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Expected %u, got %u\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Final bit\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to get final bit\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Beyond final bit\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"Unexpectedly succeeded reading beyond expected end of stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_read_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_read_u32() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = call i32 @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @bits_0_to_10, align 4
  %7 = load i32, i32* @bits_0_to_10, align 4
  %8 = call i32 @countof(i32 %7)
  %9 = call i32 @BITS_INIT(i32* null, i32* %1, i32 %6, i32 %8)
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %26, %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 11
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @BITS_READ_U32(i32* null, i32* %1, i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %19, %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %10

29:                                               ; preds = %10
  %30 = call i32 @BITS_READ_U32(i32* null, i32* %1, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %30, i32* %3, align 4
  %31 = call i64 @BITS_VALID(i32* null, i32* %1)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33, %29
  %37 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = call i32 @BITS_READ_U32(i32* null, i32* %1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 %41, i32* %3, align 4
  %42 = call i64 @BITS_VALID(i32* null, i32* %1)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44, %40
  %48 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @LOG_DEBUG(i32*, i8*) #1

declare dso_local i32 @BITS_INIT(i32*, i32*, i32, i32) #1

declare dso_local i32 @countof(i32) #1

declare dso_local i32 @BITS_READ_U32(i32*, i32*, i32, i8*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*, ...) #1

declare dso_local i64 @BITS_VALID(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
