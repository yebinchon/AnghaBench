; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_expr_call_default.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_expr_call_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_21__*, %struct.TYPE_21__** }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }

@.str = private unnamed_addr constant [60 x i8] c"Invalid type in function call argument. Expected %s, got %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @resolve_expr_call_default(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_22__, align 8
  %4 = alloca %struct.TYPE_22__, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 0
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 0
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %83, %2
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %17, %21
  br i1 %22, label %23, label %86

23:                                               ; preds = %16
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 0
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %32, i64 %33
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %34, align 8
  br label %42

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 0
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %40, align 8
  br label %42

42:                                               ; preds = %36, %27
  %43 = phi %struct.TYPE_21__* [ %35, %27 ], [ %41, %36 ]
  store %struct.TYPE_21__* %43, %struct.TYPE_21__** %8, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %47, i64 %48
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %52 = call %struct.TYPE_21__* @resolve_expected_expr_rvalue(%struct.TYPE_18__* %50, %struct.TYPE_21__* %51)
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store %struct.TYPE_21__* %52, %struct.TYPE_21__** %53, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %55 = call i64 @is_array_type(%struct.TYPE_21__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %42
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.TYPE_21__* @type_ptr(i32 %60)
  store %struct.TYPE_21__* %61, %struct.TYPE_21__** %8, align 8
  br label %62

62:                                               ; preds = %57, %42
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %64 = call i32 @convert_operand(%struct.TYPE_22__* %9, %struct.TYPE_21__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %62
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %70, i64 %71
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %77 = call i32 @get_type_name(%struct.TYPE_21__* %76)
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %78, align 8
  %80 = call i32 @get_type_name(%struct.TYPE_21__* %79)
  %81 = call i32 @fatal_error(i32 %75, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %66, %62
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %16

86:                                               ; preds = %16
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 0
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.TYPE_21__* @operand_rvalue(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  store %struct.TYPE_21__* %92, %struct.TYPE_21__** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  ret %struct.TYPE_21__* %95
}

declare dso_local %struct.TYPE_21__* @resolve_expected_expr_rvalue(%struct.TYPE_18__*, %struct.TYPE_21__*) #1

declare dso_local i64 @is_array_type(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @type_ptr(i32) #1

declare dso_local i32 @convert_operand(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @fatal_error(i32, i8*, i32, i32) #1

declare dso_local i32 @get_type_name(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @operand_rvalue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
