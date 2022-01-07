; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_bottom_func_second_merge.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_bottom_func_second_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@DATA_SET_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @bottom_func_second_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bottom_func_second_merge(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %8 = call i64 @GET_INPUT_CHAR(%struct.TYPE_22__* %7)
  %9 = inttoptr i64 %8 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %3, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %12 = call i32 @buildTopBotStruct(%struct.TYPE_20__* %10, %struct.TYPE_22__* %11)
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %14 = call %struct.TYPE_20__* @getTopBotOutputInfo(%struct.TYPE_22__* %13)
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %4, align 8
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %62, %1
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %15
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %31, i64 %32
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %39, i64 %40
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %52, i64 %53
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @do_bottom_function_add(%struct.TYPE_20__* %22, i32 %28, i32* %36, i32 %44, i32 %47, i32* %49, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %21
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %5, align 8
  br label %15

65:                                               ; preds = %15
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @SET_VAL(%struct.TYPE_22__* %66, i64 %69, i64 %72)
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ugt i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %65
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %80 = call %struct.TYPE_21__* @GET_RES_INFO(%struct.TYPE_22__* %79)
  store %struct.TYPE_21__* %80, %struct.TYPE_21__** %6, align 8
  %81 = load i32, i32* @DATA_SET_FLAG, align 4
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %65
  ret void
}

declare dso_local i64 @GET_INPUT_CHAR(%struct.TYPE_22__*) #1

declare dso_local i32 @buildTopBotStruct(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_20__* @getTopBotOutputInfo(%struct.TYPE_22__*) #1

declare dso_local i32 @do_bottom_function_add(%struct.TYPE_20__*, i32, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @SET_VAL(%struct.TYPE_22__*, i64, i64) #1

declare dso_local %struct.TYPE_21__* @GET_RES_INFO(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
