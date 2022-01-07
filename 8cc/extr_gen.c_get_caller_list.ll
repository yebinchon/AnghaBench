; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_get_caller_list.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_get_caller_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@functions = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_caller_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_caller_list() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32* (...) @make_buffer()
  store i32* %3, i32** %1, align 8
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %21, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @functions, align 4
  %7 = call i32 @vec_len(i32 %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = load i32, i32* %2, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 (i32*, i8*, ...) @buf_printf(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i32*, i32** %1, align 8
  %17 = load i32, i32* @functions, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @vec_get(i32 %17, i32 %18)
  %20 = call i32 (i32*, i8*, ...) @buf_printf(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %4

24:                                               ; preds = %4
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @buf_write(i32* %25, i8 signext 0)
  %27 = load i32*, i32** %1, align 8
  %28 = call i8* @buf_body(i32* %27)
  ret i8* %28
}

declare dso_local i32* @make_buffer(...) #1

declare dso_local i32 @vec_len(i32) #1

declare dso_local i32 @buf_printf(i32*, i8*, ...) #1

declare dso_local i32 @vec_get(i32, i32) #1

declare dso_local i32 @buf_write(i32*, i8 signext) #1

declare dso_local i8* @buf_body(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
