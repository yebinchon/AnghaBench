; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_compound_stmt.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_compound_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@localenv = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @read_compound_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_compound_stmt() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32*, i32** @localenv, align 8
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** @localenv, align 8
  %5 = call i32* @make_map_parent(i32* %4)
  store i32* %5, i32** @localenv, align 8
  %6 = call i32* (...) @make_vector()
  store i32* %6, i32** %2, align 8
  br label %7

7:                                                ; preds = %11, %0
  %8 = call i64 @next_token(i8 signext 125)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %14

11:                                               ; preds = %7
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @read_decl_or_stmt(i32* %12)
  br label %7

14:                                               ; preds = %10
  %15 = load i32*, i32** %1, align 8
  store i32* %15, i32** @localenv, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32* @ast_compound_stmt(i32* %16)
  ret i32* %17
}

declare dso_local i32* @make_map_parent(i32*) #1

declare dso_local i32* @make_vector(...) #1

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local i32 @read_decl_or_stmt(i32*) #1

declare dso_local i32* @ast_compound_stmt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
