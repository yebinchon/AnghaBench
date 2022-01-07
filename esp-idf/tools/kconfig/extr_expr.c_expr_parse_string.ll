; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_expr.c_expr_parse_string.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_expr.c_expr_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.string_value = type { i8* }

@errno = common dso_local global i64 0, align 8
@k_string = common dso_local global i32 0, align 4
@k_signed = common dso_local global i32 0, align 4
@k_unsigned = common dso_local global i32 0, align 4
@k_invalid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %union.string_value*)* @expr_parse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expr_parse_string(i8* %0, i32 %1, %union.string_value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.string_value*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.string_value* %2, %union.string_value** %7, align 8
  store i64 0, i64* @errno, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %31 [
    i32 133, label %11
    i32 129, label %11
    i32 131, label %13
    i32 132, label %19
    i32 130, label %25
    i32 128, label %25
  ]

11:                                               ; preds = %3, %3
  %12 = load i32, i32* @k_string, align 4
  store i32 %12, i32* %4, align 4
  br label %56

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strtoll(i8* %14, i8** %8, i32 10)
  %16 = load %union.string_value*, %union.string_value** %7, align 8
  %17 = bitcast %union.string_value* %16 to i8**
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @k_signed, align 4
  store i32 %18, i32* %9, align 4
  br label %33

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strtoull(i8* %20, i8** %8, i32 16)
  %22 = load %union.string_value*, %union.string_value** %7, align 8
  %23 = bitcast %union.string_value* %22 to i32*
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @k_unsigned, align 4
  store i32 %24, i32* %9, align 4
  br label %33

25:                                               ; preds = %3, %3
  %26 = load i8*, i8** %5, align 8
  %27 = call i8* @strtoll(i8* %26, i8** %8, i32 0)
  %28 = load %union.string_value*, %union.string_value** %7, align 8
  %29 = bitcast %union.string_value* %28 to i8**
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @k_signed, align 4
  store i32 %30, i32* %9, align 4
  br label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @k_invalid, align 4
  store i32 %32, i32* %4, align 4
  br label %56

33:                                               ; preds = %25, %19, %13
  %34 = load i64, i64* @errno, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ugt i8* %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 -1
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @isxdigit(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  br label %54

52:                                               ; preds = %44, %40, %36, %33
  %53 = load i32, i32* @k_string, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %31, %11
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i8* @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i64 @isxdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
