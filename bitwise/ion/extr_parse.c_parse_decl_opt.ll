; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_decl_opt.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_decl_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@token = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@enum_keyword = common dso_local global i32 0, align 4
@struct_keyword = common dso_local global i32 0, align 4
@DECL_STRUCT = common dso_local global i32 0, align 4
@union_keyword = common dso_local global i32 0, align 4
@DECL_UNION = common dso_local global i32 0, align 4
@const_keyword = common dso_local global i32 0, align 4
@typedef_keyword = common dso_local global i32 0, align 4
@func_keyword = common dso_local global i32 0, align 4
@var_keyword = common dso_local global i32 0, align 4
@import_keyword = common dso_local global i32 0, align 4
@TOKEN_POUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_decl_opt() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 0), align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @enum_keyword, align 4
  %5 = call i64 @match_keyword(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = call i32* @parse_decl_enum(i32 %8)
  store i32* %9, i32** %1, align 8
  br label %69

10:                                               ; preds = %0
  %11 = load i32, i32* @struct_keyword, align 4
  %12 = call i64 @match_keyword(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @DECL_STRUCT, align 4
  %17 = call i32* @parse_decl_aggregate(i32 %15, i32 %16)
  store i32* %17, i32** %1, align 8
  br label %69

18:                                               ; preds = %10
  %19 = load i32, i32* @union_keyword, align 4
  %20 = call i64 @match_keyword(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @DECL_UNION, align 4
  %25 = call i32* @parse_decl_aggregate(i32 %23, i32 %24)
  store i32* %25, i32** %1, align 8
  br label %69

26:                                               ; preds = %18
  %27 = load i32, i32* @const_keyword, align 4
  %28 = call i64 @match_keyword(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = call i32* @parse_decl_const(i32 %31)
  store i32* %32, i32** %1, align 8
  br label %69

33:                                               ; preds = %26
  %34 = load i32, i32* @typedef_keyword, align 4
  %35 = call i64 @match_keyword(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  %39 = call i32* @parse_decl_typedef(i32 %38)
  store i32* %39, i32** %1, align 8
  br label %69

40:                                               ; preds = %33
  %41 = load i32, i32* @func_keyword, align 4
  %42 = call i64 @match_keyword(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %2, align 4
  %46 = call i32* @parse_decl_func(i32 %45)
  store i32* %46, i32** %1, align 8
  br label %69

47:                                               ; preds = %40
  %48 = load i32, i32* @var_keyword, align 4
  %49 = call i64 @match_keyword(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %2, align 4
  %53 = call i32* @parse_decl_var(i32 %52)
  store i32* %53, i32** %1, align 8
  br label %69

54:                                               ; preds = %47
  %55 = load i32, i32* @import_keyword, align 4
  %56 = call i64 @match_keyword(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %2, align 4
  %60 = call i32* @parse_decl_import(i32 %59)
  store i32* %60, i32** %1, align 8
  br label %69

61:                                               ; preds = %54
  %62 = load i32, i32* @TOKEN_POUND, align 4
  %63 = call i64 @match_token(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %2, align 4
  %67 = call i32* @parse_decl_note(i32 %66)
  store i32* %67, i32** %1, align 8
  br label %69

68:                                               ; preds = %61
  store i32* null, i32** %1, align 8
  br label %69

69:                                               ; preds = %68, %65, %58, %51, %44, %37, %30, %22, %14, %7
  %70 = load i32*, i32** %1, align 8
  ret i32* %70
}

declare dso_local i64 @match_keyword(i32) #1

declare dso_local i32* @parse_decl_enum(i32) #1

declare dso_local i32* @parse_decl_aggregate(i32, i32) #1

declare dso_local i32* @parse_decl_const(i32) #1

declare dso_local i32* @parse_decl_typedef(i32) #1

declare dso_local i32* @parse_decl_func(i32) #1

declare dso_local i32* @parse_decl_var(i32) #1

declare dso_local i32* @parse_decl_import(i32) #1

declare dso_local i64 @match_token(i32) #1

declare dso_local i32* @parse_decl_note(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
