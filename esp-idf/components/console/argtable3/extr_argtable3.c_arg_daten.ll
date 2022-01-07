; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_daten.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_daten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_date = type { i8*, i64, %struct.tm*, %struct.TYPE_2__ }
%struct.tm = type { i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, %struct.arg_date*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@ARG_HASVALUE = common dso_local global i32 0, align 4
@arg_date_resetfn = common dso_local global i64 0, align 8
@arg_date_scanfn = common dso_local global i64 0, align 8
@arg_date_checkfn = common dso_local global i64 0, align 8
@arg_date_errorfn = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"arg_daten() returns %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arg_date* @arg_daten(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.arg_date*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = load i32, i32* %12, align 4
  br label %24

22:                                               ; preds = %7
  %23 = load i32, i32* %13, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = add i64 112, %32
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %15, align 8
  %35 = call i64 @calloc(i32 1, i64 %34)
  %36 = inttoptr i64 %35 to %struct.arg_date*
  store %struct.arg_date* %36, %struct.arg_date** %16, align 8
  %37 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %38 = icmp ne %struct.arg_date* %37, null
  br i1 %38, label %39, label %109

39:                                               ; preds = %29
  %40 = load i32, i32* @ARG_HASVALUE, align 4
  %41 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %42 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 11
  store i32 %40, i32* %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %46 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %50 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i8* %48, i8** %51, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i8*, i8** %11, align 8
  br label %58

56:                                               ; preds = %39
  %57 = load i8*, i8** %10, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i8* [ %55, %54 ], [ %57, %56 ]
  %60 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %61 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i8* %59, i8** %62, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %65 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  store i8* %63, i8** %66, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %69 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %73 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 5
  store i32 %71, i32* %74, align 4
  %75 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %76 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %77 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 10
  store %struct.arg_date* %75, %struct.arg_date** %78, align 8
  %79 = load i64, i64* @arg_date_resetfn, align 8
  %80 = inttoptr i64 %79 to i32*
  %81 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %82 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 9
  store i32* %80, i32** %83, align 8
  %84 = load i64, i64* @arg_date_scanfn, align 8
  %85 = inttoptr i64 %84 to i32*
  %86 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %87 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 8
  store i32* %85, i32** %88, align 8
  %89 = load i64, i64* @arg_date_checkfn, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %92 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 7
  store i32* %90, i32** %93, align 8
  %94 = load i64, i64* @arg_date_errorfn, align 8
  %95 = inttoptr i64 %94 to i32*
  %96 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %97 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 6
  store i32* %95, i32** %98, align 8
  %99 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %100 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %99, i64 1
  %101 = bitcast %struct.arg_date* %100 to %struct.tm*
  %102 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %103 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %102, i32 0, i32 2
  store %struct.tm* %101, %struct.tm** %103, align 8
  %104 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %105 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %108 = getelementptr inbounds %struct.arg_date, %struct.arg_date* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %58, %29
  %110 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  %111 = bitcast %struct.arg_date* %110 to i8*
  %112 = call i32 @ARG_TRACE(i8* %111)
  %113 = load %struct.arg_date*, %struct.arg_date** %16, align 8
  ret %struct.arg_date* %113
}

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @ARG_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
