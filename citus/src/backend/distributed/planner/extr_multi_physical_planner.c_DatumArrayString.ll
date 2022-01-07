; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_physical_planner.c_DatumArrayString.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_physical_planner.c_DatumArrayString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARRAY_OUT_FUNC_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32)* @DatumArrayString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @DatumArrayString(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i8 0, i8* %15, align 1
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @get_typlenbyvalalign(i32 %16, i32* %13, i32* %14, i8* %15)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i8, i8* %15, align 1
  %24 = call i32* @construct_array(i32* %18, i32 %19, i32 %20, i32 %21, i32 %22, i8 signext %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @PointerGetDatum(i32* %25)
  store i32 %26, i32* %10, align 4
  %27 = call i64 @palloc0(i32 4)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %8, align 8
  %29 = load i32, i32* @ARRAY_OUT_FUNC_ID, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @fmgr_info(i32 %29, i32* %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @FunctionCall1(i32* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i8* @DatumGetCString(i32 %35)
  store i8* %36, i8** %12, align 8
  %37 = call i32* (...) @makeStringInfo()
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @appendStringInfo(i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32*, i32** %7, align 8
  ret i32* %41
}

declare dso_local i32 @get_typlenbyvalalign(i32, i32*, i32*, i8*) #1

declare dso_local i32* @construct_array(i32*, i32, i32, i32, i32, i8 signext) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @fmgr_info(i32, i32*) #1

declare dso_local i32 @FunctionCall1(i32*, i32) #1

declare dso_local i8* @DatumGetCString(i32) #1

declare dso_local i32* @makeStringInfo(...) #1

declare dso_local i32 @appendStringInfo(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
