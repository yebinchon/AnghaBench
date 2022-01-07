; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_litn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_litn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_lit = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, %struct.arg_lit*, i32*, i64 }

@arg_lit_resetfn = common dso_local global i64 0, align 8
@arg_lit_scanfn = common dso_local global i64 0, align 8
@arg_lit_checkfn = common dso_local global i64 0, align 8
@arg_lit_errorfn = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"arg_litn() returns %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arg_lit* @arg_litn(i8* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.arg_lit*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  br label %19

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %9, align 4
  %21 = call i64 @malloc(i32 96)
  %22 = inttoptr i64 %21 to %struct.arg_lit*
  store %struct.arg_lit* %22, %struct.arg_lit** %11, align 8
  %23 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  %24 = icmp ne %struct.arg_lit* %23, null
  br i1 %24, label %25, label %78

25:                                               ; preds = %19
  %26 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  %27 = getelementptr inbounds %struct.arg_lit, %struct.arg_lit* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 11
  store i64 0, i64* %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  %31 = getelementptr inbounds %struct.arg_lit, %struct.arg_lit* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  %35 = getelementptr inbounds %struct.arg_lit, %struct.arg_lit* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  %38 = getelementptr inbounds %struct.arg_lit, %struct.arg_lit* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 10
  store i32* null, i32** %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  %42 = getelementptr inbounds %struct.arg_lit, %struct.arg_lit* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  %46 = getelementptr inbounds %struct.arg_lit, %struct.arg_lit* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  %50 = getelementptr inbounds %struct.arg_lit, %struct.arg_lit* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  store i32 %48, i32* %51, align 4
  %52 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  %53 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  %54 = getelementptr inbounds %struct.arg_lit, %struct.arg_lit* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 9
  store %struct.arg_lit* %52, %struct.arg_lit** %55, align 8
  %56 = load i64, i64* @arg_lit_resetfn, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  %59 = getelementptr inbounds %struct.arg_lit, %struct.arg_lit* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 8
  store i32* %57, i32** %60, align 8
  %61 = load i64, i64* @arg_lit_scanfn, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  %64 = getelementptr inbounds %struct.arg_lit, %struct.arg_lit* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 7
  store i32* %62, i32** %65, align 8
  %66 = load i64, i64* @arg_lit_checkfn, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  %69 = getelementptr inbounds %struct.arg_lit, %struct.arg_lit* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 6
  store i32* %67, i32** %70, align 8
  %71 = load i64, i64* @arg_lit_errorfn, align 8
  %72 = inttoptr i64 %71 to i32*
  %73 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  %74 = getelementptr inbounds %struct.arg_lit, %struct.arg_lit* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 5
  store i32* %72, i32** %75, align 8
  %76 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  %77 = getelementptr inbounds %struct.arg_lit, %struct.arg_lit* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %25, %19
  %79 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  %80 = bitcast %struct.arg_lit* %79 to i8*
  %81 = call i32 @ARG_TRACE(i8* %80)
  %82 = load %struct.arg_lit*, %struct.arg_lit** %11, align 8
  ret %struct.arg_lit* %82
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ARG_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
