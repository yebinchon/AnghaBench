; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_expr_ternary.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_expr_ternary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__*, %struct.TYPE_20__, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32 }

@EXPR_TERNARY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Ternary conditional must have scalar type\00", align 1
@type_void = common dso_local global i64 0, align 8
@type_char = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [92 x i8] c"Left and right operands of ternary expression must have arithmetic types or identical types\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resolve_expr_ternary(%struct.TYPE_22__* noalias sret %0, %struct.TYPE_23__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__, align 8
  %7 = alloca %struct.TYPE_22__, align 8
  %8 = alloca %struct.TYPE_22__, align 8
  %9 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  store i32* %2, i32** %5, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EXPR_TERNARY, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  call void @resolve_expr_rvalue(%struct.TYPE_22__* sret %6, i32 %20)
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %23 = call i32 @is_scalar_type(%struct.TYPE_19__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @fatal_error(i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %3
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  call void @resolve_expected_expr_rvalue(%struct.TYPE_22__* sret %7, i32 %34, i32* %35)
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %5, align 8
  call void @resolve_expected_expr_rvalue(%struct.TYPE_22__* sret %8, i32 %39, i32* %40)
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  %45 = icmp eq %struct.TYPE_19__* %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  call void @operand_rvalue(%struct.TYPE_22__* sret %0, %struct.TYPE_19__* %48)
  br label %169

49:                                               ; preds = %30
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = call i64 @is_arithmetic_type(%struct.TYPE_19__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = call i64 @is_arithmetic_type(%struct.TYPE_19__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %93

59:                                               ; preds = %54
  %60 = call i32 @unify_arithmetic_operands(%struct.TYPE_22__* %7, %struct.TYPE_22__* %8)
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %81 = bitcast %struct.TYPE_20__* %9 to i8*
  %82 = bitcast %struct.TYPE_20__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 8, i1 false)
  br label %87

83:                                               ; preds = %72
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %85 = bitcast %struct.TYPE_20__* %9 to i8*
  %86 = bitcast %struct.TYPE_20__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 8, i1 false)
  br label %87

87:                                               ; preds = %83, %79
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  call void @operand_const(%struct.TYPE_22__* sret %0, %struct.TYPE_19__* %74, i64 %89)
  br label %169

90:                                               ; preds = %68, %64, %59
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  call void @operand_rvalue(%struct.TYPE_22__* sret %0, %struct.TYPE_19__* %92)
  br label %169

93:                                               ; preds = %54, %49
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = call i64 @is_ptr_type(%struct.TYPE_19__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = call i64 @is_null_ptr(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %8)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  call void @operand_rvalue(%struct.TYPE_22__* sret %0, %struct.TYPE_19__* %103)
  br label %169

104:                                              ; preds = %98, %93
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = call i64 @is_ptr_type(%struct.TYPE_19__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = call i64 @is_null_ptr(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %7)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  call void @operand_rvalue(%struct.TYPE_22__* sret %0, %struct.TYPE_19__* %114)
  br label %169

115:                                              ; preds = %109, %104
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %116, align 8
  %118 = call i64 @is_ptr_type(%struct.TYPE_19__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %161

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = call i64 @is_ptr_type(%struct.TYPE_19__* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %161

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @type_void, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @type_char, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %140, align 8
  call void @operand_rvalue(%struct.TYPE_22__* sret %0, %struct.TYPE_19__* %141)
  br label %169

142:                                              ; preds = %132, %125
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @type_char, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @type_void, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %157, align 8
  call void @operand_rvalue(%struct.TYPE_22__* sret %0, %struct.TYPE_19__* %158)
  br label %169

159:                                              ; preds = %149, %142
  br label %160

160:                                              ; preds = %159
  br label %161

161:                                              ; preds = %160, %120, %115
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @fatal_error(i32 %164, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0))
  br label %166

166:                                              ; preds = %161
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %46, %87, %90, %101, %112, %139, %156, %168
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local void @resolve_expr_rvalue(%struct.TYPE_22__* sret, i32) #1

declare dso_local i32 @is_scalar_type(%struct.TYPE_19__*) #1

declare dso_local i32 @fatal_error(i32, i8*) #1

declare dso_local void @resolve_expected_expr_rvalue(%struct.TYPE_22__* sret, i32, i32*) #1

declare dso_local void @operand_rvalue(%struct.TYPE_22__* sret, %struct.TYPE_19__*) #1

declare dso_local i64 @is_arithmetic_type(%struct.TYPE_19__*) #1

declare dso_local i32 @unify_arithmetic_operands(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local void @operand_const(%struct.TYPE_22__* sret, %struct.TYPE_19__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @is_ptr_type(%struct.TYPE_19__*) #1

declare dso_local i64 @is_null_ptr(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
