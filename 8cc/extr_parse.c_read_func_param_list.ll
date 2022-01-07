; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_func_param_list.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_func_param_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KVOID = common dso_local global i8 0, align 1
@KELLIPSIS = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [48 x i8] c"at least one parameter is required before \22...\22\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid function definition\00", align 1
@type_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @read_func_param_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_func_param_list(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = call i32* (...) @get()
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i8, i8* @KVOID, align 1
  %15 = call i64 @is_keyword(i32* %13, i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = call i64 @next_token(i8 signext 41)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* (...) @make_vector()
  %23 = call i32* @make_func_type(i32* %21, i32* %22, i32 0, i32 0)
  store i32* %23, i32** %3, align 8
  br label %81

24:                                               ; preds = %17, %2
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @is_keyword(i32* %25, i8 signext 41)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* (...) @make_vector()
  %31 = call i32* @make_func_type(i32* %29, i32* %30, i32 1, i32 1)
  store i32* %31, i32** %3, align 8
  br label %81

32:                                               ; preds = %24
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @unget_token(i32* %33)
  %35 = call i32* (...) @peek()
  store i32* %35, i32** %7, align 8
  %36 = load i8, i8* @KELLIPSIS, align 1
  %37 = call i64 @next_token(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @errort(i32* %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %32
  %43 = call i32* (...) @peek()
  %44 = call i64 @is_type(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = call i32* (...) @make_vector()
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @read_declarator_params(i32* %48, i32* %49, i32* %8)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32* @make_func_type(i32* %51, i32* %52, i32 %53, i32 0)
  store i32* %54, i32** %3, align 8
  br label %81

55:                                               ; preds = %42
  %56 = load i32*, i32** %4, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @errort(i32* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @read_declarator_params_oldstyle(i32* %62)
  %64 = call i32* (...) @make_vector()
  store i32* %64, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %74, %61
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @vec_len(i32* %67)
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* @type_int, align 4
  %73 = call i32 @vec_push(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %65

77:                                               ; preds = %65
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = call i32* @make_func_type(i32* %78, i32* %79, i32 0, i32 1)
  store i32* %80, i32** %3, align 8
  br label %81

81:                                               ; preds = %77, %46, %28, %20
  %82 = load i32*, i32** %3, align 8
  ret i32* %82
}

declare dso_local i32* @get(...) #1

declare dso_local i64 @is_keyword(i32*, i8 signext) #1

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local i32* @make_func_type(i32*, i32*, i32, i32) #1

declare dso_local i32* @make_vector(...) #1

declare dso_local i32 @unget_token(i32*) #1

declare dso_local i32* @peek(...) #1

declare dso_local i32 @errort(i32*, i8*) #1

declare dso_local i64 @is_type(i32*) #1

declare dso_local i32 @read_declarator_params(i32*, i32*, i32*) #1

declare dso_local i32 @read_declarator_params_oldstyle(i32*) #1

declare dso_local i32 @vec_len(i32*) #1

declare dso_local i32 @vec_push(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
