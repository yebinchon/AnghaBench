; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_declarator_params.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_declarator_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KELLIPSIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"at least one parameter is required before \22...\22\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"comma expected, but got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @read_declarator_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_declarator_params(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %62, %3
  %17 = call i32* (...) @peek()
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* @KELLIPSIS, align 4
  %19 = call i64 @next_token(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @vec_len(i32* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 (i32*, i8*, ...) @errort(i32* %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  %29 = call i32 @expect(i8 signext 41)
  %30 = load i32*, i32** %6, align 8
  store i32 1, i32* %30, align 4
  br label %63

31:                                               ; preds = %16
  %32 = load i32, i32* %7, align 4
  %33 = call i32* @read_func_param(i8** %9, i32 %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @ensure_not_void(i32* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @vec_push(i32* %36, i32* %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %31
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32* @ast_lvar(i32* %43, i8* %44)
  %46 = call i32 @vec_push(i32* %42, i32* %45)
  br label %47

47:                                               ; preds = %41, %31
  %48 = call i32* (...) @get()
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i64 @is_keyword(i32* %49, i8 signext 41)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %63

53:                                               ; preds = %47
  %54 = load i32*, i32** %8, align 8
  %55 = call i64 @is_keyword(i32* %54, i8 signext 44)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @tok2s(i32* %59)
  %61 = call i32 (i32*, i8*, ...) @errort(i32* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %53
  br label %16

63:                                               ; preds = %52, %28
  ret void
}

declare dso_local i32* @peek(...) #1

declare dso_local i64 @next_token(i32) #1

declare dso_local i64 @vec_len(i32*) #1

declare dso_local i32 @errort(i32*, i8*, ...) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32* @read_func_param(i8**, i32) #1

declare dso_local i32 @ensure_not_void(i32*) #1

declare dso_local i32 @vec_push(i32*, i32*) #1

declare dso_local i32* @ast_lvar(i32*, i8*) #1

declare dso_local i32* @get(...) #1

declare dso_local i64 @is_keyword(i32*, i8 signext) #1

declare dso_local i32 @tok2s(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
