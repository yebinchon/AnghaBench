; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_init.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Cannot use undef initializer without declared type\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Invalid type in initialization. Expected %s\00", align 1
@EXPR_COMPOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Cannot declare variable of size 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_26__* @resolve_init(i32 %0, i32* %1, %struct.TYPE_27__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_25__, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %12, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %13, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %5
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.TYPE_26__* @resolve_typespec_strict(i32* %21, i32 %22)
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %13, align 8
  br label %24

24:                                               ; preds = %20, %17
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %26 = icmp ne %struct.TYPE_26__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i32, i8*, ...) @fatal_error(i32 %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24
  br label %83

31:                                               ; preds = %5
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.TYPE_26__* @resolve_typespec_strict(i32* %35, i32 %36)
  store %struct.TYPE_26__* %37, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %37, %struct.TYPE_26__** %13, align 8
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %39 = icmp ne %struct.TYPE_27__* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %44 = call %struct.TYPE_26__* @resolve_typed_init(i32 %41, %struct.TYPE_26__* %42, %struct.TYPE_27__* %43)
  store %struct.TYPE_26__* %44, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %44, %struct.TYPE_26__** %12, align 8
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %46 = icmp ne %struct.TYPE_26__* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %50 = call i32 @get_type_name(%struct.TYPE_26__* %49)
  %51 = call i32 (i32, i8*, ...) @fatal_error(i32 %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %40
  br label %53

53:                                               ; preds = %52, %34
  br label %82

54:                                               ; preds = %31
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %56 = call i32 @assert(%struct.TYPE_27__* %55)
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %58 = call i32 @resolve_expr(%struct.TYPE_27__* %57)
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_26__* @unqualify_type(i32 %61)
  store %struct.TYPE_26__* %62, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %62, %struct.TYPE_26__** %12, align 8
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %64 = call i64 @is_array_type(%struct.TYPE_26__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %54
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @EXPR_COMPOUND, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %74 = call %struct.TYPE_26__* @type_decay(%struct.TYPE_26__* %73)
  store %struct.TYPE_26__* %74, %struct.TYPE_26__** %11, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %77 = call i32 @set_resolved_type(%struct.TYPE_27__* %75, %struct.TYPE_26__* %76)
  br label %78

78:                                               ; preds = %72, %66, %54
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %81 = call i32 @set_resolved_expected_type(%struct.TYPE_27__* %79, %struct.TYPE_26__* %80)
  br label %82

82:                                               ; preds = %78, %53
  br label %83

83:                                               ; preds = %82, %30
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %85 = call i32 @complete_type(%struct.TYPE_26__* %84)
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %87 = icmp ne %struct.TYPE_27__* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %90 = call i64 @is_ptr_type(%struct.TYPE_26__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88, %83
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %94 = call %struct.TYPE_26__* @incomplete_decay(%struct.TYPE_26__* %93)
  store %struct.TYPE_26__* %94, %struct.TYPE_26__** %11, align 8
  br label %95

95:                                               ; preds = %92, %88
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (i32, i8*, ...) @fatal_error(i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %95
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  ret %struct.TYPE_26__* %104
}

declare dso_local %struct.TYPE_26__* @resolve_typespec_strict(i32*, i32) #1

declare dso_local i32 @fatal_error(i32, i8*, ...) #1

declare dso_local %struct.TYPE_26__* @resolve_typed_init(i32, %struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @get_type_name(%struct.TYPE_26__*) #1

declare dso_local i32 @assert(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_26__* @unqualify_type(i32) #1

declare dso_local i32 @resolve_expr(%struct.TYPE_27__*) #1

declare dso_local i64 @is_array_type(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @type_decay(%struct.TYPE_26__*) #1

declare dso_local i32 @set_resolved_type(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @set_resolved_expected_type(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @complete_type(%struct.TYPE_26__*) #1

declare dso_local i64 @is_ptr_type(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @incomplete_decay(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
