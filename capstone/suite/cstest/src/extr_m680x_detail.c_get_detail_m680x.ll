; ModuleID = '/home/carl/AnghaBench/capstone/suite/cstest/src/extr_m680x_detail.c_get_detail_m680x.c'
source_filename = "/home/carl/AnghaBench/capstone/suite/cstest/src/extr_m680x_detail.c_get_detail_m680x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c" ; op_count: %u\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@M680X_FIRST_OP_IN_MNEM = common dso_local global i32 0, align 4
@M680X_SECOND_OP_IN_MNEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c" (in mnemonic)\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c" ; operands[%u].type: REGISTER = %s%s\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c" ; operands[%u].type: CONSTANT = %u\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c" ; operands[%u].type: IMMEDIATE = #%d\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c" ; operands[%u].type: DIRECT = 0x%02X\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c" ; operands[%u].type: EXTENDED %s = 0x%04X\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"INDIRECT\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c" ; operands[%u].type: RELATIVE = 0x%04X\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c" ; operands[%u].type: INDEXED%s\00", align 1
@M680X_IDX_INDIRECT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c" INDIRECT\00", align 1
@M680X_REG_INVALID = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c" ; base register: %s\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c" ; offset register: %s\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c" ; offset: %d\00", align 1
@M680X_REG_PC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c" ; offset address: 0x%X\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c" ; offset bits: %u\00", align 1
@M680X_IDX_POST_INC_DEC = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"post\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"increment\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"decrement\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c" ; %s %s: %d\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c" ; size: %u\00", align 1
@CS_AC_INVALID = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [14 x i8] c" ; access: %s\00", align 1
@s_access = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_detail_m680x(i32* %0, i32 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  %19 = call i64 @malloc(i32 1)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %22, align 1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %24 = icmp eq %struct.TYPE_16__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i8*, i8** %11, align 8
  store i8* %26, i8** %4, align 8
  br label %280

27:                                               ; preds = %3
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %9, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8**, i8*, ...) @add_str(i8** %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %27
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %271, %39
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %274

46:                                               ; preds = %40
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i64 %51
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %12, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 9
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  switch i32 %56, label %57 [
    i32 129, label %58
    i32 134, label %89
    i32 131, label %95
    i32 133, label %101
    i32 132, label %107
    i32 128, label %121
    i32 130, label %128
  ]

57:                                               ; preds = %46
  br label %246

58:                                               ; preds = %46
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @M680X_FIRST_OP_IN_MNEM, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %61, %58
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @M680X_SECOND_OP_IN_MNEM, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71, %61
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %79

79:                                               ; preds = %78, %71, %68
  %80 = load i32, i32* %10, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cs_reg_name(i32 %82, i32 %85)
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 (i8**, i8*, ...) @add_str(i8** %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %80, i32 %86, i8* %87)
  br label %246

89:                                               ; preds = %46
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8**, i8*, ...) @add_str(i8** %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %90, i32 %93)
  br label %246

95:                                               ; preds = %46
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8**, i8*, ...) @add_str(i8** %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %96, i32 %99)
  br label %246

101:                                              ; preds = %46
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i8**, i8*, ...) @add_str(i8** %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %102, i32 %105)
  br label %246

107:                                              ; preds = %46
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i8**, i8*, ...) @add_str(i8** %11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %108, i8* %115, i32 %119)
  br label %246

121:                                              ; preds = %46
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8**, i8*, ...) @add_str(i8** %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %122, i32 %126)
  br label %246

128:                                              ; preds = %46
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @M680X_IDX_INDIRECT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %139 = call i32 (i8**, i8*, ...) @add_str(i8** %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %129, i8* %138)
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @M680X_REG_INVALID, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %128
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @cs_reg_name(i32 %148, i32 %152)
  %154 = call i32 (i8**, i8*, ...) @add_str(i8** %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %146, %128
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @M680X_REG_INVALID, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %155
  %163 = load i32*, i32** %5, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @cs_reg_name(i32 %164, i32 %168)
  %170 = call i32 (i8**, i8*, ...) @add_str(i8** %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %162, %155
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %214

177:                                              ; preds = %171
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @M680X_REG_INVALID, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %214

184:                                              ; preds = %177
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %214, label %190

190:                                              ; preds = %184
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 (i8**, i8*, ...) @add_str(i8** %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %194)
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @M680X_REG_PC, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %190
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i8**, i8*, ...) @add_str(i8** %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %202, %190
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i8**, i8*, ...) @add_str(i8** %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %212)
  br label %214

214:                                              ; preds = %208, %184, %177, %171
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %245

220:                                              ; preds = %214
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @M680X_IDX_POST_INC_DEC, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)
  store i8* %229, i8** %14, align 8
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = icmp sgt i32 %233, 0
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)
  store i8* %236, i8** %15, align 8
  %237 = load i8*, i8** %14, align 8
  %238 = load i8*, i8** %15, align 8
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @abs(i32 %242) #3
  %244 = call i32 (i8**, i8*, ...) @add_str(i8** %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8* %237, i8* %238, i32 %243)
  br label %245

245:                                              ; preds = %220, %214
  br label %246

246:                                              ; preds = %245, %121, %107, %101, %95, %89, %79, %57
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = call i32 (i8**, i8*, ...) @add_str(i8** %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i64 %254)
  br label %256

256:                                              ; preds = %251, %246
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @CS_AC_INVALID, align 8
  %261 = icmp ne i64 %259, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %256
  %263 = load i32*, i32** @s_access, align 8
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = call i32 (i8**, i8*, ...) @add_str(i8** %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i32 %268)
  br label %270

270:                                              ; preds = %262, %256
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %10, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %10, align 4
  br label %40

274:                                              ; preds = %40
  %275 = load i8*, i8** %11, align 8
  %276 = load i32*, i32** %5, align 8
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %278 = call i32 @print_read_write_regs(i8* %275, i32* %276, %struct.TYPE_16__* %277)
  %279 = load i8*, i8** %11, align 8
  store i8* %279, i8** %4, align 8
  br label %280

280:                                              ; preds = %274, %25
  %281 = load i8*, i8** %4, align 8
  ret i8* %281
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @add_str(i8**, i8*, ...) #1

declare dso_local i32 @cs_reg_name(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @print_read_write_regs(i8*, i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
