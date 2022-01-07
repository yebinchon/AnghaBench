; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_binop.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_binop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }

@KIND_PTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"invalid pointer arith\00", align 1
@type_long = common dso_local global %struct.TYPE_19__* null, align 8
@type_int = common dso_local global %struct.TYPE_19__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (i32, %struct.TYPE_20__*, %struct.TYPE_20__*)* @binop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @binop(i32 %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @KIND_PTR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %3
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @KIND_PTR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @valid_pointer_binop(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** @type_long, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %38 = call %struct.TYPE_20__* @ast_binop(%struct.TYPE_19__* %34, i32 %35, %struct.TYPE_20__* %36, %struct.TYPE_20__* %37)
  store %struct.TYPE_20__* %38, %struct.TYPE_20__** %4, align 8
  br label %104

39:                                               ; preds = %30
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** @type_int, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %44 = call %struct.TYPE_20__* @ast_binop(%struct.TYPE_19__* %40, i32 %41, %struct.TYPE_20__* %42, %struct.TYPE_20__* %43)
  store %struct.TYPE_20__* %44, %struct.TYPE_20__** %4, align 8
  br label %104

45:                                               ; preds = %16, %3
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @KIND_PTR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %60 = call %struct.TYPE_20__* @ast_binop(%struct.TYPE_19__* %56, i32 %57, %struct.TYPE_20__* %58, %struct.TYPE_20__* %59)
  store %struct.TYPE_20__* %60, %struct.TYPE_20__** %4, align 8
  br label %104

61:                                               ; preds = %45
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @KIND_PTR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %76 = call %struct.TYPE_20__* @ast_binop(%struct.TYPE_19__* %72, i32 %73, %struct.TYPE_20__* %74, %struct.TYPE_20__* %75)
  store %struct.TYPE_20__* %76, %struct.TYPE_20__** %4, align 8
  br label %104

77:                                               ; preds = %61
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  %81 = call i32 @is_arithtype(%struct.TYPE_19__* %80)
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = call i32 @is_arithtype(%struct.TYPE_19__* %85)
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %89, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = call %struct.TYPE_19__* @usual_arith_conv(%struct.TYPE_19__* %90, %struct.TYPE_19__* %93)
  store %struct.TYPE_19__* %94, %struct.TYPE_19__** %8, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %99 = call %struct.TYPE_20__* @wrap(%struct.TYPE_19__* %97, %struct.TYPE_20__* %98)
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %102 = call %struct.TYPE_20__* @wrap(%struct.TYPE_19__* %100, %struct.TYPE_20__* %101)
  %103 = call %struct.TYPE_20__* @ast_binop(%struct.TYPE_19__* %95, i32 %96, %struct.TYPE_20__* %99, %struct.TYPE_20__* %102)
  store %struct.TYPE_20__* %103, %struct.TYPE_20__** %4, align 8
  br label %104

104:                                              ; preds = %77, %69, %53, %39, %33
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  ret %struct.TYPE_20__* %105
}

declare dso_local i32 @valid_pointer_binop(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.TYPE_20__* @ast_binop(%struct.TYPE_19__*, i32, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_arithtype(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @usual_arith_conv(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @wrap(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
