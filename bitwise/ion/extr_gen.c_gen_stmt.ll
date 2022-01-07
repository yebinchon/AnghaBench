; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_stmt.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_31__, %struct.TYPE_38__, %struct.TYPE_37__, %struct.TYPE_36__, %struct.TYPE_35__, i32, %struct.TYPE_28__, %struct.TYPE_32__, %struct.TYPE_29__* }
%struct.TYPE_31__ = type { i64, %struct.TYPE_25__*, %struct.TYPE_29__* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_26__, i32, %struct.TYPE_40__* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_27__** }
%struct.TYPE_40__ = type { %struct.TYPE_29__*, %struct.TYPE_29__* }
%struct.TYPE_38__ = type { %struct.TYPE_32__, %struct.TYPE_27__*, %struct.TYPE_29__*, %struct.TYPE_27__* }
%struct.TYPE_37__ = type { %struct.TYPE_29__*, %struct.TYPE_32__ }
%struct.TYPE_36__ = type { i64, %struct.TYPE_27__*, %struct.TYPE_32__, %struct.TYPE_30__*, %struct.TYPE_32__, %struct.TYPE_29__* }
%struct.TYPE_30__ = type { %struct.TYPE_32__, %struct.TYPE_29__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_34__*, i32 }
%struct.TYPE_34__ = type { i8*, i32, %struct.TYPE_29__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_33__, i32, i32 }
%struct.TYPE_33__ = type { i8* }
%struct.TYPE_39__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"break;\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"continue;\00", align 1
@assert_name = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"assert(\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c");\00", align 1
@foreign_name = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"preamble\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"postamble\00", align 1
@EXPR_STR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"#foreign argument must be a string\00", align 1
@gen_preamble_buf = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@gen_postamble_buf = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@gen_indent = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"if (\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c" else if (\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c" else \00", align 1
@complete_name = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c" else {\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"assert(\22@complete if/elseif chain failed to handle case\22 && 0);\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"while (\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"do \00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c" while (\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"for (\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"switch (\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c") {\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"case \00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"// \00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"case %lld: \00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"default:\00", align 1
@.str.33 = private unnamed_addr constant [55 x i8] c"assert(\22@complete switch failed to handle case\22 && 0);\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"%s: ;\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"goto %s;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_stmt(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca %struct.TYPE_28__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_30__, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_25__, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_40__, align 8
  %18 = alloca %struct.TYPE_39__, align 8
  %19 = alloca %struct.TYPE_39__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_26__, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gen_sync_pos(i32 %27)
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %536 [
    i32 130, label %32
    i32 138, label %46
    i32 137, label %48
    i32 139, label %50
    i32 131, label %57
    i32 133, label %159
    i32 128, label %280
    i32 136, label %294
    i32 135, label %309
    i32 129, label %358
    i32 132, label %526
    i32 134, label %531
  ]

32:                                               ; preds = %1
  %33 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 10
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %35, align 8
  %37 = icmp ne %struct.TYPE_29__* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 10
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %41, align 8
  %43 = call i32 @gen_expr(%struct.TYPE_29__* %42)
  br label %44

44:                                               ; preds = %38, %32
  %45 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %541

46:                                               ; preds = %1
  %47 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %541

48:                                               ; preds = %1
  %49 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %541

50:                                               ; preds = %1
  %51 = call i32 (...) @genln()
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 9
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @gen_stmt_block(i32 %55)
  br label %541

57:                                               ; preds = %1
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 8
  %60 = bitcast %struct.TYPE_28__* %3 to i8*
  %61 = bitcast %struct.TYPE_28__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 24, i1 false)
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @assert_name, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %57
  %67 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 1
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 2
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %76, align 8
  %78 = call i32 @gen_expr(%struct.TYPE_29__* %77)
  %79 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %158

80:                                               ; preds = %57
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @foreign_name, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %157

85:                                               ; preds = %80
  %86 = call i8* @str_intern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i8* %86, i8** %4, align 8
  %87 = call i8* @str_intern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  store i8* %87, i8** %5, align 8
  store i64 0, i64* %6, align 8
  br label %88

88:                                               ; preds = %153, %85
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = icmp ult i64 %89, %92
  br i1 %93, label %94, label %156

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 2
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 2
  %102 = load %struct.TYPE_34__*, %struct.TYPE_34__** %101, align 8
  %103 = load i64, i64* %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %105, align 8
  store %struct.TYPE_29__* %106, %struct.TYPE_29__** %8, align 8
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @EXPR_STR, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %94
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @fatal_error(i32 %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %117

117:                                              ; preds = %112, %94
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  store i8* %121, i8** %9, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = load i8*, i8** %4, align 8
  %124 = icmp eq i8* %122, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 2
  %127 = load %struct.TYPE_34__*, %struct.TYPE_34__** %126, align 8
  %128 = load i64, i64* %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @gen_buf_pos(i32* @gen_preamble_buf, i32 %131)
  %133 = load i32, i32* @gen_preamble_buf, align 4
  %134 = load i8*, i8** %9, align 8
  %135 = call i32 @buf_printf(i32 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %134)
  br label %152

136:                                              ; preds = %117
  %137 = load i8*, i8** %7, align 8
  %138 = load i8*, i8** %5, align 8
  %139 = icmp eq i8* %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 2
  %142 = load %struct.TYPE_34__*, %struct.TYPE_34__** %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @gen_buf_pos(i32* @gen_postamble_buf, i32 %146)
  %148 = load i32, i32* @gen_postamble_buf, align 4
  %149 = load i8*, i8** %9, align 8
  %150 = call i32 @buf_printf(i32 %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %140, %136
  br label %152

152:                                              ; preds = %151, %125
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %6, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %6, align 8
  br label %88

156:                                              ; preds = %88
  br label %157

157:                                              ; preds = %156, %80
  br label %158

158:                                              ; preds = %157, %66
  br label %541

159:                                              ; preds = %1
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %162, align 8
  %164 = icmp ne %struct.TYPE_27__* %163, null
  br i1 %164, label %165, label %173

165:                                              ; preds = %159
  %166 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %167 = load i32, i32* @gen_indent, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* @gen_indent, align 4
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %171, align 8
  call void @gen_stmt(%struct.TYPE_27__* %172)
  br label %173

173:                                              ; preds = %165, %159
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @gen_sync_pos(i32 %176)
  %178 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %181, align 8
  %183 = icmp ne %struct.TYPE_29__* %182, null
  br i1 %183, label %184, label %190

184:                                              ; preds = %173
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %186, i32 0, i32 5
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %187, align 8
  %189 = call i32 @gen_expr(%struct.TYPE_29__* %188)
  br label %199

190:                                              ; preds = %173
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 6
  %196 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %190, %184
  %200 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @gen_stmt_block(i32 %205)
  store i64 0, i64* %10, align 8
  br label %207

207:                                              ; preds = %232, %199
  %208 = load i64, i64* %10, align 8
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ult i64 %208, %212
  br i1 %213, label %214, label %235

214:                                              ; preds = %207
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_30__*, %struct.TYPE_30__** %217, align 8
  %219 = load i64, i64* %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %218, i64 %219
  %221 = bitcast %struct.TYPE_30__* %11 to i8*
  %222 = bitcast %struct.TYPE_30__* %220 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %221, i8* align 8 %222, i64 16, i1 false)
  %223 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %224 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 1
  %225 = load %struct.TYPE_29__*, %struct.TYPE_29__** %224, align 8
  %226 = call i32 @gen_expr(%struct.TYPE_29__* %225)
  %227 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @gen_stmt_block(i32 %230)
  br label %232

232:                                              ; preds = %214
  %233 = load i64, i64* %10, align 8
  %234 = add i64 %233, 1
  store i64 %234, i64* %10, align 8
  br label %207

235:                                              ; preds = %207
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %235
  %243 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @gen_stmt_block(i32 %248)
  br label %269

250:                                              ; preds = %235
  %251 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %252 = load i32, i32* @complete_name, align 4
  %253 = call %struct.TYPE_28__* @get_stmt_note(%struct.TYPE_27__* %251, i32 %252)
  store %struct.TYPE_28__* %253, %struct.TYPE_28__** %12, align 8
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %255 = icmp ne %struct.TYPE_28__* %254, null
  br i1 %255, label %256, label %268

256:                                              ; preds = %250
  %257 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %258 = load i32, i32* @gen_indent, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* @gen_indent, align 4
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @gen_sync_pos(i32 %262)
  %264 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i64 0, i64 0))
  %265 = load i32, i32* @gen_indent, align 4
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* @gen_indent, align 4
  %267 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %268

268:                                              ; preds = %256, %250
  br label %269

269:                                              ; preds = %268, %242
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_27__*, %struct.TYPE_27__** %272, align 8
  %274 = icmp ne %struct.TYPE_27__* %273, null
  br i1 %274, label %275, label %279

275:                                              ; preds = %269
  %276 = load i32, i32* @gen_indent, align 4
  %277 = add nsw i32 %276, -1
  store i32 %277, i32* @gen_indent, align 4
  %278 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %279

279:                                              ; preds = %275, %269
  br label %541

280:                                              ; preds = %1
  %281 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 4
  %284 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_29__*, %struct.TYPE_29__** %284, align 8
  %286 = call i32 @gen_expr(%struct.TYPE_29__* %285)
  %287 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 4
  %290 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @gen_stmt_block(i32 %292)
  br label %541

294:                                              ; preds = %1
  %295 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %296, i32 0, i32 4
  %298 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @gen_stmt_block(i32 %300)
  %302 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %303 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %303, i32 0, i32 4
  %305 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_29__*, %struct.TYPE_29__** %305, align 8
  %307 = call i32 @gen_expr(%struct.TYPE_29__* %306)
  %308 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %541

309:                                              ; preds = %1
  %310 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %312, i32 0, i32 3
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %313, align 8
  %315 = icmp ne %struct.TYPE_27__* %314, null
  br i1 %315, label %316, label %322

316:                                              ; preds = %309
  %317 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %317, i32 0, i32 3
  %319 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %318, i32 0, i32 3
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %319, align 8
  %321 = call i32 @gen_simple_stmt(%struct.TYPE_27__* %320)
  br label %322

322:                                              ; preds = %316, %309
  %323 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %324 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %324, i32 0, i32 3
  %326 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %325, i32 0, i32 2
  %327 = load %struct.TYPE_29__*, %struct.TYPE_29__** %326, align 8
  %328 = icmp ne %struct.TYPE_29__* %327, null
  br i1 %328, label %329, label %336

329:                                              ; preds = %322
  %330 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %332, i32 0, i32 2
  %334 = load %struct.TYPE_29__*, %struct.TYPE_29__** %333, align 8
  %335 = call i32 @gen_expr(%struct.TYPE_29__* %334)
  br label %336

336:                                              ; preds = %329, %322
  %337 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %338 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %339 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %338, i32 0, i32 3
  %340 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_27__*, %struct.TYPE_27__** %340, align 8
  %342 = icmp ne %struct.TYPE_27__* %341, null
  br i1 %342, label %343, label %350

343:                                              ; preds = %336
  %344 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %345 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %346 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %346, i32 0, i32 1
  %348 = load %struct.TYPE_27__*, %struct.TYPE_27__** %347, align 8
  %349 = call i32 @gen_simple_stmt(%struct.TYPE_27__* %348)
  br label %350

350:                                              ; preds = %343, %336
  %351 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %352 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %353 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %352, i32 0, i32 3
  %354 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @gen_stmt_block(i32 %356)
  br label %541

358:                                              ; preds = %1
  %359 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  %360 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %361 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %361, i32 0, i32 2
  %363 = load %struct.TYPE_29__*, %struct.TYPE_29__** %362, align 8
  %364 = call i32 @gen_expr(%struct.TYPE_29__* %363)
  %365 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  br label %366

366:                                              ; preds = %503, %358
  %367 = load i64, i64* %14, align 8
  %368 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %369 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = icmp ult i64 %367, %371
  br i1 %372, label %373, label %506

373:                                              ; preds = %366
  %374 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %375 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %375, i32 0, i32 1
  %377 = load %struct.TYPE_25__*, %struct.TYPE_25__** %376, align 8
  %378 = load i64, i64* %14, align 8
  %379 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %377, i64 %378
  %380 = bitcast %struct.TYPE_25__* %15 to i8*
  %381 = bitcast %struct.TYPE_25__* %379 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %380, i8* align 8 %381, i64 40, i1 false)
  store i64 0, i64* %16, align 8
  br label %382

382:                                              ; preds = %467, %373
  %383 = load i64, i64* %16, align 8
  %384 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = icmp ult i64 %383, %385
  br i1 %386, label %387, label %470

387:                                              ; preds = %382
  %388 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 3
  %389 = load %struct.TYPE_40__*, %struct.TYPE_40__** %388, align 8
  %390 = load i64, i64* %16, align 8
  %391 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %389, i64 %390
  %392 = bitcast %struct.TYPE_40__* %17 to i8*
  %393 = bitcast %struct.TYPE_40__* %391 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %392, i8* align 8 %393, i64 16, i1 false)
  %394 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %17, i32 0, i32 1
  %395 = load %struct.TYPE_29__*, %struct.TYPE_29__** %394, align 8
  %396 = icmp ne %struct.TYPE_29__* %395, null
  br i1 %396, label %397, label %460

397:                                              ; preds = %387
  %398 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %17, i32 0, i32 0
  %399 = load %struct.TYPE_29__*, %struct.TYPE_29__** %398, align 8
  %400 = call i64 @get_resolved_val(%struct.TYPE_29__* %399)
  %401 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %18, i32 0, i32 0
  store i64 %400, i64* %401, align 8
  %402 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %17, i32 0, i32 1
  %403 = load %struct.TYPE_29__*, %struct.TYPE_29__** %402, align 8
  %404 = call i64 @get_resolved_val(%struct.TYPE_29__* %403)
  %405 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %19, i32 0, i32 0
  store i64 %404, i64* %405, align 8
  %406 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %17, i32 0, i32 0
  %407 = load %struct.TYPE_29__*, %struct.TYPE_29__** %406, align 8
  %408 = call i32 @is_char_lit(%struct.TYPE_29__* %407)
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %435

410:                                              ; preds = %397
  %411 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %17, i32 0, i32 1
  %412 = load %struct.TYPE_29__*, %struct.TYPE_29__** %411, align 8
  %413 = call i32 @is_char_lit(%struct.TYPE_29__* %412)
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %435

415:                                              ; preds = %410
  %416 = call i32 (...) @genln()
  %417 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %18, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = trunc i64 %418 to i32
  store i32 %419, i32* %20, align 4
  br label %420

420:                                              ; preds = %431, %415
  %421 = load i32, i32* %20, align 4
  %422 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %19, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = trunc i64 %423 to i32
  %425 = icmp sle i32 %421, %424
  br i1 %425, label %426, label %434

426:                                              ; preds = %420
  %427 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  %428 = load i32, i32* %20, align 4
  %429 = call i32 @gen_char(i32 %428)
  %430 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  br label %431

431:                                              ; preds = %426
  %432 = load i32, i32* %20, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %20, align 4
  br label %420

434:                                              ; preds = %420
  br label %459

435:                                              ; preds = %410, %397
  %436 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0))
  %437 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %17, i32 0, i32 0
  %438 = load %struct.TYPE_29__*, %struct.TYPE_29__** %437, align 8
  %439 = call i32 @gen_expr(%struct.TYPE_29__* %438)
  %440 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  %441 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %17, i32 0, i32 1
  %442 = load %struct.TYPE_29__*, %struct.TYPE_29__** %441, align 8
  %443 = call i32 @gen_expr(%struct.TYPE_29__* %442)
  %444 = call i32 (...) @genln()
  %445 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %18, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  store i64 %446, i64* %21, align 8
  br label %447

447:                                              ; preds = %455, %435
  %448 = load i64, i64* %21, align 8
  %449 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %19, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = icmp sle i64 %448, %450
  br i1 %451, label %452, label %458

452:                                              ; preds = %447
  %453 = load i64, i64* %21, align 8
  %454 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i64 %453)
  br label %455

455:                                              ; preds = %452
  %456 = load i64, i64* %21, align 8
  %457 = add nsw i64 %456, 1
  store i64 %457, i64* %21, align 8
  br label %447

458:                                              ; preds = %447
  br label %459

459:                                              ; preds = %458, %434
  br label %466

460:                                              ; preds = %387
  %461 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  %462 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %17, i32 0, i32 0
  %463 = load %struct.TYPE_29__*, %struct.TYPE_29__** %462, align 8
  %464 = call i32 @gen_expr(%struct.TYPE_29__* %463)
  %465 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  br label %466

466:                                              ; preds = %460, %459
  br label %467

467:                                              ; preds = %466
  %468 = load i64, i64* %16, align 8
  %469 = add i64 %468, 1
  store i64 %469, i64* %16, align 8
  br label %382

470:                                              ; preds = %382
  %471 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %476

474:                                              ; preds = %470
  store i32 1, i32* %13, align 4
  %475 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  br label %476

476:                                              ; preds = %474, %470
  %477 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %478 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %479 = load i32, i32* @gen_indent, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* @gen_indent, align 4
  %481 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %482 = bitcast %struct.TYPE_26__* %22 to i8*
  %483 = bitcast %struct.TYPE_26__* %481 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %482, i8* align 8 %483, i64 16, i1 false)
  store i64 0, i64* %23, align 8
  br label %484

484:                                              ; preds = %495, %476
  %485 = load i64, i64* %23, align 8
  %486 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 0
  %487 = load i64, i64* %486, align 8
  %488 = icmp ult i64 %485, %487
  br i1 %488, label %489, label %498

489:                                              ; preds = %484
  %490 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 1
  %491 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %490, align 8
  %492 = load i64, i64* %23, align 8
  %493 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %491, i64 %492
  %494 = load %struct.TYPE_27__*, %struct.TYPE_27__** %493, align 8
  call void @gen_stmt(%struct.TYPE_27__* %494)
  br label %495

495:                                              ; preds = %489
  %496 = load i64, i64* %23, align 8
  %497 = add i64 %496, 1
  store i64 %497, i64* %23, align 8
  br label %484

498:                                              ; preds = %484
  %499 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %500 = load i32, i32* @gen_indent, align 4
  %501 = add nsw i32 %500, -1
  store i32 %501, i32* @gen_indent, align 4
  %502 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %503

503:                                              ; preds = %498
  %504 = load i64, i64* %14, align 8
  %505 = add i64 %504, 1
  store i64 %505, i64* %14, align 8
  br label %366

506:                                              ; preds = %366
  %507 = load i32, i32* %13, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %524, label %509

509:                                              ; preds = %506
  %510 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %511 = load i32, i32* @complete_name, align 4
  %512 = call %struct.TYPE_28__* @get_stmt_note(%struct.TYPE_27__* %510, i32 %511)
  store %struct.TYPE_28__* %512, %struct.TYPE_28__** %24, align 8
  %513 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %514 = icmp ne %struct.TYPE_28__* %513, null
  br i1 %514, label %515, label %523

515:                                              ; preds = %509
  %516 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  %517 = load i32, i32* @gen_indent, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* @gen_indent, align 4
  %519 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.33, i64 0, i64 0))
  %520 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %521 = load i32, i32* @gen_indent, align 4
  %522 = add nsw i32 %521, -1
  store i32 %522, i32* @gen_indent, align 4
  br label %523

523:                                              ; preds = %515, %509
  br label %524

524:                                              ; preds = %523, %506
  %525 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %541

526:                                              ; preds = %1
  %527 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %528 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %527, i32 0, i32 1
  %529 = load i32, i32* %528, align 4
  %530 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i32 %529)
  br label %541

531:                                              ; preds = %1
  %532 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %533 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 4
  %535 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i32 %534)
  br label %541

536:                                              ; preds = %1
  %537 = call i32 (...) @genln()
  %538 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %539 = call i32 @gen_simple_stmt(%struct.TYPE_27__* %538)
  %540 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %541

541:                                              ; preds = %536, %531, %526, %524, %350, %294, %280, %279, %158, %50, %48, %46, %44
  ret void
}

declare dso_local i32 @gen_sync_pos(i32) #1

declare dso_local i32 @genlnf(i8*, ...) #1

declare dso_local i32 @genf(i8*, ...) #1

declare dso_local i32 @gen_expr(%struct.TYPE_29__*) #1

declare dso_local i32 @genln(...) #1

declare dso_local i32 @gen_stmt_block(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @str_intern(i8*) #1

declare dso_local i32 @fatal_error(i32, i8*) #1

declare dso_local i32 @gen_buf_pos(i32*, i32) #1

declare dso_local i32 @buf_printf(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_28__* @get_stmt_note(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @gen_simple_stmt(%struct.TYPE_27__*) #1

declare dso_local i64 @get_resolved_val(%struct.TYPE_29__*) #1

declare dso_local i32 @is_char_lit(%struct.TYPE_29__*) #1

declare dso_local i32 @gen_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
