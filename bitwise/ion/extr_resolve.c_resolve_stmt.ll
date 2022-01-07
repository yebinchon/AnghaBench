; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_stmt.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, i32, i32, %struct.TYPE_40__, %struct.TYPE_39__, %struct.TYPE_38__, %struct.TYPE_37__, %struct.TYPE_36__, %struct.TYPE_35__, %struct.TYPE_33__ }
%struct.TYPE_40__ = type { i64, %struct.TYPE_42__*, i32 }
%struct.TYPE_42__ = type { i64, %struct.TYPE_33__, i32, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { %struct.TYPE_30__*, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_33__, %struct.TYPE_28__*, i32, %struct.TYPE_28__* }
%struct.TYPE_38__ = type { %struct.TYPE_33__, i32 }
%struct.TYPE_37__ = type { i64, %struct.TYPE_33__, %struct.TYPE_31__*, %struct.TYPE_33__, %struct.TYPE_28__*, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_33__, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i32, i32, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_28__** }
%struct.TYPE_43__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_32__, i32* }
%struct.TYPE_32__ = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"Invalid type in return expression. Expected %s, got %s\00", align 1
@type_void = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"Empty return expression for function with non-void return type\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Illegal break\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Illegal continue\00", align 1
@assert_name = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"#assert takes 1 argument\00", align 1
@static_assert_name = common dso_local global i32 0, align 4
@foreign_name = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Unknown statement #directive '%s'\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Conditional expression must have scalar type\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Switch expression must have integer type\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"Invalid type in switch case expression. Expected %s, got %s\00", align 1
@type_llong = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [52 x i8] c"Case range end value cannot be less thn start value\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Case range cannot span more than 256 values\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"Switch statement has multiple default clauses\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"Case blocks already end with an implicit break\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resolve_stmt(%struct.TYPE_28__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_43__, align 4
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_29__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_31__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_29__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_42__, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_41__, align 8
  %21 = alloca %struct.TYPE_30__*, align 8
  %22 = alloca %struct.TYPE_29__, align 8
  %23 = alloca %struct.TYPE_30__*, align 8
  %24 = alloca %struct.TYPE_29__, align 8
  %25 = alloca %struct.TYPE_28__*, align 8
  %26 = bitcast %struct.TYPE_43__* %5 to i64*
  store i64 %2, i64* %26, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store i32* %1, i32** %7, align 8
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %619 [
    i32 130, label %30
    i32 140, label %71
    i32 139, label %81
    i32 141, label %91
    i32 131, label %103
    i32 134, label %166
    i32 128, label %295
    i32 138, label %295
    i32 136, label %315
    i32 129, label %375
    i32 142, label %592
    i32 133, label %595
    i32 137, label %598
    i32 132, label %603
    i32 135, label %611
  ]

30:                                               ; preds = %3
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call { i32, i32* } @resolve_expected_expr_rvalue(i32 %38, i32* %39)
  %41 = bitcast %struct.TYPE_29__* %8 to { i32, i32* }*
  %42 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %41, i32 0, i32 0
  %43 = extractvalue { i32, i32* } %40, 0
  store i32 %43, i32* %42, align 8
  %44 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %41, i32 0, i32 1
  %45 = extractvalue { i32, i32* } %40, 1
  store i32* %45, i32** %44, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @convert_operand(%struct.TYPE_29__* %8, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %35
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @get_type_name(i32* %53)
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @get_type_name(i32* %56)
  %58 = call i32 (i32, i8*, ...) @fatal_error(i32 %52, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %49, %35
  br label %70

60:                                               ; preds = %30
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** @type_void, align 8
  %63 = icmp ne i32* %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, i8*, ...) @fatal_error(i32 %67, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %60
  br label %70

70:                                               ; preds = %69, %59
  store i32 1, i32* %4, align 4
  br label %621

71:                                               ; preds = %3
  %72 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %5, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32, i8*, ...) @fatal_error(i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %71
  store i32 0, i32* %4, align 4
  br label %621

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %5, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i8*, ...) @fatal_error(i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %85, %81
  store i32 0, i32* %4, align 4
  br label %621

91:                                               ; preds = %3
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 10
  %94 = load i32*, i32** %7, align 8
  %95 = bitcast %struct.TYPE_33__* %93 to { i32, %struct.TYPE_28__** }*
  %96 = getelementptr inbounds { i32, %struct.TYPE_28__** }, { i32, %struct.TYPE_28__** }* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds { i32, %struct.TYPE_28__** }, { i32, %struct.TYPE_28__** }* %95, i32 0, i32 1
  %99 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %98, align 8
  %100 = bitcast %struct.TYPE_43__* %5 to i64*
  %101 = load i64, i64* %100, align 4
  %102 = call i32 @resolve_stmt_block(i32 %97, %struct.TYPE_28__** %99, i32* %94, i64 %101)
  store i32 %102, i32* %4, align 4
  br label %621

103:                                              ; preds = %3
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 9
  %106 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @assert_name, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %103
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 9
  %113 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 1
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @fatal_error(i32 %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %121

121:                                              ; preds = %116, %110
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 9
  %124 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_34__*, %struct.TYPE_34__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @resolve_cond_expr(i32 %128)
  br label %165

130:                                              ; preds = %103
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 9
  %133 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @static_assert_name, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %130
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 9
  %140 = bitcast %struct.TYPE_35__* %139 to { i64, %struct.TYPE_34__* }*
  %141 = getelementptr inbounds { i64, %struct.TYPE_34__* }, { i64, %struct.TYPE_34__* }* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds { i64, %struct.TYPE_34__* }, { i64, %struct.TYPE_34__* }* %140, i32 0, i32 1
  %144 = load %struct.TYPE_34__*, %struct.TYPE_34__** %143, align 8
  %145 = call i32 @resolve_static_assert(i64 %142, %struct.TYPE_34__* %144)
  br label %164

146:                                              ; preds = %130
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 9
  %149 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @foreign_name, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %163

154:                                              ; preds = %146
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 9
  %160 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, ...) @warning(i32 %157, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %154, %153
  br label %164

164:                                              ; preds = %163, %137
  br label %165

165:                                              ; preds = %164, %121
  store i32 0, i32* %4, align 4
  br label %621

166:                                              ; preds = %3
  %167 = call i32* (...) @sym_enter()
  store i32* %167, i32** %9, align 8
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %169, i32 0, i32 4
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %170, align 8
  %172 = icmp ne %struct.TYPE_28__* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 7
  %176 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %176, align 8
  %178 = call i32 @resolve_stmt_init(%struct.TYPE_28__* %177)
  br label %179

179:                                              ; preds = %173, %166
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 7
  %182 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %179
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 7
  %188 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @resolve_cond_expr(i32 %189)
  br label %211

191:                                              ; preds = %179
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 7
  %197 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %196, i32 0, i32 4
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 8
  %200 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @resolve_name_operand(i32 %194, i32 %201)
  %203 = call i32 @is_cond_operand(i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %191
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (i32, i8*, ...) @fatal_error(i32 %208, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %210

210:                                              ; preds = %205, %191
  br label %211

211:                                              ; preds = %210, %185
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 7
  %214 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %213, i32 0, i32 3
  %215 = load i32*, i32** %7, align 8
  %216 = bitcast %struct.TYPE_33__* %214 to { i32, %struct.TYPE_28__** }*
  %217 = getelementptr inbounds { i32, %struct.TYPE_28__** }, { i32, %struct.TYPE_28__** }* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds { i32, %struct.TYPE_28__** }, { i32, %struct.TYPE_28__** }* %216, i32 0, i32 1
  %220 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %219, align 8
  %221 = bitcast %struct.TYPE_43__* %5 to i64*
  %222 = load i64, i64* %221, align 4
  %223 = call i32 @resolve_stmt_block(i32 %218, %struct.TYPE_28__** %220, i32* %215, i64 %222)
  store i32 %223, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %224

224:                                              ; preds = %260, %211
  %225 = load i64, i64* %11, align 8
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 7
  %228 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ult i64 %225, %229
  br i1 %230, label %231, label %263

231:                                              ; preds = %224
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 7
  %234 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_31__*, %struct.TYPE_31__** %234, align 8
  %236 = load i64, i64* %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %235, i64 %236
  %238 = bitcast %struct.TYPE_31__* %12 to i8*
  %239 = bitcast %struct.TYPE_31__* %237 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %238, i8* align 8 %239, i64 24, i1 false)
  %240 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @resolve_cond_expr(i32 %241)
  %243 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 0
  %244 = load i32*, i32** %7, align 8
  %245 = bitcast %struct.TYPE_33__* %243 to { i32, %struct.TYPE_28__** }*
  %246 = getelementptr inbounds { i32, %struct.TYPE_28__** }, { i32, %struct.TYPE_28__** }* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = getelementptr inbounds { i32, %struct.TYPE_28__** }, { i32, %struct.TYPE_28__** }* %245, i32 0, i32 1
  %249 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %248, align 8
  %250 = bitcast %struct.TYPE_43__* %5 to i64*
  %251 = load i64, i64* %250, align 4
  %252 = call i32 @resolve_stmt_block(i32 %247, %struct.TYPE_28__** %249, i32* %244, i64 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %231
  %255 = load i32, i32* %10, align 4
  %256 = icmp ne i32 %255, 0
  br label %257

257:                                              ; preds = %254, %231
  %258 = phi i1 [ false, %231 ], [ %256, %254 ]
  %259 = zext i1 %258 to i32
  store i32 %259, i32* %10, align 4
  br label %260

260:                                              ; preds = %257
  %261 = load i64, i64* %11, align 8
  %262 = add i64 %261, 1
  store i64 %262, i64* %11, align 8
  br label %224

263:                                              ; preds = %224
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 7
  %266 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %267, align 8
  %269 = icmp ne %struct.TYPE_28__** %268, null
  br i1 %269, label %270, label %290

270:                                              ; preds = %263
  %271 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %271, i32 0, i32 7
  %273 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %272, i32 0, i32 1
  %274 = load i32*, i32** %7, align 8
  %275 = bitcast %struct.TYPE_33__* %273 to { i32, %struct.TYPE_28__** }*
  %276 = getelementptr inbounds { i32, %struct.TYPE_28__** }, { i32, %struct.TYPE_28__** }* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = getelementptr inbounds { i32, %struct.TYPE_28__** }, { i32, %struct.TYPE_28__** }* %275, i32 0, i32 1
  %279 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %278, align 8
  %280 = bitcast %struct.TYPE_43__* %5 to i64*
  %281 = load i64, i64* %280, align 4
  %282 = call i32 @resolve_stmt_block(i32 %277, %struct.TYPE_28__** %279, i32* %274, i64 %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %270
  %285 = load i32, i32* %10, align 4
  %286 = icmp ne i32 %285, 0
  br label %287

287:                                              ; preds = %284, %270
  %288 = phi i1 [ false, %270 ], [ %286, %284 ]
  %289 = zext i1 %288 to i32
  store i32 %289, i32* %10, align 4
  br label %291

290:                                              ; preds = %263
  store i32 0, i32* %10, align 4
  br label %291

291:                                              ; preds = %290, %287
  %292 = load i32*, i32** %9, align 8
  %293 = call i32 @sym_leave(i32* %292)
  %294 = load i32, i32* %10, align 4
  store i32 %294, i32* %4, align 4
  br label %621

295:                                              ; preds = %3, %3
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %296, i32 0, i32 6
  %298 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @resolve_cond_expr(i32 %299)
  %301 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %5, i32 0, i32 0
  store i32 1, i32* %301, align 4
  %302 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %5, i32 0, i32 1
  store i32 1, i32* %302, align 4
  %303 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %303, i32 0, i32 6
  %305 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %304, i32 0, i32 0
  %306 = load i32*, i32** %7, align 8
  %307 = bitcast %struct.TYPE_33__* %305 to { i32, %struct.TYPE_28__** }*
  %308 = getelementptr inbounds { i32, %struct.TYPE_28__** }, { i32, %struct.TYPE_28__** }* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = getelementptr inbounds { i32, %struct.TYPE_28__** }, { i32, %struct.TYPE_28__** }* %307, i32 0, i32 1
  %311 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %310, align 8
  %312 = bitcast %struct.TYPE_43__* %5 to i64*
  %313 = load i64, i64* %312, align 4
  %314 = call i32 @resolve_stmt_block(i32 %309, %struct.TYPE_28__** %311, i32* %306, i64 %313)
  store i32 0, i32* %4, align 4
  br label %621

315:                                              ; preds = %3
  %316 = call i32* (...) @sym_enter()
  store i32* %316, i32** %13, align 8
  %317 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %317, i32 0, i32 5
  %319 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %318, i32 0, i32 3
  %320 = load %struct.TYPE_28__*, %struct.TYPE_28__** %319, align 8
  %321 = icmp ne %struct.TYPE_28__* %320, null
  br i1 %321, label %322, label %331

322:                                              ; preds = %315
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %323, i32 0, i32 5
  %325 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %324, i32 0, i32 3
  %326 = load %struct.TYPE_28__*, %struct.TYPE_28__** %325, align 8
  %327 = load i32*, i32** %7, align 8
  %328 = bitcast %struct.TYPE_43__* %5 to i64*
  %329 = load i64, i64* %328, align 4
  %330 = call i32 @resolve_stmt(%struct.TYPE_28__* %326, i32* %327, i64 %329)
  br label %331

331:                                              ; preds = %322, %315
  %332 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %332, i32 0, i32 5
  %334 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %343

337:                                              ; preds = %331
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %338, i32 0, i32 5
  %340 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @resolve_cond_expr(i32 %341)
  br label %343

343:                                              ; preds = %337, %331
  %344 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %344, i32 0, i32 5
  %346 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_28__*, %struct.TYPE_28__** %346, align 8
  %348 = icmp ne %struct.TYPE_28__* %347, null
  br i1 %348, label %349, label %358

349:                                              ; preds = %343
  %350 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %350, i32 0, i32 5
  %352 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %351, i32 0, i32 1
  %353 = load %struct.TYPE_28__*, %struct.TYPE_28__** %352, align 8
  %354 = load i32*, i32** %7, align 8
  %355 = bitcast %struct.TYPE_43__* %5 to i64*
  %356 = load i64, i64* %355, align 4
  %357 = call i32 @resolve_stmt(%struct.TYPE_28__* %353, i32* %354, i64 %356)
  br label %358

358:                                              ; preds = %349, %343
  %359 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %5, i32 0, i32 0
  store i32 1, i32* %359, align 4
  %360 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %5, i32 0, i32 1
  store i32 1, i32* %360, align 4
  %361 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %361, i32 0, i32 5
  %363 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %362, i32 0, i32 0
  %364 = load i32*, i32** %7, align 8
  %365 = bitcast %struct.TYPE_33__* %363 to { i32, %struct.TYPE_28__** }*
  %366 = getelementptr inbounds { i32, %struct.TYPE_28__** }, { i32, %struct.TYPE_28__** }* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = getelementptr inbounds { i32, %struct.TYPE_28__** }, { i32, %struct.TYPE_28__** }* %365, i32 0, i32 1
  %369 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %368, align 8
  %370 = bitcast %struct.TYPE_43__* %5 to i64*
  %371 = load i64, i64* %370, align 4
  %372 = call i32 @resolve_stmt_block(i32 %367, %struct.TYPE_28__** %369, i32* %364, i64 %371)
  %373 = load i32*, i32** %13, align 8
  %374 = call i32 @sym_leave(i32* %373)
  store i32 0, i32* %4, align 4
  br label %621

375:                                              ; preds = %3
  %376 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %376, i32 0, i32 4
  %378 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = call { i32, i32* } @resolve_expr_rvalue(i32 %379)
  %381 = bitcast %struct.TYPE_29__* %14 to { i32, i32* }*
  %382 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %381, i32 0, i32 0
  %383 = extractvalue { i32, i32* } %380, 0
  store i32 %383, i32* %382, align 8
  %384 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %381, i32 0, i32 1
  %385 = extractvalue { i32, i32* } %380, 1
  store i32* %385, i32** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 1
  %387 = load i32*, i32** %386, align 8
  %388 = call i32 @is_integer_type(i32* %387)
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %395, label %390

390:                                              ; preds = %375
  %391 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = call i32 (i32, i8*, ...) @fatal_error(i32 %393, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %395

395:                                              ; preds = %390, %375
  %396 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %5, i32 0, i32 0
  store i32 1, i32* %396, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  br label %397

397:                                              ; preds = %580, %395
  %398 = load i64, i64* %17, align 8
  %399 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %399, i32 0, i32 4
  %401 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = icmp ult i64 %398, %402
  br i1 %403, label %404, label %583

404:                                              ; preds = %397
  %405 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %405, i32 0, i32 4
  %407 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %406, i32 0, i32 1
  %408 = load %struct.TYPE_42__*, %struct.TYPE_42__** %407, align 8
  %409 = load i64, i64* %17, align 8
  %410 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %408, i64 %409
  %411 = bitcast %struct.TYPE_42__* %18 to i8*
  %412 = bitcast %struct.TYPE_42__* %410 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %411, i8* align 8 %412, i64 40, i1 false)
  store i64 0, i64* %19, align 8
  br label %413

413:                                              ; preds = %520, %404
  %414 = load i64, i64* %19, align 8
  %415 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %18, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = icmp ult i64 %414, %416
  br i1 %417, label %418, label %523

418:                                              ; preds = %413
  %419 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %18, i32 0, i32 3
  %420 = load %struct.TYPE_41__*, %struct.TYPE_41__** %419, align 8
  %421 = load i64, i64* %19, align 8
  %422 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %420, i64 %421
  %423 = bitcast %struct.TYPE_41__* %20 to i8*
  %424 = bitcast %struct.TYPE_41__* %422 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %423, i8* align 8 %424, i64 16, i1 false)
  %425 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %20, i32 0, i32 1
  %426 = load %struct.TYPE_30__*, %struct.TYPE_30__** %425, align 8
  store %struct.TYPE_30__* %426, %struct.TYPE_30__** %21, align 8
  %427 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %428 = call { i32, i32* } @resolve_const_expr(%struct.TYPE_30__* %427)
  %429 = bitcast %struct.TYPE_29__* %22 to { i32, i32* }*
  %430 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %429, i32 0, i32 0
  %431 = extractvalue { i32, i32* } %428, 0
  store i32 %431, i32* %430, align 8
  %432 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %429, i32 0, i32 1
  %433 = extractvalue { i32, i32* } %428, 1
  store i32* %433, i32** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 1
  %435 = load i32*, i32** %434, align 8
  %436 = call i32 @convert_operand(%struct.TYPE_29__* %22, i32* %435)
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %449, label %438

438:                                              ; preds = %418
  %439 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %440 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 1
  %443 = load i32*, i32** %442, align 8
  %444 = call i32 @get_type_name(i32* %443)
  %445 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 1
  %446 = load i32*, i32** %445, align 8
  %447 = call i32 @get_type_name(i32* %446)
  %448 = call i32 (i32, i8*, ...) @fatal_error(i32 %441, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i32 %444, i32 %447)
  br label %449

449:                                              ; preds = %438, %418
  %450 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %20, i32 0, i32 0
  %451 = load %struct.TYPE_30__*, %struct.TYPE_30__** %450, align 8
  store %struct.TYPE_30__* %451, %struct.TYPE_30__** %23, align 8
  %452 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %453 = icmp ne %struct.TYPE_30__* %452, null
  br i1 %453, label %454, label %519

454:                                              ; preds = %449
  %455 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %456 = call { i32, i32* } @resolve_const_expr(%struct.TYPE_30__* %455)
  %457 = bitcast %struct.TYPE_29__* %24 to { i32, i32* }*
  %458 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %457, i32 0, i32 0
  %459 = extractvalue { i32, i32* } %456, 0
  store i32 %459, i32* %458, align 8
  %460 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %457, i32 0, i32 1
  %461 = extractvalue { i32, i32* } %456, 1
  store i32* %461, i32** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 1
  %463 = load i32*, i32** %462, align 8
  %464 = call i32 @convert_operand(%struct.TYPE_29__* %24, i32* %463)
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %477, label %466

466:                                              ; preds = %454
  %467 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %468 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 4
  %470 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 1
  %471 = load i32*, i32** %470, align 8
  %472 = call i32 @get_type_name(i32* %471)
  %473 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 1
  %474 = load i32*, i32** %473, align 8
  %475 = call i32 @get_type_name(i32* %474)
  %476 = call i32 (i32, i8*, ...) @fatal_error(i32 %469, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i32 %472, i32 %475)
  br label %477

477:                                              ; preds = %466, %454
  %478 = load i32*, i32** @type_llong, align 8
  %479 = call i32 @convert_operand(%struct.TYPE_29__* %22, i32* %478)
  %480 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %481 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = call i32 @set_resolved_val(%struct.TYPE_30__* %480, i32 %483)
  %485 = load i32*, i32** @type_llong, align 8
  %486 = call i32 @convert_operand(%struct.TYPE_29__* %24, i32* %485)
  %487 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %488 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = call i32 @set_resolved_val(%struct.TYPE_30__* %487, i32 %490)
  %492 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 0
  %496 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 8
  %498 = icmp slt i32 %494, %497
  br i1 %498, label %499, label %504

499:                                              ; preds = %477
  %500 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %501 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 4
  %503 = call i32 (i32, i8*, ...) @fatal_error(i32 %502, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  br label %504

504:                                              ; preds = %499, %477
  %505 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = sub nsw i32 %507, %510
  %512 = icmp sge i32 %511, 256
  br i1 %512, label %513, label %518

513:                                              ; preds = %504
  %514 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %515 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 4
  %517 = call i32 (i32, i8*, ...) @fatal_error(i32 %516, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  br label %518

518:                                              ; preds = %513, %504
  br label %519

519:                                              ; preds = %518, %449
  br label %520

520:                                              ; preds = %519
  %521 = load i64, i64* %19, align 8
  %522 = add i64 %521, 1
  store i64 %522, i64* %19, align 8
  br label %413

523:                                              ; preds = %413
  %524 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %18, i32 0, i32 2
  %525 = load i32, i32* %524, align 8
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %536

527:                                              ; preds = %523
  %528 = load i32, i32* %16, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %535

530:                                              ; preds = %527
  %531 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %532 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %531, i32 0, i32 2
  %533 = load i32, i32* %532, align 8
  %534 = call i32 (i32, i8*, ...) @fatal_error(i32 %533, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  br label %535

535:                                              ; preds = %530, %527
  store i32 1, i32* %16, align 4
  br label %536

536:                                              ; preds = %535, %523
  %537 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %18, i32 0, i32 1
  %538 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  %540 = icmp sgt i32 %539, 1
  br i1 %540, label %541, label %562

541:                                              ; preds = %536
  %542 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %18, i32 0, i32 1
  %543 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %542, i32 0, i32 1
  %544 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %18, i32 0, i32 1
  %546 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = sub nsw i32 %547, 1
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %544, i64 %549
  %551 = load %struct.TYPE_28__*, %struct.TYPE_28__** %550, align 8
  store %struct.TYPE_28__* %551, %struct.TYPE_28__** %25, align 8
  %552 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %553 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 8
  %555 = icmp eq i32 %554, 140
  br i1 %555, label %556, label %561

556:                                              ; preds = %541
  %557 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %558 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %557, i32 0, i32 2
  %559 = load i32, i32* %558, align 8
  %560 = call i32 (i32, i8*, ...) @warning(i32 %559, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0))
  br label %561

561:                                              ; preds = %556, %541
  br label %562

562:                                              ; preds = %561, %536
  %563 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %18, i32 0, i32 1
  %564 = load i32*, i32** %7, align 8
  %565 = bitcast %struct.TYPE_33__* %563 to { i32, %struct.TYPE_28__** }*
  %566 = getelementptr inbounds { i32, %struct.TYPE_28__** }, { i32, %struct.TYPE_28__** }* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = getelementptr inbounds { i32, %struct.TYPE_28__** }, { i32, %struct.TYPE_28__** }* %565, i32 0, i32 1
  %569 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %568, align 8
  %570 = bitcast %struct.TYPE_43__* %5 to i64*
  %571 = load i64, i64* %570, align 4
  %572 = call i32 @resolve_stmt_block(i32 %567, %struct.TYPE_28__** %569, i32* %564, i64 %571)
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %577

574:                                              ; preds = %562
  %575 = load i32, i32* %15, align 4
  %576 = icmp ne i32 %575, 0
  br label %577

577:                                              ; preds = %574, %562
  %578 = phi i1 [ false, %562 ], [ %576, %574 ]
  %579 = zext i1 %578 to i32
  store i32 %579, i32* %15, align 4
  br label %580

580:                                              ; preds = %577
  %581 = load i64, i64* %17, align 8
  %582 = add i64 %581, 1
  store i64 %582, i64* %17, align 8
  br label %397

583:                                              ; preds = %397
  %584 = load i32, i32* %15, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %589

586:                                              ; preds = %583
  %587 = load i32, i32* %16, align 4
  %588 = icmp ne i32 %587, 0
  br label %589

589:                                              ; preds = %586, %583
  %590 = phi i1 [ false, %583 ], [ %588, %586 ]
  %591 = zext i1 %590 to i32
  store i32 %591, i32* %4, align 4
  br label %621

592:                                              ; preds = %3
  %593 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %594 = call i32 @resolve_stmt_assign(%struct.TYPE_28__* %593)
  store i32 0, i32* %4, align 4
  br label %621

595:                                              ; preds = %3
  %596 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %597 = call i32 @resolve_stmt_init(%struct.TYPE_28__* %596)
  store i32 0, i32* %4, align 4
  br label %621

598:                                              ; preds = %3
  %599 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %600 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %599, i32 0, i32 3
  %601 = load i32, i32* %600, align 4
  %602 = call i32 @resolve_expr(i32 %601)
  store i32 0, i32* %4, align 4
  br label %621

603:                                              ; preds = %3
  %604 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %605 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %604, i32 0, i32 2
  %606 = load i32, i32* %605, align 8
  %607 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %608 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %607, i32 0, i32 1
  %609 = load i32, i32* %608, align 4
  %610 = call i32 @define_label(i32 %606, i32 %609)
  store i32 0, i32* %4, align 4
  br label %621

611:                                              ; preds = %3
  %612 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %613 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %612, i32 0, i32 2
  %614 = load i32, i32* %613, align 8
  %615 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %616 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %615, i32 0, i32 1
  %617 = load i32, i32* %616, align 4
  %618 = call i32 @reference_label(i32 %614, i32 %617)
  store i32 0, i32* %4, align 4
  br label %621

619:                                              ; preds = %3
  %620 = call i32 @assert(i32 0)
  store i32 0, i32* %4, align 4
  br label %621

621:                                              ; preds = %619, %611, %603, %598, %595, %592, %589, %358, %295, %291, %165, %91, %90, %80, %70
  %622 = load i32, i32* %4, align 4
  ret i32 %622
}

declare dso_local { i32, i32* } @resolve_expected_expr_rvalue(i32, i32*) #1

declare dso_local i32 @convert_operand(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @fatal_error(i32, i8*, ...) #1

declare dso_local i32 @get_type_name(i32*) #1

declare dso_local i32 @resolve_stmt_block(i32, %struct.TYPE_28__**, i32*, i64) #1

declare dso_local i32 @resolve_cond_expr(i32) #1

declare dso_local i32 @resolve_static_assert(i64, %struct.TYPE_34__*) #1

declare dso_local i32 @warning(i32, i8*, ...) #1

declare dso_local i32* @sym_enter(...) #1

declare dso_local i32 @resolve_stmt_init(%struct.TYPE_28__*) #1

declare dso_local i32 @is_cond_operand(i32) #1

declare dso_local i32 @resolve_name_operand(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sym_leave(i32*) #1

declare dso_local { i32, i32* } @resolve_expr_rvalue(i32) #1

declare dso_local i32 @is_integer_type(i32*) #1

declare dso_local { i32, i32* } @resolve_const_expr(%struct.TYPE_30__*) #1

declare dso_local i32 @set_resolved_val(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @resolve_stmt_assign(%struct.TYPE_28__*) #1

declare dso_local i32 @resolve_expr(i32) #1

declare dso_local i32 @define_label(i32, i32) #1

declare dso_local i32 @reference_label(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
