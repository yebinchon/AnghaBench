; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_func_body.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_func_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@localenv = common dso_local global i32* null, align 8
@localvars = common dso_local global i32* null, align 8
@current_func_type = common dso_local global i32* null, align 8
@ENC_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"__func__\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"__FUNCTION__\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @read_func_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_func_body(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** @localenv, align 8
  %11 = call i32* @make_map_parent(i32* %10)
  store i32* %11, i32** @localenv, align 8
  %12 = call i32* (...) @make_vector()
  store i32* %12, i32** @localvars, align 8
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** @current_func_type, align 8
  %14 = load i32, i32* @ENC_NONE, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = add nsw i64 %17, 1
  %19 = call i32* @ast_string(i32 %14, i8* %15, i64 %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** @localenv, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @map_put(i32* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %21)
  %23 = load i32*, i32** @localenv, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @map_put(i32* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %24)
  %26 = call i32* (...) @read_compound_stmt()
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** @localvars, align 8
  %32 = call i32* @ast_func(i32* %27, i8* %28, i32* %29, i32* %30, i32* %31)
  store i32* %32, i32** %9, align 8
  store i32* null, i32** @current_func_type, align 8
  store i32* null, i32** @localenv, align 8
  store i32* null, i32** @localvars, align 8
  %33 = load i32*, i32** %9, align 8
  ret i32* %33
}

declare dso_local i32* @make_map_parent(i32*) #1

declare dso_local i32* @make_vector(...) #1

declare dso_local i32* @ast_string(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @map_put(i32*, i8*, i32*) #1

declare dso_local i32* @read_compound_stmt(...) #1

declare dso_local i32* @ast_func(i32*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
