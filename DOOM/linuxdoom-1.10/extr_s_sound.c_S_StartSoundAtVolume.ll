; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_s_sound.c_S_StartSoundAtVolume.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_s_sound.c_S_StartSoundAtVolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, i32, i32, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32 }

@NUMSFX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Bad sfx #: %d\00", align 1
@S_sfx = common dso_local global %struct.TYPE_12__* null, align 8
@snd_SfxVolume = common dso_local global i32 0, align 4
@NORM_PITCH = common dso_local global i32 0, align 4
@NORM_PRIORITY = common dso_local global i32 0, align 4
@players = common dso_local global %struct.TYPE_14__* null, align 8
@consoleplayer = common dso_local global i64 0, align 8
@NORM_SEP = common dso_local global i32 0, align 4
@sfx_sawup = common dso_local global i32 0, align 4
@sfx_sawhit = common dso_local global i32 0, align 4
@sfx_itemup = common dso_local global i32 0, align 4
@sfx_tink = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"S_StartSoundAtVolume: 16bit and not pre-cached - wtf?\0A\00", align 1
@channels = common dso_local global %struct.TYPE_15__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_StartSoundAtVolume(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %13, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NUMSFX, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %3
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @I_Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @S_sfx, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i64 %28
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %11, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %25
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  br label %207

51:                                               ; preds = %34
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @snd_SfxVolume, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @snd_SfxVolume, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %51
  br label %61

58:                                               ; preds = %25
  %59 = load i32, i32* @NORM_PITCH, align 4
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @NORM_PRIORITY, align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %58, %57
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %63 = icmp ne %struct.TYPE_13__* %62, null
  br i1 %63, label %64, label %110

64:                                               ; preds = %61
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** @players, align 8
  %67 = load i64, i64* @consoleplayer, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = icmp ne %struct.TYPE_13__* %65, %70
  br i1 %71, label %72, label %110

72:                                               ; preds = %64
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** @players, align 8
  %74 = load i64, i64* @consoleplayer, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %79 = call i32 @S_AdjustSoundParams(%struct.TYPE_13__* %77, %struct.TYPE_13__* %78, i32* %6, i32* %8, i32* %9)
  store i32 %79, i32* %7, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** @players, align 8
  %84 = load i64, i64* @consoleplayer, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %82, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %72
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** @players, align 8
  %96 = load i64, i64* @consoleplayer, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %94, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32, i32* @NORM_SEP, align 4
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %103, %91, %72
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  br label %207

109:                                              ; preds = %105
  br label %112

110:                                              ; preds = %64, %61
  %111 = load i32, i32* @NORM_SEP, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %110, %109
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @sfx_sawup, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %112
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @sfx_sawhit, align 4
  %119 = icmp sle i32 %117, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %116
  %121 = call i32 (...) @M_Random()
  %122 = and i32 %121, 15
  %123 = sub nsw i32 8, %122
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 0, i32* %9, align 4
  br label %134

129:                                              ; preds = %120
  %130 = load i32, i32* %9, align 4
  %131 = icmp sgt i32 %130, 255
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 255, i32* %9, align 4
  br label %133

133:                                              ; preds = %132, %129
  br label %134

134:                                              ; preds = %133, %128
  br label %159

135:                                              ; preds = %116, %112
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @sfx_itemup, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %158

139:                                              ; preds = %135
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @sfx_tink, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %158

143:                                              ; preds = %139
  %144 = call i32 (...) @M_Random()
  %145 = and i32 %144, 31
  %146 = sub nsw i32 16, %145
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  store i32 0, i32* %9, align 4
  br label %157

152:                                              ; preds = %143
  %153 = load i32, i32* %9, align 4
  %154 = icmp sgt i32 %153, 255
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 255, i32* %9, align 4
  br label %156

156:                                              ; preds = %155, %152
  br label %157

157:                                              ; preds = %156, %151
  br label %158

158:                                              ; preds = %157, %139, %135
  br label %159

159:                                              ; preds = %158, %134
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %161 = call i32 @S_StopSound(%struct.TYPE_13__* %160)
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %164 = call i32 @S_getChannel(%struct.TYPE_13__* %162, %struct.TYPE_12__* %163)
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %207

168:                                              ; preds = %159
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %175 = call i64 @I_GetSfxLumpNum(%struct.TYPE_12__* %174)
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %173, %168
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* @stderr, align 4
  %185 = call i32 @fprintf(i32 %184, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %178
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 8
  %191 = icmp slt i32 %189, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 3
  store i32 1, i32* %194, align 8
  br label %195

195:                                              ; preds = %192, %186
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %10, align 4
  %201 = call i32 @I_StartSound(i32 %196, i32 %197, i32 %198, i32 %199, i32 %200)
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** @channels, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  store i32 %201, i32* %206, align 4
  br label %207

207:                                              ; preds = %195, %167, %108, %50
  ret void
}

declare dso_local i32 @I_Error(i8*, i32) #1

declare dso_local i32 @S_AdjustSoundParams(%struct.TYPE_13__*, %struct.TYPE_13__*, i32*, i32*, i32*) #1

declare dso_local i32 @M_Random(...) #1

declare dso_local i32 @S_StopSound(%struct.TYPE_13__*) #1

declare dso_local i32 @S_getChannel(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i64 @I_GetSfxLumpNum(%struct.TYPE_12__*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @I_StartSound(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
