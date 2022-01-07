; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_typed_init.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_typed_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @resolve_typed_init(i32 %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %12 = call %struct.TYPE_17__* @unqualify_type(%struct.TYPE_17__* %11)
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %15 = call %struct.TYPE_17__* @resolve_expected_expr(i32* %13, %struct.TYPE_17__* %14)
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %16, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = call i64 @is_incomplete_array_type(%struct.TYPE_17__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %76

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = call i64 @is_array_type(%struct.TYPE_17__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %20
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  store i32 0, i32* %48, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = call i32 @set_resolved_expected_type(i32* %49, %struct.TYPE_17__* %50)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %4, align 8
  br label %102

53:                                               ; preds = %25, %20
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = call i64 @is_ptr_type(%struct.TYPE_17__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %61, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = call i32 @set_resolved_expected_type(i32* %68, %struct.TYPE_17__* %70)
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  store %struct.TYPE_17__* %73, %struct.TYPE_17__** %4, align 8
  br label %102

74:                                               ; preds = %58, %53
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75, %3
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = icmp ne %struct.TYPE_17__* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = call i64 @is_ptr_type(%struct.TYPE_17__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = call %struct.TYPE_17__* @operand_decay(%struct.TYPE_17__* %85)
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %87, align 8
  %88 = bitcast %struct.TYPE_18__* %9 to i8*
  %89 = bitcast %struct.TYPE_18__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 8, i1 false)
  br label %90

90:                                               ; preds = %83, %79, %76
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %92 = call i32 @convert_operand(%struct.TYPE_18__* %9, %struct.TYPE_17__* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %102

95:                                               ; preds = %90
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = call i32 @set_resolved_expected_type(i32* %96, %struct.TYPE_17__* %98)
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  store %struct.TYPE_17__* %101, %struct.TYPE_17__** %4, align 8
  br label %102

102:                                              ; preds = %95, %94, %67, %34
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  ret %struct.TYPE_17__* %103
}

declare dso_local %struct.TYPE_17__* @unqualify_type(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @resolve_expected_expr(i32*, %struct.TYPE_17__*) #1

declare dso_local i64 @is_incomplete_array_type(%struct.TYPE_17__*) #1

declare dso_local i64 @is_array_type(%struct.TYPE_17__*) #1

declare dso_local i32 @set_resolved_expected_type(i32*, %struct.TYPE_17__*) #1

declare dso_local i64 @is_ptr_type(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @operand_decay(%struct.TYPE_17__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @convert_operand(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
