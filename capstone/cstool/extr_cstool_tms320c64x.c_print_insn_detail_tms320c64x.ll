; ModuleID = '/home/carl/AnghaBench/capstone/cstool/extr_cstool_tms320c64x.c_print_insn_detail_tms320c64x.c'
source_filename = "/home/carl/AnghaBench/capstone/cstool/extr_cstool_tms320c64x.c_print_insn_detail_tms320c64x.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_insn_detail_tms320c64x(i32 %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = icmp eq %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %307

13:                                               ; preds = %2
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %5, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %13
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %223, %27
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %226

34:                                               ; preds = %28
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i64 %39
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %7, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  switch i32 %44, label %45 [
    i32 129, label %46
    i32 131, label %54
    i32 130, label %60
    i32 128, label %208
  ]

45:                                               ; preds = %34
  br label %222

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @cs_reg_name(i32 %48, i64 %51)
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %47, i8* %52)
  br label %222

54:                                               ; preds = %34
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %58)
  br label %222

60:                                               ; preds = %34
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TMS320C64X_REG_INVALID, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i8* @cs_reg_name(i32 %71, i64 %75)
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %70, i8* %76)
  br label %78

78:                                               ; preds = %69, %60
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @TMS320C64X_MEM_DISP_INVALID, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %78
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %87, %78
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @TMS320C64X_MEM_DISP_CONSTANT, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %104, i32 %108)
  br label %110

110:                                              ; preds = %102, %95
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @TMS320C64X_MEM_DISP_REGISTER, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %110
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %3, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = call i8* @cs_reg_name(i32 %120, i64 %125)
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %119, i8* %126)
  br label %128

128:                                              ; preds = %117, %110
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %129, i32 %133)
  %135 = load i32, i32* %6, align 4
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %135)
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @TMS320C64X_MEM_DIR_INVALID, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %128
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %128
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @TMS320C64X_MEM_DIR_FW, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %145
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @TMS320C64X_MEM_DIR_BW, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %154
  %164 = load i32, i32* %6, align 4
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %164)
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @TMS320C64X_MEM_MOD_INVALID, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %163
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %163
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @TMS320C64X_MEM_MOD_NO, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %174
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @TMS320C64X_MEM_MOD_PRE, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %183
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %192

192:                                              ; preds = %190, %183
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @TMS320C64X_MEM_MOD_POST, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %201

201:                                              ; preds = %199, %192
  %202 = load i32, i32* %6, align 4
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i32 %202, i32 %206)
  br label %222

208:                                              ; preds = %34
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* %3, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, 1
  %215 = call i8* @cs_reg_name(i32 %210, i64 %214)
  %216 = load i32, i32* %3, align 4
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i8* @cs_reg_name(i32 %216, i64 %219)
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i32 %209, i8* %215, i8* %220)
  br label %222

222:                                              ; preds = %208, %201, %54, %46, %45
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  br label %28

226:                                              ; preds = %28
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  switch i32 %231, label %258 [
    i32 136, label %232
    i32 135, label %238
    i32 134, label %244
    i32 132, label %250
    i32 133, label %256
  ]

232:                                              ; preds = %226
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 %236)
  br label %268

238:                                              ; preds = %226
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %242)
  br label %268

244:                                              ; preds = %226
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 %248)
  br label %268

250:                                              ; preds = %226
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 %254)
  br label %268

256:                                              ; preds = %226
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0))
  br label %268

258:                                              ; preds = %226
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i32 %262, i32 %266)
  br label %268

268:                                              ; preds = %258, %256, %250, %244, %238, %232
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = icmp eq i32 %272, 1
  br i1 %273, label %274, label %276

274:                                              ; preds = %268
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  br label %276

276:                                              ; preds = %274, %268
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @TMS320C64X_REG_INVALID, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %298

283:                                              ; preds = %276
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = icmp eq i32 %287, 1
  %289 = zext i1 %288 to i64
  %290 = select i1 %288, i32 33, i32 32
  %291 = load i32, i32* %3, align 4
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = call i8* @cs_reg_name(i32 %291, i64 %295)
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i32 %290, i8* %296)
  br label %298

298:                                              ; preds = %283, %276
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = icmp eq i32 %301, 1
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0)
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* %304)
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  br label %307

307:                                              ; preds = %298, %12
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
