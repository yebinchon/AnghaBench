; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_set_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_set_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32, i32, i32)* }

@.str = private unnamed_addr constant [24 x i8] c"scsp : reg %.2X = %.4X\0A\00", align 1
@scsp_ccr = common dso_local global i32* null, align 8
@scsp = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@M68K = common dso_local global %struct.TYPE_4__* null, align 8
@SoundRam = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @scsp_set_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsp_set_w(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 1048
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 1050
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 1058
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 62
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @SCSPLOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %12, %9, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32*, i32** @scsp_ccr, align 8
  %23 = load i32, i32* %3, align 4
  %24 = xor i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32 %21, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 62
  switch i32 %28, label %210 [
    i32 0, label %29
    i32 2, label %65
    i32 6, label %72
    i32 8, label %76
    i32 18, label %81
    i32 20, label %87
    i32 22, label %96
    i32 24, label %107
    i32 26, label %114
    i32 28, label %121
    i32 30, label %128
    i32 32, label %154
    i32 34, label %161
    i32 36, label %166
    i32 38, label %168
    i32 40, label %170
    i32 42, label %172
    i32 44, label %198
    i32 46, label %205
  ]

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %30, 9
  %32 = and i32 %31, 1
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 0), align 4
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 15
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 1), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 0), align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @M68K, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %39, align 8
  %41 = load i32, i32* @SoundRam, align 4
  %42 = call i32 %40(i32 0, i32 524288, i32 %41)
  br label %64

43:                                               ; preds = %29
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @M68K, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %45, align 8
  %47 = load i32, i32* @SoundRam, align 4
  %48 = call i32 %46(i32 0, i32 262144, i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @M68K, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %50, align 8
  %52 = load i32, i32* @SoundRam, align 4
  %53 = call i32 %51(i32 262144, i32 524288, i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @M68K, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %55, align 8
  %57 = load i32, i32* @SoundRam, align 4
  %58 = call i32 %56(i32 524288, i32 786432, i32 %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @M68K, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %60, align 8
  %62 = load i32, i32* @SoundRam, align 4
  %63 = call i32 %61(i32 786432, i32 1048576, i32 %62)
  br label %64

64:                                               ; preds = %43, %37
  br label %210

65:                                               ; preds = %20
  %66 = load i32, i32* %4, align 4
  %67 = ashr i32 %66, 7
  %68 = and i32 %67, 3
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 2), align 4
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, 127
  %71 = mul nsw i32 %70, 8192
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 3), align 4
  br label %210

72:                                               ; preds = %20
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, 255
  %75 = call i32 @scsp_midi_out_send(i32 %74)
  br label %210

76:                                               ; preds = %20
  %77 = load i32, i32* %4, align 4
  %78 = ashr i32 %77, 11
  %79 = and i32 %78, 31
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 4), align 4
  %80 = call i32 (...) @scsp_update_monitor()
  br label %210

81:                                               ; preds = %20
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 5), align 4
  %83 = and i32 %82, 458752
  %84 = load i32, i32* %4, align 4
  %85 = and i32 %84, 65534
  %86 = add nsw i32 %83, %85
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 5), align 4
  br label %210

87:                                               ; preds = %20
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 5), align 4
  %89 = and i32 %88, 65534
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, 28672
  %92 = shl i32 %91, 4
  %93 = add nsw i32 %89, %92
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 5), align 4
  %94 = load i32, i32* %4, align 4
  %95 = and i32 %94, 4094
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 6), align 4
  br label %210

96:                                               ; preds = %20
  %97 = load i32, i32* %4, align 4
  %98 = and i32 %97, 4094
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 7), align 4
  %99 = load i32, i32* %4, align 4
  %100 = ashr i32 %99, 8
  %101 = and i32 %100, 240
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 8), align 4
  %102 = and i32 %101, 16
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = call i32 (...) @scsp_dma()
  br label %106

106:                                              ; preds = %104, %96
  br label %210

107:                                              ; preds = %20
  %108 = load i32, i32* %4, align 4
  %109 = ashr i32 %108, 8
  %110 = and i32 %109, 7
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 9), align 4
  %111 = load i32, i32* %4, align 4
  %112 = and i32 %111, 255
  %113 = shl i32 %112, 8
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 10), align 4
  br label %210

114:                                              ; preds = %20
  %115 = load i32, i32* %4, align 4
  %116 = ashr i32 %115, 8
  %117 = and i32 %116, 7
  store i32 %117, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 11), align 4
  %118 = load i32, i32* %4, align 4
  %119 = and i32 %118, 255
  %120 = shl i32 %119, 8
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 12), align 4
  br label %210

121:                                              ; preds = %20
  %122 = load i32, i32* %4, align 4
  %123 = ashr i32 %122, 8
  %124 = and i32 %123, 7
  store i32 %124, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 13), align 4
  %125 = load i32, i32* %4, align 4
  %126 = and i32 %125, 255
  %127 = shl i32 %126, 8
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 14), align 4
  br label %210

128:                                              ; preds = %20
  %129 = load i32, i32* %4, align 4
  store i32 %129, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 15), align 4
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %150, %128
  %131 = load i32, i32* %5, align 4
  %132 = icmp slt i32 %131, 11
  br i1 %132, label %133, label %153

133:                                              ; preds = %130
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 15), align 4
  %135 = load i32, i32* %5, align 4
  %136 = shl i32 1, %135
  %137 = and i32 %134, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %133
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 16), align 4
  %141 = load i32, i32* %5, align 4
  %142 = shl i32 1, %141
  %143 = and i32 %140, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load i32, i32* %5, align 4
  %147 = shl i32 1, %146
  %148 = call i32 @scsp_trigger_sound_interrupt(i32 %147)
  br label %149

149:                                              ; preds = %145, %139, %133
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %130

153:                                              ; preds = %130
  br label %210

154:                                              ; preds = %20
  %155 = load i32, i32* %4, align 4
  %156 = and i32 %155, 32
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = call i32 @scsp_sound_interrupt(i32 32)
  br label %160

160:                                              ; preds = %158, %154
  br label %210

161:                                              ; preds = %20
  %162 = load i32, i32* %4, align 4
  %163 = xor i32 %162, -1
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 16), align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 16), align 4
  br label %210

166:                                              ; preds = %20
  %167 = load i32, i32* %4, align 4
  store i32 %167, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 17), align 4
  br label %210

168:                                              ; preds = %20
  %169 = load i32, i32* %4, align 4
  store i32 %169, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 18), align 4
  br label %210

170:                                              ; preds = %20
  %171 = load i32, i32* %4, align 4
  store i32 %171, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 19), align 4
  br label %210

172:                                              ; preds = %20
  %173 = load i32, i32* %4, align 4
  store i32 %173, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 20), align 4
  store i32 0, i32* %6, align 4
  br label %174

174:                                              ; preds = %194, %172
  %175 = load i32, i32* %6, align 4
  %176 = icmp slt i32 %175, 11
  br i1 %176, label %177, label %197

177:                                              ; preds = %174
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 20), align 4
  %179 = load i32, i32* %6, align 4
  %180 = shl i32 1, %179
  %181 = and i32 %178, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %177
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 21), align 4
  %185 = load i32, i32* %6, align 4
  %186 = shl i32 1, %185
  %187 = and i32 %184, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = load i32, i32* %6, align 4
  %191 = shl i32 1, %190
  %192 = call i32 @scsp_trigger_main_interrupt(i32 %191)
  br label %193

193:                                              ; preds = %189, %183, %177
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %6, align 4
  br label %174

197:                                              ; preds = %174
  br label %210

198:                                              ; preds = %20
  %199 = load i32, i32* %4, align 4
  %200 = and i32 %199, 32
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = call i32 @scsp_main_interrupt(i32 32)
  br label %204

204:                                              ; preds = %202, %198
  br label %210

205:                                              ; preds = %20
  %206 = load i32, i32* %4, align 4
  %207 = xor i32 %206, -1
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 21), align 4
  %209 = and i32 %208, %207
  store i32 %209, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 21), align 4
  br label %210

210:                                              ; preds = %64, %65, %72, %76, %81, %87, %106, %107, %114, %121, %153, %160, %161, %166, %168, %170, %197, %204, %205, %20
  ret void
}

declare dso_local i32 @SCSPLOG(i8*, i32, i32) #1

declare dso_local i32 @scsp_midi_out_send(i32) #1

declare dso_local i32 @scsp_update_monitor(...) #1

declare dso_local i32 @scsp_dma(...) #1

declare dso_local i32 @scsp_trigger_sound_interrupt(i32) #1

declare dso_local i32 @scsp_sound_interrupt(i32) #1

declare dso_local i32 @scsp_trigger_main_interrupt(i32) #1

declare dso_local i32 @scsp_main_interrupt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
