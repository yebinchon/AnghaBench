; ModuleID = '/home/carl/AnghaBench/8cc/extr_lex.c_read_string.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_lex.c_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@pos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unterminated string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @read_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32* (...) @make_buffer()
  store i32* %6, i32** %3, align 8
  br label %7

7:                                                ; preds = %45, %41, %22, %1
  %8 = call i32 (...) @readc()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EOF, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32, i32* @pos, align 4
  %14 = call i32 @errorp(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %7
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 34
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %50

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 92
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = trunc i32 %24 to i8
  %26 = call i32 @buf_write(i32* %23, i8 signext %25)
  br label %7

27:                                               ; preds = %19
  %28 = call zeroext i8 (...) @peek()
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 117
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = call zeroext i8 (...) @peek()
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 85
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ true, %27 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = call i32 (...) @read_escaped_char()
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @write_utf8(i32* %42, i32 %43)
  br label %7

45:                                               ; preds = %35
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = trunc i32 %47 to i8
  %49 = call i32 @buf_write(i32* %46, i8 signext %48)
  br label %7

50:                                               ; preds = %18
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @buf_write(i32* %51, i8 signext 0)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @buf_body(i32* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @buf_len(i32* %55)
  %57 = load i32, i32* %2, align 4
  %58 = call i32* @make_strtok(i32 %54, i32 %56, i32 %57)
  ret i32* %58
}

declare dso_local i32* @make_buffer(...) #1

declare dso_local i32 @readc(...) #1

declare dso_local i32 @errorp(i32, i8*) #1

declare dso_local i32 @buf_write(i32*, i8 signext) #1

declare dso_local zeroext i8 @peek(...) #1

declare dso_local i32 @read_escaped_char(...) #1

declare dso_local i32 @write_utf8(i32*, i32) #1

declare dso_local i32* @make_strtok(i32, i32, i32) #1

declare dso_local i32 @buf_body(i32*) #1

declare dso_local i32 @buf_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
