; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_decl_func.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_decl_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i32, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@DECL_FUNC = common dso_local global i64 0, align 8
@foreign_name = common dso_local global i32 0, align 4
@intrinsic_name = common dso_local global i32 0, align 4
@type_void = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Function parameter type cannot be void\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Function return type cannot be array\00", align 1
@type_int = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"Integer varargs type must have same or higher rank than int\00", align 1
@type_float = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"Floating varargs type must be double, not float\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @resolve_decl_func(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DECL_FUNC, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = load i32, i32* @foreign_name, align 4
  %20 = call i32* @get_decl_note(%struct.TYPE_8__* %18, i32 %19)
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = load i32, i32* @intrinsic_name, align 4
  %25 = call i32* @get_decl_note(%struct.TYPE_8__* %23, i32 %24)
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  store i32 %28, i32* %5, align 4
  store i32** null, i32*** %6, align 8
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %66, %1
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %29
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32* @resolve_typespec_strict(i64 %44, i32 %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32* @incomplete_decay(i32* %47)
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @complete_type(i32* %49)
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** @type_void, align 8
  %53 = icmp eq i32* %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %36
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @fatal_error(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %54, %36
  %63 = load i32**, i32*** %6, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @buf_push(i32** %63, i32* %64)
  br label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %29

69:                                               ; preds = %29
  %70 = load i32*, i32** @type_void, align 8
  store i32* %70, i32** %9, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32* @resolve_typespec_strict(i64 %80, i32 %81)
  %83 = call i32* @incomplete_decay(i32* %82)
  store i32* %83, i32** %9, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @complete_type(i32* %84)
  br label %86

86:                                               ; preds = %76, %69
  %87 = load i32*, i32** %9, align 8
  %88 = call i64 @is_array_type(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @fatal_error(i32 %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %90, %86
  %96 = load i32*, i32** @type_void, align 8
  store i32* %96, i32** %10, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %137

102:                                              ; preds = %95
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32* @resolve_typespec_strict(i64 %106, i32 %107)
  %109 = call i32* @incomplete_decay(i32* %108)
  store i32* %109, i32** %10, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @complete_type(i32* %110)
  %112 = load i32*, i32** %10, align 8
  %113 = call i64 @is_integer_type(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %102
  %116 = load i32*, i32** %10, align 8
  %117 = call i64 @type_rank(i32* %116)
  %118 = load i32*, i32** @type_int, align 8
  %119 = call i64 @type_rank(i32* %118)
  %120 = icmp slt i64 %117, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @fatal_error(i32 %124, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %136

126:                                              ; preds = %115, %102
  %127 = load i32*, i32** %10, align 8
  %128 = load i32*, i32** @type_float, align 8
  %129 = icmp eq i32* %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @fatal_error(i32 %133, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %130, %126
  br label %136

136:                                              ; preds = %135, %121
  br label %137

137:                                              ; preds = %136, %95
  %138 = load i32**, i32*** %6, align 8
  %139 = load i32**, i32*** %6, align 8
  %140 = call i32 @buf_len(i32** %139)
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* %4, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = call i32* @type_func(i32** %138, i32 %140, i32* %141, i32 %142, i32 %146, i32* %147)
  ret i32* %148
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @get_decl_note(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @resolve_typespec_strict(i64, i32) #1

declare dso_local i32* @incomplete_decay(i32*) #1

declare dso_local i32 @complete_type(i32*) #1

declare dso_local i32 @fatal_error(i32, i8*) #1

declare dso_local i32 @buf_push(i32**, i32*) #1

declare dso_local i64 @is_array_type(i32*) #1

declare dso_local i64 @is_integer_type(i32*) #1

declare dso_local i64 @type_rank(i32*) #1

declare dso_local i32* @type_func(i32**, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @buf_len(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
