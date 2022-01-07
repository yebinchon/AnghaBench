; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_expr_index.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_expr_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__*, %struct.TYPE_24__, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }

@EXPR_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Index must have integer type\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Aggregate field index must be an integer constant\00", align 1
@type_llong = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Aggregate field index out of range\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Can only index aggregates, arrays and pointers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resolve_expr_index(%struct.TYPE_22__* noalias sret %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_22__, align 8
  %5 = alloca %struct.TYPE_22__, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %3, align 8
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EXPR_INDEX, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  call void @resolve_expr_rvalue(%struct.TYPE_22__* sret %4, i32 %18)
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 0
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %21 = call i32 @is_integer_type(%struct.TYPE_18__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @fatal_error(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  call void @resolve_expr(%struct.TYPE_22__* sret %5, i32 %32)
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = call i64 @is_aggregate_type(%struct.TYPE_18__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %88

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @fatal_error(i32 %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* @type_llong, align 4
  %48 = call i32 @convert_operand(%struct.TYPE_22__* %4, i32 %47)
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @set_resolved_val(i32 %52, i64 %55)
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp sle i64 0, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %46
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %63, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %62, %46
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @fatal_error(i32 %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %70, %62
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  store %struct.TYPE_18__* %84, %struct.TYPE_18__** %85, align 8
  %86 = bitcast %struct.TYPE_22__* %0 to i8*
  %87 = bitcast %struct.TYPE_22__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 24, i1 false)
  br label %105

88:                                               ; preds = %28
  call void @operand_decay(%struct.TYPE_22__* sret %7, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %5)
  %89 = bitcast %struct.TYPE_22__* %5 to i8*
  %90 = bitcast %struct.TYPE_22__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 24, i1 false)
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = call i32 @is_ptr_type(%struct.TYPE_18__* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %88
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @fatal_error(i32 %98, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %95, %88
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  call void @operand_lvalue(%struct.TYPE_22__* sret %0, i32 %104)
  br label %105

105:                                              ; preds = %100, %75
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local void @resolve_expr_rvalue(%struct.TYPE_22__* sret, i32) #1

declare dso_local i32 @is_integer_type(%struct.TYPE_18__*) #1

declare dso_local i32 @fatal_error(i32, i8*) #1

declare dso_local void @resolve_expr(%struct.TYPE_22__* sret, i32) #1

declare dso_local i64 @is_aggregate_type(%struct.TYPE_18__*) #1

declare dso_local i32 @convert_operand(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @set_resolved_val(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @operand_decay(%struct.TYPE_22__* sret, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8) #1

declare dso_local i32 @is_ptr_type(%struct.TYPE_18__*) #1

declare dso_local void @operand_lvalue(%struct.TYPE_22__* sret, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
