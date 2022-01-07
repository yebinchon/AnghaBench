; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_q3asm.c_AssembleLine.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_q3asm.c_AssembleLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i32 }

@token = common dso_local global i8* null, align 8
@NUM_SOURCE_OPS = common dso_local global i32 0, align 4
@opcodesHash = common dso_local global i32* null, align 8
@sourceOps = common dso_local global %struct.TYPE_6__* null, align 8
@OP_UNDEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Undefined opcode: %s\0A\00", align 1
@OP_IGNORE = common dso_local global i32 0, align 4
@OP_SEX8 = common dso_local global i32 0, align 4
@OP_SEX16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Bad sign extension: %s\0A\00", align 1
@OP_CVIF = common dso_local global i32 0, align 4
@OP_CVFI = common dso_local global i32 0, align 4
@OP_BLOCK_COPY = common dso_local global i32 0, align 4
@segment = common dso_local global %struct.TYPE_7__* null, align 8
@CODESEG = common dso_local global i64 0, align 8
@instructionCount = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"CALL\00", align 1
@OP_CALL = common dso_local global i32 0, align 4
@currentArgOffset = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ARG\00", align 1
@OP_ARG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"currentArgOffset >= 256\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"RET\00", align 1
@OP_LEAVE = common dso_local global i32 0, align 4
@currentLocals = common dso_local global i32 0, align 4
@currentArgs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@OP_POP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"ADDRF\00", align 1
@OP_LOCAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"ADDRL\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Locals > 32k in %s\0A\00", align 1
@OP_ENTER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"endproc\00", align 1
@OP_PUSH = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@DATASEG = common dso_local global i64 0, align 8
@currentSegment = common dso_local global %struct.TYPE_7__* null, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"bss\00", align 1
@BSSSEG = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"lit\00", align 1
@LITSEG = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"equ\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"16 bit initialized data not supported\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"LABEL\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"Unknown token: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AssembleLine() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = call i32 (...) @Parse()
  %10 = load i8*, i8** @token, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  br label %516

15:                                               ; preds = %0
  %16 = load i8*, i8** @token, align 8
  %17 = call i32 @HashString(i8* %16)
  store i32 %17, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %149, %15
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @NUM_SOURCE_OPS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %152

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32*, i32** @opcodesHash, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %23, %28
  br i1 %29, label %30, label %148

30:                                               ; preds = %22
  %31 = load i8*, i8** @token, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sourceOps, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* %31, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %148, label %40

40:                                               ; preds = %30
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sourceOps, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @OP_UNDEF, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i8*, i8** @token, align 8
  %51 = call i32 (i8*, ...) @CodeError(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %40
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sourceOps, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @OP_IGNORE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %516

62:                                               ; preds = %52
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sourceOps, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @OP_SEX8, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %62
  %73 = call i32 (...) @Parse()
  %74 = load i8*, i8** @token, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 49
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @OP_SEX8, align 4
  store i32 %80, i32* %5, align 4
  br label %93

81:                                               ; preds = %72
  %82 = load i8*, i8** @token, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 50
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @OP_SEX16, align 4
  store i32 %88, i32* %5, align 4
  br label %92

89:                                               ; preds = %81
  %90 = load i8*, i8** @token, align 8
  %91 = call i32 (i8*, ...) @CodeError(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %90)
  br label %516

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %79
  br label %94

94:                                               ; preds = %93, %62
  %95 = call i32 (...) @Parse()
  %96 = load i8*, i8** @token, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %139

101:                                              ; preds = %94
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sourceOps, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @OP_CVIF, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %139

110:                                              ; preds = %101
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sourceOps, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @OP_CVFI, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %139

119:                                              ; preds = %110
  %120 = call i32 (...) @ParseExpression()
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @OP_BLOCK_COPY, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 3
  %127 = and i32 %126, -4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %124, %119
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %130 = load i64, i64* @CODESEG, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %130
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @EmitByte(%struct.TYPE_7__* %131, i32 %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %135 = load i64, i64* @CODESEG, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %135
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @EmitInt(%struct.TYPE_7__* %136, i32 %137)
  br label %145

139:                                              ; preds = %110, %101, %94
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %141 = load i64, i64* @CODESEG, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %141
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @EmitByte(%struct.TYPE_7__* %142, i32 %143)
  br label %145

145:                                              ; preds = %139, %128
  %146 = load i32, i32* @instructionCount, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* @instructionCount, align 4
  br label %516

148:                                              ; preds = %30, %22
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %3, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %3, align 4
  br label %18

152:                                              ; preds = %18
  %153 = load i8*, i8** @token, align 8
  %154 = call i32 @strncmp(i8* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %152
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %158 = load i64, i64* @CODESEG, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i64 %158
  %160 = load i32, i32* @OP_CALL, align 4
  %161 = call i32 @EmitByte(%struct.TYPE_7__* %159, i32 %160)
  %162 = load i32, i32* @instructionCount, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* @instructionCount, align 4
  store i32 0, i32* @currentArgOffset, align 4
  br label %516

164:                                              ; preds = %152
  %165 = load i8*, i8** @token, align 8
  %166 = call i32 @strncmp(i8* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %190, label %168

168:                                              ; preds = %164
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %170 = load i64, i64* @CODESEG, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 %170
  %172 = load i32, i32* @OP_ARG, align 4
  %173 = call i32 @EmitByte(%struct.TYPE_7__* %171, i32 %172)
  %174 = load i32, i32* @instructionCount, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* @instructionCount, align 4
  %176 = load i32, i32* @currentArgOffset, align 4
  %177 = add nsw i32 8, %176
  %178 = icmp sge i32 %177, 256
  br i1 %178, label %179, label %181

179:                                              ; preds = %168
  %180 = call i32 (i8*, ...) @CodeError(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %516

181:                                              ; preds = %168
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %183 = load i64, i64* @CODESEG, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i64 %183
  %185 = load i32, i32* @currentArgOffset, align 4
  %186 = add nsw i32 8, %185
  %187 = call i32 @EmitByte(%struct.TYPE_7__* %184, i32 %186)
  %188 = load i32, i32* @currentArgOffset, align 4
  %189 = add nsw i32 %188, 4
  store i32 %189, i32* @currentArgOffset, align 4
  br label %516

190:                                              ; preds = %164
  %191 = load i8*, i8** @token, align 8
  %192 = call i32 @strncmp(i8* %191, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %210, label %194

194:                                              ; preds = %190
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %196 = load i64, i64* @CODESEG, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i64 %196
  %198 = load i32, i32* @OP_LEAVE, align 4
  %199 = call i32 @EmitByte(%struct.TYPE_7__* %197, i32 %198)
  %200 = load i32, i32* @instructionCount, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* @instructionCount, align 4
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %203 = load i64, i64* @CODESEG, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i64 %203
  %205 = load i32, i32* @currentLocals, align 4
  %206 = add nsw i32 8, %205
  %207 = load i32, i32* @currentArgs, align 4
  %208 = add nsw i32 %206, %207
  %209 = call i32 @EmitInt(%struct.TYPE_7__* %204, i32 %208)
  br label %516

210:                                              ; preds = %190
  %211 = load i8*, i8** @token, align 8
  %212 = call i32 @strncmp(i8* %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %222, label %214

214:                                              ; preds = %210
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %216 = load i64, i64* @CODESEG, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i64 %216
  %218 = load i32, i32* @OP_POP, align 4
  %219 = call i32 @EmitByte(%struct.TYPE_7__* %217, i32 %218)
  %220 = load i32, i32* @instructionCount, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* @instructionCount, align 4
  br label %516

222:                                              ; preds = %210
  %223 = load i8*, i8** @token, align 8
  %224 = call i32 @strncmp(i8* %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %247, label %226

226:                                              ; preds = %222
  %227 = load i32, i32* @instructionCount, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* @instructionCount, align 4
  %229 = call i32 (...) @Parse()
  %230 = call i32 (...) @ParseExpression()
  store i32 %230, i32* %1, align 4
  %231 = load i32, i32* @currentArgs, align 4
  %232 = add nsw i32 16, %231
  %233 = load i32, i32* @currentLocals, align 4
  %234 = add nsw i32 %232, %233
  %235 = load i32, i32* %1, align 4
  %236 = add nsw i32 %234, %235
  store i32 %236, i32* %1, align 4
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %238 = load i64, i64* @CODESEG, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i64 %238
  %240 = load i32, i32* @OP_LOCAL, align 4
  %241 = call i32 @EmitByte(%struct.TYPE_7__* %239, i32 %240)
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %243 = load i64, i64* @CODESEG, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i64 %243
  %245 = load i32, i32* %1, align 4
  %246 = call i32 @EmitInt(%struct.TYPE_7__* %244, i32 %245)
  br label %516

247:                                              ; preds = %222
  %248 = load i8*, i8** @token, align 8
  %249 = call i32 @strncmp(i8* %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %270, label %251

251:                                              ; preds = %247
  %252 = load i32, i32* @instructionCount, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* @instructionCount, align 4
  %254 = call i32 (...) @Parse()
  %255 = call i32 (...) @ParseExpression()
  store i32 %255, i32* %1, align 4
  %256 = load i32, i32* @currentArgs, align 4
  %257 = add nsw i32 8, %256
  %258 = load i32, i32* %1, align 4
  %259 = add nsw i32 %257, %258
  store i32 %259, i32* %1, align 4
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %261 = load i64, i64* @CODESEG, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i64 %261
  %263 = load i32, i32* @OP_LOCAL, align 4
  %264 = call i32 @EmitByte(%struct.TYPE_7__* %262, i32 %263)
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %266 = load i64, i64* @CODESEG, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i64 %266
  %268 = load i32, i32* %1, align 4
  %269 = call i32 @EmitInt(%struct.TYPE_7__* %267, i32 %268)
  br label %516

270:                                              ; preds = %247
  %271 = load i8*, i8** @token, align 8
  %272 = call i32 @strcmp(i8* %271, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %314, label %274

274:                                              ; preds = %270
  %275 = call i32 (...) @Parse()
  %276 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %277 = load i8*, i8** @token, align 8
  %278 = call i32 @strcpy(i8* %276, i8* %277)
  %279 = load i8*, i8** @token, align 8
  %280 = load i32, i32* @instructionCount, align 4
  %281 = call i32 @DefineSymbol(i8* %279, i32 %280)
  %282 = call i32 (...) @ParseValue()
  store i32 %282, i32* @currentLocals, align 4
  %283 = load i32, i32* @currentLocals, align 4
  %284 = add nsw i32 %283, 3
  %285 = and i32 %284, -4
  store i32 %285, i32* @currentLocals, align 4
  %286 = call i32 (...) @ParseValue()
  store i32 %286, i32* @currentArgs, align 4
  %287 = load i32, i32* @currentArgs, align 4
  %288 = add nsw i32 %287, 3
  %289 = and i32 %288, -4
  store i32 %289, i32* @currentArgs, align 4
  %290 = load i32, i32* @currentLocals, align 4
  %291 = add nsw i32 8, %290
  %292 = load i32, i32* @currentArgs, align 4
  %293 = add nsw i32 %291, %292
  %294 = icmp sge i32 %293, 32767
  br i1 %294, label %295, label %298

295:                                              ; preds = %274
  %296 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %297 = call i32 (i8*, ...) @CodeError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %296)
  br label %298

298:                                              ; preds = %295, %274
  %299 = load i32, i32* @instructionCount, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* @instructionCount, align 4
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %302 = load i64, i64* @CODESEG, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i64 %302
  %304 = load i32, i32* @OP_ENTER, align 4
  %305 = call i32 @EmitByte(%struct.TYPE_7__* %303, i32 %304)
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %307 = load i64, i64* @CODESEG, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i64 %307
  %309 = load i32, i32* @currentLocals, align 4
  %310 = add nsw i32 8, %309
  %311 = load i32, i32* @currentArgs, align 4
  %312 = add nsw i32 %310, %311
  %313 = call i32 @EmitInt(%struct.TYPE_7__* %308, i32 %312)
  br label %516

314:                                              ; preds = %270
  %315 = load i8*, i8** @token, align 8
  %316 = call i32 @strcmp(i8* %315, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %344, label %318

318:                                              ; preds = %314
  %319 = call i32 (...) @Parse()
  %320 = call i32 (...) @ParseValue()
  store i32 %320, i32* %1, align 4
  %321 = call i32 (...) @ParseValue()
  store i32 %321, i32* %2, align 4
  %322 = load i32, i32* @instructionCount, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* @instructionCount, align 4
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %325 = load i64, i64* @CODESEG, align 8
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i64 %325
  %327 = load i32, i32* @OP_PUSH, align 4
  %328 = call i32 @EmitByte(%struct.TYPE_7__* %326, i32 %327)
  %329 = load i32, i32* @instructionCount, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* @instructionCount, align 4
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %332 = load i64, i64* @CODESEG, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i64 %332
  %334 = load i32, i32* @OP_LEAVE, align 4
  %335 = call i32 @EmitByte(%struct.TYPE_7__* %333, i32 %334)
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %337 = load i64, i64* @CODESEG, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i64 %337
  %339 = load i32, i32* @currentLocals, align 4
  %340 = add nsw i32 8, %339
  %341 = load i32, i32* @currentArgs, align 4
  %342 = add nsw i32 %340, %341
  %343 = call i32 @EmitInt(%struct.TYPE_7__* %338, i32 %342)
  br label %516

344:                                              ; preds = %314
  %345 = load i8*, i8** @token, align 8
  %346 = call i32 @strcmp(i8* %345, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %356, label %348

348:                                              ; preds = %344
  %349 = call i32 (...) @Parse()
  %350 = call i32 (...) @ParseExpression()
  store i32 %350, i32* %1, align 4
  %351 = load i64, i64* @DATASEG, align 8
  %352 = call i32 @HackToSegment(i64 %351)
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** @currentSegment, align 8
  %354 = load i32, i32* %1, align 4
  %355 = call i32 @EmitInt(%struct.TYPE_7__* %353, i32 %354)
  br label %516

356:                                              ; preds = %344
  %357 = load i8*, i8** @token, align 8
  %358 = call i32 @strcmp(i8* %357, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %361, label %360

360:                                              ; preds = %356
  br label %516

361:                                              ; preds = %356
  %362 = load i8*, i8** @token, align 8
  %363 = call i32 @strcmp(i8* %362, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %366, label %365

365:                                              ; preds = %361
  br label %516

366:                                              ; preds = %361
  %367 = load i8*, i8** @token, align 8
  %368 = call i32 @strcmp(i8* %367, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %374, label %370

370:                                              ; preds = %366
  %371 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %372 = load i64, i64* @CODESEG, align 8
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i64 %372
  store %struct.TYPE_7__* %373, %struct.TYPE_7__** @currentSegment, align 8
  br label %516

374:                                              ; preds = %366
  %375 = load i8*, i8** @token, align 8
  %376 = call i32 @strcmp(i8* %375, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %382, label %378

378:                                              ; preds = %374
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %380 = load i64, i64* @BSSSEG, align 8
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i64 %380
  store %struct.TYPE_7__* %381, %struct.TYPE_7__** @currentSegment, align 8
  br label %516

382:                                              ; preds = %374
  %383 = load i8*, i8** @token, align 8
  %384 = call i32 @strcmp(i8* %383, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %390, label %386

386:                                              ; preds = %382
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %388 = load i64, i64* @DATASEG, align 8
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i64 %388
  store %struct.TYPE_7__* %389, %struct.TYPE_7__** @currentSegment, align 8
  br label %516

390:                                              ; preds = %382
  %391 = load i8*, i8** @token, align 8
  %392 = call i32 @strcmp(i8* %391, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %398, label %394

394:                                              ; preds = %390
  %395 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %396 = load i64, i64* @LITSEG, align 8
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i64 %396
  store %struct.TYPE_7__* %397, %struct.TYPE_7__** @currentSegment, align 8
  br label %516

398:                                              ; preds = %390
  %399 = load i8*, i8** @token, align 8
  %400 = call i32 @strcmp(i8* %399, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %403, label %402

402:                                              ; preds = %398
  br label %516

403:                                              ; preds = %398
  %404 = load i8*, i8** @token, align 8
  %405 = call i32 @strcmp(i8* %404, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %408, label %407

407:                                              ; preds = %403
  br label %516

408:                                              ; preds = %403
  %409 = load i8*, i8** @token, align 8
  %410 = call i32 @strcmp(i8* %409, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %422, label %412

412:                                              ; preds = %408
  %413 = call i32 (...) @Parse()
  %414 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %415 = load i8*, i8** @token, align 8
  %416 = call i32 @strcpy(i8* %414, i8* %415)
  %417 = call i32 (...) @Parse()
  %418 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %419 = load i8*, i8** @token, align 8
  %420 = call i32 @atoi(i8* %419)
  %421 = call i32 @DefineSymbol(i8* %418, i32 %420)
  br label %516

422:                                              ; preds = %408
  %423 = load i8*, i8** @token, align 8
  %424 = call i32 @strcmp(i8* %423, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %440, label %426

426:                                              ; preds = %422
  %427 = call i32 (...) @ParseValue()
  store i32 %427, i32* %1, align 4
  %428 = load %struct.TYPE_7__*, %struct.TYPE_7__** @currentSegment, align 8
  %429 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* %1, align 4
  %432 = add nsw i32 %430, %431
  %433 = sub nsw i32 %432, 1
  %434 = load i32, i32* %1, align 4
  %435 = sub nsw i32 %434, 1
  %436 = xor i32 %435, -1
  %437 = and i32 %433, %436
  %438 = load %struct.TYPE_7__*, %struct.TYPE_7__** @currentSegment, align 8
  %439 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %438, i32 0, i32 0
  store i32 %437, i32* %439, align 4
  br label %516

440:                                              ; preds = %422
  %441 = load i8*, i8** @token, align 8
  %442 = call i32 @strcmp(i8* %441, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %451, label %444

444:                                              ; preds = %440
  %445 = call i32 (...) @ParseValue()
  store i32 %445, i32* %1, align 4
  %446 = load i32, i32* %1, align 4
  %447 = load %struct.TYPE_7__*, %struct.TYPE_7__** @currentSegment, align 8
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = add nsw i32 %449, %446
  store i32 %450, i32* %448, align 4
  br label %516

451:                                              ; preds = %440
  %452 = load i8*, i8** @token, align 8
  %453 = call i32 @strcmp(i8* %452, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %491, label %455

455:                                              ; preds = %451
  %456 = call i32 (...) @ParseValue()
  store i32 %456, i32* %1, align 4
  %457 = call i32 (...) @ParseValue()
  store i32 %457, i32* %2, align 4
  %458 = load i32, i32* %1, align 4
  %459 = icmp eq i32 %458, 1
  br i1 %459, label %460, label %463

460:                                              ; preds = %455
  %461 = load i64, i64* @LITSEG, align 8
  %462 = call i32 @HackToSegment(i64 %461)
  br label %476

463:                                              ; preds = %455
  %464 = load i32, i32* %1, align 4
  %465 = icmp eq i32 %464, 4
  br i1 %465, label %466, label %469

466:                                              ; preds = %463
  %467 = load i64, i64* @DATASEG, align 8
  %468 = call i32 @HackToSegment(i64 %467)
  br label %475

469:                                              ; preds = %463
  %470 = load i32, i32* %1, align 4
  %471 = icmp eq i32 %470, 2
  br i1 %471, label %472, label %474

472:                                              ; preds = %469
  %473 = call i32 (i8*, ...) @CodeError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0))
  br label %474

474:                                              ; preds = %472, %469
  br label %475

475:                                              ; preds = %474, %466
  br label %476

476:                                              ; preds = %475, %460
  store i32 0, i32* %3, align 4
  br label %477

477:                                              ; preds = %487, %476
  %478 = load i32, i32* %3, align 4
  %479 = load i32, i32* %1, align 4
  %480 = icmp slt i32 %478, %479
  br i1 %480, label %481, label %490

481:                                              ; preds = %477
  %482 = load %struct.TYPE_7__*, %struct.TYPE_7__** @currentSegment, align 8
  %483 = load i32, i32* %2, align 4
  %484 = call i32 @EmitByte(%struct.TYPE_7__* %482, i32 %483)
  %485 = load i32, i32* %2, align 4
  %486 = ashr i32 %485, 8
  store i32 %486, i32* %2, align 4
  br label %487

487:                                              ; preds = %481
  %488 = load i32, i32* %3, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %3, align 4
  br label %477

490:                                              ; preds = %477
  br label %516

491:                                              ; preds = %451
  %492 = load i8*, i8** @token, align 8
  %493 = call i32 @strncmp(i8* %492, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32 5)
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %513, label %495

495:                                              ; preds = %491
  %496 = call i32 (...) @Parse()
  %497 = load %struct.TYPE_7__*, %struct.TYPE_7__** @currentSegment, align 8
  %498 = load %struct.TYPE_7__*, %struct.TYPE_7__** @segment, align 8
  %499 = load i64, i64* @CODESEG, align 8
  %500 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %498, i64 %499
  %501 = icmp eq %struct.TYPE_7__* %497, %500
  br i1 %501, label %502, label %506

502:                                              ; preds = %495
  %503 = load i8*, i8** @token, align 8
  %504 = load i32, i32* @instructionCount, align 4
  %505 = call i32 @DefineSymbol(i8* %503, i32 %504)
  br label %512

506:                                              ; preds = %495
  %507 = load i8*, i8** @token, align 8
  %508 = load %struct.TYPE_7__*, %struct.TYPE_7__** @currentSegment, align 8
  %509 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 4
  %511 = call i32 @DefineSymbol(i8* %507, i32 %510)
  br label %512

512:                                              ; preds = %506, %502
  br label %516

513:                                              ; preds = %491
  %514 = load i8*, i8** @token, align 8
  %515 = call i32 (i8*, ...) @CodeError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i8* %514)
  br label %516

516:                                              ; preds = %513, %512, %490, %444, %426, %412, %407, %402, %394, %386, %378, %370, %365, %360, %348, %318, %298, %251, %226, %214, %194, %181, %179, %156, %145, %89, %61, %14
  ret void
}

declare dso_local i32 @Parse(...) #1

declare dso_local i32 @HashString(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @CodeError(i8*, ...) #1

declare dso_local i32 @ParseExpression(...) #1

declare dso_local i32 @EmitByte(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @EmitInt(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @DefineSymbol(i8*, i32) #1

declare dso_local i32 @ParseValue(...) #1

declare dso_local i32 @HackToSegment(i64) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
