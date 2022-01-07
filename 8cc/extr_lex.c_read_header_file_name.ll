; ModuleID = '/home/carl/AnghaBench/8cc/extr_lex.c_read_header_file_name.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_lex.c_read_header_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"premature end of header name\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"header name should not be empty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_header_file_name(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = call i32 (...) @buffer_empty()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %60

11:                                               ; preds = %1
  %12 = call i32 (...) @skip_space()
  %13 = call i32 @get_pos(i32 0)
  store i32 %13, i32* %4, align 4
  %14 = call i64 @next(i8 signext 34)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32*, i32** %3, align 8
  store i32 0, i32* %17, align 4
  store i8 34, i8* %5, align 1
  br label %25

18:                                               ; preds = %11
  %19 = call i64 @next(i8 signext 60)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32*, i32** %3, align 8
  store i32 1, i32* %22, align 4
  store i8 62, i8* %5, align 1
  br label %24

23:                                               ; preds = %18
  store i8* null, i8** %2, align 8
  br label %60

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %16
  %26 = call i32* (...) @make_buffer()
  store i32* %26, i32** %6, align 8
  br label %27

27:                                               ; preds = %43, %25
  %28 = load i8, i8* %5, align 1
  %29 = call i64 @next(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = call i32 (...) @readc()
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @EOF, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @errorp(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = trunc i32 %45 to i8
  %47 = call i32 @buf_write(i32* %44, i8 signext %46)
  br label %27

48:                                               ; preds = %27
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @buf_len(i32* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @errorp(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @buf_write(i32* %56, i8 signext 0)
  %58 = load i32*, i32** %6, align 8
  %59 = call i8* @buf_body(i32* %58)
  store i8* %59, i8** %2, align 8
  br label %60

60:                                               ; preds = %55, %23, %10
  %61 = load i8*, i8** %2, align 8
  ret i8* %61
}

declare dso_local i32 @buffer_empty(...) #1

declare dso_local i32 @skip_space(...) #1

declare dso_local i32 @get_pos(i32) #1

declare dso_local i64 @next(i8 signext) #1

declare dso_local i32* @make_buffer(...) #1

declare dso_local i32 @readc(...) #1

declare dso_local i32 @errorp(i32, i8*) #1

declare dso_local i32 @buf_write(i32*, i8 signext) #1

declare dso_local i64 @buf_len(i32*) #1

declare dso_local i8* @buf_body(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
