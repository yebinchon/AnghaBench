; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_eddystone/main/extr_esp_eddystone_api.c_esp_eddystone_resolve_url_scheme.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_eddystone/main/extr_esp_eddystone_api.c_esp_eddystone_resolve_url_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@esp_eddystone_resolve_url_scheme.url_buf = internal global [100 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@eddystone_url_prefix = common dso_local global i8** null, align 8
@eddystone_url_encoding = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64*, i64*)* @esp_eddystone_resolve_url_scheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @esp_eddystone_resolve_url_scheme(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i64*, i64** %3, align 8
  store i64* %7, i64** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* @esp_eddystone_resolve_url_scheme.url_buf, i64 0, i64 %9
  %11 = load i8**, i8*** @eddystone_url_prefix, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = getelementptr inbounds i64, i64* %12, i32 1
  store i64* %13, i64** %6, align 8
  %14 = load i64, i64* %12, align 8
  %15 = getelementptr inbounds i8*, i8** %11, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %57, %2
  %23 = load i64*, i64** %6, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = icmp ule i64* %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load i64*, i64** %6, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @esp_eddystone_is_char_invalid(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* @esp_eddystone_resolve_url_scheme.url_buf, i64 0, i64 %33
  %35 = load i8**, i8*** @eddystone_url_encoding, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %56

45:                                               ; preds = %26
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [100 x i8], [100 x i8]* @esp_eddystone_resolve_url_scheme.url_buf, i64 0, i64 %47
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  %51 = call i64 (i8*, i8*, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %45, %31
  br label %57

57:                                               ; preds = %56
  %58 = load i64*, i64** %6, align 8
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %59, i64** %6, align 8
  br label %22

60:                                               ; preds = %22
  ret i8* getelementptr inbounds ([100 x i8], [100 x i8]* @esp_eddystone_resolve_url_scheme.url_buf, i64 0, i64 0)
}

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @esp_eddystone_is_char_invalid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
