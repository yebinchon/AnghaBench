; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_ym2612_write_local.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_ym2612_write_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@ym2612 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PsndOut = common dso_local global i64 0, align 8
@PsndDacLine = common dso_local global i32 0, align 4
@TIMER_A_TICK_ZCYCLES = common dso_local global i32 0, align 4
@timer_a_step = common dso_local global i32 0, align 4
@timer_a_next_oflow = common dso_local global i32 0, align 4
@EL_YMTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"timer a set to %i, %i\00", align 1
@TIMER_B_TICK_ZCYCLES = common dso_local global i32 0, align 4
@timer_b_step = common dso_local global i32 0, align 4
@timer_b_next_oflow = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"timer b set to %i, %i\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"st mode %02x\00", align 1
@POPT_EXT_FM = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ym2612_write_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ym2612_write_local(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 3
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %42

20:                                               ; preds = %3
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 0), align 8
  %22 = icmp eq i32 %21, 42
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @get_scanline(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 128
  %28 = shl i32 %27, 6
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %29 = load i64, i64* @PsndOut, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 1), align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @PsndDacLine, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @PsndDoDAC(i32 %39)
  br label %41

41:                                               ; preds = %38, %34, %31, %23
  store i32 0, i32* %4, align 4
  br label %211

42:                                               ; preds = %20, %3
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %207 [
    i32 0, label %44
    i32 1, label %46
    i32 2, label %193
    i32 3, label %195
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 2), align 8
  store i32 0, i32* %4, align 4
  br label %211

46:                                               ; preds = %42
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 2), align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %211

50:                                               ; preds = %46
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 0), align 8
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 3), align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  switch i32 %57, label %192 [
    i32 36, label %58
    i32 37, label %58
    i32 38, label %108
    i32 39, label %142
    i32 43, label %181
  ]

58:                                               ; preds = %50, %50
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 36
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 1), align 4
  %63 = and i32 %62, 3
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 %64, 2
  %66 = or i32 %63, %65
  br label %73

67:                                               ; preds = %58
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 1), align 4
  %69 = and i32 %68, 1020
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 3
  %72 = or i32 %69, %71
  br label %73

73:                                               ; preds = %67, %61
  %74 = phi i32 [ %66, %61 ], [ %72, %67 ]
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 1), align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %107

78:                                               ; preds = %73
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 1), align 4
  %80 = load i32, i32* @TIMER_A_TICK_ZCYCLES, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 1024, %81
  %83 = mul nsw i32 %80, %82
  store i32 %83, i32* @timer_a_step, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 2), align 8
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %78
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i32 (...) @z80_cyclesDone()
  br label %94

92:                                               ; preds = %87
  %93 = call i32 (...) @z80_cycles_from_68k()
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = shl i32 %96, 8
  %98 = load i32, i32* @timer_a_step, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* @timer_a_next_oflow, align 4
  br label %100

100:                                              ; preds = %94, %78
  %101 = load i32, i32* @EL_YMTIMER, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 1024, %102
  %104 = load i32, i32* @timer_a_next_oflow, align 4
  %105 = ashr i32 %104, 8
  %106 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %105)
  br label %107

107:                                              ; preds = %100, %73
  store i32 0, i32* %4, align 4
  br label %211

108:                                              ; preds = %50
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 3), align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %141

112:                                              ; preds = %108
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 3), align 4
  %114 = load i32, i32* @TIMER_B_TICK_ZCYCLES, align 4
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 256, %115
  %117 = mul nsw i32 %114, %116
  store i32 %117, i32* @timer_b_step, align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 2), align 8
  %119 = and i32 %118, 2
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %112
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = call i32 (...) @z80_cyclesDone()
  br label %128

126:                                              ; preds = %121
  %127 = call i32 (...) @z80_cycles_from_68k()
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = shl i32 %130, 8
  %132 = load i32, i32* @timer_b_step, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* @timer_b_next_oflow, align 4
  br label %134

134:                                              ; preds = %128, %112
  %135 = load i32, i32* @EL_YMTIMER, align 4
  %136 = load i32, i32* %6, align 4
  %137 = sub nsw i32 256, %136
  %138 = load i32, i32* @timer_b_next_oflow, align 4
  %139 = ashr i32 %138, 8
  %140 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %137, i32 %139)
  br label %141

141:                                              ; preds = %134, %108
  store i32 0, i32* %4, align 4
  br label %211

142:                                              ; preds = %50
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 2), align 8
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = call i32 (...) @z80_cyclesDone()
  br label %150

148:                                              ; preds = %142
  %149 = call i32 (...) @z80_cycles_from_68k()
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 2), align 8
  %153 = load i32, i32* @EL_YMTIMER, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %153, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @ym2612_sync_timers(i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %6, align 4
  %161 = and i32 %160, 16
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %150
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 4), align 8
  %165 = and i32 %164, -2
  store i32 %165, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 4), align 8
  br label %166

166:                                              ; preds = %163, %150
  %167 = load i32, i32* %6, align 4
  %168 = and i32 %167, 32
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 4), align 8
  %172 = and i32 %171, -3
  store i32 %172, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 4), align 8
  br label %173

173:                                              ; preds = %170, %166
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %13, align 4
  %176 = xor i32 %174, %175
  %177 = and i32 %176, 192
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  store i32 1, i32* %4, align 4
  br label %211

180:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %211

181:                                              ; preds = %50
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @get_scanline(i32 %182)
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %6, align 4
  %185 = and i32 %184, 128
  store i32 %185, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 1), align 4
  %186 = load i32, i32* %6, align 4
  %187 = and i32 %186, 128
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %181
  %190 = load i32, i32* %15, align 4
  store i32 %190, i32* @PsndDacLine, align 4
  br label %191

191:                                              ; preds = %189, %181
  store i32 0, i32* %4, align 4
  br label %211

192:                                              ; preds = %50
  br label %207

193:                                              ; preds = %42
  %194 = load i32, i32* %6, align 4
  store i32 %194, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 2), align 8
  store i32 0, i32* %4, align 4
  br label %211

195:                                              ; preds = %42
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 2), align 8
  %197 = icmp ne i32 %196, 1
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  store i32 0, i32* %4, align 4
  br label %211

199:                                              ; preds = %195
  %200 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 0), align 8
  %201 = or i32 %200, 256
  store i32 %201, i32* %8, align 4
  %202 = load i32, i32* %6, align 4
  %203 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 3), align 8
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %202, i32* %206, align 4
  br label %207

207:                                              ; preds = %42, %199, %192
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @YM2612Write_(i32 %208, i32 %209)
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %207, %198, %193, %191, %180, %179, %141, %107, %49, %44, %41
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i32 @get_scanline(i32) #1

declare dso_local i32 @PsndDoDAC(i32) #1

declare dso_local i32 @z80_cyclesDone(...) #1

declare dso_local i32 @z80_cycles_from_68k(...) #1

declare dso_local i32 @elprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @ym2612_sync_timers(i32, i32, i32) #1

declare dso_local i32 @YM2612Write_(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
