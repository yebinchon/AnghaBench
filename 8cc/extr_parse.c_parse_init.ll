; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_parse_init.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_parse_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@type_void = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"__builtin_return_address\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"__builtin_reg_class\00", align 1
@type_int = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"__builtin_va_arg\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"__builtin_va_start\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @type_void, align 4
  %4 = call i32 @make_ptr_type(i32 %3)
  %5 = call i32* @make_vector1(i32 %4)
  store i32* %5, i32** %1, align 8
  %6 = call i32* (...) @make_vector()
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @type_void, align 4
  %9 = call i32 @make_ptr_type(i32 %8)
  %10 = call i32 @vec_push(i32* %7, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @type_void, align 4
  %13 = call i32 @make_ptr_type(i32 %12)
  %14 = call i32 @vec_push(i32* %11, i32 %13)
  %15 = load i32, i32* @type_void, align 4
  %16 = call i32 @make_ptr_type(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @define_builtin(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16, i32* %17)
  %19 = load i32, i32* @type_int, align 4
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @define_builtin(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32* %20)
  %22 = load i32, i32* @type_void, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @define_builtin(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32* %23)
  %25 = load i32, i32* @type_void, align 4
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @define_builtin(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %25, i32* %26)
  ret void
}

declare dso_local i32* @make_vector1(i32) #1

declare dso_local i32 @make_ptr_type(i32) #1

declare dso_local i32* @make_vector(...) #1

declare dso_local i32 @vec_push(i32*, i32) #1

declare dso_local i32 @define_builtin(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
