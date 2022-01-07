; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_sym.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, i32, i32, %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { i64, i64, i32, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@SYM_RESOLVED = common dso_local global i64 0, align 8
@SYM_RESOLVING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Cyclic dependency\00", align 1
@SYM_UNRESOLVED = common dso_local global i64 0, align 8
@reachable_syms = common dso_local global i32 0, align 4
@reachable_phase = common dso_local global i64 0, align 8
@DECL_TYPEDEF = common dso_local global i64 0, align 8
@DECL_ENUM = common dso_local global i64 0, align 8
@type_int = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Base type of enum must be integer type\00", align 1
@DECL_STRUCT = common dso_local global i64 0, align 8
@DECL_UNION = common dso_local global i64 0, align 8
@sorted_syms = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resolve_sym(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SYM_RESOLVED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %173

12:                                               ; preds = %1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SYM_RESOLVING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @fatal_error(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %173

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SYM_UNRESOLVED, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %42 = call i32 @is_local_sym(%struct.TYPE_16__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %26
  %45 = load i32, i32* @reachable_syms, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %47 = call i32 @buf_push(i32 %45, %struct.TYPE_16__* %46)
  %48 = load i64, i64* @reachable_phase, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 6
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %44, %26
  %52 = load i64, i64* @SYM_RESOLVING, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %3, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32* @enter_package(i32 %60)
  store i32* %61, i32** %4, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %145 [
    i32 129, label %65
    i32 128, label %127
    i32 132, label %132
    i32 131, label %139
    i32 130, label %144
  ]

65:                                               ; preds = %51
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %67 = icmp ne %struct.TYPE_17__* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DECL_TYPEDEF, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = call i32 @is_decl_foreign(%struct.TYPE_17__* %79)
  %81 = call i32 @resolve_typespec_strict(i32 %78, i32 %80)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  br label %126

84:                                               ; preds = %68, %65
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DECL_ENUM, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %120

90:                                               ; preds = %84
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32* @resolve_typespec(i32 %100)
  br label %104

102:                                              ; preds = %90
  %103 = load i32*, i32** @type_int, align 8
  br label %104

104:                                              ; preds = %102, %96
  %105 = phi i32* [ %101, %96 ], [ %103, %102 ]
  store i32* %105, i32** %5, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @is_integer_type(i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @fatal_error(i32 %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %109, %104
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @type_enum(%struct.TYPE_16__* %115, i32* %116)
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  br label %125

120:                                              ; preds = %84
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %122 = call i32 @type_incomplete(%struct.TYPE_16__* %121)
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %120, %114
  br label %126

126:                                              ; preds = %125, %74
  br label %147

127:                                              ; preds = %51
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %129 = call i32 @resolve_decl_var(%struct.TYPE_17__* %128)
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  br label %147

132:                                              ; preds = %51
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 3
  %136 = call i32 @resolve_decl_const(%struct.TYPE_17__* %133, i32* %135)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  br label %147

139:                                              ; preds = %51
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %141 = call i32 @resolve_decl_func(%struct.TYPE_17__* %140)
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  br label %147

144:                                              ; preds = %51
  br label %147

145:                                              ; preds = %51
  %146 = call i32 @assert(i32 0)
  br label %147

147:                                              ; preds = %145, %144, %139, %132, %127, %126
  %148 = load i32*, i32** %4, align 8
  %149 = call i32 @leave_package(i32* %148)
  %150 = load i64, i64* @SYM_RESOLVED, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %147
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @DECL_STRUCT, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %157
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @DECL_UNION, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %163, %147
  %170 = load i32, i32* @sorted_syms, align 4
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %172 = call i32 @buf_push(i32 %170, %struct.TYPE_16__* %171)
  br label %173

173:                                              ; preds = %11, %18, %169, %163, %157
  ret void
}

declare dso_local i32 @fatal_error(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_local_sym(%struct.TYPE_16__*) #1

declare dso_local i32 @buf_push(i32, %struct.TYPE_16__*) #1

declare dso_local i32* @enter_package(i32) #1

declare dso_local i32 @resolve_typespec_strict(i32, i32) #1

declare dso_local i32 @is_decl_foreign(%struct.TYPE_17__*) #1

declare dso_local i32* @resolve_typespec(i32) #1

declare dso_local i32 @is_integer_type(i32*) #1

declare dso_local i32 @type_enum(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @type_incomplete(%struct.TYPE_16__*) #1

declare dso_local i32 @resolve_decl_var(%struct.TYPE_17__*) #1

declare dso_local i32 @resolve_decl_const(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @resolve_decl_func(%struct.TYPE_17__*) #1

declare dso_local i32 @leave_package(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
