; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/sh2/mame/extr_sh2dasm.c_op0000.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/sh2/mame/extr_sh2dasm.c_op0000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"STC     SR,%s\00", align 1
@regname = common dso_local global i8** null, align 8
@Rn = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"BSRF    %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"CLRT\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NOP\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"STS     MACH,%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"RTS\00", align 1
@DASMFLAG_STEP_OUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"STS     GBR,%s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"SETT\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"DIV0U\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"STS     MACL,%s\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"SLEEP\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"STC     VBR,%s\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"BRAF    %s\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"CLRMAC\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"MOVT    %s\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"STS     PR,%s\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"RTE\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"??????  $%04X\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"MOV.B   %s,@(R0,%s)\00", align 1
@Rm = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [20 x i8] c"MOV.W   %s,@(R0,%s)\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"MOV.L   %s,@(R0,%s)\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"MUL.L   %s,%s\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"MOV.B   @(R0,%s),%s\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"MOV.W   @(R0,%s),%s\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"MOV.L   @(R0,%s),%s\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"MAC.L   @%s+,@%s+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @op0000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op0000(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = and i32 %8, 63
  switch i32 %9, label %99 [
    i32 2, label %10
    i32 3, label %17
    i32 8, label %24
    i32 9, label %27
    i32 10, label %30
    i32 11, label %37
    i32 18, label %41
    i32 24, label %48
    i32 25, label %51
    i32 26, label %54
    i32 27, label %61
    i32 34, label %64
    i32 35, label %71
    i32 40, label %78
    i32 41, label %81
    i32 42, label %88
    i32 43, label %95
  ]

10:                                               ; preds = %3
  %11 = load i8*, i8** %4, align 8
  %12 = load i8**, i8*** @regname, align 8
  %13 = load i64, i64* @Rn, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %223

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8
  %19 = load i8**, i8*** @regname, align 8
  %20 = load i64, i64* @Rn, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %223

24:                                               ; preds = %3
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %223

27:                                               ; preds = %3
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %223

30:                                               ; preds = %3
  %31 = load i8*, i8** %4, align 8
  %32 = load i8**, i8*** @regname, align 8
  %33 = load i64, i64* @Rn, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %35)
  br label %223

37:                                               ; preds = %3
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %40 = load i32, i32* @DASMFLAG_STEP_OUT, align 4
  store i32 %40, i32* %7, align 4
  br label %223

41:                                               ; preds = %3
  %42 = load i8*, i8** %4, align 8
  %43 = load i8**, i8*** @regname, align 8
  %44 = load i64, i64* @Rn, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %46)
  br label %223

48:                                               ; preds = %3
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %223

51:                                               ; preds = %3
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %223

54:                                               ; preds = %3
  %55 = load i8*, i8** %4, align 8
  %56 = load i8**, i8*** @regname, align 8
  %57 = load i64, i64* @Rn, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %59)
  br label %223

61:                                               ; preds = %3
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %223

64:                                               ; preds = %3
  %65 = load i8*, i8** %4, align 8
  %66 = load i8**, i8*** @regname, align 8
  %67 = load i64, i64* @Rn, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %69)
  br label %223

71:                                               ; preds = %3
  %72 = load i8*, i8** %4, align 8
  %73 = load i8**, i8*** @regname, align 8
  %74 = load i64, i64* @Rn, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* %76)
  br label %223

78:                                               ; preds = %3
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 (i8*, i8*, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %223

81:                                               ; preds = %3
  %82 = load i8*, i8** %4, align 8
  %83 = load i8**, i8*** @regname, align 8
  %84 = load i64, i64* @Rn, align 8
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* %86)
  br label %223

88:                                               ; preds = %3
  %89 = load i8*, i8** %4, align 8
  %90 = load i8**, i8*** @regname, align 8
  %91 = load i64, i64* @Rn, align 8
  %92 = getelementptr inbounds i8*, i8** %90, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i8*, i8*, ...) @sprintf(i8* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %93)
  br label %223

95:                                               ; preds = %3
  %96 = load i8*, i8** %4, align 8
  %97 = call i32 (i8*, i8*, ...) @sprintf(i8* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %98 = load i32, i32* @DASMFLAG_STEP_OUT, align 4
  store i32 %98, i32* %7, align 4
  br label %223

99:                                               ; preds = %3
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, 15
  switch i32 %101, label %222 [
    i32 0, label %102
    i32 1, label %106
    i32 2, label %110
    i32 3, label %114
    i32 4, label %118
    i32 5, label %129
    i32 6, label %140
    i32 7, label %151
    i32 8, label %162
    i32 9, label %166
    i32 10, label %170
    i32 11, label %174
    i32 12, label %178
    i32 13, label %189
    i32 14, label %200
    i32 15, label %211
  ]

102:                                              ; preds = %99
  %103 = load i8*, i8** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 (i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %104)
  br label %222

106:                                              ; preds = %99
  %107 = load i8*, i8** %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 (i8*, i8*, ...) @sprintf(i8* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %108)
  br label %222

110:                                              ; preds = %99
  %111 = load i8*, i8** %4, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %112)
  br label %222

114:                                              ; preds = %99
  %115 = load i8*, i8** %4, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 (i8*, i8*, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %116)
  br label %222

118:                                              ; preds = %99
  %119 = load i8*, i8** %4, align 8
  %120 = load i8**, i8*** @regname, align 8
  %121 = load i64, i64* @Rm, align 8
  %122 = getelementptr inbounds i8*, i8** %120, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = load i8**, i8*** @regname, align 8
  %125 = load i64, i64* @Rn, align 8
  %126 = getelementptr inbounds i8*, i8** %124, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i8*, i8*, ...) @sprintf(i8* %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* %123, i8* %127)
  br label %222

129:                                              ; preds = %99
  %130 = load i8*, i8** %4, align 8
  %131 = load i8**, i8*** @regname, align 8
  %132 = load i64, i64* @Rm, align 8
  %133 = getelementptr inbounds i8*, i8** %131, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = load i8**, i8*** @regname, align 8
  %136 = load i64, i64* @Rn, align 8
  %137 = getelementptr inbounds i8*, i8** %135, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (i8*, i8*, ...) @sprintf(i8* %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* %134, i8* %138)
  br label %222

140:                                              ; preds = %99
  %141 = load i8*, i8** %4, align 8
  %142 = load i8**, i8*** @regname, align 8
  %143 = load i64, i64* @Rm, align 8
  %144 = getelementptr inbounds i8*, i8** %142, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load i8**, i8*** @regname, align 8
  %147 = load i64, i64* @Rn, align 8
  %148 = getelementptr inbounds i8*, i8** %146, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i8*, i8*, ...) @sprintf(i8* %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8* %145, i8* %149)
  br label %222

151:                                              ; preds = %99
  %152 = load i8*, i8** %4, align 8
  %153 = load i8**, i8*** @regname, align 8
  %154 = load i64, i64* @Rm, align 8
  %155 = getelementptr inbounds i8*, i8** %153, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = load i8**, i8*** @regname, align 8
  %158 = load i64, i64* @Rn, align 8
  %159 = getelementptr inbounds i8*, i8** %157, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 (i8*, i8*, ...) @sprintf(i8* %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* %156, i8* %160)
  br label %222

162:                                              ; preds = %99
  %163 = load i8*, i8** %4, align 8
  %164 = load i32, i32* %6, align 4
  %165 = call i32 (i8*, i8*, ...) @sprintf(i8* %163, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %164)
  br label %222

166:                                              ; preds = %99
  %167 = load i8*, i8** %4, align 8
  %168 = load i32, i32* %6, align 4
  %169 = call i32 (i8*, i8*, ...) @sprintf(i8* %167, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %168)
  br label %222

170:                                              ; preds = %99
  %171 = load i8*, i8** %4, align 8
  %172 = load i32, i32* %6, align 4
  %173 = call i32 (i8*, i8*, ...) @sprintf(i8* %171, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %172)
  br label %222

174:                                              ; preds = %99
  %175 = load i8*, i8** %4, align 8
  %176 = load i32, i32* %6, align 4
  %177 = call i32 (i8*, i8*, ...) @sprintf(i8* %175, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %176)
  br label %222

178:                                              ; preds = %99
  %179 = load i8*, i8** %4, align 8
  %180 = load i8**, i8*** @regname, align 8
  %181 = load i64, i64* @Rm, align 8
  %182 = getelementptr inbounds i8*, i8** %180, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = load i8**, i8*** @regname, align 8
  %185 = load i64, i64* @Rn, align 8
  %186 = getelementptr inbounds i8*, i8** %184, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 (i8*, i8*, ...) @sprintf(i8* %179, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8* %183, i8* %187)
  br label %222

189:                                              ; preds = %99
  %190 = load i8*, i8** %4, align 8
  %191 = load i8**, i8*** @regname, align 8
  %192 = load i64, i64* @Rm, align 8
  %193 = getelementptr inbounds i8*, i8** %191, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = load i8**, i8*** @regname, align 8
  %196 = load i64, i64* @Rn, align 8
  %197 = getelementptr inbounds i8*, i8** %195, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 (i8*, i8*, ...) @sprintf(i8* %190, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i8* %194, i8* %198)
  br label %222

200:                                              ; preds = %99
  %201 = load i8*, i8** %4, align 8
  %202 = load i8**, i8*** @regname, align 8
  %203 = load i64, i64* @Rm, align 8
  %204 = getelementptr inbounds i8*, i8** %202, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = load i8**, i8*** @regname, align 8
  %207 = load i64, i64* @Rn, align 8
  %208 = getelementptr inbounds i8*, i8** %206, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 (i8*, i8*, ...) @sprintf(i8* %201, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8* %205, i8* %209)
  br label %222

211:                                              ; preds = %99
  %212 = load i8*, i8** %4, align 8
  %213 = load i8**, i8*** @regname, align 8
  %214 = load i64, i64* @Rn, align 8
  %215 = getelementptr inbounds i8*, i8** %213, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = load i8**, i8*** @regname, align 8
  %218 = load i64, i64* @Rm, align 8
  %219 = getelementptr inbounds i8*, i8** %217, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 (i8*, i8*, ...) @sprintf(i8* %212, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i8* %216, i8* %220)
  br label %222

222:                                              ; preds = %99, %211, %200, %189, %178, %174, %170, %166, %162, %151, %140, %129, %118, %114, %110, %106, %102
  br label %223

223:                                              ; preds = %222, %95, %88, %81, %78, %71, %64, %61, %54, %51, %48, %41, %37, %30, %27, %24, %17, %10
  %224 = load i32, i32* %7, align 4
  ret i32 %224
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
