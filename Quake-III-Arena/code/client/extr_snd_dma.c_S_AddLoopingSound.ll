; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_AddLoopingSound.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_AddLoopingSound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { double, double, i64, i8*, i32, i32, %struct.TYPE_7__*, i8*, i8* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@s_soundStarted = common dso_local global i32 0, align 4
@s_soundMuted = common dso_local global i64 0, align 8
@s_numSfx = common dso_local global i64 0, align 8
@S_COLOR_YELLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"S_AddLoopingSound: handle %i out of range\0A\00", align 1
@s_knownSfx = common dso_local global %struct.TYPE_7__* null, align 8
@qfalse = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s has length 0\00", align 1
@loopSounds = common dso_local global %struct.TYPE_9__* null, align 8
@qtrue = common dso_local global i8* null, align 8
@s_doppler = common dso_local global %struct.TYPE_8__* null, align 8
@listener_number = common dso_local global i64 0, align 8
@cls = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_AddLoopingSound(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @s_soundStarted, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i64, i64* @s_soundMuted, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  br label %214

19:                                               ; preds = %15
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @s_numSfx, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %19
  %27 = load i32, i32* @S_COLOR_YELLOW, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @Com_Printf(i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %214

30:                                               ; preds = %22
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @s_knownSfx, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %32
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %9, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @qfalse, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = call i32 @S_memoryLoad(%struct.TYPE_7__* %40)
  br label %42

42:                                               ; preds = %39, %30
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ERR_DROP, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @Com_Error(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @VectorCopy(i32 %54, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @VectorCopy(i32 %62, i32 %68)
  %70 = load i8*, i8** @qtrue, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 8
  store i8* %70, i8** %75, align 8
  %76 = load i8*, i8** @qtrue, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 7
  store i8* %76, i8** %81, align 8
  %82 = load i64, i64* @qfalse, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  store i8* %83, i8** %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store double 1.000000e+00, double* %93, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  store double 1.000000e+00, double* %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 6
  store %struct.TYPE_7__* %99, %struct.TYPE_7__** %104, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_doppler, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %207

109:                                              ; preds = %53
  %110 = load i32, i32* %7, align 4
  %111 = call double @VectorLengthSquared(i32 %110)
  %112 = fcmp ogt double %111, 0.000000e+00
  br i1 %112, label %113, label %207

113:                                              ; preds = %109
  %114 = load i8*, i8** @qtrue, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 3
  store i8* %114, i8** %119, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %121 = load i64, i64* @listener_number, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = call float @DistanceSquared(i32 %124, i32 %130)
  store float %131, float* %11, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @VectorAdd(i32 %137, i32 %143, i32 %144)
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %147 = load i64, i64* @listener_number, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = call float @DistanceSquared(i32 %150, i32 %151)
  store float %152, float* %12, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, 1
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 0), align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %113
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  store double 1.000000e+00, double* %167, align 8
  br label %180

168:                                              ; preds = %113
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load double, double* %173, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  store double %174, double* %179, align 8
  br label %180

180:                                              ; preds = %168, %162
  %181 = load float, float* %12, align 4
  %182 = load float, float* %11, align 4
  %183 = fmul float %182, 1.000000e+02
  %184 = fdiv float %181, %183
  %185 = fpext float %184 to double
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  store double %185, double* %190, align 8
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load double, double* %195, align 8
  %197 = fcmp ole double %196, 1.000000e+00
  br i1 %197, label %198, label %206

198:                                              ; preds = %180
  %199 = load i64, i64* @qfalse, align 8
  %200 = inttoptr i64 %199 to i8*
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 3
  store i8* %200, i8** %205, align 8
  br label %206

206:                                              ; preds = %198, %180
  br label %207

207:                                              ; preds = %206, %109, %53
  %208 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 0), align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** @loopSounds, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 2
  store i64 %208, i64* %213, align 8
  br label %214

214:                                              ; preds = %207, %26, %18
  ret void
}

declare dso_local i32 @Com_Printf(i32, i8*, i64) #1

declare dso_local i32 @S_memoryLoad(%struct.TYPE_7__*) #1

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local double @VectorLengthSquared(i32) #1

declare dso_local float @DistanceSquared(i32, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
