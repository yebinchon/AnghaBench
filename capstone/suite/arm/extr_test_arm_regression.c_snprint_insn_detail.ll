; ModuleID = '/home/carl/AnghaBench/capstone/suite/arm/extr_test_arm_regression.c_snprint_insn_detail.c'
source_filename = "/home/carl/AnghaBench/capstone/suite/arm/extr_test_arm_regression.c_snprint_insn_detail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64, i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i32, %struct.TYPE_9__, i32, i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"\09op_count: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\09\09operands[%u].type: REG = %s\0A\00", align 1
@handle = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"\09\09operands[%u].type: IMM = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\09\09operands[%u].type: FP = %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"\09\09operands[%u].type: MEM\0A\00", align 1
@X86_REG_INVALID = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"\09\09\09operands[%u].mem.base: REG = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"\09\09\09operands[%u].mem.index: REG = %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"\09\09\09operands[%u].mem.scale: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"\09\09\09operands[%u].mem.disp: 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"\09\09operands[%u].type: P-IMM = %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\09\09operands[%u].type: C-IMM = %u\0A\00", align 1
@ARM_SFT_INVALID = common dso_local global i64 0, align 8
@ARM_SFT_ASR_REG = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [19 x i8] c"\09\09\09Shift: %u = %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"\09\09\09Shift: %u = %s\0A\00", align 1
@ARM_CC_AL = common dso_local global i64 0, align 8
@ARM_CC_INVALID = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"\09Code condition: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"\09Update-flags: True\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"\09Write-back: True\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i64*, %struct.TYPE_11__*)* @snprint_insn_detail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snprint_insn_detail(i8* %0, i64* %1, i64* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  store i64 0, i64* %9, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = icmp eq %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %478

34:                                               ; preds = %4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %10, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %34
  store i64 0, i64* %12, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i64*, i64** %7, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %47, i64 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64*, i64** %7, align 8
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %57, %55
  store i64 %58, i64* %56, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64*, i64** %6, align 8
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %59
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %43, %34
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %399, %63
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %402

70:                                               ; preds = %64
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i64 %75
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %13, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  switch i32 %80, label %81 [
    i32 128, label %82
    i32 131, label %105
    i32 132, label %126
    i32 130, label %147
    i32 129, label %283
    i32 133, label %304
  ]

81:                                               ; preds = %70
  br label %325

82:                                               ; preds = %70
  store i64 0, i64* %14, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = load i64*, i64** %6, align 8
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i64*, i64** %7, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @handle, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @cs_reg_name(i32 %90, i64 %93)
  %95 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %86, i64 %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %94)
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %14, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load i64*, i64** %7, align 8
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 %99, %97
  store i64 %100, i64* %98, align 8
  %101 = load i64, i64* %14, align 8
  %102 = load i64*, i64** %6, align 8
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, %101
  store i64 %104, i64* %102, align 8
  br label %325

105:                                              ; preds = %70
  store i64 0, i64* %15, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = load i64*, i64** %6, align 8
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i64*, i64** %7, align 8
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %109, i64 %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %115)
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %15, align 8
  %118 = load i64, i64* %15, align 8
  %119 = load i64*, i64** %7, align 8
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %120, %118
  store i64 %121, i64* %119, align 8
  %122 = load i64, i64* %15, align 8
  %123 = load i64*, i64** %6, align 8
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, %122
  store i64 %125, i64* %123, align 8
  br label %325

126:                                              ; preds = %70
  store i64 0, i64* %16, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = load i64*, i64** %6, align 8
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i64*, i64** %7, align 8
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %130, i64 %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32 %136)
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %16, align 8
  %139 = load i64, i64* %16, align 8
  %140 = load i64*, i64** %7, align 8
  %141 = load i64, i64* %140, align 8
  %142 = sub i64 %141, %139
  store i64 %142, i64* %140, align 8
  %143 = load i64, i64* %16, align 8
  %144 = load i64*, i64** %6, align 8
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %145, %143
  store i64 %146, i64* %144, align 8
  br label %325

147:                                              ; preds = %70
  store i64 0, i64* %17, align 8
  %148 = load i8*, i8** %5, align 8
  %149 = load i64*, i64** %6, align 8
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i64*, i64** %7, align 8
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %151, i64 %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %17, align 8
  %157 = load i64, i64* %17, align 8
  %158 = load i64*, i64** %7, align 8
  %159 = load i64, i64* %158, align 8
  %160 = sub i64 %159, %157
  store i64 %160, i64* %158, align 8
  %161 = load i64, i64* %17, align 8
  %162 = load i64*, i64** %6, align 8
  %163 = load i64, i64* %162, align 8
  %164 = add i64 %163, %161
  store i64 %164, i64* %162, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @X86_REG_INVALID, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %195

171:                                              ; preds = %147
  store i64 0, i64* %18, align 8
  %172 = load i8*, i8** %5, align 8
  %173 = load i64*, i64** %6, align 8
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i64*, i64** %7, align 8
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @handle, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @cs_reg_name(i32 %179, i64 %183)
  %185 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %175, i64 %177, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %178, i32 %184)
  %186 = sext i32 %185 to i64
  store i64 %186, i64* %18, align 8
  %187 = load i64, i64* %18, align 8
  %188 = load i64*, i64** %7, align 8
  %189 = load i64, i64* %188, align 8
  %190 = sub i64 %189, %187
  store i64 %190, i64* %188, align 8
  %191 = load i64, i64* %18, align 8
  %192 = load i64*, i64** %6, align 8
  %193 = load i64, i64* %192, align 8
  %194 = add i64 %193, %191
  store i64 %194, i64* %192, align 8
  br label %195

195:                                              ; preds = %171, %147
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @X86_REG_INVALID, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %226

202:                                              ; preds = %195
  store i64 0, i64* %19, align 8
  %203 = load i8*, i8** %5, align 8
  %204 = load i64*, i64** %6, align 8
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = load i64*, i64** %7, align 8
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* @handle, align 4
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @cs_reg_name(i32 %210, i64 %214)
  %216 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %206, i64 %208, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %209, i32 %215)
  %217 = sext i32 %216 to i64
  store i64 %217, i64* %19, align 8
  %218 = load i64, i64* %19, align 8
  %219 = load i64*, i64** %7, align 8
  %220 = load i64, i64* %219, align 8
  %221 = sub i64 %220, %218
  store i64 %221, i64* %219, align 8
  %222 = load i64, i64* %19, align 8
  %223 = load i64*, i64** %6, align 8
  %224 = load i64, i64* %223, align 8
  %225 = add i64 %224, %222
  store i64 %225, i64* %223, align 8
  br label %226

226:                                              ; preds = %202, %195
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 1
  br i1 %231, label %232, label %254

232:                                              ; preds = %226
  store i64 0, i64* %20, align 8
  %233 = load i8*, i8** %5, align 8
  %234 = load i64*, i64** %6, align 8
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds i8, i8* %233, i64 %235
  %237 = load i64*, i64** %7, align 8
  %238 = load i64, i64* %237, align 8
  %239 = load i32, i32* %11, align 4
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %236, i64 %238, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %239, i32 %243)
  %245 = sext i32 %244 to i64
  store i64 %245, i64* %20, align 8
  %246 = load i64, i64* %20, align 8
  %247 = load i64*, i64** %7, align 8
  %248 = load i64, i64* %247, align 8
  %249 = sub i64 %248, %246
  store i64 %249, i64* %247, align 8
  %250 = load i64, i64* %20, align 8
  %251 = load i64*, i64** %6, align 8
  %252 = load i64, i64* %251, align 8
  %253 = add i64 %252, %250
  store i64 %253, i64* %251, align 8
  br label %254

254:                                              ; preds = %232, %226
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %282

260:                                              ; preds = %254
  store i64 0, i64* %21, align 8
  %261 = load i8*, i8** %5, align 8
  %262 = load i64*, i64** %6, align 8
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  %265 = load i64*, i64** %7, align 8
  %266 = load i64, i64* %265, align 8
  %267 = load i32, i32* %11, align 4
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %264, i64 %266, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %267, i32 %271)
  %273 = sext i32 %272 to i64
  store i64 %273, i64* %21, align 8
  %274 = load i64, i64* %21, align 8
  %275 = load i64*, i64** %7, align 8
  %276 = load i64, i64* %275, align 8
  %277 = sub i64 %276, %274
  store i64 %277, i64* %275, align 8
  %278 = load i64, i64* %21, align 8
  %279 = load i64*, i64** %6, align 8
  %280 = load i64, i64* %279, align 8
  %281 = add i64 %280, %278
  store i64 %281, i64* %279, align 8
  br label %282

282:                                              ; preds = %260, %254
  br label %325

283:                                              ; preds = %70
  store i64 0, i64* %22, align 8
  %284 = load i8*, i8** %5, align 8
  %285 = load i64*, i64** %6, align 8
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  %288 = load i64*, i64** %7, align 8
  %289 = load i64, i64* %288, align 8
  %290 = load i32, i32* %11, align 4
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %287, i64 %289, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %290, i32 %293)
  %295 = sext i32 %294 to i64
  store i64 %295, i64* %22, align 8
  %296 = load i64, i64* %22, align 8
  %297 = load i64*, i64** %7, align 8
  %298 = load i64, i64* %297, align 8
  %299 = sub i64 %298, %296
  store i64 %299, i64* %297, align 8
  %300 = load i64, i64* %22, align 8
  %301 = load i64*, i64** %6, align 8
  %302 = load i64, i64* %301, align 8
  %303 = add i64 %302, %300
  store i64 %303, i64* %301, align 8
  br label %325

304:                                              ; preds = %70
  store i64 0, i64* %23, align 8
  %305 = load i8*, i8** %5, align 8
  %306 = load i64*, i64** %6, align 8
  %307 = load i64, i64* %306, align 8
  %308 = getelementptr inbounds i8, i8* %305, i64 %307
  %309 = load i64*, i64** %7, align 8
  %310 = load i64, i64* %309, align 8
  %311 = load i32, i32* %11, align 4
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %308, i64 %310, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %311, i32 %314)
  %316 = sext i32 %315 to i64
  store i64 %316, i64* %23, align 8
  %317 = load i64, i64* %23, align 8
  %318 = load i64*, i64** %7, align 8
  %319 = load i64, i64* %318, align 8
  %320 = sub i64 %319, %317
  store i64 %320, i64* %318, align 8
  %321 = load i64, i64* %23, align 8
  %322 = load i64*, i64** %6, align 8
  %323 = load i64, i64* %322, align 8
  %324 = add i64 %323, %321
  store i64 %324, i64* %322, align 8
  br label %325

325:                                              ; preds = %304, %283, %282, %126, %105, %82, %81
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @ARM_SFT_INVALID, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %332, label %398

332:                                              ; preds = %325
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %398

338:                                              ; preds = %332
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @ARM_SFT_ASR_REG, align 8
  %344 = icmp slt i64 %342, %343
  br i1 %344, label %345, label %370

345:                                              ; preds = %338
  store i64 0, i64* %24, align 8
  %346 = load i8*, i8** %5, align 8
  %347 = load i64*, i64** %6, align 8
  %348 = load i64, i64* %347, align 8
  %349 = getelementptr inbounds i8, i8* %346, i64 %348
  %350 = load i64*, i64** %7, align 8
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %349, i64 %351, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i64 %355, i64 %359)
  %361 = sext i32 %360 to i64
  store i64 %361, i64* %24, align 8
  %362 = load i64, i64* %24, align 8
  %363 = load i64*, i64** %7, align 8
  %364 = load i64, i64* %363, align 8
  %365 = sub i64 %364, %362
  store i64 %365, i64* %363, align 8
  %366 = load i64, i64* %24, align 8
  %367 = load i64*, i64** %6, align 8
  %368 = load i64, i64* %367, align 8
  %369 = add i64 %368, %366
  store i64 %369, i64* %367, align 8
  br label %397

370:                                              ; preds = %338
  store i64 0, i64* %25, align 8
  %371 = load i8*, i8** %5, align 8
  %372 = load i64*, i64** %6, align 8
  %373 = load i64, i64* %372, align 8
  %374 = getelementptr inbounds i8, i8* %371, i64 %373
  %375 = load i64*, i64** %7, align 8
  %376 = load i64, i64* %375, align 8
  %377 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i32, i32* @handle, align 4
  %382 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = call i32 @cs_reg_name(i32 %381, i64 %385)
  %387 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %374, i64 %376, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i64 %380, i32 %386)
  %388 = sext i32 %387 to i64
  store i64 %388, i64* %25, align 8
  %389 = load i64, i64* %25, align 8
  %390 = load i64*, i64** %7, align 8
  %391 = load i64, i64* %390, align 8
  %392 = sub i64 %391, %389
  store i64 %392, i64* %390, align 8
  %393 = load i64, i64* %25, align 8
  %394 = load i64*, i64** %6, align 8
  %395 = load i64, i64* %394, align 8
  %396 = add i64 %395, %393
  store i64 %396, i64* %394, align 8
  br label %397

397:                                              ; preds = %370, %345
  br label %398

398:                                              ; preds = %397, %332, %325
  br label %399

399:                                              ; preds = %398
  %400 = load i32, i32* %11, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %11, align 4
  br label %64

402:                                              ; preds = %64
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* @ARM_CC_AL, align 8
  %407 = icmp ne i64 %405, %406
  br i1 %407, label %408, label %434

408:                                              ; preds = %402
  %409 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %409, i32 0, i32 1
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @ARM_CC_INVALID, align 8
  %413 = icmp ne i64 %411, %412
  br i1 %413, label %414, label %434

414:                                              ; preds = %408
  store i64 0, i64* %26, align 8
  %415 = load i8*, i8** %5, align 8
  %416 = load i64*, i64** %6, align 8
  %417 = load i64, i64* %416, align 8
  %418 = getelementptr inbounds i8, i8* %415, i64 %417
  %419 = load i64*, i64** %7, align 8
  %420 = load i64, i64* %419, align 8
  %421 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %422 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %418, i64 %420, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i64 %423)
  %425 = sext i32 %424 to i64
  store i64 %425, i64* %26, align 8
  %426 = load i64, i64* %26, align 8
  %427 = load i64*, i64** %7, align 8
  %428 = load i64, i64* %427, align 8
  %429 = sub i64 %428, %426
  store i64 %429, i64* %427, align 8
  %430 = load i64, i64* %26, align 8
  %431 = load i64*, i64** %6, align 8
  %432 = load i64, i64* %431, align 8
  %433 = add i64 %432, %430
  store i64 %433, i64* %431, align 8
  br label %434

434:                                              ; preds = %414, %408, %402
  %435 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %436 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %435, i32 0, i32 3
  %437 = load i64, i64* %436, align 8
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %456

439:                                              ; preds = %434
  store i64 0, i64* %27, align 8
  %440 = load i8*, i8** %5, align 8
  %441 = load i64*, i64** %6, align 8
  %442 = load i64, i64* %441, align 8
  %443 = getelementptr inbounds i8, i8* %440, i64 %442
  %444 = load i64*, i64** %7, align 8
  %445 = load i64, i64* %444, align 8
  %446 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %443, i64 %445, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %447 = sext i32 %446 to i64
  store i64 %447, i64* %27, align 8
  %448 = load i64, i64* %27, align 8
  %449 = load i64*, i64** %7, align 8
  %450 = load i64, i64* %449, align 8
  %451 = sub i64 %450, %448
  store i64 %451, i64* %449, align 8
  %452 = load i64, i64* %27, align 8
  %453 = load i64*, i64** %6, align 8
  %454 = load i64, i64* %453, align 8
  %455 = add i64 %454, %452
  store i64 %455, i64* %453, align 8
  br label %456

456:                                              ; preds = %439, %434
  %457 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %458 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %457, i32 0, i32 2
  %459 = load i64, i64* %458, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %478

461:                                              ; preds = %456
  store i64 0, i64* %28, align 8
  %462 = load i8*, i8** %5, align 8
  %463 = load i64*, i64** %6, align 8
  %464 = load i64, i64* %463, align 8
  %465 = getelementptr inbounds i8, i8* %462, i64 %464
  %466 = load i64*, i64** %7, align 8
  %467 = load i64, i64* %466, align 8
  %468 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %465, i64 %467, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %469 = sext i32 %468 to i64
  store i64 %469, i64* %28, align 8
  %470 = load i64, i64* %28, align 8
  %471 = load i64*, i64** %7, align 8
  %472 = load i64, i64* %471, align 8
  %473 = sub i64 %472, %470
  store i64 %473, i64* %471, align 8
  %474 = load i64, i64* %28, align 8
  %475 = load i64*, i64** %6, align 8
  %476 = load i64, i64* %475, align 8
  %477 = add i64 %476, %474
  store i64 %477, i64* %475, align 8
  br label %478

478:                                              ; preds = %33, %461, %456
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @cs_reg_name(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
