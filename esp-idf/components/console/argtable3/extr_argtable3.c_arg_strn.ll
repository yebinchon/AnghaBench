; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_strn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_strn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_str = type { i8**, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, %struct.arg_str*, i32 }

@ARG_HASVALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"<string>\00", align 1
@arg_str_resetfn = common dso_local global i64 0, align 8
@arg_str_scanfn = common dso_local global i64 0, align 8
@arg_str_checkfn = common dso_local global i64 0, align 8
@arg_str_errorfn = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"arg_strn() returns %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arg_str* @arg_strn(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.arg_str*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* %10, align 4
  br label %23

21:                                               ; preds = %6
  %22 = load i32, i32* %11, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = add i64 104, %27
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i64 @malloc(i64 %29)
  %31 = inttoptr i64 %30 to %struct.arg_str*
  store %struct.arg_str* %31, %struct.arg_str** %14, align 8
  %32 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %33 = icmp ne %struct.arg_str* %32, null
  br i1 %33, label %34, label %115

34:                                               ; preds = %23
  %35 = load i32, i32* @ARG_HASVALUE, align 4
  %36 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %37 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 11
  store i32 %35, i32* %38, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %41 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %45 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i8*, i8** %9, align 8
  br label %52

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i8* [ %50, %49 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %51 ]
  %54 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %55 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i8* %53, i8** %56, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %59 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  store i8* %57, i8** %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %63 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %67 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 5
  store i32 %65, i32* %68, align 4
  %69 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %70 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %71 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 10
  store %struct.arg_str* %69, %struct.arg_str** %72, align 8
  %73 = load i64, i64* @arg_str_resetfn, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %76 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 9
  store i32* %74, i32** %77, align 8
  %78 = load i64, i64* @arg_str_scanfn, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %81 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 8
  store i32* %79, i32** %82, align 8
  %83 = load i64, i64* @arg_str_checkfn, align 8
  %84 = inttoptr i64 %83 to i32*
  %85 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %86 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 7
  store i32* %84, i32** %87, align 8
  %88 = load i64, i64* @arg_str_errorfn, align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %91 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 6
  store i32* %89, i32** %92, align 8
  %93 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %94 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %93, i64 1
  %95 = bitcast %struct.arg_str* %94 to i8**
  %96 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %97 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %96, i32 0, i32 0
  store i8** %95, i8*** %97, align 8
  %98 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %99 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  store i32 0, i32* %15, align 4
  br label %100

100:                                              ; preds = %111, %52
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %106 = getelementptr inbounds %struct.arg_str, %struct.arg_str* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %110, align 8
  br label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %100

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %114, %23
  %116 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  %117 = bitcast %struct.arg_str* %116 to i8*
  %118 = call i32 @ARG_TRACE(i8* %117)
  %119 = load %struct.arg_str*, %struct.arg_str** %14, align 8
  ret %struct.arg_str* %119
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @ARG_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
