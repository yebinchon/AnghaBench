; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_reset_and_available.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_reset_and_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [64 x i8] c"Testing vc_container_bits_reset and vc_container_bits_available\00", align 1
@bits_0_to_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Expected initialised stream to contain bits\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Expected reset stream not to contain bits\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_reset_and_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_reset_and_available() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @bits_0_to_10, align 4
  %5 = load i32, i32* @bits_0_to_10, align 4
  %6 = call i32 @countof(i32 %5)
  %7 = call i32 @BITS_INIT(i32* null, i32* %1, i32 %4, i32 %6)
  %8 = call i64 @BITS_AVAILABLE(i32* null, i32* %1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %10, %0
  %15 = call i32 @BITS_RESET(i32* null, i32* %1)
  %16 = call i64 @BITS_AVAILABLE(i32* null, i32* %1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @LOG_DEBUG(i32*, i8*) #1

declare dso_local i32 @BITS_INIT(i32*, i32*, i32, i32) #1

declare dso_local i32 @countof(i32) #1

declare dso_local i64 @BITS_AVAILABLE(i32*, i32*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*) #1

declare dso_local i32 @BITS_RESET(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
