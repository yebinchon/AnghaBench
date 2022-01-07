; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_check_group_cipher.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_check_group_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPA_ALG_CCMP = common dso_local global i32 0, align 4
@WPA_ALG_TKIP = common dso_local global i32 0, align 4
@WPA_ALG_WEP104 = common dso_local global i32 0, align 4
@WPA_ALG_WEP40 = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_check_group_cipher(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %58 [
    i32 131, label %14
    i32 130, label %25
    i32 129, label %36
    i32 128, label %47
  ]

14:                                               ; preds = %5
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 16
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  store i32 -1, i32* %12, align 4
  br label %59

21:                                               ; preds = %17
  %22 = load i32*, i32** %10, align 8
  store i32 6, i32* %22, align 4
  %23 = load i32, i32* @WPA_ALG_CCMP, align 4
  %24 = load i32*, i32** %11, align 8
  store i32 %23, i32* %24, align 4
  br label %59

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 32
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 32
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25
  store i32 -1, i32* %12, align 4
  br label %59

32:                                               ; preds = %28
  %33 = load i32*, i32** %10, align 8
  store i32 6, i32* %33, align 4
  %34 = load i32, i32* @WPA_ALG_TKIP, align 4
  %35 = load i32*, i32** %11, align 8
  store i32 %34, i32* %35, align 4
  br label %59

36:                                               ; preds = %5
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 13
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 13
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36
  store i32 -1, i32* %12, align 4
  br label %59

43:                                               ; preds = %39
  %44 = load i32*, i32** %10, align 8
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* @WPA_ALG_WEP104, align 4
  %46 = load i32*, i32** %11, align 8
  store i32 %45, i32* %46, align 4
  br label %59

47:                                               ; preds = %5
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 5
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 5
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %47
  store i32 -1, i32* %12, align 4
  br label %59

54:                                               ; preds = %50
  %55 = load i32*, i32** %10, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* @WPA_ALG_WEP40, align 4
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  br label %59

58:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %65

59:                                               ; preds = %54, %53, %43, %42, %32, %31, %21, %20
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
