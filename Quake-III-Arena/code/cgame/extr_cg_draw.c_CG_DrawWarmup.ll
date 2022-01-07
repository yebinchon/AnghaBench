; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawWarmup.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawWarmup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i64 }

@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"Waiting for players\00", align 1
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@TEAM_FREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%s vs %s\00", align 1
@GIANT_WIDTH = common dso_local global i32 0, align 4
@colorWhite = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@GT_FFA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Free For All\00", align 1
@GT_TEAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Team Deathmatch\00", align 1
@GT_CTF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"Capture the Flag\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Starts in: %i\00", align 1
@CHAN_ANNOUNCER = common dso_local global i32 0, align 4
@GT_1FCTF = common dso_local global i64 0, align 8
@GT_HARVESTER = common dso_local global i64 0, align 8
@GT_OBELISK = common dso_local global i64 0, align 8
@ITEM_TEXTSTYLE_SHADOWEDMORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawWarmup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawWarmup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 4
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %214

13:                                               ; preds = %0
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @CG_DrawStrlen(i8* %17)
  %19 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = sdiv i32 %21, 2
  %23 = sub nsw i32 320, %22
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @CG_DrawBigString(i32 %23, i32 24, i8* %24, float 1.000000e+00)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  br label %214

26:                                               ; preds = %13
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %28 = load i64, i64* @GT_TOURNAMENT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %112

30:                                               ; preds = %26
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %67, %30
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 1), align 8
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 3), align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %35
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 3), align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TEAM_FREE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %43
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 3), align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %5, align 8
  br label %65

60:                                               ; preds = %52
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 3), align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %6, align 8
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %65, %43, %35
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %31

70:                                               ; preds = %31
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = icmp ne %struct.TYPE_6__* %71, null
  br i1 %72, label %73, label %111

73:                                               ; preds = %70
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = icmp ne %struct.TYPE_6__* %74, null
  br i1 %75, label %76, label %111

76:                                               ; preds = %73
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82)
  store i8* %83, i8** %8, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @CG_DrawStrlen(i8* %84)
  store i32 %85, i32* %1, align 4
  %86 = load i32, i32* %1, align 4
  %87 = load i32, i32* @GIANT_WIDTH, align 4
  %88 = sdiv i32 640, %87
  %89 = icmp sgt i32 %86, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %76
  %91 = load i32, i32* %1, align 4
  %92 = sdiv i32 640, %91
  store i32 %92, i32* %7, align 4
  br label %95

93:                                               ; preds = %76
  %94 = load i32, i32* @GIANT_WIDTH, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* %7, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sdiv i32 %98, 2
  %100 = sub nsw i32 320, %99
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* @colorWhite, align 4
  %103 = load i32, i32* @qfalse, align 4
  %104 = load i32, i32* @qtrue, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = sitofp i32 %106 to float
  %108 = fmul float %107, 1.500000e+00
  %109 = fptosi float %108 to i32
  %110 = call i32 @CG_DrawStringExt(i32 %100, i32 20, i8* %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %109, i32 0)
  br label %111

111:                                              ; preds = %95, %73, %70
  br label %158

112:                                              ; preds = %26
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %114 = load i64, i64* @GT_FFA, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %130

117:                                              ; preds = %112
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %119 = load i64, i64* @GT_TEAM, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %129

122:                                              ; preds = %117
  %123 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %124 = load i64, i64* @GT_CTF, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %128

127:                                              ; preds = %122
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %128

128:                                              ; preds = %127, %126
  br label %129

129:                                              ; preds = %128, %121
  br label %130

130:                                              ; preds = %129, %116
  %131 = load i8*, i8** %8, align 8
  %132 = call i32 @CG_DrawStrlen(i8* %131)
  store i32 %132, i32* %1, align 4
  %133 = load i32, i32* %1, align 4
  %134 = load i32, i32* @GIANT_WIDTH, align 4
  %135 = sdiv i32 640, %134
  %136 = icmp sgt i32 %133, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = load i32, i32* %1, align 4
  %139 = sdiv i32 640, %138
  store i32 %139, i32* %7, align 4
  br label %142

140:                                              ; preds = %130
  %141 = load i32, i32* @GIANT_WIDTH, align 4
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %140, %137
  %143 = load i32, i32* %1, align 4
  %144 = load i32, i32* %7, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sdiv i32 %145, 2
  %147 = sub nsw i32 320, %146
  %148 = load i8*, i8** %8, align 8
  %149 = load i32, i32* @colorWhite, align 4
  %150 = load i32, i32* @qfalse, align 4
  %151 = load i32, i32* @qtrue, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = sitofp i32 %153 to float
  %155 = fmul float %154, 0x3FF19999A0000000
  %156 = fptosi float %155 to i32
  %157 = call i32 @CG_DrawStringExt(i32 %147, i32 25, i8* %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %156, i32 0)
  br label %158

158:                                              ; preds = %142, %111
  %159 = load i32, i32* %2, align 4
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 2), align 4
  %161 = sub nsw i32 %159, %160
  %162 = sdiv i32 %161, 1000
  store i32 %162, i32* %2, align 4
  %163 = load i32, i32* %2, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %165, %158
  %167 = load i32, i32* %2, align 4
  %168 = add nsw i32 %167, 1
  %169 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %168)
  store i8* %169, i8** %8, align 8
  %170 = load i32, i32* %2, align 4
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %166
  %174 = load i32, i32* %2, align 4
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  %175 = load i32, i32* %2, align 4
  switch i32 %175, label %188 [
    i32 0, label %176
    i32 1, label %180
    i32 2, label %184
  ]

176:                                              ; preds = %173
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 2, i32 2), align 4
  %178 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %179 = call i32 @trap_S_StartLocalSound(i32 %177, i32 %178)
  br label %189

180:                                              ; preds = %173
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 2, i32 1), align 4
  %182 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %183 = call i32 @trap_S_StartLocalSound(i32 %181, i32 %182)
  br label %189

184:                                              ; preds = %173
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 2, i32 0), align 4
  %186 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %187 = call i32 @trap_S_StartLocalSound(i32 %185, i32 %186)
  br label %189

188:                                              ; preds = %173
  br label %189

189:                                              ; preds = %188, %184, %180, %176
  br label %190

190:                                              ; preds = %189, %166
  store float 0x3FDCCCCCC0000000, float* %4, align 4
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  switch i32 %191, label %195 [
    i32 0, label %192
    i32 1, label %193
    i32 2, label %194
  ]

192:                                              ; preds = %190
  store i32 28, i32* %7, align 4
  store float 0x3FE147AE20000000, float* %4, align 4
  br label %196

193:                                              ; preds = %190
  store i32 24, i32* %7, align 4
  store float 0x3FE051EB80000000, float* %4, align 4
  br label %196

194:                                              ; preds = %190
  store i32 20, i32* %7, align 4
  store float 0x3FDEB851E0000000, float* %4, align 4
  br label %196

195:                                              ; preds = %190
  store i32 16, i32* %7, align 4
  store float 0x3FDCCCCCC0000000, float* %4, align 4
  br label %196

196:                                              ; preds = %195, %194, %193, %192
  %197 = load i8*, i8** %8, align 8
  %198 = call i32 @CG_DrawStrlen(i8* %197)
  store i32 %198, i32* %1, align 4
  %199 = load i32, i32* %1, align 4
  %200 = load i32, i32* %7, align 4
  %201 = mul nsw i32 %199, %200
  %202 = sdiv i32 %201, 2
  %203 = sub nsw i32 320, %202
  %204 = load i8*, i8** %8, align 8
  %205 = load i32, i32* @colorWhite, align 4
  %206 = load i32, i32* @qfalse, align 4
  %207 = load i32, i32* @qtrue, align 4
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = sitofp i32 %209 to double
  %211 = fmul double %210, 1.500000e+00
  %212 = fptosi double %211 to i32
  %213 = call i32 @CG_DrawStringExt(i32 %203, i32 70, i8* %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %212, i32 0)
  br label %214

214:                                              ; preds = %196, %16, %12
  ret void
}

declare dso_local i32 @CG_DrawStrlen(i8*) #1

declare dso_local i32 @CG_DrawBigString(i32, i32, i8*, float) #1

declare dso_local i8* @va(i8*, i32, ...) #1

declare dso_local i32 @CG_DrawStringExt(i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
