; ModuleID = '/home/carl/AnghaBench/capstone/tests/extr_test_tms320c64x.c_print_insn_detail.c'
source_filename = "/home/carl/AnghaBench/capstone/tests/extr_test_tms320c64x.c_print_insn_detail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"\09op_count: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\09\09operands[%u].type: REG = %s\0A\00", align 1
@handle = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"\09\09operands[%u].type: IMM = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\09\09operands[%u].type: MEM\0A\00", align 1
@TMS320C64X_REG_INVALID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"\09\09\09operands[%u].mem.base: REG = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"\09\09\09operands[%u].mem.disptype: \00", align 1
@TMS320C64X_MEM_DISP_INVALID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"Invalid\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"\09\09\09operands[%u].mem.disp: %u\0A\00", align 1
@TMS320C64X_MEM_DISP_CONSTANT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"Constant\0A\00", align 1
@TMS320C64X_MEM_DISP_REGISTER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"Register\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"\09\09\09operands[%u].mem.disp: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"\09\09\09operands[%u].mem.unit: %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"\09\09\09operands[%u].mem.direction: \00", align 1
@TMS320C64X_MEM_DIR_INVALID = common dso_local global i32 0, align 4
@TMS320C64X_MEM_DIR_FW = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"Forward\0A\00", align 1
@TMS320C64X_MEM_DIR_BW = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"Backward\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"\09\09\09operands[%u].mem.modify: \00", align 1
@TMS320C64X_MEM_MOD_INVALID = common dso_local global i32 0, align 4
@TMS320C64X_MEM_MOD_NO = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"No\0A\00", align 1
@TMS320C64X_MEM_MOD_PRE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"Pre\0A\00", align 1
@TMS320C64X_MEM_MOD_POST = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"Post\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"\09\09\09operands[%u].mem.scaled: %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"\09\09operands[%u].type: REGPAIR = %s:%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"\09Functional unit: \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"D%u\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"L%u\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"M%u\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"S%u\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"No Functional Unit\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"Unknown (Unit %u, Side %u)\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"\09Crosspath: 1\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"\09Condition: [%c%s]\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"\09Parallel: %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @print_insn_detail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_insn_detail(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = icmp eq %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %305

11:                                               ; preds = %1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %3, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %11
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %221, %25
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %224

32:                                               ; preds = %26
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i64 %37
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %5, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  switch i32 %42, label %43 [
    i32 129, label %44
    i32 131, label %52
    i32 130, label %58
    i32 128, label %206
  ]

43:                                               ; preds = %32
  br label %220

44:                                               ; preds = %32
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @handle, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @cs_reg_name(i32 %46, i64 %49)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8* %50)
  br label %220

52:                                               ; preds = %32
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %56)
  br label %220

58:                                               ; preds = %32
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TMS320C64X_REG_INVALID, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %58
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @handle, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @cs_reg_name(i32 %69, i64 %73)
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %68, i8* %74)
  br label %76

76:                                               ; preds = %67, %58
  %77 = load i32, i32* %4, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @TMS320C64X_MEM_DISP_INVALID, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %87, i32 %91)
  br label %93

93:                                               ; preds = %85, %76
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @TMS320C64X_MEM_DISP_CONSTANT, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %93
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %102, i32 %106)
  br label %108

108:                                              ; preds = %100, %93
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @TMS320C64X_MEM_DISP_REGISTER, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %108
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @handle, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = call i8* @cs_reg_name(i32 %118, i64 %123)
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %117, i8* %124)
  br label %126

126:                                              ; preds = %115, %108
  %127 = load i32, i32* %4, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %127, i32 %131)
  %133 = load i32, i32* %4, align 4
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %133)
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @TMS320C64X_MEM_DIR_INVALID, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %126
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %126
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @TMS320C64X_MEM_DIR_FW, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %143
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @TMS320C64X_MEM_DIR_BW, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %152
  %162 = load i32, i32* %4, align 4
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %162)
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @TMS320C64X_MEM_MOD_INVALID, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %161
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %161
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @TMS320C64X_MEM_MOD_NO, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %172
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %172
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @TMS320C64X_MEM_MOD_PRE, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %181
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @TMS320C64X_MEM_MOD_POST, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %190
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %190
  %200 = load i32, i32* %4, align 4
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i32 %200, i32 %204)
  br label %220

206:                                              ; preds = %32
  %207 = load i32, i32* %4, align 4
  %208 = load i32, i32* @handle, align 4
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, 1
  %213 = call i8* @cs_reg_name(i32 %208, i64 %212)
  %214 = load i32, i32* @handle, align 4
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call i8* @cs_reg_name(i32 %214, i64 %217)
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i32 %207, i8* %213, i8* %218)
  br label %220

220:                                              ; preds = %206, %199, %52, %44, %43
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %4, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %4, align 4
  br label %26

224:                                              ; preds = %26
  %225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  switch i32 %229, label %256 [
    i32 136, label %230
    i32 135, label %236
    i32 134, label %242
    i32 132, label %248
    i32 133, label %254
  ]

230:                                              ; preds = %224
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 %234)
  br label %266

236:                                              ; preds = %224
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %240)
  br label %266

242:                                              ; preds = %224
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 %246)
  br label %266

248:                                              ; preds = %224
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 %252)
  br label %266

254:                                              ; preds = %224
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0))
  br label %266

256:                                              ; preds = %224
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i32 %260, i32 %264)
  br label %266

266:                                              ; preds = %256, %254, %248, %242, %236, %230
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %274

272:                                              ; preds = %266
  %273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  br label %274

274:                                              ; preds = %272, %266
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @TMS320C64X_REG_INVALID, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %296

281:                                              ; preds = %274
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = icmp eq i32 %285, 1
  %287 = zext i1 %286 to i64
  %288 = select i1 %286, i32 33, i32 32
  %289 = load i32, i32* @handle, align 4
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = call i8* @cs_reg_name(i32 %289, i64 %293)
  %295 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i32 %288, i8* %294)
  br label %296

296:                                              ; preds = %281, %274
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp eq i32 %299, 1
  %301 = zext i1 %300 to i64
  %302 = select i1 %300, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0)
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* %302)
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  br label %305

305:                                              ; preds = %296, %10
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @cs_reg_name(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
