; ModuleID = '/home/carl/AnghaBench/esp-idf/components/newlib/extr_random.c_getrandom.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/newlib/extr_random.c_getrandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"getrandom(buf=0x%x, buflen=%d, flags=%u)\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"getrandom returns -1 (EFAULT)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"getrandom returns %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getrandom(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @TAG, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = ptrtoint i8* %9 to i32
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %11, i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @EFAULT, align 4
  store i32 %17, i32* @errno, align 4
  %18 = load i32, i32* @TAG, align 4
  %19 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @esp_fill_random(i8* %21, i64 %22)
  %24 = load i32, i32* @TAG, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %20, %16
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i32 @esp_fill_random(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
