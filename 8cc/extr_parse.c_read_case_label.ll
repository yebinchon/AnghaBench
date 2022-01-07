; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_case_label.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_case_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cases = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"stray case label\00", align 1
@KELLIPSIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"case region is not in correct order: %d ... %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @read_case_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_case_label(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @cases, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 (i32*, i8*, ...) @errort(i32* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = call i8* (...) @make_label()
  store i8* %12, i8** %3, align 8
  %13 = call i32 (...) @read_intexpr()
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @KELLIPSIS, align 4
  %15 = call i64 @next_token(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = call i32 (...) @read_intexpr()
  store i32 %18, i32* %5, align 4
  %19 = call i32 @expect(i8 signext 58)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i32*, i8*, ...) @errort(i32* %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %17
  %29 = load i32, i32* @cases, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @make_case(i32 %30, i32 %31, i8* %32)
  %34 = call i32 @vec_push(i32 %29, i32 %33)
  br label %43

35:                                               ; preds = %11
  %36 = call i32 @expect(i8 signext 58)
  %37 = load i32, i32* @cases, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @make_case(i32 %38, i32 %39, i8* %40)
  %42 = call i32 @vec_push(i32 %37, i32 %41)
  br label %43

43:                                               ; preds = %35, %28
  %44 = load i32, i32* @cases, align 4
  %45 = call i32 @check_case_duplicates(i32 %44)
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @ast_dest(i8* %46)
  %48 = call i32* @read_label_tail(i32 %47)
  ret i32* %48
}

declare dso_local i32 @errort(i32*, i8*, ...) #1

declare dso_local i8* @make_label(...) #1

declare dso_local i32 @read_intexpr(...) #1

declare dso_local i64 @next_token(i32) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32 @vec_push(i32, i32) #1

declare dso_local i32 @make_case(i32, i32, i8*) #1

declare dso_local i32 @check_case_duplicates(i32) #1

declare dso_local i32* @read_label_tail(i32) #1

declare dso_local i32 @ast_dest(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
