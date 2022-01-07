; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_client/lib/extr_http_utils.c_http_utils_get_string_between.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_client/lib/extr_http_utils.c_http_utils_get_string_between.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @http_utils_get_string_between(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i8* @strstr(i8* %11, i8* %12)
  store i8* %13, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %49

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = load i8*, i8** %8, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @strstr(i8* %22, i8* %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %16
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = add nsw i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = call i8* @calloc(i32 1, i32 %34)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @mem_check(i8* %36)
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(i8* %38, i8* %39, i32 %45)
  %47 = load i8*, i8** %9, align 8
  store i8* %47, i8** %4, align 8
  br label %50

48:                                               ; preds = %16
  br label %49

49:                                               ; preds = %48, %3
  store i8* null, i8** %4, align 8
  br label %50

50:                                               ; preds = %49, %27
  %51 = load i8*, i8** %4, align 8
  ret i8* %51
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @mem_check(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
