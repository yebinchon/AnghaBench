; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_generic_list.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_generic_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KDEFAULT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [35 x i8] c"default expression specified twice\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**)* @read_generic_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_generic_list(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32** %0, i32*** %2, align 8
  %7 = call i32* (...) @make_vector()
  store i32* %7, i32** %3, align 8
  br label %8

8:                                                ; preds = %38, %1
  %9 = call i64 @next_token(i8 signext 41)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32*, i32** %3, align 8
  ret i32* %12

13:                                               ; preds = %8
  %14 = call i32* (...) @peek()
  store i32* %14, i32** %4, align 8
  %15 = load i8, i8* @KDEFAULT, align 1
  %16 = call i64 @next_token(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load i32**, i32*** %2, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @errort(i32* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %18
  %26 = call i32 @expect(i8 signext 58)
  %27 = call i32* (...) @read_assignment_expr()
  %28 = load i32**, i32*** %2, align 8
  store i32* %27, i32** %28, align 8
  br label %38

29:                                               ; preds = %13
  %30 = call i32* (...) @read_cast_type()
  store i32* %30, i32** %5, align 8
  %31 = call i32 @expect(i8 signext 58)
  %32 = call i32* (...) @read_assignment_expr()
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @make_pair(i32* %34, i32* %35)
  %37 = call i32 @vec_push(i32* %33, i32 %36)
  br label %38

38:                                               ; preds = %29, %25
  %39 = call i64 @next_token(i8 signext 44)
  br label %8
}

declare dso_local i32* @make_vector(...) #1

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local i32* @peek(...) #1

declare dso_local i32 @errort(i32*, i8*) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32* @read_assignment_expr(...) #1

declare dso_local i32* @read_cast_type(...) #1

declare dso_local i32 @vec_push(i32*, i32) #1

declare dso_local i32 @make_pair(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
