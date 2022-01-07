; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_href_extractor.c_write_callback.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_href_extractor.c_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"href\00", align 1
@HTML_VALUE_ENDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_callback(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = mul i64 %11, %12
  store i64 %13, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %49, %4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @html_parser_char_parse(i8* %19, i8 signext %23)
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @html_parser_cmp_tag(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %18
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @html_parser_cmp_attr(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @HTML_VALUE_ENDED, align 4
  %35 = call i64 @html_parser_is_in(i8* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = call i8* @html_parser_val(i8* %38)
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @html_parser_val_length(i8* %40)
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %8, align 8
  %44 = call i8* @html_parser_val(i8* %43)
  %45 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %37, %32
  br label %47

47:                                               ; preds = %46, %28
  br label %48

48:                                               ; preds = %47, %18
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %10, align 8
  br label %14

52:                                               ; preds = %14
  %53 = load i64, i64* %9, align 8
  ret i64 %53
}

declare dso_local i32 @html_parser_char_parse(i8*, i8 signext) #1

declare dso_local i64 @html_parser_cmp_tag(i8*, i8*, i32) #1

declare dso_local i64 @html_parser_cmp_attr(i8*, i8*, i32) #1

declare dso_local i64 @html_parser_is_in(i8*, i32) #1

declare dso_local i8* @html_parser_val(i8*) #1

declare dso_local i64 @html_parser_val_length(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
