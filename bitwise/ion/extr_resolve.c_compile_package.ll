; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_compile_package.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_compile_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@package_list = common dso_local global i32 0, align 4
@builtin_package = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compile_package(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @parse_package(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @enter_package(i32* %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32, i32* @package_list, align 4
  %13 = call i32 @buf_len(i32 %12)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 (...) @init_builtin_syms()
  br label %17

17:                                               ; preds = %15, %9
  %18 = load i64, i64* @builtin_package, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* @builtin_package, align 8
  %22 = call i32 @import_all_package_symbols(i64 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @add_package_decls(i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @process_package_imports(i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @leave_package(i32* %28)
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %23, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @parse_package(i32*) #1

declare dso_local i32* @enter_package(i32*) #1

declare dso_local i32 @buf_len(i32) #1

declare dso_local i32 @init_builtin_syms(...) #1

declare dso_local i32 @import_all_package_symbols(i64) #1

declare dso_local i32 @add_package_decls(i32*) #1

declare dso_local i32 @process_package_imports(i32*) #1

declare dso_local i32 @leave_package(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
