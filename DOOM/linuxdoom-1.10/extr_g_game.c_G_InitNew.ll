; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_InitNew.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_InitNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@paused = common dso_local global i32 0, align 4
@sk_nightmare = common dso_local global i64 0, align 8
@gamemode = common dso_local global i64 0, align 8
@retail = common dso_local global i64 0, align 8
@shareware = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@respawnparm = common dso_local global i64 0, align 8
@respawnmonsters = common dso_local global i32 0, align 4
@fastparm = common dso_local global i64 0, align 8
@gameskill = common dso_local global i64 0, align 8
@S_SARG_RUN1 = common dso_local global i32 0, align 4
@S_SARG_PAIN2 = common dso_local global i32 0, align 4
@states = common dso_local global %struct.TYPE_4__* null, align 8
@FRACUNIT = common dso_local global i32 0, align 4
@mobjinfo = common dso_local global %struct.TYPE_6__* null, align 8
@MT_BRUISERSHOT = common dso_local global i64 0, align 8
@MT_HEADSHOT = common dso_local global i64 0, align 8
@MT_TROOPSHOT = common dso_local global i64 0, align 8
@MAXPLAYERS = common dso_local global i32 0, align 4
@PST_REBORN = common dso_local global i32 0, align 4
@players = common dso_local global %struct.TYPE_5__* null, align 8
@usergame = common dso_local global i32 0, align 4
@demoplayback = common dso_local global i32 0, align 4
@automapactive = common dso_local global i32 0, align 4
@viewactive = common dso_local global i32 0, align 4
@gameepisode = common dso_local global i32 0, align 4
@gamemap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"SKY3\00", align 1
@skytexture = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"SKY1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SKY2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SKY4\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_InitNew(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @paused, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  store i32 0, i32* @paused, align 4
  %11 = call i32 (...) @S_ResumeSound()
  br label %12

12:                                               ; preds = %10, %3
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @sk_nightmare, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, i64* @sk_nightmare, align 8
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i64, i64* @gamemode, align 8
  %24 = load i64, i64* @retail, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 4, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %26
  br label %46

31:                                               ; preds = %22
  %32 = load i64, i64* @gamemode, align 8
  %33 = load i64, i64* @shareware, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %35
  br label %45

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = icmp sgt i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 3, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %40
  br label %45

45:                                               ; preds = %44, %39
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %51, 9
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i64, i64* @gamemode, align 8
  %55 = load i64, i64* @commercial, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 9, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %53, %50
  %59 = call i32 (...) @M_ClearRandom()
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @sk_nightmare, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* @respawnparm, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %58
  store i32 1, i32* @respawnmonsters, align 4
  br label %68

67:                                               ; preds = %63
  store i32 0, i32* @respawnmonsters, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i64, i64* @fastparm, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @sk_nightmare, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %115

75:                                               ; preds = %71
  %76 = load i64, i64* @gameskill, align 8
  %77 = load i64, i64* @sk_nightmare, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %115

79:                                               ; preds = %75, %68
  %80 = load i32, i32* @S_SARG_RUN1, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %93, %79
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @S_SARG_PAIN2, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @states, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %81

96:                                               ; preds = %81
  %97 = load i32, i32* @FRACUNIT, align 4
  %98 = mul nsw i32 20, %97
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mobjinfo, align 8
  %100 = load i64, i64* @MT_BRUISERSHOT, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* @FRACUNIT, align 4
  %104 = mul nsw i32 20, %103
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mobjinfo, align 8
  %106 = load i64, i64* @MT_HEADSHOT, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 4
  %109 = load i32, i32* @FRACUNIT, align 4
  %110 = mul nsw i32 20, %109
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mobjinfo, align 8
  %112 = load i64, i64* @MT_TROOPSHOT, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 4
  br label %160

115:                                              ; preds = %75, %71
  %116 = load i64, i64* %4, align 8
  %117 = load i64, i64* @sk_nightmare, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %159

119:                                              ; preds = %115
  %120 = load i64, i64* @gameskill, align 8
  %121 = load i64, i64* @sk_nightmare, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %159

123:                                              ; preds = %119
  %124 = load i32, i32* @S_SARG_RUN1, align 4
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %137, %123
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @S_SARG_PAIN2, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @states, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %129
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %125

140:                                              ; preds = %125
  %141 = load i32, i32* @FRACUNIT, align 4
  %142 = mul nsw i32 15, %141
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mobjinfo, align 8
  %144 = load i64, i64* @MT_BRUISERSHOT, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  store i32 %142, i32* %146, align 4
  %147 = load i32, i32* @FRACUNIT, align 4
  %148 = mul nsw i32 10, %147
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mobjinfo, align 8
  %150 = load i64, i64* @MT_HEADSHOT, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i32 %148, i32* %152, align 4
  %153 = load i32, i32* @FRACUNIT, align 4
  %154 = mul nsw i32 10, %153
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mobjinfo, align 8
  %156 = load i64, i64* @MT_TROOPSHOT, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  store i32 %154, i32* %158, align 4
  br label %159

159:                                              ; preds = %140, %119, %115
  br label %160

160:                                              ; preds = %159, %96
  store i32 0, i32* %7, align 4
  br label %161

161:                                              ; preds = %172, %160
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @MAXPLAYERS, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %161
  %166 = load i32, i32* @PST_REBORN, align 4
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** @players, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  store i32 %166, i32* %171, align 4
  br label %172

172:                                              ; preds = %165
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %161

175:                                              ; preds = %161
  store i32 1, i32* @usergame, align 4
  store i32 0, i32* @paused, align 4
  store i32 0, i32* @demoplayback, align 4
  store i32 0, i32* @automapactive, align 4
  store i32 1, i32* @viewactive, align 4
  %176 = load i32, i32* %5, align 4
  store i32 %176, i32* @gameepisode, align 4
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* @gamemap, align 4
  %178 = load i64, i64* %4, align 8
  store i64 %178, i64* @gameskill, align 8
  store i32 1, i32* @viewactive, align 4
  %179 = load i64, i64* @gamemode, align 8
  %180 = load i64, i64* @commercial, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %195

182:                                              ; preds = %175
  %183 = call i32 @R_TextureNumForName(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %183, i32* @skytexture, align 4
  %184 = load i32, i32* @gamemap, align 4
  %185 = icmp slt i32 %184, 12
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = call i32 @R_TextureNumForName(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %187, i32* @skytexture, align 4
  br label %194

188:                                              ; preds = %182
  %189 = load i32, i32* @gamemap, align 4
  %190 = icmp slt i32 %189, 21
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = call i32 @R_TextureNumForName(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %192, i32* @skytexture, align 4
  br label %193

193:                                              ; preds = %191, %188
  br label %194

194:                                              ; preds = %193, %186
  br label %206

195:                                              ; preds = %175
  %196 = load i32, i32* %5, align 4
  switch i32 %196, label %205 [
    i32 1, label %197
    i32 2, label %199
    i32 3, label %201
    i32 4, label %203
  ]

197:                                              ; preds = %195
  %198 = call i32 @R_TextureNumForName(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %198, i32* @skytexture, align 4
  br label %205

199:                                              ; preds = %195
  %200 = call i32 @R_TextureNumForName(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %200, i32* @skytexture, align 4
  br label %205

201:                                              ; preds = %195
  %202 = call i32 @R_TextureNumForName(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %202, i32* @skytexture, align 4
  br label %205

203:                                              ; preds = %195
  %204 = call i32 @R_TextureNumForName(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %204, i32* @skytexture, align 4
  br label %205

205:                                              ; preds = %195, %203, %201, %199, %197
  br label %206

206:                                              ; preds = %205, %194
  %207 = call i32 (...) @G_DoLoadLevel()
  ret void
}

declare dso_local i32 @S_ResumeSound(...) #1

declare dso_local i32 @M_ClearRandom(...) #1

declare dso_local i32 @R_TextureNumForName(i8*) #1

declare dso_local i32 @G_DoLoadLevel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
