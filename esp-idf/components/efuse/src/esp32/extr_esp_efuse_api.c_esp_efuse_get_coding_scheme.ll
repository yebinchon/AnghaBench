; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32/extr_esp_efuse_api.c_esp_efuse_get_coding_scheme.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32/extr_esp_efuse_api.c_esp_efuse_get_coding_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFUSE_BLK0 = common dso_local global i64 0, align 8
@EFUSE_CODING_SCHEME_NONE = common dso_local global i32 0, align 4
@EFUSE_BLK0_RDATA6_REG = common dso_local global i32 0, align 4
@EFUSE_CODING_SCHEME = common dso_local global i32 0, align 4
@EFUSE_CODING_SCHEME_VAL_NONE = common dso_local global i32 0, align 4
@EFUSE_CODING_SCHEME_VAL_34 = common dso_local global i32 0, align 4
@EFUSE_CODING_SCHEME_VAL_REPEAT = common dso_local global i32 0, align 4
@EFUSE_CODING_SCHEME_3_4 = common dso_local global i32 0, align 4
@EFUSE_CODING_SCHEME_REPEAT = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"coding scheme %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_efuse_get_coding_scheme(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @EFUSE_BLK0, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @EFUSE_CODING_SCHEME_NONE, align 4
  store i32 %9, i32* %3, align 4
  br label %35

10:                                               ; preds = %1
  %11 = load i32, i32* @EFUSE_BLK0_RDATA6_REG, align 4
  %12 = load i32, i32* @EFUSE_CODING_SCHEME, align 4
  %13 = call i32 @REG_GET_FIELD(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @EFUSE_CODING_SCHEME_VAL_NONE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @EFUSE_CODING_SCHEME_VAL_34, align 4
  %20 = load i32, i32* @EFUSE_CODING_SCHEME_VAL_REPEAT, align 4
  %21 = or i32 %19, %20
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17, %10
  %24 = load i32, i32* @EFUSE_CODING_SCHEME_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %34

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @EFUSE_CODING_SCHEME_VAL_34, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @EFUSE_CODING_SCHEME_3_4, align 4
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @EFUSE_CODING_SCHEME_REPEAT, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %29
  br label %34

34:                                               ; preds = %33, %23
  br label %35

35:                                               ; preds = %34, %8
  %36 = load i32, i32* @TAG, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ESP_LOGD(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
