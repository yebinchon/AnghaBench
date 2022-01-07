; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_skip_exp_golomb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_skip_exp_golomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"Testing vc_container_bits_skip_exp_golomb\00", align 1
@exp_golomb_0_to_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"test_skip_exp_golomb\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to skip through buffer\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Skip beyond end of stream\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"Unexpectedly succeeded skipping beyond expected end of stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_skip_exp_golomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_skip_exp_golomb() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @exp_golomb_0_to_10, align 4
  %6 = load i32, i32* @exp_golomb_0_to_10, align 4
  %7 = call i32 @countof(i32 %6)
  %8 = call i32 @BITS_INIT(i32* null, i32* %1, i32 %5, i32 %7)
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %14, %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 12
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = call i32 @BITS_SKIP_EXP(i32* null, i32* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %9

17:                                               ; preds = %9
  %18 = call i64 @BITS_VALID(i32* null, i32* %1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = call i32 @BITS_SKIP_EXP(i32* null, i32* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i64 @BITS_VALID(i32* null, i32* %1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @LOG_DEBUG(i32*, i8*) #1

declare dso_local i32 @BITS_INIT(i32*, i32*, i32, i32) #1

declare dso_local i32 @countof(i32) #1

declare dso_local i32 @BITS_SKIP_EXP(i32*, i32*, i8*) #1

declare dso_local i64 @BITS_VALID(i32*, i32*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
