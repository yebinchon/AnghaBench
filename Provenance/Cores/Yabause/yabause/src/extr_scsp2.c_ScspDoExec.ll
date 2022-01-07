; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspDoExec.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspDoExec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 (...)*, i32 (i64*, i64*, i64)* }

@scsp = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@SCSP_INTERRUPT_TIMER_A = common dso_local global i32 0, align 4
@SCSP_INTERRUPT_TIMER_B = common dso_local global i32 0, align 4
@SCSP_INTERRUPT_TIMER_C = common dso_local global i32 0, align 4
@scsp_frame_accurate = common dso_local global i64 0, align 8
@scsp_sound_left = common dso_local global i64 0, align 8
@SCSP_SOUND_BUFSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"WARNING: Sound buffer overrun, %u samples\0A\00", align 1
@scsp_sound_genpos = common dso_local global i64 0, align 8
@scsp_buffer_L = common dso_local global i64* null, align 8
@scsp_buffer_R = common dso_local global i64* null, align 8
@SNDCore = common dso_local global %struct.TYPE_4__* null, align 8
@scsp_clock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ScspDoExec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ScspDoExec(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %4, align 8
  %13 = load i64, i64* %2, align 8
  store i64 %13, i64* %3, align 8
  br label %14

14:                                               ; preds = %54, %1
  %15 = load i64, i64* %3, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %85

17:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  %18 = load i64, i64* %3, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 0), align 4
  %20 = load i32, i32* @SCSP_INTERRUPT_TIMER_A, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 7), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 6), align 4
  %28 = call i32 @ScspTimerCyclesLeft(i32 %26, i32 %27)
  %29 = call i64 @MIN(i64 %25, i32 %28)
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %24, %17
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 0), align 4
  %32 = load i32, i32* @SCSP_INTERRUPT_TIMER_B, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 5), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 4), align 4
  %40 = call i32 @ScspTimerCyclesLeft(i32 %38, i32 %39)
  %41 = call i64 @MIN(i64 %37, i32 %40)
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 0), align 4
  %44 = load i32, i32* @SCSP_INTERRUPT_TIMER_C, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 3), align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 2), align 4
  %52 = call i32 @ScspTimerCyclesLeft(i32 %50, i32 %51)
  %53 = call i64 @MIN(i64 %49, i32 %52)
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %48, %42
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 1), align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 1), align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 1), align 4
  %61 = ashr i32 %60, 8
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %6, align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 1), align 4
  %64 = and i32 %63, 255
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 1), align 4
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %3, align 8
  %67 = sub nsw i64 %66, %65
  store i64 %67, i64* %3, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %4, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %4, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @ScspRunM68K(i64 %71)
  %73 = load i64, i64* %6, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 6), align 4
  %75 = load i32, i32* @SCSP_INTERRUPT_TIMER_A, align 4
  %76 = call i32 @ScspUpdateTimer(i64 %73, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 7), i32 %74, i32 %75)
  %77 = load i64, i64* %6, align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 4), align 4
  %79 = load i32, i32* @SCSP_INTERRUPT_TIMER_B, align 4
  %80 = call i32 @ScspUpdateTimer(i64 %77, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 5), i32 %78, i32 %79)
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 2), align 4
  %83 = load i32, i32* @SCSP_INTERRUPT_TIMER_C, align 4
  %84 = call i32 @ScspUpdateTimer(i64 %81, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 3), i32 %82, i32 %83)
  br label %14

85:                                               ; preds = %14
  %86 = load i64, i64* @scsp_frame_accurate, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %200

88:                                               ; preds = %85
  %89 = load i64, i64* @scsp_sound_left, align 8
  %90 = load i64, i64* %4, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i64, i64* @SCSP_SOUND_BUFSIZE, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load i64, i64* @scsp_sound_left, align 8
  %96 = load i64, i64* %4, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i64, i64* @SCSP_SOUND_BUFSIZE, align 8
  %99 = sub nsw i64 %97, %98
  store i64 %99, i64* %10, align 8
  %100 = load i64, i64* %10, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @SCSPLOG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* @scsp_sound_left, align 8
  %105 = sub nsw i64 %104, %103
  store i64 %105, i64* @scsp_sound_left, align 8
  br label %106

106:                                              ; preds = %94, %88
  br label %107

107:                                              ; preds = %126, %106
  %108 = load i64, i64* %4, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %146

110:                                              ; preds = %107
  %111 = load i64, i64* %4, align 8
  store i64 %111, i64* %11, align 8
  %112 = load i64, i64* @scsp_sound_genpos, align 8
  %113 = load i64, i64* @SCSP_SOUND_BUFSIZE, align 8
  %114 = icmp sge i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store i64 0, i64* @scsp_sound_genpos, align 8
  br label %116

116:                                              ; preds = %115, %110
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* @SCSP_SOUND_BUFSIZE, align 8
  %119 = load i64, i64* @scsp_sound_genpos, align 8
  %120 = sub nsw i64 %118, %119
  %121 = icmp sgt i64 %117, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i64, i64* @SCSP_SOUND_BUFSIZE, align 8
  %124 = load i64, i64* @scsp_sound_genpos, align 8
  %125 = sub nsw i64 %123, %124
  store i64 %125, i64* %11, align 8
  br label %126

126:                                              ; preds = %122, %116
  %127 = load i64*, i64** @scsp_buffer_L, align 8
  %128 = load i64, i64* @scsp_sound_genpos, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  store i64* %129, i64** %8, align 8
  %130 = load i64*, i64** @scsp_buffer_R, align 8
  %131 = load i64, i64* @scsp_sound_genpos, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  store i64* %132, i64** %9, align 8
  %133 = load i64*, i64** %8, align 8
  %134 = load i64*, i64** %9, align 8
  %135 = load i64, i64* %11, align 8
  %136 = call i32 @ScspGenerateAudio(i64* %133, i64* %134, i64 %135)
  %137 = load i64, i64* %11, align 8
  %138 = load i64, i64* @scsp_sound_genpos, align 8
  %139 = add nsw i64 %138, %137
  store i64 %139, i64* @scsp_sound_genpos, align 8
  %140 = load i64, i64* %11, align 8
  %141 = load i64, i64* @scsp_sound_left, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* @scsp_sound_left, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* %4, align 8
  %145 = sub nsw i64 %144, %143
  store i64 %145, i64* %4, align 8
  br label %107

146:                                              ; preds = %107
  br label %147

147:                                              ; preds = %184, %146
  %148 = load i64, i64* @scsp_sound_left, align 8
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64 (...)*, i64 (...)** %152, align 8
  %154 = call i64 (...) %153()
  store i64 %154, i64* %5, align 8
  %155 = icmp sgt i64 %154, 0
  br label %156

156:                                              ; preds = %150, %147
  %157 = phi i1 [ false, %147 ], [ %155, %150 ]
  br i1 %157, label %158, label %199

158:                                              ; preds = %156
  %159 = load i64, i64* @scsp_sound_genpos, align 8
  %160 = load i64, i64* @scsp_sound_left, align 8
  %161 = sub i64 %159, %160
  store i64 %161, i64* %12, align 8
  %162 = load i64, i64* %12, align 8
  %163 = icmp ult i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i64, i64* @SCSP_SOUND_BUFSIZE, align 8
  %166 = load i64, i64* %12, align 8
  %167 = add i64 %166, %165
  store i64 %167, i64* %12, align 8
  br label %168

168:                                              ; preds = %164, %158
  %169 = load i64, i64* %5, align 8
  %170 = load i64, i64* @scsp_sound_left, align 8
  %171 = icmp sgt i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load i64, i64* @scsp_sound_left, align 8
  store i64 %173, i64* %5, align 8
  br label %174

174:                                              ; preds = %172, %168
  %175 = load i64, i64* %5, align 8
  %176 = load i64, i64* @SCSP_SOUND_BUFSIZE, align 8
  %177 = load i64, i64* %12, align 8
  %178 = sub i64 %176, %177
  %179 = icmp ugt i64 %175, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i64, i64* @SCSP_SOUND_BUFSIZE, align 8
  %182 = load i64, i64* %12, align 8
  %183 = sub i64 %181, %182
  store i64 %183, i64* %5, align 8
  br label %184

184:                                              ; preds = %180, %174
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i32 (i64*, i64*, i64)*, i32 (i64*, i64*, i64)** %186, align 8
  %188 = load i64*, i64** @scsp_buffer_L, align 8
  %189 = load i64, i64* %12, align 8
  %190 = getelementptr inbounds i64, i64* %188, i64 %189
  %191 = load i64*, i64** @scsp_buffer_R, align 8
  %192 = load i64, i64* %12, align 8
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  %194 = load i64, i64* %5, align 8
  %195 = call i32 %187(i64* %190, i64* %193, i64 %194)
  %196 = load i64, i64* %5, align 8
  %197 = load i64, i64* @scsp_sound_left, align 8
  %198 = sub nsw i64 %197, %196
  store i64 %198, i64* @scsp_sound_left, align 8
  br label %147

199:                                              ; preds = %156
  br label %225

200:                                              ; preds = %85
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i64 (...)*, i64 (...)** %202, align 8
  %204 = call i64 (...) %203()
  store i64 %204, i64* %5, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %224

206:                                              ; preds = %200
  %207 = load i64, i64* %5, align 8
  %208 = load i64, i64* @SCSP_SOUND_BUFSIZE, align 8
  %209 = icmp sgt i64 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i64, i64* @SCSP_SOUND_BUFSIZE, align 8
  store i64 %211, i64* %5, align 8
  br label %212

212:                                              ; preds = %210, %206
  %213 = load i64*, i64** @scsp_buffer_L, align 8
  %214 = load i64*, i64** @scsp_buffer_R, align 8
  %215 = load i64, i64* %5, align 8
  %216 = call i32 @ScspGenerateAudio(i64* %213, i64* %214, i64 %215)
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32 (i64*, i64*, i64)*, i32 (i64*, i64*, i64)** %218, align 8
  %220 = load i64*, i64** @scsp_buffer_L, align 8
  %221 = load i64*, i64** @scsp_buffer_R, align 8
  %222 = load i64, i64* %5, align 8
  %223 = call i32 %219(i64* %220, i64* %221, i64 %222)
  br label %224

224:                                              ; preds = %212, %200
  br label %225

225:                                              ; preds = %224, %199
  %226 = load i64, i64* %2, align 8
  %227 = load i32, i32* @scsp_clock, align 4
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %228, %226
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* @scsp_clock, align 4
  ret void
}

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @ScspTimerCyclesLeft(i32, i32) #1

declare dso_local i32 @ScspRunM68K(i64) #1

declare dso_local i32 @ScspUpdateTimer(i64, i32*, i32, i32) #1

declare dso_local i32 @SCSPLOG(i8*, i32) #1

declare dso_local i32 @ScspGenerateAudio(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
