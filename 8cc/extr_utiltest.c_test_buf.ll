; ModuleID = '/home/carl/AnghaBench/8cc/extr_utiltest.c_test_buf.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_utiltest.c_test_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c".0123456789\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_buf() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* (...) @make_buffer()
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i32 @buf_write(i32* %4, i8 signext 97)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @buf_write(i32* %6, i8 signext 98)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @buf_write(i32* %8, i8 signext 0)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @buf_body(i32* %10)
  %12 = call i32 @assert_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32* (...) @make_buffer()
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @buf_write(i32* %14, i8 signext 46)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @buf_printf(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @buf_body(i32* %18)
  %20 = call i32 @assert_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  ret void
}

declare dso_local i32* @make_buffer(...) #1

declare dso_local i32 @buf_write(i32*, i8 signext) #1

declare dso_local i32 @assert_string(i8*, i32) #1

declare dso_local i32 @buf_body(i32*) #1

declare dso_local i32 @buf_printf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
