; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_simple_stmt.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_simple_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_26__* }
%struct.TYPE_25__ = type { %struct.TYPE_26__*, i32, %struct.TYPE_26__* }
%struct.TYPE_24__ = type { i8*, %struct.TYPE_26__*, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s = 0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" = {0}\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s = \00", align 1
@TOKEN_ADD_ASSIGN = common dso_local global i32 0, align 4
@EXPR_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"%s = (char *)(%s) + \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"do { %s = (%s)&(\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"__pp\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"); *__pp = (%s)(*(char **)__pp + \00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"); } while(0)\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" %s \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_simple_stmt(%struct.TYPE_28__* %0) #0 {
  %2 = alloca %struct.TYPE_28__*, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %2, align 8
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %276 [
    i32 129, label %13
    i32 128, label %18
    i32 130, label %185
  ]

13:                                               ; preds = %1
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %17 = call i32 @gen_expr(%struct.TYPE_26__* %16)
  br label %278

18:                                               ; preds = %1
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %23 = icmp ne %struct.TYPE_26__* %22, null
  br i1 %23, label %24, label %166

24:                                               ; preds = %18
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  store %struct.TYPE_26__* %28, %struct.TYPE_26__** %3, align 8
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %31, align 8
  %33 = call i32 @is_incomplete_array_typespec(%struct.TYPE_26__* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %24
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %39, align 8
  %41 = icmp ne %struct.TYPE_26__* %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %45, align 8
  %47 = call %struct.TYPE_27__* @get_resolved_type(%struct.TYPE_26__* %46)
  store %struct.TYPE_27__* %47, %struct.TYPE_27__** %5, align 8
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %49 = call %struct.TYPE_27__* @type_decay(%struct.TYPE_27__* %48)
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @type_to_cdecl(%struct.TYPE_27__* %49, i8* %53)
  %55 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %165

56:                                               ; preds = %36, %24
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %101

59:                                               ; preds = %56
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %62, align 8
  %64 = call %struct.TYPE_27__* @get_resolved_type(%struct.TYPE_26__* %63)
  %65 = call i32 @is_ptr_type(%struct.TYPE_27__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %101

67:                                               ; preds = %59
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %70, align 8
  %72 = call %struct.TYPE_27__* @get_resolved_type(%struct.TYPE_26__* %71)
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @type_to_cdecl(%struct.TYPE_27__* %72, i8* %76)
  %78 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %81, align 8
  %83 = icmp ne %struct.TYPE_26__* %82, null
  br i1 %83, label %84, label %98

84:                                               ; preds = %67
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %84
  %91 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %94, align 8
  %96 = call i32 @gen_expr(%struct.TYPE_26__* %95)
  br label %97

97:                                               ; preds = %90, %84
  br label %100

98:                                               ; preds = %67
  %99 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %97
  br label %164

101:                                              ; preds = %59, %56
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %124

104:                                              ; preds = %101
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %110, align 8
  %112 = call %struct.TYPE_27__* @get_resolved_type(%struct.TYPE_26__* %111)
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32* @new_expr_int(i32 %107, i32 %114, i32 0, i32 0)
  store i32* %115, i32** %6, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = call %struct.TYPE_26__* @new_typespec_array(i32 %118, i32 %121, i32* %122)
  store %struct.TYPE_26__* %123, %struct.TYPE_26__** %3, align 8
  br label %124

124:                                              ; preds = %104, %101
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %127, align 8
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @typespec_to_cdecl(%struct.TYPE_26__* %128, i8* %132)
  %134 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %137, align 8
  %139 = icmp ne %struct.TYPE_26__* %138, null
  br i1 %139, label %140, label %154

140:                                              ; preds = %124
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %140
  %147 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %150, align 8
  %152 = call i32 @gen_expr(%struct.TYPE_26__* %151)
  br label %153

153:                                              ; preds = %146, %140
  br label %163

154:                                              ; preds = %124
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %154
  %161 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %154
  br label %163

163:                                              ; preds = %162, %153
  br label %164

164:                                              ; preds = %163, %100
  br label %165

165:                                              ; preds = %164, %42
  br label %184

166:                                              ; preds = %18
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %169, align 8
  %171 = call %struct.TYPE_27__* @get_resolved_type(%struct.TYPE_26__* %170)
  %172 = call %struct.TYPE_27__* @unqualify_type(%struct.TYPE_27__* %171)
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @type_to_cdecl(%struct.TYPE_27__* %172, i8* %176)
  %178 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %181, align 8
  %183 = call i32 @gen_expr(%struct.TYPE_26__* %182)
  br label %184

184:                                              ; preds = %166, %165
  br label %278

185:                                              ; preds = %1
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %188, align 8
  %190 = call %struct.TYPE_27__* @pointer_promo_type(%struct.TYPE_26__* %189)
  store %struct.TYPE_27__* %190, %struct.TYPE_27__** %7, align 8
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %192 = icmp ne %struct.TYPE_27__* %191, null
  br i1 %192, label %193, label %258

193:                                              ; preds = %185
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @TOKEN_ADD_ASSIGN, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert(i32 %200)
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 2
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %204, align 8
  %206 = call %struct.TYPE_27__* @get_resolved_type(%struct.TYPE_26__* %205)
  store %struct.TYPE_27__* %206, %struct.TYPE_27__** %8, align 8
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @EXPR_NAME, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %235

215:                                              ; preds = %193
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %218, align 8
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i8* @get_gen_name_or_default(%struct.TYPE_26__* %219, i32 %225)
  store i8* %226, i8** %9, align 8
  %227 = load i8*, i8** %9, align 8
  %228 = load i8*, i8** %9, align 8
  %229 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %227, i8* %228)
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %232, align 8
  %234 = call i32 @gen_expr(%struct.TYPE_26__* %233)
  br label %257

235:                                              ; preds = %193
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %237 = call %struct.TYPE_27__* @type_ptr(%struct.TYPE_27__* %236)
  %238 = call i32 @type_to_cdecl(%struct.TYPE_27__* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %240 = call %struct.TYPE_27__* @type_ptr(%struct.TYPE_27__* %239)
  %241 = call i32 @type_to_cdecl(%struct.TYPE_27__* %240, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  %242 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %238, i32 %241)
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %245, align 8
  %247 = call i32 @gen_expr(%struct.TYPE_26__* %246)
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %249 = call i32 @type_to_cdecl(%struct.TYPE_27__* %248, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  %250 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %249)
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %253, align 8
  %255 = call i32 @gen_expr(%struct.TYPE_26__* %254)
  %256 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %257

257:                                              ; preds = %235, %215
  br label %275

258:                                              ; preds = %185
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 2
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %261, align 8
  %263 = call i32 @gen_expr(%struct.TYPE_26__* %262)
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @token_kind_name(i32 %267)
  %269 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %268)
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %272, align 8
  %274 = call i32 @gen_expr(%struct.TYPE_26__* %273)
  br label %275

275:                                              ; preds = %258, %257
  br label %278

276:                                              ; preds = %1
  %277 = call i32 @assert(i32 0)
  br label %278

278:                                              ; preds = %276, %275, %184, %13
  ret void
}

declare dso_local i32 @gen_expr(%struct.TYPE_26__*) #1

declare dso_local i32 @is_incomplete_array_typespec(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_27__* @get_resolved_type(%struct.TYPE_26__*) #1

declare dso_local i32 @genf(i8*, ...) #1

declare dso_local i32 @type_to_cdecl(%struct.TYPE_27__*, i8*) #1

declare dso_local %struct.TYPE_27__* @type_decay(%struct.TYPE_27__*) #1

declare dso_local i32 @is_ptr_type(%struct.TYPE_27__*) #1

declare dso_local i32* @new_expr_int(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_26__* @new_typespec_array(i32, i32, i32*) #1

declare dso_local i32 @typespec_to_cdecl(%struct.TYPE_26__*, i8*) #1

declare dso_local %struct.TYPE_27__* @unqualify_type(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @pointer_promo_type(%struct.TYPE_26__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @get_gen_name_or_default(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_27__* @type_ptr(%struct.TYPE_27__*) #1

declare dso_local i32 @token_kind_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
