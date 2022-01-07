; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_expr_field.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_expr_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32 }

@EXPR_FIELD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Can only access fields on aggregates or pointers to aggregates\00", align 1
@operand_null = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"No field named '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, i64 } @resolve_expr_field(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_23__, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_23__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_21__, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EXPR_FIELD, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32* @try_resolve_package(i32 %23)
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %1
  %28 = load i32*, i32** %4, align 8
  %29 = call i32* @enter_package(i32* %28)
  store i32* %29, i32** %5, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32* @resolve_name(i64 %33)
  store i32* %34, i32** %6, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call { i32, i64 } @resolve_name_operand(i32 %37, i64 %41)
  %43 = bitcast %struct.TYPE_23__* %2 to { i32, i64 }*
  %44 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %43, i32 0, i32 0
  %45 = extractvalue { i32, i64 } %42, 0
  store i32 %45, i32* %44, align 8
  %46 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %43, i32 0, i32 1
  %47 = extractvalue { i32, i64 } %42, 1
  store i64 %47, i64* %46, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @leave_package(i32* %48)
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @set_resolved_sym(%struct.TYPE_24__* %50, i32* %51)
  br label %174

53:                                               ; preds = %1
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call { i32, i64 } @resolve_expr(i32 %57)
  %59 = bitcast %struct.TYPE_23__* %7 to { i32, i64 }*
  %60 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %59, i32 0, i32 0
  %61 = extractvalue { i32, i64 } %58, 0
  store i32 %61, i32* %60, align 8
  %62 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %59, i32 0, i32 1
  %63 = extractvalue { i32, i64 } %58, 1
  store i64 %63, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @is_const_type(i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.TYPE_22__* @unqualify_type(i32 %68)
  store %struct.TYPE_22__* %69, %struct.TYPE_22__** %9, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %71 = call i32 @complete_type(%struct.TYPE_22__* %70)
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %73 = call i64 @is_ptr_type(%struct.TYPE_22__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %53
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call { i32, i64 } @operand_lvalue(i32 %78)
  %80 = bitcast %struct.TYPE_23__* %10 to { i32, i64 }*
  %81 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %80, i32 0, i32 0
  %82 = extractvalue { i32, i64 } %79, 0
  store i32 %82, i32* %81, align 8
  %83 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %80, i32 0, i32 1
  %84 = extractvalue { i32, i64 } %79, 1
  store i64 %84, i64* %83, align 8
  %85 = bitcast %struct.TYPE_23__* %7 to i8*
  %86 = bitcast %struct.TYPE_23__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @is_const_type(i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.TYPE_22__* @unqualify_type(i32 %91)
  store %struct.TYPE_22__* %92, %struct.TYPE_22__** %9, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %94 = call i32 @complete_type(%struct.TYPE_22__* %93)
  br label %95

95:                                               ; preds = %75, %53
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %97 = call i32 @is_aggregate_type(%struct.TYPE_22__* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i32, i8*, ...) @fatal_error(i32 %102, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %104 = bitcast %struct.TYPE_23__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 bitcast (%struct.TYPE_23__* @operand_null to i8*), i64 16, i1 false)
  br label %174

105:                                              ; preds = %95
  store i64 0, i64* %11, align 8
  br label %106

106:                                              ; preds = %161, %105
  %107 = load i64, i64* %11, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ult i64 %107, %111
  br i1 %112, label %113, label %164

113:                                              ; preds = %106
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = load i64, i64* %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i64 %118
  %120 = bitcast %struct.TYPE_21__* %12 to i8*
  %121 = bitcast %struct.TYPE_21__* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 16, i1 false)
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %123, %127
  br i1 %128, label %129, label %160

129:                                              ; preds = %113
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call { i32, i64 } @operand_lvalue(i32 %135)
  %137 = bitcast %struct.TYPE_23__* %2 to { i32, i64 }*
  %138 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %137, i32 0, i32 0
  %139 = extractvalue { i32, i64 } %136, 0
  store i32 %139, i32* %138, align 8
  %140 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %137, i32 0, i32 1
  %141 = extractvalue { i32, i64 } %136, 1
  store i64 %141, i64* %140, align 8
  br label %151

142:                                              ; preds = %129
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call { i32, i64 } @operand_rvalue(i32 %144)
  %146 = bitcast %struct.TYPE_23__* %2 to { i32, i64 }*
  %147 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %146, i32 0, i32 0
  %148 = extractvalue { i32, i64 } %145, 0
  store i32 %148, i32* %147, align 8
  %149 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %146, i32 0, i32 1
  %150 = extractvalue { i32, i64 } %145, 1
  store i64 %150, i64* %149, align 8
  br label %151

151:                                              ; preds = %142, %133
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %2, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @type_const(i32 %156)
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %2, i32 0, i32 0
  store i32 %157, i32* %158, align 8
  br label %159

159:                                              ; preds = %154, %151
  br label %174

160:                                              ; preds = %113
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %11, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %11, align 8
  br label %106

164:                                              ; preds = %106
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 (i32, i8*, ...) @fatal_error(i32 %167, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %171)
  %173 = bitcast %struct.TYPE_23__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %173, i8* align 8 bitcast (%struct.TYPE_23__* @operand_null to i8*), i64 16, i1 false)
  br label %174

174:                                              ; preds = %164, %159, %99, %27
  %175 = bitcast %struct.TYPE_23__* %2 to { i32, i64 }*
  %176 = load { i32, i64 }, { i32, i64 }* %175, align 8
  ret { i32, i64 } %176
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @try_resolve_package(i32) #1

declare dso_local i32* @enter_package(i32*) #1

declare dso_local i32* @resolve_name(i64) #1

declare dso_local { i32, i64 } @resolve_name_operand(i32, i64) #1

declare dso_local i32 @leave_package(i32*) #1

declare dso_local i32 @set_resolved_sym(%struct.TYPE_24__*, i32*) #1

declare dso_local { i32, i64 } @resolve_expr(i32) #1

declare dso_local i32 @is_const_type(i32) #1

declare dso_local %struct.TYPE_22__* @unqualify_type(i32) #1

declare dso_local i32 @complete_type(%struct.TYPE_22__*) #1

declare dso_local i64 @is_ptr_type(%struct.TYPE_22__*) #1

declare dso_local { i32, i64 } @operand_lvalue(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @is_aggregate_type(%struct.TYPE_22__*) #1

declare dso_local i32 @fatal_error(i32, i8*, ...) #1

declare dso_local { i32, i64 } @operand_rvalue(i32) #1

declare dso_local i32 @type_const(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
