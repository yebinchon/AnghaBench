; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_misc.c_BG_CanItemBeGrabbed.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_misc.c_BG_CanItemBeGrabbed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32*, i64*, i32*, i32* }

@bg_numItems = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"BG_CanItemBeGrabbed: index out of range\00", align 1
@bg_itemlist = common dso_local global %struct.TYPE_8__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@STAT_ARMOR = common dso_local global i64 0, align 8
@STAT_MAX_HEALTH = common dso_local global i64 0, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@GT_CTF = common dso_local global i32 0, align 4
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i32 0, align 4
@PW_BLUEFLAG = common dso_local global i64 0, align 8
@PW_REDFLAG = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i32 0, align 4
@STAT_HOLDABLE_ITEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"BG_CanItemBeGrabbed: IT_BAD\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"BG_CanItemBeGrabbed: unknown enum %d\0A\00", align 1
@GT_1FCTF = common dso_local global i32 0, align 4
@GT_HARVESTER = common dso_local global i32 0, align 4
@PW_GUARD = common dso_local global i64 0, align 8
@PW_NEUTRALFLAG = common dso_local global i64 0, align 8
@PW_SCOUT = common dso_local global i64 0, align 8
@STAT_PERSISTANT_POWERUP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BG_CanItemBeGrabbed(i32 %0, %struct.TYPE_9__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @bg_numItems, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @ERR_DROP, align 4
  %21 = call i32 @Com_Error(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bg_itemlist, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 %27
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %8, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %225 [
    i32 128, label %32
    i32 136, label %34
    i32 135, label %48
    i32 133, label %67
    i32 130, label %114
    i32 129, label %116
    i32 132, label %210
    i32 134, label %222
  ]

32:                                               ; preds = %22
  %33 = load i32, i32* @qtrue, align 4
  store i32 %33, i32* %4, align 4
  br label %232

34:                                               ; preds = %22
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 200
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @qfalse, align 4
  store i32 %45, i32* %4, align 4
  br label %232

46:                                               ; preds = %34
  %47 = load i32, i32* @qtrue, align 4
  store i32 %47, i32* %4, align 4
  br label %232

48:                                               ; preds = %22
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @STAT_ARMOR, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @STAT_MAX_HEALTH, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = mul i64 %60, 2
  %62 = icmp uge i64 %54, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load i32, i32* @qfalse, align 4
  store i32 %64, i32* %4, align 4
  br label %232

65:                                               ; preds = %48
  %66 = load i32, i32* @qtrue, align 4
  store i32 %66, i32* %4, align 4
  br label %232

67:                                               ; preds = %22
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 5
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 100
  br i1 %76, label %77, label %96

77:                                               ; preds = %72, %67
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @STAT_HEALTH, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @STAT_MAX_HEALTH, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = mul i64 %89, 2
  %91 = icmp uge i64 %83, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %77
  %93 = load i32, i32* @qfalse, align 4
  store i32 %93, i32* %4, align 4
  br label %232

94:                                               ; preds = %77
  %95 = load i32, i32* @qtrue, align 4
  store i32 %95, i32* %4, align 4
  br label %232

96:                                               ; preds = %72
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* @STAT_HEALTH, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* @STAT_MAX_HEALTH, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp uge i64 %102, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %96
  %111 = load i32, i32* @qfalse, align 4
  store i32 %111, i32* %4, align 4
  br label %232

112:                                              ; preds = %96
  %113 = load i32, i32* @qtrue, align 4
  store i32 %113, i32* %4, align 4
  br label %232

114:                                              ; preds = %22
  %115 = load i32, i32* @qtrue, align 4
  store i32 %115, i32* %4, align 4
  br label %232

116:                                              ; preds = %22
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @GT_CTF, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %208

120:                                              ; preds = %116
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @PERS_TEAM, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @TEAM_RED, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %163

129:                                              ; preds = %120
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @PW_BLUEFLAG, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %160, label %135

135:                                              ; preds = %129
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @PW_REDFLAG, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %141, %135
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @PW_REDFLAG, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %146
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @PW_BLUEFLAG, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152, %141, %129
  %161 = load i32, i32* @qtrue, align 4
  store i32 %161, i32* %4, align 4
  br label %232

162:                                              ; preds = %152, %146
  br label %207

163:                                              ; preds = %120
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* @PERS_TEAM, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @TEAM_BLUE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %206

172:                                              ; preds = %163
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @PW_REDFLAG, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %203, label %178

178:                                              ; preds = %172
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @PW_BLUEFLAG, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %203, label %189

189:                                              ; preds = %184, %178
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @PW_BLUEFLAG, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %205

195:                                              ; preds = %189
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* @PW_REDFLAG, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %195, %184, %172
  %204 = load i32, i32* @qtrue, align 4
  store i32 %204, i32* %4, align 4
  br label %232

205:                                              ; preds = %195, %189
  br label %206

206:                                              ; preds = %205, %163
  br label %207

207:                                              ; preds = %206, %162
  br label %208

208:                                              ; preds = %207, %116
  %209 = load i32, i32* @qfalse, align 4
  store i32 %209, i32* %4, align 4
  br label %232

210:                                              ; preds = %22
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  %213 = load i64*, i64** %212, align 8
  %214 = load i64, i64* @STAT_HOLDABLE_ITEM, align 8
  %215 = getelementptr inbounds i64, i64* %213, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %210
  %219 = load i32, i32* @qfalse, align 4
  store i32 %219, i32* %4, align 4
  br label %232

220:                                              ; preds = %210
  %221 = load i32, i32* @qtrue, align 4
  store i32 %221, i32* %4, align 4
  br label %232

222:                                              ; preds = %22
  %223 = load i32, i32* @ERR_DROP, align 4
  %224 = call i32 @Com_Error(i32 %223, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %225

225:                                              ; preds = %22, %222
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @Com_Printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %228)
  br label %230

230:                                              ; preds = %225
  %231 = load i32, i32* @qfalse, align 4
  store i32 %231, i32* %4, align 4
  br label %232

232:                                              ; preds = %230, %220, %218, %208, %203, %160, %114, %112, %110, %94, %92, %65, %63, %46, %44, %32
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
