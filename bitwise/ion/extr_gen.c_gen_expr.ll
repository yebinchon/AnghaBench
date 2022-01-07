; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_expr.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_51__ = type { i32, %struct.TYPE_55__, %struct.TYPE_54__, %struct.TYPE_51__*, %struct.TYPE_51__*, i32, %struct.TYPE_51__*, i32, %struct.TYPE_51__*, %struct.TYPE_52__, %struct.TYPE_48__, %struct.TYPE_47__, %struct.TYPE_46__, %struct.TYPE_45__, %struct.TYPE_61__, %struct.TYPE_60__, i32, %struct.TYPE_59__, %struct.TYPE_58__, %struct.TYPE_57__, %struct.TYPE_56__ }
%struct.TYPE_55__ = type { i32, i32, i32 }
%struct.TYPE_54__ = type { i32, i32 }
%struct.TYPE_52__ = type { %struct.TYPE_51__*, %struct.TYPE_51__*, %struct.TYPE_51__* }
%struct.TYPE_48__ = type { %struct.TYPE_51__*, i32, %struct.TYPE_51__* }
%struct.TYPE_47__ = type { %struct.TYPE_51__*, i32 }
%struct.TYPE_46__ = type { i8*, %struct.TYPE_51__* }
%struct.TYPE_45__ = type { %struct.TYPE_51__*, %struct.TYPE_51__* }
%struct.TYPE_61__ = type { i64, %struct.TYPE_51__**, %struct.TYPE_51__* }
%struct.TYPE_60__ = type { %struct.TYPE_51__*, i32 }
%struct.TYPE_59__ = type { i32, i32 }
%struct.TYPE_58__ = type { i64, i64, i32 }
%struct.TYPE_57__ = type { i64, i64, i32 }
%struct.TYPE_56__ = type { %struct.TYPE_51__* }
%struct.TYPE_49__ = type { i32, i32, %struct.TYPE_44__ }
%struct.TYPE_44__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_50__ = type { i32 }
%struct.TYPE_53__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"(%s)(\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"(any){(%s[]){\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@token_suffix_names = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"0x%llx%s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"0%llo%s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%llu%s\00", align 1
@SUFFIX_D = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"%.*s%s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@MOD_MULTILINE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SYM_TYPE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@TYPE_PTR = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c") %s (\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c" ? \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"sizeof(\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"sizeof(%s)\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"alignof(%s)\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"offsetof(%s, %s)\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"}, \00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_expr(%struct.TYPE_51__* %0) #0 {
  %2 = alloca %struct.TYPE_51__*, align 8
  %3 = alloca %struct.TYPE_49__*, align 8
  %4 = alloca %struct.TYPE_49__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_50__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_49__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_53__, align 8
  %14 = alloca %struct.TYPE_50__*, align 8
  %15 = alloca %struct.TYPE_49__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_49__*, align 8
  %18 = alloca %struct.TYPE_49__*, align 8
  %19 = alloca %struct.TYPE_49__*, align 8
  %20 = alloca %struct.TYPE_49__*, align 8
  store %struct.TYPE_51__* %0, %struct.TYPE_51__** %2, align 8
  store %struct.TYPE_49__* null, %struct.TYPE_49__** %3, align 8
  %21 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %22 = call %struct.TYPE_49__* @type_conv(%struct.TYPE_51__* %21)
  store %struct.TYPE_49__* %22, %struct.TYPE_49__** %4, align 8
  %23 = load %struct.TYPE_49__*, %struct.TYPE_49__** %4, align 8
  %24 = icmp ne %struct.TYPE_49__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.TYPE_49__*, %struct.TYPE_49__** %4, align 8
  %27 = call i32 @type_to_cdecl(%struct.TYPE_49__* %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %1
  %30 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %31 = call i32 @is_implicit_any(%struct.TYPE_51__* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %36 = call %struct.TYPE_49__* @get_resolved_type(%struct.TYPE_51__* %35)
  store %struct.TYPE_49__* %36, %struct.TYPE_49__** %3, align 8
  %37 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %38 = call i32 @type_to_cdecl(%struct.TYPE_49__* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %463 [
    i32 139, label %44
    i32 144, label %51
    i32 146, label %92
    i32 136, label %127
    i32 142, label %140
    i32 149, label %147
    i32 150, label %159
    i32 145, label %218
    i32 147, label %263
    i32 148, label %297
    i32 132, label %300
    i32 151, label %312
    i32 135, label %353
    i32 138, label %370
    i32 137, label %376
    i32 153, label %382
    i32 152, label %389
    i32 134, label %395
    i32 133, label %406
    i32 140, label %417
    i32 143, label %428
    i32 141, label %460
  ]

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %46, i32 0, i32 20
  %48 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_51__*, %struct.TYPE_51__** %48, align 8
  call void @gen_expr(%struct.TYPE_51__* %49)
  %50 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %465

51:                                               ; preds = %40
  %52 = load i8**, i8*** @token_suffix_names, align 8
  %53 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %53, i32 0, i32 19
  %55 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8*, i8** %52, i64 %56
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %6, align 8
  %59 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %59, i32 0, i32 19
  %61 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %84 [
    i32 131, label %63
    i32 129, label %63
    i32 128, label %70
    i32 130, label %77
  ]

63:                                               ; preds = %51, %51
  %64 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %64, i32 0, i32 19
  %66 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 %67, i8* %68)
  br label %91

70:                                               ; preds = %51
  %71 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %71, i32 0, i32 19
  %73 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 %74, i8* %75)
  br label %91

77:                                               ; preds = %51
  %78 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %78, i32 0, i32 19
  %80 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i8
  %83 = call i32 @gen_char(i8 signext %82)
  br label %91

84:                                               ; preds = %51
  %85 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %85, i32 0, i32 19
  %87 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64 %88, i8* %89)
  br label %91

91:                                               ; preds = %84, %77, %70, %63
  br label %465

92:                                               ; preds = %40
  %93 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %93, i32 0, i32 18
  %95 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SUFFIX_D, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %7, align 4
  %100 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %100, i32 0, i32 18
  %102 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %104, i32 0, i32 18
  %106 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = sub i64 %103, %107
  store i64 %108, i64* %8, align 8
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %92
  %112 = load i64, i64* %8, align 8
  %113 = sub i64 %112, 1
  br label %116

114:                                              ; preds = %92
  %115 = load i64, i64* %8, align 8
  br label %116

116:                                              ; preds = %114, %111
  %117 = phi i64 [ %113, %111 ], [ %115, %114 ]
  %118 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %118, i32 0, i32 18
  %120 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)
  %126 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i64 %117, i64 %121, i8* %125)
  br label %465

127:                                              ; preds = %40
  %128 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %128, i32 0, i32 17
  %130 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %132, i32 0, i32 17
  %134 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @MOD_MULTILINE, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @gen_str(i32 %131, i32 %138)
  br label %465

140:                                              ; preds = %40
  %141 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %142 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %142, i32 0, i32 16
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @get_gen_name_or_default(%struct.TYPE_51__* %141, i32 %144)
  %146 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %145)
  br label %465

147:                                              ; preds = %40
  %148 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %148, i32 0, i32 15
  %150 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @typespec_to_cdecl(i32 %151, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %153 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %152)
  %154 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %154, i32 0, i32 15
  %156 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_51__*, %struct.TYPE_51__** %156, align 8
  call void @gen_expr(%struct.TYPE_51__* %157)
  %158 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %465

159:                                              ; preds = %40
  %160 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %160, i32 0, i32 14
  %162 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_51__*, %struct.TYPE_51__** %162, align 8
  %164 = call %struct.TYPE_50__* @get_resolved_sym(%struct.TYPE_51__* %163)
  store %struct.TYPE_50__* %164, %struct.TYPE_50__** %9, align 8
  %165 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %166 = call i32 @is_intrinsic(%struct.TYPE_50__* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %159
  %169 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %170 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %171 = call i32 @gen_intrinsic(%struct.TYPE_50__* %169, %struct.TYPE_51__* %170)
  br label %217

172:                                              ; preds = %159
  %173 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %174 = icmp ne %struct.TYPE_50__* %173, null
  br i1 %174, label %175, label %185

175:                                              ; preds = %172
  %176 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @SYM_TYPE, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  %182 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %183 = call i32 @get_gen_name(%struct.TYPE_50__* %182)
  %184 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %183)
  br label %190

185:                                              ; preds = %175, %172
  %186 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %186, i32 0, i32 14
  %188 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_51__*, %struct.TYPE_51__** %188, align 8
  call void @gen_expr(%struct.TYPE_51__* %189)
  br label %190

190:                                              ; preds = %185, %181
  %191 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %192

192:                                              ; preds = %212, %190
  %193 = load i64, i64* %10, align 8
  %194 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %194, i32 0, i32 14
  %196 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ult i64 %193, %197
  br i1 %198, label %199, label %215

199:                                              ; preds = %192
  %200 = load i64, i64* %10, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %204

204:                                              ; preds = %202, %199
  %205 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %205, i32 0, i32 14
  %207 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_51__**, %struct.TYPE_51__*** %207, align 8
  %209 = load i64, i64* %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_51__*, %struct.TYPE_51__** %208, i64 %209
  %211 = load %struct.TYPE_51__*, %struct.TYPE_51__** %210, align 8
  call void @gen_expr(%struct.TYPE_51__* %211)
  br label %212

212:                                              ; preds = %204
  %213 = load i64, i64* %10, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %10, align 8
  br label %192

215:                                              ; preds = %192
  %216 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %168
  br label %465

218:                                              ; preds = %40
  %219 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %219, i32 0, i32 13
  %221 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_51__*, %struct.TYPE_51__** %221, align 8
  %223 = call %struct.TYPE_49__* @get_resolved_type(%struct.TYPE_51__* %222)
  %224 = call %struct.TYPE_49__* @unqualify_type(%struct.TYPE_49__* %223)
  store %struct.TYPE_49__* %224, %struct.TYPE_49__** %11, align 8
  %225 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %226 = call i32 @is_aggregate_type(%struct.TYPE_49__* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %251

228:                                              ; preds = %218
  %229 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %229, i32 0, i32 13
  %231 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_51__*, %struct.TYPE_51__** %231, align 8
  call void @gen_expr(%struct.TYPE_51__* %232)
  %233 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %234 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %234, i32 0, i32 13
  %236 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_51__*, %struct.TYPE_51__** %236, align 8
  %238 = call i64 @get_resolved_val(%struct.TYPE_51__* %237)
  %239 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %13, i32 0, i32 0
  store i64 %238, i64* %239, align 8
  %240 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %13, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %12, align 8
  %242 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_43__*, %struct.TYPE_43__** %244, align 8
  %246 = load i64, i64* %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %249)
  br label %262

251:                                              ; preds = %218
  %252 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %252, i32 0, i32 13
  %254 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_51__*, %struct.TYPE_51__** %254, align 8
  call void @gen_expr(%struct.TYPE_51__* %255)
  %256 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %257 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %257, i32 0, i32 13
  %259 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_51__*, %struct.TYPE_51__** %259, align 8
  call void @gen_expr(%struct.TYPE_51__* %260)
  %261 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %262

262:                                              ; preds = %251, %228
  br label %465

263:                                              ; preds = %40
  %264 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %265 = call %struct.TYPE_50__* @get_resolved_sym(%struct.TYPE_51__* %264)
  store %struct.TYPE_50__* %265, %struct.TYPE_50__** %14, align 8
  %266 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %267 = icmp ne %struct.TYPE_50__* %266, null
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = load %struct.TYPE_50__*, %struct.TYPE_50__** %14, align 8
  %270 = call i32 @get_gen_name(%struct.TYPE_50__* %269)
  %271 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %270)
  br label %296

272:                                              ; preds = %263
  %273 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %273, i32 0, i32 12
  %275 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_51__*, %struct.TYPE_51__** %275, align 8
  call void @gen_expr(%struct.TYPE_51__* %276)
  %277 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %277, i32 0, i32 12
  %279 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_51__*, %struct.TYPE_51__** %279, align 8
  %281 = call %struct.TYPE_49__* @get_resolved_type(%struct.TYPE_51__* %280)
  %282 = call %struct.TYPE_49__* @unqualify_type(%struct.TYPE_49__* %281)
  store %struct.TYPE_49__* %282, %struct.TYPE_49__** %15, align 8
  %283 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %283, i32 0, i32 12
  %285 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %284, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  store i8* %286, i8** %16, align 8
  %287 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %288 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @TYPE_PTR, align 4
  %291 = icmp eq i32 %289, %290
  %292 = zext i1 %291 to i64
  %293 = select i1 %291, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %294 = load i8*, i8** %16, align 8
  %295 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %293, i8* %294)
  br label %296

296:                                              ; preds = %272, %268
  br label %465

297:                                              ; preds = %40
  %298 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %299 = call i32 @gen_expr_compound(%struct.TYPE_51__* %298)
  br label %465

300:                                              ; preds = %40
  %301 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %301, i32 0, i32 11
  %303 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @token_kind_name(i32 %304)
  %306 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %305)
  %307 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %307, i32 0, i32 11
  %309 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_51__*, %struct.TYPE_51__** %309, align 8
  call void @gen_expr(%struct.TYPE_51__* %310)
  %311 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %465

312:                                              ; preds = %40
  %313 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %314 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %314, i32 0, i32 10
  %316 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %315, i32 0, i32 2
  %317 = load %struct.TYPE_51__*, %struct.TYPE_51__** %316, align 8
  %318 = call %struct.TYPE_49__* @pointer_promo_type(%struct.TYPE_51__* %317)
  store %struct.TYPE_49__* %318, %struct.TYPE_49__** %17, align 8
  %319 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %320 = icmp ne %struct.TYPE_49__* %319, null
  br i1 %320, label %321, label %325

321:                                              ; preds = %312
  %322 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %323 = call i32 @type_to_cdecl(%struct.TYPE_49__* %322, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %324 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %323)
  br label %325

325:                                              ; preds = %321, %312
  %326 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %326, i32 0, i32 10
  %328 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %327, i32 0, i32 2
  %329 = load %struct.TYPE_51__*, %struct.TYPE_51__** %328, align 8
  call void @gen_expr(%struct.TYPE_51__* %329)
  %330 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %330, i32 0, i32 10
  %332 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @token_kind_name(i32 %333)
  %335 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %334)
  %336 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %337 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %336, i32 0, i32 10
  %338 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_51__*, %struct.TYPE_51__** %338, align 8
  %340 = call %struct.TYPE_49__* @pointer_promo_type(%struct.TYPE_51__* %339)
  store %struct.TYPE_49__* %340, %struct.TYPE_49__** %18, align 8
  %341 = load %struct.TYPE_49__*, %struct.TYPE_49__** %18, align 8
  %342 = icmp ne %struct.TYPE_49__* %341, null
  br i1 %342, label %343, label %347

343:                                              ; preds = %325
  %344 = load %struct.TYPE_49__*, %struct.TYPE_49__** %18, align 8
  %345 = call i32 @type_to_cdecl(%struct.TYPE_49__* %344, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %346 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %345)
  br label %347

347:                                              ; preds = %343, %325
  %348 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %348, i32 0, i32 10
  %350 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_51__*, %struct.TYPE_51__** %350, align 8
  call void @gen_expr(%struct.TYPE_51__* %351)
  %352 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %465

353:                                              ; preds = %40
  %354 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %355 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %356 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %355, i32 0, i32 9
  %357 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %356, i32 0, i32 2
  %358 = load %struct.TYPE_51__*, %struct.TYPE_51__** %357, align 8
  call void @gen_expr(%struct.TYPE_51__* %358)
  %359 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %360 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %361 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %360, i32 0, i32 9
  %362 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %361, i32 0, i32 1
  %363 = load %struct.TYPE_51__*, %struct.TYPE_51__** %362, align 8
  call void @gen_expr(%struct.TYPE_51__* %363)
  %364 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %365 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %366 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %365, i32 0, i32 9
  %367 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %366, i32 0, i32 0
  %368 = load %struct.TYPE_51__*, %struct.TYPE_51__** %367, align 8
  call void @gen_expr(%struct.TYPE_51__* %368)
  %369 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %465

370:                                              ; preds = %40
  %371 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  %372 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %373 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %372, i32 0, i32 8
  %374 = load %struct.TYPE_51__*, %struct.TYPE_51__** %373, align 8
  call void @gen_expr(%struct.TYPE_51__* %374)
  %375 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %465

376:                                              ; preds = %40
  %377 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %378 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %377, i32 0, i32 7
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @typespec_to_cdecl(i32 %379, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %381 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 %380)
  br label %465

382:                                              ; preds = %40
  %383 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %384 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %383, i32 0, i32 6
  %385 = load %struct.TYPE_51__*, %struct.TYPE_51__** %384, align 8
  %386 = call %struct.TYPE_49__* @get_resolved_type(%struct.TYPE_51__* %385)
  %387 = call i32 @type_to_cdecl(%struct.TYPE_49__* %386, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %388 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 %387)
  br label %465

389:                                              ; preds = %40
  %390 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %391 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %390, i32 0, i32 5
  %392 = load i32, i32* %391, align 8
  %393 = call i32 @typespec_to_cdecl(i32 %392, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %394 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 %393)
  br label %465

395:                                              ; preds = %40
  %396 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %397 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %396, i32 0, i32 4
  %398 = load %struct.TYPE_51__*, %struct.TYPE_51__** %397, align 8
  %399 = call %struct.TYPE_49__* @get_resolved_type(%struct.TYPE_51__* %398)
  store %struct.TYPE_49__* %399, %struct.TYPE_49__** %19, align 8
  %400 = load %struct.TYPE_49__*, %struct.TYPE_49__** %19, align 8
  %401 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @assert(i32 %402)
  %404 = load %struct.TYPE_49__*, %struct.TYPE_49__** %19, align 8
  %405 = call i32 @gen_typeid(%struct.TYPE_49__* %404)
  br label %465

406:                                              ; preds = %40
  %407 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %408 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %407, i32 0, i32 3
  %409 = load %struct.TYPE_51__*, %struct.TYPE_51__** %408, align 8
  %410 = call %struct.TYPE_49__* @get_resolved_type(%struct.TYPE_51__* %409)
  store %struct.TYPE_49__* %410, %struct.TYPE_49__** %20, align 8
  %411 = load %struct.TYPE_49__*, %struct.TYPE_49__** %20, align 8
  %412 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = call i32 @assert(i32 %413)
  %415 = load %struct.TYPE_49__*, %struct.TYPE_49__** %20, align 8
  %416 = call i32 @gen_typeid(%struct.TYPE_49__* %415)
  br label %465

417:                                              ; preds = %40
  %418 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %419 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %418, i32 0, i32 2
  %420 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = call i32 @typespec_to_cdecl(i32 %421, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %423 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %424 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %423, i32 0, i32 2
  %425 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 %422, i32 %426)
  br label %465

428:                                              ; preds = %40
  %429 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %430 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %441, label %434

434:                                              ; preds = %428
  %435 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %436 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = call i32 @token_kind_name(i32 %438)
  %440 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %439)
  br label %441

441:                                              ; preds = %434, %428
  %442 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %443 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @gen_paren_expr(i32 %445)
  %447 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %448 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %447, i32 0, i32 1
  %449 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %459

452:                                              ; preds = %441
  %453 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %454 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  %457 = call i32 @token_kind_name(i32 %456)
  %458 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %457)
  br label %459

459:                                              ; preds = %452, %441
  br label %465

460:                                              ; preds = %40
  %461 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %462 = call i32 @gen_expr_new(%struct.TYPE_51__* %461)
  br label %465

463:                                              ; preds = %40
  %464 = call i32 @assert(i32 0)
  br label %465

465:                                              ; preds = %463, %460, %459, %417, %406, %395, %389, %382, %376, %370, %353, %347, %300, %297, %296, %262, %217, %147, %140, %127, %116, %91, %44
  %466 = load i32, i32* %5, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %473

468:                                              ; preds = %465
  %469 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %470 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %471 = call i32 @gen_typeid(%struct.TYPE_49__* %470)
  %472 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  br label %473

473:                                              ; preds = %468, %465
  %474 = load %struct.TYPE_49__*, %struct.TYPE_49__** %4, align 8
  %475 = icmp ne %struct.TYPE_49__* %474, null
  br i1 %475, label %476, label %478

476:                                              ; preds = %473
  %477 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %478

478:                                              ; preds = %476, %473
  ret void
}

declare dso_local %struct.TYPE_49__* @type_conv(%struct.TYPE_51__*) #1

declare dso_local i32 @genf(i8*, ...) #1

declare dso_local i32 @type_to_cdecl(%struct.TYPE_49__*, i8*) #1

declare dso_local i32 @is_implicit_any(%struct.TYPE_51__*) #1

declare dso_local %struct.TYPE_49__* @get_resolved_type(%struct.TYPE_51__*) #1

declare dso_local i32 @gen_char(i8 signext) #1

declare dso_local i32 @gen_str(i32, i32) #1

declare dso_local i32 @get_gen_name_or_default(%struct.TYPE_51__*, i32) #1

declare dso_local i32 @typespec_to_cdecl(i32, i8*) #1

declare dso_local %struct.TYPE_50__* @get_resolved_sym(%struct.TYPE_51__*) #1

declare dso_local i32 @is_intrinsic(%struct.TYPE_50__*) #1

declare dso_local i32 @gen_intrinsic(%struct.TYPE_50__*, %struct.TYPE_51__*) #1

declare dso_local i32 @get_gen_name(%struct.TYPE_50__*) #1

declare dso_local %struct.TYPE_49__* @unqualify_type(%struct.TYPE_49__*) #1

declare dso_local i32 @is_aggregate_type(%struct.TYPE_49__*) #1

declare dso_local i64 @get_resolved_val(%struct.TYPE_51__*) #1

declare dso_local i32 @gen_expr_compound(%struct.TYPE_51__*) #1

declare dso_local i32 @token_kind_name(i32) #1

declare dso_local %struct.TYPE_49__* @pointer_promo_type(%struct.TYPE_51__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @gen_typeid(%struct.TYPE_49__*) #1

declare dso_local i32 @gen_paren_expr(i32) #1

declare dso_local i32 @gen_expr_new(%struct.TYPE_51__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
