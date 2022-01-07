; ModuleID = '/home/carl/AnghaBench/capstone/tests/extr_test_m680x.c_print_insn_detail.c'
source_filename = "/home/carl/AnghaBench/capstone/tests/extr_test_m680x.c_print_insn_detail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i64, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"\09op_count: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@M680X_FIRST_OP_IN_MNEM = common dso_local global i32 0, align 4
@M680X_SECOND_OP_IN_MNEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c" (in mnemonic)\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\09\09operands[%u].type: REGISTER = %s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\09\09operands[%u].type: CONSTANT = %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\09\09operands[%u].type: IMMEDIATE = #%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"\09\09operands[%u].type: DIRECT = 0x%02X\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"\09\09operands[%u].type: EXTENDED %s = 0x%04X\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"INDIRECT\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"\09\09operands[%u].type: RELATIVE = 0x%04X\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"\09\09operands[%u].type: INDEXED%s\0A\00", align 1
@M680X_IDX_INDIRECT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c" INDIRECT\00", align 1
@M680X_REG_INVALID = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"\09\09\09base register: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"\09\09\09offset register: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"\09\09\09offset: %d\0A\00", align 1
@M680X_REG_PC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [25 x i8] c"\09\09\09offset address: 0x%X\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\09\09\09offset bits: %u\0A\00", align 1
@M680X_IDX_POST_INC_DEC = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"post\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"increment\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"decrement\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"\09\09\09%s %s: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"\09\09\09size: %u\0A\00", align 1
@CS_AC_INVALID = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [15 x i8] c"\09\09\09access: %s\0A\00", align 1
@s_access = common dso_local global i8** null, align 8
@.str.24 = private unnamed_addr constant [19 x i8] c"\09groups_count: %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_15__*)* @print_insn_detail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_insn_detail(i32 %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = icmp eq %struct.TYPE_16__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %277

18:                                               ; preds = %2
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %6, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %18
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %259, %30
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %262

37:                                               ; preds = %31
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i64 %42
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %8, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 9
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  switch i32 %47, label %48 [
    i32 129, label %49
    i32 134, label %79
    i32 131, label %85
    i32 133, label %91
    i32 132, label %97
    i32 128, label %111
    i32 130, label %118
  ]

48:                                               ; preds = %37
  br label %234

49:                                               ; preds = %37
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @M680X_FIRST_OP_IN_MNEM, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %52, %49
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @M680X_SECOND_OP_IN_MNEM, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62, %52
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %70

70:                                               ; preds = %69, %62, %59
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @cs_reg_name(i32 %72, i32 %75)
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %71, i8* %76, i8* %77)
  br label %234

79:                                               ; preds = %37
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %80, i32 %83)
  br label %234

85:                                               ; preds = %37
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %86, i32 %89)
  br label %234

91:                                               ; preds = %37
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %92, i32 %95)
  br label %234

97:                                               ; preds = %37
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %98, i8* %105, i32 %109)
  br label %234

111:                                              ; preds = %37
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %112, i32 %116)
  br label %234

118:                                              ; preds = %37
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @M680X_IDX_INDIRECT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %119, i8* %128)
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @M680X_REG_INVALID, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %118
  %137 = load i32, i32* %3, align 4
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @cs_reg_name(i32 %137, i32 %141)
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %136, %118
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @M680X_REG_INVALID, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %144
  %152 = load i32, i32* %3, align 4
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @cs_reg_name(i32 %152, i32 %156)
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* %157)
  br label %159

159:                                              ; preds = %151, %144
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %202

165:                                              ; preds = %159
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @M680X_REG_INVALID, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %202

172:                                              ; preds = %165
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %202, label %178

178:                                              ; preds = %172
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %182)
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @M680X_REG_PC, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %178
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %190, %178
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %196, %172, %165, %159
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %233

208:                                              ; preds = %202
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @M680X_IDX_POST_INC_DEC, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)
  store i8* %217, i8** %10, align 8
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = icmp sgt i32 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)
  store i8* %224, i8** %11, align 8
  %225 = load i8*, i8** %10, align 8
  %226 = load i8*, i8** %11, align 8
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 5
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @abs(i32 %230) #3
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* %225, i8* %226, i32 %231)
  br label %233

233:                                              ; preds = %208, %202
  br label %234

234:                                              ; preds = %233, %111, %97, %91, %85, %79, %70, %48
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %234
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i64 %242)
  br label %244

244:                                              ; preds = %239, %234
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @CS_AC_INVALID, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %258

250:                                              ; preds = %244
  %251 = load i8**, i8*** @s_access, align 8
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds i8*, i8** %251, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8* %256)
  br label %258

258:                                              ; preds = %250, %244
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %7, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %7, align 4
  br label %31

262:                                              ; preds = %31
  %263 = load i32, i32* %3, align 4
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %265 = call i32 @print_read_write_regs(i32 %263, %struct.TYPE_16__* %264)
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %262
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 %273)
  br label %275

275:                                              ; preds = %270, %262
  %276 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  br label %277

277:                                              ; preds = %275, %17
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @cs_reg_name(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @print_read_write_regs(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
