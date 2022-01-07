; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_expr_call.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_expr_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, i64, i32 }
%struct.TYPE_27__ = type { i64, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_28__*, %struct.TYPE_28__** }
%struct.TYPE_28__ = type { i64, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_22__* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_22__* }

@EXPR_CALL = common dso_local global i64 0, align 8
@EXPR_NAME = common dso_local global i64 0, align 8
@SYM_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Type conversion operator takes 1 argument\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid type cast from %s to %s\00", align 1
@TYPE_FUNC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot call non-function value\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Function call with too few arguments\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Function call with too many arguments\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @resolve_expr_call(%struct.TYPE_27__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_26__, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_26__, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EXPR_CALL, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EXPR_NAME, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %85

24:                                               ; preds = %2
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_25__* @resolve_name(i32 %30)
  store %struct.TYPE_25__* %31, %struct.TYPE_25__** %6, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %33 = icmp ne %struct.TYPE_25__* %32, null
  br i1 %33, label %34, label %84

34:                                               ; preds = %24
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SYM_TYPE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %34
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, ...) @fatal_error(i32 %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %40
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %55, i64 0
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %56, align 8
  %58 = call %struct.TYPE_22__* @resolve_expr_rvalue(%struct.TYPE_28__* %57)
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 0
  store %struct.TYPE_22__* %58, %struct.TYPE_22__** %59, align 8
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %61, align 8
  %63 = call i32 @cast_operand(%struct.TYPE_26__* %3, %struct.TYPE_22__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %51
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 0
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %69, align 8
  %71 = call i32 @get_type_name(%struct.TYPE_22__* %70)
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %73, align 8
  %75 = call i32 @get_type_name(%struct.TYPE_22__* %74)
  %76 = call i32 (i32, i8*, ...) @fatal_error(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %75)
  br label %77

77:                                               ; preds = %65, %51
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %80, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %83 = call i32 @set_resolved_sym(%struct.TYPE_28__* %81, %struct.TYPE_25__* %82)
  br label %161

84:                                               ; preds = %34, %24
  br label %85

85:                                               ; preds = %84, %2
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %88, align 8
  %90 = call %struct.TYPE_22__* @resolve_expr_rvalue(%struct.TYPE_28__* %89)
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  store %struct.TYPE_22__* %90, %struct.TYPE_22__** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TYPE_FUNC, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %85
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i8*, ...) @fatal_error(i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %85
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %8, align 8
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %8, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %103
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @fatal_error(i32 %119, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %121

121:                                              ; preds = %116, %103
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* %8, align 8
  %128 = icmp ugt i64 %126, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %129
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i32, i8*, ...) @fatal_error(i32 %139, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %141

141:                                              ; preds = %136, %129, %121
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %141
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %151, align 8
  %153 = call %struct.TYPE_22__* @resolve_expr_call_intrinsic(%struct.TYPE_22__* %152, %struct.TYPE_27__* %149, i32* %150)
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 0
  store %struct.TYPE_22__* %153, %struct.TYPE_22__** %154, align 8
  br label %161

155:                                              ; preds = %141
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %157, align 8
  %159 = call %struct.TYPE_22__* @resolve_expr_call_default(%struct.TYPE_22__* %158, %struct.TYPE_27__* %156)
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 0
  store %struct.TYPE_22__* %159, %struct.TYPE_22__** %160, align 8
  br label %161

161:                                              ; preds = %155, %148, %77
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 0
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %162, align 8
  ret %struct.TYPE_22__* %163
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_25__* @resolve_name(i32) #1

declare dso_local i32 @fatal_error(i32, i8*, ...) #1

declare dso_local %struct.TYPE_22__* @resolve_expr_rvalue(%struct.TYPE_28__*) #1

declare dso_local i32 @cast_operand(%struct.TYPE_26__*, %struct.TYPE_22__*) #1

declare dso_local i32 @get_type_name(%struct.TYPE_22__*) #1

declare dso_local i32 @set_resolved_sym(%struct.TYPE_28__*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_22__* @resolve_expr_call_intrinsic(%struct.TYPE_22__*, %struct.TYPE_27__*, i32*) #1

declare dso_local %struct.TYPE_22__* @resolve_expr_call_default(%struct.TYPE_22__*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
