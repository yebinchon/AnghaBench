; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_typespec_strict.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_typespec_strict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i8**, i32, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_16__*, %struct.TYPE_20__*, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_20__** }
%struct.TYPE_18__ = type { i64, %struct.TYPE_20__*, %struct.TYPE_20__** }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i32*, i32, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32 }

@type_void = common dso_local global i32* null, align 8
@current_package = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Unresolved package '%s'\00", align 1
@SYM_PACKAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s must denote a package\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unresolved type name '%s'\00", align 1
@SYM_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%s must denote a type\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Array size constant expression must have integer type\00", align 1
@type_int = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Non-positive array size\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Function parameter type cannot be void\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Function return type cannot be array\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Tuple element types cannot be void\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @resolve_typespec_strict(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_22__, align 4
  %16 = alloca i32**, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %24 = icmp ne %struct.TYPE_20__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32*, i32** @type_void, align 8
  store i32* %26, i32** %3, align 8
  br label %308

27:                                               ; preds = %2
  store i32* null, i32** %6, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %301 [
    i32 130, label %31
    i32 132, label %121
    i32 129, label %133
    i32 133, label %140
    i32 131, label %190
    i32 128, label %256
  ]

31:                                               ; preds = %27
  %32 = load i32*, i32** @current_package, align 8
  store i32* %32, i32** %7, align 8
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %75, %31
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %34, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %33
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i8*, i8** %44, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %9, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call %struct.TYPE_21__* @get_package_sym(i32* %48, i8* %49)
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %10, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %52 = icmp ne %struct.TYPE_21__* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %41
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 (i32, i8*, ...) @fatal_error(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %53, %41
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SYM_PACKAGE, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 (i32, i8*, ...) @fatal_error(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  store i32* null, i32** %3, align 8
  br label %308

71:                                               ; preds = %59
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %7, align 8
  br label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %8, align 8
  br label %33

78:                                               ; preds = %33
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = load i8**, i8*** %80, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %81, i64 %86
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %11, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = call %struct.TYPE_21__* @get_package_sym(i32* %89, i8* %90)
  store %struct.TYPE_21__* %91, %struct.TYPE_21__** %12, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %93 = icmp ne %struct.TYPE_21__* %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %78
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 (i32, i8*, ...) @fatal_error(i32 %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %94, %78
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SYM_TYPE, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 (i32, i8*, ...) @fatal_error(i32 %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %110)
  store i32* null, i32** %3, align 8
  br label %308

112:                                              ; preds = %100
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %114 = call i32 @resolve_sym(%struct.TYPE_21__* %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %117 = call i32 @set_resolved_sym(%struct.TYPE_20__* %115, %struct.TYPE_21__* %116)
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %6, align 8
  br label %303

121:                                              ; preds = %27
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 6
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32* @resolve_typespec_strict(%struct.TYPE_20__* %124, i32 %125)
  store i32* %126, i32** %6, align 8
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load i32*, i32** %6, align 8
  %131 = call i32* @type_const(i32* %130)
  store i32* %131, i32** %6, align 8
  br label %132

132:                                              ; preds = %129, %121
  br label %303

133:                                              ; preds = %27
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 6
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i32* @resolve_typespec_strict(%struct.TYPE_20__* %136, i32 %137)
  %139 = call i32* @type_ptr(i32* %138)
  store i32* %139, i32** %6, align 8
  br label %303

140:                                              ; preds = %27
  store i32 0, i32* %13, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 6
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32* @resolve_typespec_strict(%struct.TYPE_20__* %143, i32 %144)
  store i32* %145, i32** %14, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 5
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = icmp ne %struct.TYPE_16__* %148, null
  br i1 %149, label %150, label %181

150:                                              ; preds = %140
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 5
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = call i64 @resolve_const_expr(%struct.TYPE_16__* %153)
  %155 = bitcast %struct.TYPE_22__* %15 to i64*
  store i64 %154, i64* %155, align 4
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @is_integer_type(i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %150
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i32, i8*, ...) @fatal_error(i32 %163, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %165

165:                                              ; preds = %160, %150
  %166 = load i32, i32* @type_int, align 4
  %167 = call i32 @cast_operand(%struct.TYPE_22__* %15, i32 %166)
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %165
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 5
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i32, i8*, ...) @fatal_error(i32 %178, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %180

180:                                              ; preds = %173, %165
  br label %181

181:                                              ; preds = %180, %140
  %182 = load i32*, i32** %14, align 8
  %183 = load i32, i32* %13, align 4
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 5
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %185, align 8
  %187 = icmp eq %struct.TYPE_16__* %186, null
  %188 = zext i1 %187 to i32
  %189 = call i32* @type_array(i32* %182, i32 %183, i32 %188)
  store i32* %189, i32** %6, align 8
  br label %303

190:                                              ; preds = %27
  store i32** null, i32*** %16, align 8
  store i64 0, i64* %17, align 8
  br label %191

191:                                              ; preds = %222, %190
  %192 = load i64, i64* %17, align 8
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ult i64 %192, %196
  br i1 %197, label %198, label %225

198:                                              ; preds = %191
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %201, align 8
  %203 = load i64, i64* %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %202, i64 %203
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = call i32* @resolve_typespec_strict(%struct.TYPE_20__* %205, i32 %206)
  store i32* %207, i32** %18, align 8
  %208 = load i32*, i32** %18, align 8
  %209 = load i32*, i32** @type_void, align 8
  %210 = icmp eq i32* %208, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %198
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (i32, i8*, ...) @fatal_error(i32 %214, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %216

216:                                              ; preds = %211, %198
  %217 = load i32*, i32** %18, align 8
  %218 = call i32* @incomplete_decay(i32* %217)
  store i32* %218, i32** %18, align 8
  %219 = load i32**, i32*** %16, align 8
  %220 = load i32*, i32** %18, align 8
  %221 = call i32 @buf_push(i32** %219, i32* %220)
  br label %222

222:                                              ; preds = %216
  %223 = load i64, i64* %17, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %17, align 8
  br label %191

225:                                              ; preds = %191
  %226 = load i32*, i32** @type_void, align 8
  store i32* %226, i32** %19, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %229, align 8
  %231 = icmp ne %struct.TYPE_20__* %230, null
  br i1 %231, label %232, label %240

232:                                              ; preds = %225
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %235, align 8
  %237 = load i32, i32* %5, align 4
  %238 = call i32* @resolve_typespec_strict(%struct.TYPE_20__* %236, i32 %237)
  %239 = call i32* @incomplete_decay(i32* %238)
  store i32* %239, i32** %19, align 8
  br label %240

240:                                              ; preds = %232, %225
  %241 = load i32*, i32** %19, align 8
  %242 = call i32 @is_array_type(i32* %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %240
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = call i32 (i32, i8*, ...) @fatal_error(i32 %247, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %249

249:                                              ; preds = %244, %240
  %250 = load i32**, i32*** %16, align 8
  %251 = load i32**, i32*** %16, align 8
  %252 = call i32 @buf_len(i32** %251)
  %253 = load i32*, i32** %19, align 8
  %254 = load i32*, i32** @type_void, align 8
  %255 = call i32* @type_func(i32** %250, i32 %252, i32* %253, i32 0, i32 0, i32* %254)
  store i32* %255, i32** %6, align 8
  br label %303

256:                                              ; preds = %27
  store i32** null, i32*** %20, align 8
  store i64 0, i64* %21, align 8
  br label %257

257:                                              ; preds = %286, %256
  %258 = load i64, i64* %21, align 8
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp ult i64 %258, %262
  br i1 %263, label %264, label %289

264:                                              ; preds = %257
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %267, align 8
  %269 = load i64, i64* %21, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %268, i64 %269
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %270, align 8
  %272 = load i32, i32* %5, align 4
  %273 = call i32* @resolve_typespec_strict(%struct.TYPE_20__* %271, i32 %272)
  store i32* %273, i32** %22, align 8
  %274 = load i32*, i32** %22, align 8
  %275 = load i32*, i32** @type_void, align 8
  %276 = icmp eq i32* %274, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %264
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = call i32 (i32, i8*, ...) @fatal_error(i32 %280, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %282

282:                                              ; preds = %277, %264
  %283 = load i32**, i32*** %20, align 8
  %284 = load i32*, i32** %22, align 8
  %285 = call i32 @buf_push(i32** %283, i32* %284)
  br label %286

286:                                              ; preds = %282
  %287 = load i64, i64* %21, align 8
  %288 = add i64 %287, 1
  store i64 %288, i64* %21, align 8
  br label %257

289:                                              ; preds = %257
  %290 = load i32**, i32*** %20, align 8
  %291 = load i32**, i32*** %20, align 8
  %292 = call i32 @buf_len(i32** %291)
  %293 = call i32* @type_tuple(i32** %290, i32 %292)
  store i32* %293, i32** %6, align 8
  %294 = load i32*, i32** %6, align 8
  %295 = call i32 @get_reachable(i32* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %289
  %298 = load i32*, i32** %6, align 8
  %299 = call i32 @set_reachable(i32* %298)
  br label %300

300:                                              ; preds = %297, %289
  br label %303

301:                                              ; preds = %27
  %302 = call i32 @assert(i32 0)
  store i32* null, i32** %3, align 8
  br label %308

303:                                              ; preds = %300, %249, %181, %133, %132, %112
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %305 = load i32*, i32** %6, align 8
  %306 = call i32 @set_resolved_type(%struct.TYPE_20__* %304, i32* %305)
  %307 = load i32*, i32** %6, align 8
  store i32* %307, i32** %3, align 8
  br label %308

308:                                              ; preds = %303, %301, %106, %65, %25
  %309 = load i32*, i32** %3, align 8
  ret i32* %309
}

declare dso_local %struct.TYPE_21__* @get_package_sym(i32*, i8*) #1

declare dso_local i32 @fatal_error(i32, i8*, ...) #1

declare dso_local i32 @resolve_sym(%struct.TYPE_21__*) #1

declare dso_local i32 @set_resolved_sym(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32* @type_const(i32*) #1

declare dso_local i32* @type_ptr(i32*) #1

declare dso_local i64 @resolve_const_expr(%struct.TYPE_16__*) #1

declare dso_local i32 @is_integer_type(i32) #1

declare dso_local i32 @cast_operand(%struct.TYPE_22__*, i32) #1

declare dso_local i32* @type_array(i32*, i32, i32) #1

declare dso_local i32* @incomplete_decay(i32*) #1

declare dso_local i32 @buf_push(i32**, i32*) #1

declare dso_local i32 @is_array_type(i32*) #1

declare dso_local i32* @type_func(i32**, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @buf_len(i32**) #1

declare dso_local i32* @type_tuple(i32**, i32) #1

declare dso_local i32 @get_reachable(i32*) #1

declare dso_local i32 @set_reachable(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @set_resolved_type(%struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
