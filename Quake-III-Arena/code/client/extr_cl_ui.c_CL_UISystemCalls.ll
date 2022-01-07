; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_ui.c_CL_UISystemCalls.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_ui.c_CL_UISystemCalls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32)*, i32 (i32)*, i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32 (i32)*, i32 (...)* }
%struct.TYPE_4__ = type { i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32, i32)*, i32 (i32, i32, i32)* }

@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@re = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@botlib_export = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"UI_CIN_PlayCinematic\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Bad UI system trap: %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CL_UISystemCalls(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %606 [
    i32 202, label %7
    i32 153, label %11
    i32 159, label %14
    i32 209, label %16
    i32 205, label %24
    i32 207, label %27
    i32 203, label %31
    i32 204, label %35
    i32 206, label %42
    i32 208, label %46
    i32 211, label %49
    i32 210, label %56
    i32 223, label %65
    i32 222, label %67
    i32 214, label %76
    i32 199, label %82
    i32 197, label %89
    i32 195, label %98
    i32 200, label %107
    i32 198, label %112
    i32 196, label %120
    i32 144, label %131
    i32 142, label %135
    i32 143, label %139
    i32 148, label %143
    i32 149, label %146
    i32 150, label %150
    i32 151, label %160
    i32 140, label %168
    i32 139, label %172
    i32 147, label %176
    i32 146, label %190
    i32 129, label %198
    i32 213, label %200
    i32 133, label %215
    i32 131, label %221
    i32 184, label %229
    i32 188, label %238
    i32 183, label %247
    i32 185, label %253
    i32 186, label %258
    i32 181, label %260
    i32 189, label %265
    i32 187, label %267
    i32 182, label %269
    i32 193, label %274
    i32 194, label %280
    i32 191, label %283
    i32 192, label %286
    i32 170, label %295
    i32 166, label %297
    i32 180, label %299
    i32 168, label %306
    i32 175, label %312
    i32 179, label %314
    i32 177, label %319
    i32 176, label %329
    i32 173, label %338
    i32 174, label %343
    i32 172, label %355
    i32 171, label %367
    i32 169, label %375
    i32 165, label %386
    i32 163, label %394
    i32 167, label %399
    i32 164, label %404
    i32 178, label %411
    i32 161, label %428
    i32 190, label %430
    i32 138, label %436
    i32 137, label %439
    i32 145, label %440
    i32 160, label %448
    i32 162, label %457
    i32 134, label %464
    i32 136, label %472
    i32 212, label %476
    i32 221, label %480
    i32 135, label %485
    i32 201, label %489
    i32 220, label %493
    i32 158, label %497
    i32 156, label %503
    i32 157, label %509
    i32 155, label %517
    i32 154, label %526
    i32 130, label %536
    i32 132, label %538
    i32 152, label %542
    i32 218, label %545
    i32 215, label %564
    i32 217, label %569
    i32 219, label %574
    i32 216, label %579
    i32 141, label %596
    i32 128, label %602
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @ERR_DROP, align 4
  %9 = call i32 @VMA(i32 1)
  %10 = call i32 @Com_Error(i32 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 0, i32* %2, align 4
  br label %613

11:                                               ; preds = %1
  %12 = call i32 @VMA(i32 1)
  %13 = call i32 @Com_Printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 0, i32* %2, align 4
  br label %613

14:                                               ; preds = %1
  %15 = call i32 (...) @Sys_Milliseconds()
  store i32 %15, i32* %2, align 4
  br label %613

16:                                               ; preds = %1
  %17 = call i32 @VMA(i32 1)
  %18 = call i32 @VMA(i32 2)
  %19 = call i32 @VMA(i32 3)
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @Cvar_Register(i32 %17, i32 %18, i32 %19, i32 %22)
  store i32 0, i32* %2, align 4
  br label %613

24:                                               ; preds = %1
  %25 = call i32 @VMA(i32 1)
  %26 = call i32 @Cvar_Update(i32 %25)
  store i32 0, i32* %2, align 4
  br label %613

27:                                               ; preds = %1
  %28 = call i32 @VMA(i32 1)
  %29 = call i32 @VMA(i32 2)
  %30 = call i32 @Cvar_Set(i32 %28, i32 %29)
  store i32 0, i32* %2, align 4
  br label %613

31:                                               ; preds = %1
  %32 = call i32 @VMA(i32 1)
  %33 = call i32 @Cvar_VariableValue(i32 %32)
  %34 = call i32 @FloatAsInt(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %613

35:                                               ; preds = %1
  %36 = call i32 @VMA(i32 1)
  %37 = call i32 @VMA(i32 2)
  %38 = load i32*, i32** %3, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @Cvar_VariableStringBuffer(i32 %36, i32 %37, i32 %40)
  store i32 0, i32* %2, align 4
  br label %613

42:                                               ; preds = %1
  %43 = call i32 @VMA(i32 1)
  %44 = call i32 @VMF(i32 2)
  %45 = call i32 @Cvar_SetValue(i32 %43, i32 %44)
  store i32 0, i32* %2, align 4
  br label %613

46:                                               ; preds = %1
  %47 = call i32 @VMA(i32 1)
  %48 = call i32 @Cvar_Reset(i32 %47)
  store i32 0, i32* %2, align 4
  br label %613

49:                                               ; preds = %1
  %50 = call i32 @VMA(i32 1)
  %51 = call i32 @VMA(i32 2)
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @Cvar_Get(i32 %50, i32 %51, i32 %54)
  store i32 0, i32* %2, align 4
  br label %613

56:                                               ; preds = %1
  %57 = load i32*, i32** %3, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @VMA(i32 2)
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @Cvar_InfoStringBuffer(i32 %59, i32 %60, i32 %63)
  store i32 0, i32* %2, align 4
  br label %613

65:                                               ; preds = %1
  %66 = call i32 (...) @Cmd_Argc()
  store i32 %66, i32* %2, align 4
  br label %613

67:                                               ; preds = %1
  %68 = load i32*, i32** %3, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @VMA(i32 2)
  %72 = load i32*, i32** %3, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @Cmd_ArgvBuffer(i32 %70, i32 %71, i32 %74)
  store i32 0, i32* %2, align 4
  br label %613

76:                                               ; preds = %1
  %77 = load i32*, i32** %3, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @VMA(i32 2)
  %81 = call i32 @Cbuf_ExecuteText(i32 %79, i32 %80)
  store i32 0, i32* %2, align 4
  br label %613

82:                                               ; preds = %1
  %83 = call i32 @VMA(i32 1)
  %84 = call i32 @VMA(i32 2)
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @FS_FOpenFileByMode(i32 %83, i32 %84, i32 %87)
  store i32 %88, i32* %2, align 4
  br label %613

89:                                               ; preds = %1
  %90 = call i32 @VMA(i32 1)
  %91 = load i32*, i32** %3, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %3, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @FS_Read2(i32 %90, i32 %93, i32 %96)
  store i32 0, i32* %2, align 4
  br label %613

98:                                               ; preds = %1
  %99 = call i32 @VMA(i32 1)
  %100 = load i32*, i32** %3, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %3, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @FS_Write(i32 %99, i32 %102, i32 %105)
  store i32 0, i32* %2, align 4
  br label %613

107:                                              ; preds = %1
  %108 = load i32*, i32** %3, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @FS_FCloseFile(i32 %110)
  store i32 0, i32* %2, align 4
  br label %613

112:                                              ; preds = %1
  %113 = call i32 @VMA(i32 1)
  %114 = call i32 @VMA(i32 2)
  %115 = call i32 @VMA(i32 3)
  %116 = load i32*, i32** %3, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @FS_GetFileList(i32 %113, i32 %114, i32 %115, i32 %118)
  store i32 %119, i32* %2, align 4
  br label %613

120:                                              ; preds = %1
  %121 = load i32*, i32** %3, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %3, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %3, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @FS_Seek(i32 %123, i32 %126, i32 %129)
  store i32 %130, i32* %2, align 4
  br label %613

131:                                              ; preds = %1
  %132 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 0), align 8
  %133 = call i32 @VMA(i32 1)
  %134 = call i32 %132(i32 %133)
  store i32 %134, i32* %2, align 4
  br label %613

135:                                              ; preds = %1
  %136 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 1), align 8
  %137 = call i32 @VMA(i32 1)
  %138 = call i32 %136(i32 %137)
  store i32 %138, i32* %2, align 4
  br label %613

139:                                              ; preds = %1
  %140 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 2), align 8
  %141 = call i32 @VMA(i32 1)
  %142 = call i32 %140(i32 %141)
  store i32 %142, i32* %2, align 4
  br label %613

143:                                              ; preds = %1
  %144 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 13), align 8
  %145 = call i32 (...) %144()
  store i32 0, i32* %2, align 4
  br label %613

146:                                              ; preds = %1
  %147 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 12), align 8
  %148 = call i32 @VMA(i32 1)
  %149 = call i32 %147(i32 %148)
  store i32 0, i32* %2, align 4
  br label %613

150:                                              ; preds = %1
  %151 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 11), align 8
  %152 = load i32*, i32** %3, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %3, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @VMA(i32 3)
  %159 = call i32 %151(i32 %154, i32 %157, i32 %158, i32 1)
  store i32 0, i32* %2, align 4
  br label %613

160:                                              ; preds = %1
  %161 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 10), align 8
  %162 = call i32 @VMA(i32 1)
  %163 = call i32 @VMF(i32 2)
  %164 = call i32 @VMF(i32 3)
  %165 = call i32 @VMF(i32 4)
  %166 = call i32 @VMF(i32 5)
  %167 = call i32 %161(i32 %162, i32 %163, i32 %164, i32 %165, i32 %166)
  store i32 0, i32* %2, align 4
  br label %613

168:                                              ; preds = %1
  %169 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 9), align 8
  %170 = call i32 @VMA(i32 1)
  %171 = call i32 %169(i32 %170)
  store i32 0, i32* %2, align 4
  br label %613

172:                                              ; preds = %1
  %173 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 8), align 8
  %174 = call i32 @VMA(i32 1)
  %175 = call i32 %173(i32 %174)
  store i32 0, i32* %2, align 4
  br label %613

176:                                              ; preds = %1
  %177 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 7), align 8
  %178 = call i32 @VMF(i32 1)
  %179 = call i32 @VMF(i32 2)
  %180 = call i32 @VMF(i32 3)
  %181 = call i32 @VMF(i32 4)
  %182 = call i32 @VMF(i32 5)
  %183 = call i32 @VMF(i32 6)
  %184 = call i32 @VMF(i32 7)
  %185 = call i32 @VMF(i32 8)
  %186 = load i32*, i32** %3, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 9
  %188 = load i32, i32* %187, align 4
  %189 = call i32 %177(i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %188)
  store i32 0, i32* %2, align 4
  br label %613

190:                                              ; preds = %1
  %191 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 6), align 8
  %192 = load i32*, i32** %3, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @VMA(i32 2)
  %196 = call i32 @VMA(i32 3)
  %197 = call i32 %191(i32 %194, i32 %195, i32 %196)
  store i32 0, i32* %2, align 4
  br label %613

198:                                              ; preds = %1
  %199 = call i32 (...) @SCR_UpdateScreen()
  store i32 0, i32* %2, align 4
  br label %613

200:                                              ; preds = %1
  %201 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 5), align 8
  %202 = call i32 @VMA(i32 1)
  %203 = load i32*, i32** %3, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 2
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %3, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 3
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %3, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 4
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @VMF(i32 5)
  %213 = call i32 @VMA(i32 6)
  %214 = call i32 %201(i32 %202, i32 %205, i32 %208, i32 %211, i32 %212, i32 %213)
  store i32 0, i32* %2, align 4
  br label %613

215:                                              ; preds = %1
  %216 = call i32 @VMA(i32 1)
  %217 = load i32*, i32** %3, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @S_RegisterSound(i32 %216, i32 %219)
  store i32 %220, i32* %2, align 4
  br label %613

221:                                              ; preds = %1
  %222 = load i32*, i32** %3, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** %3, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 2
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @S_StartLocalSound(i32 %224, i32 %227)
  store i32 0, i32* %2, align 4
  br label %613

229:                                              ; preds = %1
  %230 = load i32*, i32** %3, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @VMA(i32 2)
  %234 = load i32*, i32** %3, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 3
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @Key_KeynumToStringBuf(i32 %232, i32 %233, i32 %236)
  store i32 0, i32* %2, align 4
  br label %613

238:                                              ; preds = %1
  %239 = load i32*, i32** %3, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @VMA(i32 2)
  %243 = load i32*, i32** %3, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 3
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @Key_GetBindingBuf(i32 %241, i32 %242, i32 %245)
  store i32 0, i32* %2, align 4
  br label %613

247:                                              ; preds = %1
  %248 = load i32*, i32** %3, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @VMA(i32 2)
  %252 = call i32 @Key_SetBinding(i32 %250, i32 %251)
  store i32 0, i32* %2, align 4
  br label %613

253:                                              ; preds = %1
  %254 = load i32*, i32** %3, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @Key_IsDown(i32 %256)
  store i32 %257, i32* %2, align 4
  br label %613

258:                                              ; preds = %1
  %259 = call i32 (...) @Key_GetOverstrikeMode()
  store i32 %259, i32* %2, align 4
  br label %613

260:                                              ; preds = %1
  %261 = load i32*, i32** %3, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @Key_SetOverstrikeMode(i32 %263)
  store i32 0, i32* %2, align 4
  br label %613

265:                                              ; preds = %1
  %266 = call i32 (...) @Key_ClearStates()
  store i32 0, i32* %2, align 4
  br label %613

267:                                              ; preds = %1
  %268 = call i32 (...) @Key_GetCatcher()
  store i32 %268, i32* %2, align 4
  br label %613

269:                                              ; preds = %1
  %270 = load i32*, i32** %3, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @Key_SetCatcher(i32 %272)
  store i32 0, i32* %2, align 4
  br label %613

274:                                              ; preds = %1
  %275 = call i32 @VMA(i32 1)
  %276 = load i32*, i32** %3, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 2
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @GetClipboardData(i32 %275, i32 %278)
  store i32 0, i32* %2, align 4
  br label %613

280:                                              ; preds = %1
  %281 = call i32 @VMA(i32 1)
  %282 = call i32 @GetClientState(i32 %281)
  store i32 0, i32* %2, align 4
  br label %613

283:                                              ; preds = %1
  %284 = call i32 @VMA(i32 1)
  %285 = call i32 @CL_GetGlconfig(i32 %284)
  store i32 0, i32* %2, align 4
  br label %613

286:                                              ; preds = %1
  %287 = load i32*, i32** %3, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 1
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @VMA(i32 2)
  %291 = load i32*, i32** %3, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 3
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @GetConfigString(i32 %289, i32 %290, i32 %293)
  store i32 %294, i32* %2, align 4
  br label %613

295:                                              ; preds = %1
  %296 = call i32 (...) @LAN_LoadCachedServers()
  store i32 0, i32* %2, align 4
  br label %613

297:                                              ; preds = %1
  %298 = call i32 (...) @LAN_SaveServersToCache()
  store i32 0, i32* %2, align 4
  br label %613

299:                                              ; preds = %1
  %300 = load i32*, i32** %3, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 1
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @VMA(i32 2)
  %304 = call i32 @VMA(i32 3)
  %305 = call i32 @LAN_AddServer(i32 %302, i32 %303, i32 %304)
  store i32 %305, i32* %2, align 4
  br label %613

306:                                              ; preds = %1
  %307 = load i32*, i32** %3, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 1
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @VMA(i32 2)
  %311 = call i32 @LAN_RemoveServer(i32 %309, i32 %310)
  store i32 0, i32* %2, align 4
  br label %613

312:                                              ; preds = %1
  %313 = call i32 (...) @LAN_GetPingQueueCount()
  store i32 %313, i32* %2, align 4
  br label %613

314:                                              ; preds = %1
  %315 = load i32*, i32** %3, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 1
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @LAN_ClearPing(i32 %317)
  store i32 0, i32* %2, align 4
  br label %613

319:                                              ; preds = %1
  %320 = load i32*, i32** %3, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 1
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @VMA(i32 2)
  %324 = load i32*, i32** %3, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 3
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @VMA(i32 4)
  %328 = call i32 @LAN_GetPing(i32 %322, i32 %323, i32 %326, i32 %327)
  store i32 0, i32* %2, align 4
  br label %613

329:                                              ; preds = %1
  %330 = load i32*, i32** %3, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 1
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @VMA(i32 2)
  %334 = load i32*, i32** %3, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 3
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @LAN_GetPingInfo(i32 %332, i32 %333, i32 %336)
  store i32 0, i32* %2, align 4
  br label %613

338:                                              ; preds = %1
  %339 = load i32*, i32** %3, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 1
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @LAN_GetServerCount(i32 %341)
  store i32 %342, i32* %2, align 4
  br label %613

343:                                              ; preds = %1
  %344 = load i32*, i32** %3, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 1
  %346 = load i32, i32* %345, align 4
  %347 = load i32*, i32** %3, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 2
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @VMA(i32 3)
  %351 = load i32*, i32** %3, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 4
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @LAN_GetServerAddressString(i32 %346, i32 %349, i32 %350, i32 %353)
  store i32 0, i32* %2, align 4
  br label %613

355:                                              ; preds = %1
  %356 = load i32*, i32** %3, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 1
  %358 = load i32, i32* %357, align 4
  %359 = load i32*, i32** %3, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 2
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @VMA(i32 3)
  %363 = load i32*, i32** %3, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 4
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @LAN_GetServerInfo(i32 %358, i32 %361, i32 %362, i32 %365)
  store i32 0, i32* %2, align 4
  br label %613

367:                                              ; preds = %1
  %368 = load i32*, i32** %3, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 1
  %370 = load i32, i32* %369, align 4
  %371 = load i32*, i32** %3, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 2
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @LAN_GetServerPing(i32 %370, i32 %373)
  store i32 %374, i32* %2, align 4
  br label %613

375:                                              ; preds = %1
  %376 = load i32*, i32** %3, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 1
  %378 = load i32, i32* %377, align 4
  %379 = load i32*, i32** %3, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 2
  %381 = load i32, i32* %380, align 4
  %382 = load i32*, i32** %3, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 3
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @LAN_MarkServerVisible(i32 %378, i32 %381, i32 %384)
  store i32 0, i32* %2, align 4
  br label %613

386:                                              ; preds = %1
  %387 = load i32*, i32** %3, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 1
  %389 = load i32, i32* %388, align 4
  %390 = load i32*, i32** %3, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 2
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @LAN_ServerIsVisible(i32 %389, i32 %392)
  store i32 %393, i32* %2, align 4
  br label %613

394:                                              ; preds = %1
  %395 = load i32*, i32** %3, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 1
  %397 = load i32, i32* %396, align 4
  %398 = call i32 @LAN_UpdateVisiblePings(i32 %397)
  store i32 %398, i32* %2, align 4
  br label %613

399:                                              ; preds = %1
  %400 = load i32*, i32** %3, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 1
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @LAN_ResetPings(i32 %402)
  store i32 0, i32* %2, align 4
  br label %613

404:                                              ; preds = %1
  %405 = call i32 @VMA(i32 1)
  %406 = call i32 @VMA(i32 2)
  %407 = load i32*, i32** %3, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 3
  %409 = load i32, i32* %408, align 4
  %410 = call i32 @LAN_GetServerStatus(i32 %405, i32 %406, i32 %409)
  store i32 %410, i32* %2, align 4
  br label %613

411:                                              ; preds = %1
  %412 = load i32*, i32** %3, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 1
  %414 = load i32, i32* %413, align 4
  %415 = load i32*, i32** %3, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 2
  %417 = load i32, i32* %416, align 4
  %418 = load i32*, i32** %3, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 3
  %420 = load i32, i32* %419, align 4
  %421 = load i32*, i32** %3, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 4
  %423 = load i32, i32* %422, align 4
  %424 = load i32*, i32** %3, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 5
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @LAN_CompareServers(i32 %414, i32 %417, i32 %420, i32 %423, i32 %426)
  store i32 %427, i32* %2, align 4
  br label %613

428:                                              ; preds = %1
  %429 = call i32 (...) @Hunk_MemoryRemaining()
  store i32 %429, i32* %2, align 4
  br label %613

430:                                              ; preds = %1
  %431 = call i32 @VMA(i32 1)
  %432 = load i32*, i32** %3, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 2
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @CLUI_GetCDKey(i32 %431, i32 %434)
  store i32 0, i32* %2, align 4
  br label %613

436:                                              ; preds = %1
  %437 = call i32 @VMA(i32 1)
  %438 = call i32 @CLUI_SetCDKey(i32 %437)
  store i32 0, i32* %2, align 4
  br label %613

439:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %613

440:                                              ; preds = %1
  %441 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 4), align 8
  %442 = call i32 @VMA(i32 1)
  %443 = load i32*, i32** %3, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 2
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @VMA(i32 3)
  %447 = call i32 %441(i32 %442, i32 %445, i32 %446)
  store i32 0, i32* %2, align 4
  br label %613

448:                                              ; preds = %1
  %449 = call i32 @VMA(i32 1)
  %450 = load i32*, i32** %3, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 2
  %452 = load i32, i32* %451, align 4
  %453 = load i32*, i32** %3, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 3
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @Com_Memset(i32 %449, i32 %452, i32 %455)
  store i32 0, i32* %2, align 4
  br label %613

457:                                              ; preds = %1
  %458 = call i32 @VMA(i32 1)
  %459 = call i32 @VMA(i32 2)
  %460 = load i32*, i32** %3, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 3
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @Com_Memcpy(i32 %458, i32 %459, i32 %462)
  store i32 0, i32* %2, align 4
  br label %613

464:                                              ; preds = %1
  %465 = call i32 @VMA(i32 1)
  %466 = call i32 @VMA(i32 2)
  %467 = load i32*, i32** %3, align 8
  %468 = getelementptr inbounds i32, i32* %467, i64 3
  %469 = load i32, i32* %468, align 4
  %470 = call i64 @strncpy(i32 %465, i32 %466, i32 %469)
  %471 = trunc i64 %470 to i32
  store i32 %471, i32* %2, align 4
  br label %613

472:                                              ; preds = %1
  %473 = call i32 @VMF(i32 1)
  %474 = call i32 @sin(i32 %473)
  %475 = call i32 @FloatAsInt(i32 %474)
  store i32 %475, i32* %2, align 4
  br label %613

476:                                              ; preds = %1
  %477 = call i32 @VMF(i32 1)
  %478 = call i32 @cos(i32 %477)
  %479 = call i32 @FloatAsInt(i32 %478)
  store i32 %479, i32* %2, align 4
  br label %613

480:                                              ; preds = %1
  %481 = call i32 @VMF(i32 1)
  %482 = call i32 @VMF(i32 2)
  %483 = call i32 @atan2(i32 %481, i32 %482)
  %484 = call i32 @FloatAsInt(i32 %483)
  store i32 %484, i32* %2, align 4
  br label %613

485:                                              ; preds = %1
  %486 = call i32 @VMF(i32 1)
  %487 = call i32 @sqrt(i32 %486)
  %488 = call i32 @FloatAsInt(i32 %487)
  store i32 %488, i32* %2, align 4
  br label %613

489:                                              ; preds = %1
  %490 = call i32 @VMF(i32 1)
  %491 = call i32 @floor(i32 %490)
  %492 = call i32 @FloatAsInt(i32 %491)
  store i32 %492, i32* %2, align 4
  br label %613

493:                                              ; preds = %1
  %494 = call i32 @VMF(i32 1)
  %495 = call i32 @ceil(i32 %494)
  %496 = call i32 @FloatAsInt(i32 %495)
  store i32 %496, i32* %2, align 4
  br label %613

497:                                              ; preds = %1
  %498 = load %struct.TYPE_4__*, %struct.TYPE_4__** @botlib_export, align 8
  %499 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %498, i32 0, i32 0
  %500 = load i32 (i32)*, i32 (i32)** %499, align 8
  %501 = call i32 @VMA(i32 1)
  %502 = call i32 %500(i32 %501)
  store i32 %502, i32* %2, align 4
  br label %613

503:                                              ; preds = %1
  %504 = load %struct.TYPE_4__*, %struct.TYPE_4__** @botlib_export, align 8
  %505 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %504, i32 0, i32 1
  %506 = load i32 (i32)*, i32 (i32)** %505, align 8
  %507 = call i32 @VMA(i32 1)
  %508 = call i32 %506(i32 %507)
  store i32 %508, i32* %2, align 4
  br label %613

509:                                              ; preds = %1
  %510 = load %struct.TYPE_4__*, %struct.TYPE_4__** @botlib_export, align 8
  %511 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %510, i32 0, i32 2
  %512 = load i32 (i32)*, i32 (i32)** %511, align 8
  %513 = load i32*, i32** %3, align 8
  %514 = getelementptr inbounds i32, i32* %513, i64 1
  %515 = load i32, i32* %514, align 4
  %516 = call i32 %512(i32 %515)
  store i32 %516, i32* %2, align 4
  br label %613

517:                                              ; preds = %1
  %518 = load %struct.TYPE_4__*, %struct.TYPE_4__** @botlib_export, align 8
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %518, i32 0, i32 3
  %520 = load i32 (i32, i32)*, i32 (i32, i32)** %519, align 8
  %521 = load i32*, i32** %3, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 1
  %523 = load i32, i32* %522, align 4
  %524 = call i32 @VMA(i32 2)
  %525 = call i32 %520(i32 %523, i32 %524)
  store i32 %525, i32* %2, align 4
  br label %613

526:                                              ; preds = %1
  %527 = load %struct.TYPE_4__*, %struct.TYPE_4__** @botlib_export, align 8
  %528 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %527, i32 0, i32 4
  %529 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %528, align 8
  %530 = load i32*, i32** %3, align 8
  %531 = getelementptr inbounds i32, i32* %530, i64 1
  %532 = load i32, i32* %531, align 4
  %533 = call i32 @VMA(i32 2)
  %534 = call i32 @VMA(i32 3)
  %535 = call i32 %529(i32 %532, i32 %533, i32 %534)
  store i32 %535, i32* %2, align 4
  br label %613

536:                                              ; preds = %1
  %537 = call i32 (...) @S_StopBackgroundTrack()
  store i32 0, i32* %2, align 4
  br label %613

538:                                              ; preds = %1
  %539 = call i32 @VMA(i32 1)
  %540 = call i32 @VMA(i32 2)
  %541 = call i32 @S_StartBackgroundTrack(i32 %539, i32 %540)
  store i32 0, i32* %2, align 4
  br label %613

542:                                              ; preds = %1
  %543 = call i32 @VMA(i32 1)
  %544 = call i32 @Com_RealTime(i32 %543)
  store i32 %544, i32* %2, align 4
  br label %613

545:                                              ; preds = %1
  %546 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %547 = call i32 @VMA(i32 1)
  %548 = load i32*, i32** %3, align 8
  %549 = getelementptr inbounds i32, i32* %548, i64 2
  %550 = load i32, i32* %549, align 4
  %551 = load i32*, i32** %3, align 8
  %552 = getelementptr inbounds i32, i32* %551, i64 3
  %553 = load i32, i32* %552, align 4
  %554 = load i32*, i32** %3, align 8
  %555 = getelementptr inbounds i32, i32* %554, i64 4
  %556 = load i32, i32* %555, align 4
  %557 = load i32*, i32** %3, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 5
  %559 = load i32, i32* %558, align 4
  %560 = load i32*, i32** %3, align 8
  %561 = getelementptr inbounds i32, i32* %560, i64 6
  %562 = load i32, i32* %561, align 4
  %563 = call i32 @CIN_PlayCinematic(i32 %547, i32 %550, i32 %553, i32 %556, i32 %559, i32 %562)
  store i32 %563, i32* %2, align 4
  br label %613

564:                                              ; preds = %1
  %565 = load i32*, i32** %3, align 8
  %566 = getelementptr inbounds i32, i32* %565, i64 1
  %567 = load i32, i32* %566, align 4
  %568 = call i32 @CIN_StopCinematic(i32 %567)
  store i32 %568, i32* %2, align 4
  br label %613

569:                                              ; preds = %1
  %570 = load i32*, i32** %3, align 8
  %571 = getelementptr inbounds i32, i32* %570, i64 1
  %572 = load i32, i32* %571, align 4
  %573 = call i32 @CIN_RunCinematic(i32 %572)
  store i32 %573, i32* %2, align 4
  br label %613

574:                                              ; preds = %1
  %575 = load i32*, i32** %3, align 8
  %576 = getelementptr inbounds i32, i32* %575, i64 1
  %577 = load i32, i32* %576, align 4
  %578 = call i32 @CIN_DrawCinematic(i32 %577)
  store i32 0, i32* %2, align 4
  br label %613

579:                                              ; preds = %1
  %580 = load i32*, i32** %3, align 8
  %581 = getelementptr inbounds i32, i32* %580, i64 1
  %582 = load i32, i32* %581, align 4
  %583 = load i32*, i32** %3, align 8
  %584 = getelementptr inbounds i32, i32* %583, i64 2
  %585 = load i32, i32* %584, align 4
  %586 = load i32*, i32** %3, align 8
  %587 = getelementptr inbounds i32, i32* %586, i64 3
  %588 = load i32, i32* %587, align 4
  %589 = load i32*, i32** %3, align 8
  %590 = getelementptr inbounds i32, i32* %589, i64 4
  %591 = load i32, i32* %590, align 4
  %592 = load i32*, i32** %3, align 8
  %593 = getelementptr inbounds i32, i32* %592, i64 5
  %594 = load i32, i32* %593, align 4
  %595 = call i32 @CIN_SetExtents(i32 %582, i32 %585, i32 %588, i32 %591, i32 %594)
  store i32 0, i32* %2, align 4
  br label %613

596:                                              ; preds = %1
  %597 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 3), align 8
  %598 = call i32 @VMA(i32 1)
  %599 = call i32 @VMA(i32 2)
  %600 = call i32 @VMA(i32 3)
  %601 = call i32 %597(i32 %598, i32 %599, i32 %600)
  store i32 0, i32* %2, align 4
  br label %613

602:                                              ; preds = %1
  %603 = call i32 @VMA(i32 1)
  %604 = call i32 @VMA(i32 2)
  %605 = call i32 @CL_CDKeyValidate(i32 %603, i32 %604)
  store i32 %605, i32* %2, align 4
  br label %613

606:                                              ; preds = %1
  %607 = load i32, i32* @ERR_DROP, align 4
  %608 = load i32*, i32** %3, align 8
  %609 = getelementptr inbounds i32, i32* %608, i64 0
  %610 = load i32, i32* %609, align 4
  %611 = call i32 @Com_Error(i32 %607, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %610)
  br label %612

612:                                              ; preds = %606
  store i32 0, i32* %2, align 4
  br label %613

613:                                              ; preds = %612, %602, %596, %579, %574, %569, %564, %545, %542, %538, %536, %526, %517, %509, %503, %497, %493, %489, %485, %480, %476, %472, %464, %457, %448, %440, %439, %436, %430, %428, %411, %404, %399, %394, %386, %375, %367, %355, %343, %338, %329, %319, %314, %312, %306, %299, %297, %295, %286, %283, %280, %274, %269, %267, %265, %260, %258, %253, %247, %238, %229, %221, %215, %200, %198, %190, %176, %172, %168, %160, %150, %146, %143, %139, %135, %131, %120, %112, %107, %98, %89, %82, %76, %67, %65, %56, %49, %46, %42, %35, %31, %27, %24, %16, %14, %11, %7
  %614 = load i32, i32* %2, align 4
  ret i32 %614
}

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

declare dso_local i32 @VMA(i32) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @Sys_Milliseconds(...) #1

declare dso_local i32 @Cvar_Register(i32, i32, i32, i32) #1

declare dso_local i32 @Cvar_Update(i32) #1

declare dso_local i32 @Cvar_Set(i32, i32) #1

declare dso_local i32 @FloatAsInt(i32) #1

declare dso_local i32 @Cvar_VariableValue(i32) #1

declare dso_local i32 @Cvar_VariableStringBuffer(i32, i32, i32) #1

declare dso_local i32 @Cvar_SetValue(i32, i32) #1

declare dso_local i32 @VMF(i32) #1

declare dso_local i32 @Cvar_Reset(i32) #1

declare dso_local i32 @Cvar_Get(i32, i32, i32) #1

declare dso_local i32 @Cvar_InfoStringBuffer(i32, i32, i32) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Cmd_ArgvBuffer(i32, i32, i32) #1

declare dso_local i32 @Cbuf_ExecuteText(i32, i32) #1

declare dso_local i32 @FS_FOpenFileByMode(i32, i32, i32) #1

declare dso_local i32 @FS_Read2(i32, i32, i32) #1

declare dso_local i32 @FS_Write(i32, i32, i32) #1

declare dso_local i32 @FS_FCloseFile(i32) #1

declare dso_local i32 @FS_GetFileList(i32, i32, i32, i32) #1

declare dso_local i32 @FS_Seek(i32, i32, i32) #1

declare dso_local i32 @SCR_UpdateScreen(...) #1

declare dso_local i32 @S_RegisterSound(i32, i32) #1

declare dso_local i32 @S_StartLocalSound(i32, i32) #1

declare dso_local i32 @Key_KeynumToStringBuf(i32, i32, i32) #1

declare dso_local i32 @Key_GetBindingBuf(i32, i32, i32) #1

declare dso_local i32 @Key_SetBinding(i32, i32) #1

declare dso_local i32 @Key_IsDown(i32) #1

declare dso_local i32 @Key_GetOverstrikeMode(...) #1

declare dso_local i32 @Key_SetOverstrikeMode(i32) #1

declare dso_local i32 @Key_ClearStates(...) #1

declare dso_local i32 @Key_GetCatcher(...) #1

declare dso_local i32 @Key_SetCatcher(i32) #1

declare dso_local i32 @GetClipboardData(i32, i32) #1

declare dso_local i32 @GetClientState(i32) #1

declare dso_local i32 @CL_GetGlconfig(i32) #1

declare dso_local i32 @GetConfigString(i32, i32, i32) #1

declare dso_local i32 @LAN_LoadCachedServers(...) #1

declare dso_local i32 @LAN_SaveServersToCache(...) #1

declare dso_local i32 @LAN_AddServer(i32, i32, i32) #1

declare dso_local i32 @LAN_RemoveServer(i32, i32) #1

declare dso_local i32 @LAN_GetPingQueueCount(...) #1

declare dso_local i32 @LAN_ClearPing(i32) #1

declare dso_local i32 @LAN_GetPing(i32, i32, i32, i32) #1

declare dso_local i32 @LAN_GetPingInfo(i32, i32, i32) #1

declare dso_local i32 @LAN_GetServerCount(i32) #1

declare dso_local i32 @LAN_GetServerAddressString(i32, i32, i32, i32) #1

declare dso_local i32 @LAN_GetServerInfo(i32, i32, i32, i32) #1

declare dso_local i32 @LAN_GetServerPing(i32, i32) #1

declare dso_local i32 @LAN_MarkServerVisible(i32, i32, i32) #1

declare dso_local i32 @LAN_ServerIsVisible(i32, i32) #1

declare dso_local i32 @LAN_UpdateVisiblePings(i32) #1

declare dso_local i32 @LAN_ResetPings(i32) #1

declare dso_local i32 @LAN_GetServerStatus(i32, i32, i32) #1

declare dso_local i32 @LAN_CompareServers(i32, i32, i32, i32, i32) #1

declare dso_local i32 @Hunk_MemoryRemaining(...) #1

declare dso_local i32 @CLUI_GetCDKey(i32, i32) #1

declare dso_local i32 @CLUI_SetCDKey(i32) #1

declare dso_local i32 @Com_Memset(i32, i32, i32) #1

declare dso_local i32 @Com_Memcpy(i32, i32, i32) #1

declare dso_local i64 @strncpy(i32, i32, i32) #1

declare dso_local i32 @sin(i32) #1

declare dso_local i32 @cos(i32) #1

declare dso_local i32 @atan2(i32, i32) #1

declare dso_local i32 @sqrt(i32) #1

declare dso_local i32 @floor(i32) #1

declare dso_local i32 @ceil(i32) #1

declare dso_local i32 @S_StopBackgroundTrack(...) #1

declare dso_local i32 @S_StartBackgroundTrack(i32, i32) #1

declare dso_local i32 @Com_RealTime(i32) #1

declare dso_local i32 @Com_DPrintf(i8*) #1

declare dso_local i32 @CIN_PlayCinematic(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CIN_StopCinematic(i32) #1

declare dso_local i32 @CIN_RunCinematic(i32) #1

declare dso_local i32 @CIN_DrawCinematic(i32) #1

declare dso_local i32 @CIN_SetExtents(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CL_CDKeyValidate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
