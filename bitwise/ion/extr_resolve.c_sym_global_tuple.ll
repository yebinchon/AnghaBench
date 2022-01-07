; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_sym_global_tuple.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_sym_global_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32*, i32 }

@SYM_TYPE = common dso_local global i32 0, align 4
@SYM_RESOLVED = common dso_local global i32 0, align 4
@builtin_package = common dso_local global i32 0, align 4
@sorted_syms = common dso_local global i32 0, align 4
@reachable_syms = common dso_local global i32 0, align 4
@REACHABLE_NATURAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @sym_global_tuple(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @SYM_TYPE, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.TYPE_6__* @sym_new(i32 %7, i8* %8, i32* null)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %5, align 8
  %10 = load i32, i32* @SYM_RESOLVED, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @builtin_package, align 4
  %20 = call i32* @enter_package(i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = call i32 @sym_global_put(i8* %21, %struct.TYPE_6__* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @leave_package(i32* %24)
  %26 = load i32, i32* @sorted_syms, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = call i32 @buf_push(i32 %26, %struct.TYPE_6__* %27)
  %29 = load i32, i32* @reachable_syms, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = call i32 @buf_push(i32 %29, %struct.TYPE_6__* %30)
  %32 = load i32, i32* @REACHABLE_NATURAL, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %35
}

declare dso_local %struct.TYPE_6__* @sym_new(i32, i8*, i32*) #1

declare dso_local i32* @enter_package(i32) #1

declare dso_local i32 @sym_global_put(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @leave_package(i32*) #1

declare dso_local i32 @buf_push(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
