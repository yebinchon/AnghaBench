; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_confdata.c_add_byte.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_confdata.c_add_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINE_GROWTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i64, i64*)* @add_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_byte(i32 %0, i8** %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %14, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %4
  %19 = load i32, i32* @LINE_GROWTH, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %11, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = mul i64 %24, 2
  store i64 %25, i64* %11, align 8
  %26 = load i8**, i8*** %7, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i8* @realloc(i8* %27, i64 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %45

33:                                               ; preds = %18
  %34 = load i8*, i8** %10, align 8
  %35 = load i8**, i8*** %7, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64*, i64** %9, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %4
  %39 = load i32, i32* %6, align 4
  %40 = trunc i32 %39 to i8
  %41 = load i8**, i8*** %7, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 %40, i8* %44, align 1
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %38, %32
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
