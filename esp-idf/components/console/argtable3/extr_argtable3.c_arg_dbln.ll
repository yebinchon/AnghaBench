; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_dbln.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_dbln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_dbl = type { double*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, %struct.arg_dbl*, i32 }

@ARG_HASVALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"<double>\00", align 1
@arg_dbl_resetfn = common dso_local global i64 0, align 8
@arg_dbl_scanfn = common dso_local global i64 0, align 8
@arg_dbl_checkfn = common dso_local global i64 0, align 8
@arg_dbl_errorfn = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"addr=%p, dval=%p, sizeof(double)=%d rem=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"arg_dbln() returns %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arg_dbl* @arg_dbln(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.arg_dbl*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* %10, align 4
  br label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %11, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = add i64 104, %29
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i64 @malloc(i64 %31)
  %33 = inttoptr i64 %32 to %struct.arg_dbl*
  store %struct.arg_dbl* %33, %struct.arg_dbl** %14, align 8
  %34 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %35 = icmp ne %struct.arg_dbl* %34, null
  br i1 %35, label %36, label %118

36:                                               ; preds = %24
  %37 = load i32, i32* @ARG_HASVALUE, align 4
  %38 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %39 = getelementptr inbounds %struct.arg_dbl, %struct.arg_dbl* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 11
  store i32 %37, i32* %40, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %43 = getelementptr inbounds %struct.arg_dbl, %struct.arg_dbl* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %47 = getelementptr inbounds %struct.arg_dbl, %struct.arg_dbl* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i8*, i8** %9, align 8
  br label %54

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i8* [ %52, %51 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %53 ]
  %56 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %57 = getelementptr inbounds %struct.arg_dbl, %struct.arg_dbl* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i8* %55, i8** %58, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %61 = getelementptr inbounds %struct.arg_dbl, %struct.arg_dbl* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i8* %59, i8** %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %65 = getelementptr inbounds %struct.arg_dbl, %struct.arg_dbl* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %69 = getelementptr inbounds %struct.arg_dbl, %struct.arg_dbl* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 5
  store i32 %67, i32* %70, align 4
  %71 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %72 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %73 = getelementptr inbounds %struct.arg_dbl, %struct.arg_dbl* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 10
  store %struct.arg_dbl* %71, %struct.arg_dbl** %74, align 8
  %75 = load i64, i64* @arg_dbl_resetfn, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %78 = getelementptr inbounds %struct.arg_dbl, %struct.arg_dbl* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 9
  store i32* %76, i32** %79, align 8
  %80 = load i64, i64* @arg_dbl_scanfn, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %83 = getelementptr inbounds %struct.arg_dbl, %struct.arg_dbl* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 8
  store i32* %81, i32** %84, align 8
  %85 = load i64, i64* @arg_dbl_checkfn, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %88 = getelementptr inbounds %struct.arg_dbl, %struct.arg_dbl* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 7
  store i32* %86, i32** %89, align 8
  %90 = load i64, i64* @arg_dbl_errorfn, align 8
  %91 = inttoptr i64 %90 to i32*
  %92 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %93 = getelementptr inbounds %struct.arg_dbl, %struct.arg_dbl* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 6
  store i32* %91, i32** %94, align 8
  %95 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %96 = getelementptr inbounds %struct.arg_dbl, %struct.arg_dbl* %95, i64 1
  %97 = ptrtoint %struct.arg_dbl* %96 to i64
  store i64 %97, i64* %15, align 8
  %98 = load i64, i64* %15, align 8
  %99 = urem i64 %98, 8
  store i64 %99, i64* %16, align 8
  %100 = load i64, i64* %15, align 8
  %101 = add i64 %100, 8
  %102 = load i64, i64* %16, align 8
  %103 = sub i64 %101, %102
  %104 = inttoptr i64 %103 to double*
  %105 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %106 = getelementptr inbounds %struct.arg_dbl, %struct.arg_dbl* %105, i32 0, i32 0
  store double* %104, double** %106, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %109 = getelementptr inbounds %struct.arg_dbl, %struct.arg_dbl* %108, i32 0, i32 0
  %110 = load double*, double** %109, align 8
  %111 = load i64, i64* %16, align 8
  %112 = trunc i64 %111 to i32
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = call i32 @ARG_TRACE(i8* %114)
  %116 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %117 = getelementptr inbounds %struct.arg_dbl, %struct.arg_dbl* %116, i32 0, i32 1
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %54, %24
  %119 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  %120 = bitcast %struct.arg_dbl* %119 to i8*
  %121 = call i32 @ARG_TRACE(i8* %120)
  %122 = load %struct.arg_dbl*, %struct.arg_dbl** %14, align 8
  ret %struct.arg_dbl* %122
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @ARG_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
