; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_do_stmt.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_do_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KWHILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"'while' is expected, but got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @read_do_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_do_stmt() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = call i8* (...) @make_label()
  store i8* %7, i8** %1, align 8
  %8 = call i8* (...) @make_label()
  store i8* %8, i8** %2, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @SET_JUMP_LABELS(i8* %9, i8* %10)
  %12 = call i32* (...) @read_stmt()
  store i32* %12, i32** %3, align 8
  %13 = call i32 (...) @RESTORE_JUMP_LABELS()
  %14 = call i32* (...) @get()
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @KWHILE, align 4
  %17 = call i32 @is_keyword(i32* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %0
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @tok2s(i32* %21)
  %23 = call i32 @errort(i32* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %0
  %25 = call i32 @expect(i8 signext 40)
  %26 = call i32* (...) @read_boolean_expr()
  store i32* %26, i32** %5, align 8
  %27 = call i32 @expect(i8 signext 41)
  %28 = call i32 @expect(i8 signext 59)
  %29 = call i32* (...) @make_vector()
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i8*, i8** %1, align 8
  %32 = call i32* @ast_dest(i8* %31)
  %33 = call i32 @vec_push(i32* %30, i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @vec_push(i32* %37, i32* %38)
  br label %40

40:                                               ; preds = %36, %24
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i8*, i8** %1, align 8
  %44 = call i32 @ast_jump(i8* %43)
  %45 = call i32* @ast_if(i32* %42, i32 %44, i32* null)
  %46 = call i32 @vec_push(i32* %41, i32* %45)
  %47 = load i32*, i32** %6, align 8
  %48 = load i8*, i8** %2, align 8
  %49 = call i32* @ast_dest(i8* %48)
  %50 = call i32 @vec_push(i32* %47, i32* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32* @ast_compound_stmt(i32* %51)
  ret i32* %52
}

declare dso_local i8* @make_label(...) #1

declare dso_local i32 @SET_JUMP_LABELS(i8*, i8*) #1

declare dso_local i32* @read_stmt(...) #1

declare dso_local i32 @RESTORE_JUMP_LABELS(...) #1

declare dso_local i32* @get(...) #1

declare dso_local i32 @is_keyword(i32*, i32) #1

declare dso_local i32 @errort(i32*, i8*, i32) #1

declare dso_local i32 @tok2s(i32*) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32* @read_boolean_expr(...) #1

declare dso_local i32* @make_vector(...) #1

declare dso_local i32 @vec_push(i32*, i32*) #1

declare dso_local i32* @ast_dest(i8*) #1

declare dso_local i32* @ast_if(i32*, i32, i32*) #1

declare dso_local i32 @ast_jump(i8*) #1

declare dso_local i32* @ast_compound_stmt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
