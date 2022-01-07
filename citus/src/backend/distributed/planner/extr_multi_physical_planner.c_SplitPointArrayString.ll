; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_physical_planner.c_SplitPointArrayString.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_physical_planner.c_SplitPointArrayString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot range repartition table on column type %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s::%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64, i32)* @SplitPointArrayString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @SplitPointArrayString(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @PointerGetDatum(i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i64, i64* @InvalidOid, align 8
  store i64 %19, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @get_array_type(i64 %20)
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = load i64, i64* @InvalidOid, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i64, i64* %5, align 8
  %27 = call i8* @format_type_be(i64 %26)
  store i8* %27, i8** %16, align 8
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i8*, i8** %16, align 8
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = call i32 @ereport(i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %25, %3
  %33 = call i64 @palloc0(i32 4)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %11, align 8
  %35 = load i64, i64* %15, align 8
  %36 = call i32 @getTypeOutputInfo(i64 %35, i64* %9, i32* %10)
  %37 = load i64, i64* %9, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @fmgr_info(i64 %37, i32* %38)
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i8* @OutputFunctionCall(i32* %40, i32 %41)
  store i8* %42, i8** %12, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i8* @quote_literal_cstr(i8* %43)
  store i8* %44, i8** %13, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i8* @format_type_with_typemod(i64 %45, i32 %46)
  store i8* %47, i8** %14, align 8
  %48 = call i32* (...) @makeStringInfo()
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = call i32 @appendStringInfo(i32* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %51)
  %53 = load i32*, i32** %7, align 8
  ret i32* %53
}

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i64 @get_array_type(i64) #1

declare dso_local i8* @format_type_be(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @getTypeOutputInfo(i64, i64*, i32*) #1

declare dso_local i32 @fmgr_info(i64, i32*) #1

declare dso_local i8* @OutputFunctionCall(i32*, i32) #1

declare dso_local i8* @quote_literal_cstr(i8*) #1

declare dso_local i8* @format_type_with_typemod(i64, i32) #1

declare dso_local i32* @makeStringInfo(...) #1

declare dso_local i32 @appendStringInfo(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
