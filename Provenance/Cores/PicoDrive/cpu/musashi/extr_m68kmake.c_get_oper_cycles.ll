; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kmake.c_get_oper_cycles.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kmake.c_get_oper_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i32*, i32, i32 }

@g_size_select_table = common dso_local global i32* null, align 8
@CPU_TYPE_020 = common dso_local global i32 0, align 4
@CPU_TYPE_010 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"moves\00", align 1
@g_moves_cycle_table = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"clr\00", align 1
@g_clr_cycle_table = common dso_local global i32** null, align 8
@CPU_TYPE_000 = common dso_local global i32 0, align 4
@EA_MODE_I = common dso_local global i32 0, align 4
@EA_MODE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"er\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"adda\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"suba\00", align 1
@g_ea_cycle_table = common dso_local global i32*** null, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"jmp\00", align 1
@g_jmp_cycle_table = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"jsr\00", align 1
@g_jsr_cycle_table = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"lea\00", align 1
@g_lea_cycle_table = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"pea\00", align 1
@g_pea_cycle_table = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"movem\00", align 1
@g_movem_cycle_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_oper_cycles(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** @g_size_select_table, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 46
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %305

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @CPU_TYPE_020, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %283

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @CPU_TYPE_010, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %82

33:                                               ; preds = %29
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @strcmp(i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32**, i32*** @g_moves_cycle_table, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %46, %55
  store i32 %56, i32* %4, align 4
  br label %305

57:                                               ; preds = %33
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @strcmp(i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %57
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32**, i32*** @g_clr_cycle_table, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %70, %79
  store i32 %80, i32* %4, align 4
  br label %305

81:                                               ; preds = %57
  br label %82

82:                                               ; preds = %81, %29
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @CPU_TYPE_000, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %182

86:                                               ; preds = %82
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @EA_MODE_I, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @EA_MODE_NONE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %182

94:                                               ; preds = %90, %86
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 32
  br i1 %98, label %99, label %182

99:                                               ; preds = %94
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @strcmp(i32 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @strcmp(i32 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %159, label %111

111:                                              ; preds = %105, %99
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @strcmp(i32 %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %159, label %117

117:                                              ; preds = %111
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @strcmp(i32 %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @strcmp(i32 %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %159, label %129

129:                                              ; preds = %123, %117
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @strcmp(i32 %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @strcmp(i32 %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %159, label %141

141:                                              ; preds = %135, %129
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @strcmp(i32 %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @strcmp(i32 %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %147, %141
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @strcmp(i32 %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %182

159:                                              ; preds = %153, %147, %135, %123, %111, %105
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32***, i32**** @g_ea_cycle_table, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32**, i32*** %167, i64 %169
  %171 = load i32**, i32*** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %171, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %166, %179
  %181 = add nsw i32 %180, 2
  store i32 %181, i32* %4, align 4
  br label %305

182:                                              ; preds = %153, %94, %90, %82
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = call i64 @strcmp(i32 %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %182
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** @g_jmp_cycle_table, align 8
  %197 = load i32, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %195, %200
  store i32 %201, i32* %4, align 4
  br label %305

202:                                              ; preds = %182
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = call i64 @strcmp(i32 %205, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %202
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** @g_jsr_cycle_table, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %215, %220
  store i32 %221, i32* %4, align 4
  br label %305

222:                                              ; preds = %202
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = call i64 @strcmp(i32 %225, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %222
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** @g_lea_cycle_table, align 8
  %237 = load i32, i32* %6, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %235, %240
  store i32 %241, i32* %4, align 4
  br label %305

242:                                              ; preds = %222
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = call i64 @strcmp(i32 %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %262

248:                                              ; preds = %242
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** @g_pea_cycle_table, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %255, %260
  store i32 %261, i32* %4, align 4
  br label %305

262:                                              ; preds = %242
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = call i64 @strcmp(i32 %265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %282

268:                                              ; preds = %262
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 2
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load i32*, i32** @g_movem_cycle_table, align 8
  %277 = load i32, i32* %6, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %275, %280
  store i32 %281, i32* %4, align 4
  br label %305

282:                                              ; preds = %262
  br label %283

283:                                              ; preds = %282, %25
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 2
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load i32***, i32**** @g_ea_cycle_table, align 8
  %292 = load i32, i32* %6, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32**, i32*** %291, i64 %293
  %295 = load i32**, i32*** %294, align 8
  %296 = load i32, i32* %7, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32*, i32** %295, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %8, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = add nsw i32 %290, %303
  store i32 %304, i32* %4, align 4
  br label %305

305:                                              ; preds = %283, %268, %248, %228, %208, %188, %159, %63, %39, %24
  %306 = load i32, i32* %4, align 4
  ret i32 %306
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
