; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_while_stmt.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_while_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @read_while_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_while_stmt() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = call i32 @expect(i8 signext 40)
  %7 = call i32* (...) @read_boolean_expr()
  store i32* %7, i32** %1, align 8
  %8 = call i32 @expect(i8 signext 41)
  %9 = call i8* (...) @make_label()
  store i8* %9, i8** %2, align 8
  %10 = call i8* (...) @make_label()
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @SET_JUMP_LABELS(i8* %11, i8* %12)
  %14 = call i32* (...) @read_stmt()
  store i32* %14, i32** %4, align 8
  %15 = call i32 (...) @RESTORE_JUMP_LABELS()
  %16 = call i32* (...) @make_vector()
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @ast_dest(i8* %18)
  %20 = call i32 @vec_push(i32* %17, i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @ast_jump(i8* %24)
  %26 = call i32 @ast_if(i32* %22, i32* %23, i32 %25)
  %27 = call i32 @vec_push(i32* %21, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @ast_jump(i8* %29)
  %31 = call i32 @vec_push(i32* %28, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @ast_dest(i8* %33)
  %35 = call i32 @vec_push(i32* %32, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32* @ast_compound_stmt(i32* %36)
  ret i32* %37
}

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32* @read_boolean_expr(...) #1

declare dso_local i8* @make_label(...) #1

declare dso_local i32 @SET_JUMP_LABELS(i8*, i8*) #1

declare dso_local i32* @read_stmt(...) #1

declare dso_local i32 @RESTORE_JUMP_LABELS(...) #1

declare dso_local i32* @make_vector(...) #1

declare dso_local i32 @vec_push(i32*, i32) #1

declare dso_local i32 @ast_dest(i8*) #1

declare dso_local i32 @ast_if(i32*, i32*, i32) #1

declare dso_local i32 @ast_jump(i8*) #1

declare dso_local i32* @ast_compound_stmt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
