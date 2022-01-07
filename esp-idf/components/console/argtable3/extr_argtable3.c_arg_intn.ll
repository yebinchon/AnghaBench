; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_intn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_intn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_int = type { i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, %struct.arg_int*, i32 }

@ARG_HASVALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"<int>\00", align 1
@arg_int_resetfn = common dso_local global i64 0, align 8
@arg_int_scanfn = common dso_local global i64 0, align 8
@arg_int_checkfn = common dso_local global i64 0, align 8
@arg_int_errorfn = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"arg_intn() returns %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arg_int* @arg_intn(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.arg_int*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32, i32* %10, align 4
  br label %22

20:                                               ; preds = %6
  %21 = load i32, i32* %11, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = add i64 104, %26
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i64 @malloc(i64 %28)
  %30 = inttoptr i64 %29 to %struct.arg_int*
  store %struct.arg_int* %30, %struct.arg_int** %14, align 8
  %31 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %32 = icmp ne %struct.arg_int* %31, null
  br i1 %32, label %33, label %99

33:                                               ; preds = %22
  %34 = load i32, i32* @ARG_HASVALUE, align 4
  %35 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %36 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 11
  store i32 %34, i32* %37, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %40 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %44 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i8*, i8** %9, align 8
  br label %51

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i8* [ %49, %48 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %50 ]
  %53 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %54 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i8* %52, i8** %55, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %58 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  store i8* %56, i8** %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %62 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 4
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %66 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 5
  store i32 %64, i32* %67, align 4
  %68 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %69 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %70 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 10
  store %struct.arg_int* %68, %struct.arg_int** %71, align 8
  %72 = load i64, i64* @arg_int_resetfn, align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %75 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 9
  store i32* %73, i32** %76, align 8
  %77 = load i64, i64* @arg_int_scanfn, align 8
  %78 = inttoptr i64 %77 to i32*
  %79 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %80 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 8
  store i32* %78, i32** %81, align 8
  %82 = load i64, i64* @arg_int_checkfn, align 8
  %83 = inttoptr i64 %82 to i32*
  %84 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %85 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 7
  store i32* %83, i32** %86, align 8
  %87 = load i64, i64* @arg_int_errorfn, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %90 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 6
  store i32* %88, i32** %91, align 8
  %92 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %93 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %92, i64 1
  %94 = bitcast %struct.arg_int* %93 to i32*
  %95 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %96 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %95, i32 0, i32 0
  store i32* %94, i32** %96, align 8
  %97 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %98 = getelementptr inbounds %struct.arg_int, %struct.arg_int* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %51, %22
  %100 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  %101 = bitcast %struct.arg_int* %100 to i8*
  %102 = call i32 @ARG_TRACE(i8* %101)
  %103 = load %struct.arg_int*, %struct.arg_int** %14, align 8
  ret %struct.arg_int* %103
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @ARG_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
