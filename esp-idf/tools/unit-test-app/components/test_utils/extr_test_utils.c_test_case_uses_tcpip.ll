; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/unit-test-app/components/test_utils/extr_test_utils.c_test_case_uses_tcpip.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/unit-test-app/components/test_utils/extr_test_utils.c_test_case_uses_tcpip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_LWIP_MAX_SOCKETS = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [128 x i8] c"Note: esp_netif_init() has been called. Until next reset, TCP/IP task will periodicially allocate memory and consume CPU time.\0A\00", align 1
@TYPE_LEAK_CRITICAL = common dso_local global i32 0, align 4
@COMP_LEAK_GENERAL = common dso_local global i32 0, align 4
@CONFIG_UNITY_CRITICAL_LEAK_LEVEL_LWIP = common dso_local global i32 0, align 4
@COMP_LEAK_LWIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_case_uses_tcpip() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @esp_netif_init()
  %8 = load i32, i32* @CONFIG_LWIP_MAX_SOCKETS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %42, %0
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @CONFIG_LWIP_MAX_SOCKETS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = srem i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @SOCK_DGRAM, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @SOCK_STREAM, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = srem i32 %26, 3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @PF_INET6, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @PF_INET, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IPPROTO_IP, align 4
  %38 = call i32 @socket(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %11, i64 %40
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %12

45:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %56, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @CONFIG_LWIP_MAX_SOCKETS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %11, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @close(i32 %54)
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %46

59:                                               ; preds = %46
  %60 = load i32, i32* @portTICK_RATE_MS, align 4
  %61 = sdiv i32 25, %60
  %62 = call i32 @vTaskDelay(i32 %61)
  %63 = call i32 @printf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str, i64 0, i64 0))
  %64 = call i32 (...) @unity_reset_leak_checks()
  %65 = load i32, i32* @TYPE_LEAK_CRITICAL, align 4
  %66 = load i32, i32* @COMP_LEAK_GENERAL, align 4
  %67 = call i32 @test_utils_set_leak_level(i32 0, i32 %65, i32 %66)
  %68 = load i32, i32* @CONFIG_UNITY_CRITICAL_LEAK_LEVEL_LWIP, align 4
  %69 = load i32, i32* @TYPE_LEAK_CRITICAL, align 4
  %70 = load i32, i32* @COMP_LEAK_LWIP, align 4
  %71 = call i32 @test_utils_set_leak_level(i32 %68, i32 %69, i32 %70)
  %72 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %72)
  ret void
}

declare dso_local i32 @esp_netif_init(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @unity_reset_leak_checks(...) #1

declare dso_local i32 @test_utils_set_leak_level(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
