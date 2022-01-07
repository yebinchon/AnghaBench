; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_dispmenu_loop_options.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_dispmenu_loop_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { float, float, float, i32 }

@dispmenu_loop_options.menu_sel = internal global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@opt3_entries = common dso_local global i32 0, align 4
@OPT3_ENTRY_COUNT = common dso_local global i32 0, align 4
@PBTN_UP = common dso_local global i64 0, align 8
@PBTN_DOWN = common dso_local global i64 0, align 8
@PBTN_LEFT = common dso_local global i64 0, align 8
@PBTN_RIGHT = common dso_local global i64 0, align 8
@PBTN_X = common dso_local global i64 0, align 8
@PBTN_CIRCLE = common dso_local global i64 0, align 8
@currentConfig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dispmenu_loop_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispmenu_loop_options() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 12
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 1
  %11 = xor i32 %10, 1
  store i32 %11, i32* %2, align 4
  store i64 0, i64* %3, align 8
  %12 = load i32, i32* @opt3_entries, align 4
  %13 = load i32, i32* @OPT3_ENTRY_COUNT, align 4
  %14 = call i32 @me_count_enabled(i32 %12, i32 %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %207, %0
  %17 = load i32, i32* @dispmenu_loop_options.menu_sel, align 4
  %18 = call i32 @draw_dispmenu_options(i32 %17)
  %19 = load i64, i64* @PBTN_UP, align 8
  %20 = load i64, i64* @PBTN_DOWN, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @PBTN_LEFT, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @PBTN_RIGHT, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* @PBTN_X, align 8
  %27 = or i64 %25, %26
  %28 = load i64, i64* @PBTN_CIRCLE, align 8
  %29 = or i64 %27, %28
  %30 = call i64 @in_menu_wait(i64 %29, i32 0)
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @PBTN_UP, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %16
  %36 = load i32, i32* @dispmenu_loop_options.menu_sel, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* @dispmenu_loop_options.menu_sel, align 4
  %38 = load i32, i32* @dispmenu_loop_options.menu_sel, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %1, align 4
  store i32 %41, i32* @dispmenu_loop_options.menu_sel, align 4
  br label %42

42:                                               ; preds = %40, %35
  br label %43

43:                                               ; preds = %42, %16
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @PBTN_DOWN, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32, i32* @dispmenu_loop_options.menu_sel, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @dispmenu_loop_options.menu_sel, align 4
  %51 = load i32, i32* @dispmenu_loop_options.menu_sel, align 4
  %52 = load i32, i32* %1, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* @dispmenu_loop_options.menu_sel, align 4
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i32, i32* @opt3_entries, align 4
  %58 = load i32, i32* @OPT3_ENTRY_COUNT, align 4
  %59 = load i32, i32* @dispmenu_loop_options.menu_sel, align 4
  %60 = call i32 @me_index2id(i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 133
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* %2, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @menu_opt3_preview(i32 %67)
  br label %69

69:                                               ; preds = %66, %63, %56
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 134
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %2, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  store i32 1, i32* %2, align 4
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @menu_opt3_preview(i32 %76)
  br label %78

78:                                               ; preds = %75, %72, %69
  %79 = load i64, i64* %3, align 8
  %80 = load i64, i64* @PBTN_LEFT, align 8
  %81 = load i64, i64* @PBTN_RIGHT, align 8
  %82 = or i64 %80, %81
  %83 = and i64 %79, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %175

85:                                               ; preds = %78
  store float* null, float** %5, align 8
  %86 = load i32, i32* @opt3_entries, align 4
  %87 = load i32, i32* @OPT3_ENTRY_COUNT, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i64, i64* %3, align 8
  %90 = load i64, i64* @PBTN_RIGHT, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 0
  %95 = call i32 @me_process(i32 %86, i32 %87, i32 %88, i32 %94)
  %96 = load i32, i32* %4, align 4
  switch i32 %96, label %139 [
    i32 129, label %97
    i32 133, label %98
    i32 134, label %99
    i32 136, label %100
    i32 135, label %100
    i32 138, label %100
    i32 128, label %103
  ]

97:                                               ; preds = %85
  store float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), float** %5, align 8
  br label %140

98:                                               ; preds = %85
  store float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 1), float** %5, align 8
  store i32 0, i32* %2, align 4
  br label %140

99:                                               ; preds = %85
  store float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 2), float** %5, align 8
  store i32 1, i32* %2, align 4
  br label %140

100:                                              ; preds = %85, %85, %85
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @menu_opt3_preview(i32 %101)
  br label %140

103:                                              ; preds = %85
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 3), align 4
  %105 = ashr i32 %104, 13
  %106 = and i32 %105, 1
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 3), align 4
  %108 = ashr i32 %107, 15
  %109 = and i32 %108, 2
  %110 = or i32 %106, %109
  store i32 %110, i32* %6, align 4
  %111 = load i64, i64* %3, align 8
  %112 = load i64, i64* @PBTN_LEFT, align 8
  %113 = and i64 %111, %112
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %103
  %116 = load i32, i32* %6, align 4
  %117 = ashr i32 %116, 1
  br label %122

118:                                              ; preds = %103
  %119 = load i32, i32* %6, align 4
  %120 = shl i32 %119, 1
  %121 = or i32 %120, 1
  br label %122

122:                                              ; preds = %118, %115
  %123 = phi i32 [ %117, %115 ], [ %121, %118 ]
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp sgt i32 %124, 3
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 3, i32* %6, align 4
  br label %127

127:                                              ; preds = %126, %122
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 3), align 4
  %129 = and i32 %128, -73729
  store i32 %129, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 3), align 4
  %130 = load i32, i32* %6, align 4
  %131 = and i32 %130, 2
  %132 = shl i32 %131, 15
  %133 = load i32, i32* %6, align 4
  %134 = and i32 %133, 1
  %135 = shl i32 %134, 13
  %136 = or i32 %132, %135
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 3), align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 3), align 4
  br label %140

139:                                              ; preds = %85
  br label %140

140:                                              ; preds = %139, %127, %100, %99, %98, %97
  %141 = load float*, float** %5, align 8
  %142 = icmp ne float* %141, null
  br i1 %142, label %143, label %174

143:                                              ; preds = %140
  br label %144

144:                                              ; preds = %168, %143
  %145 = call i64 @psp_pad_read(i32 0)
  store i64 %145, i64* %3, align 8
  %146 = load i64, i64* @PBTN_LEFT, align 8
  %147 = load i64, i64* @PBTN_RIGHT, align 8
  %148 = or i64 %146, %147
  %149 = and i64 %145, %148
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %173

151:                                              ; preds = %144
  %152 = load i64, i64* %3, align 8
  %153 = load i64, i64* @PBTN_LEFT, align 8
  %154 = and i64 %152, %153
  %155 = icmp ne i64 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, double -1.000000e-02, double 1.000000e-02
  %158 = load float*, float** %5, align 8
  %159 = load float, float* %158, align 4
  %160 = fpext float %159 to double
  %161 = fadd double %160, %157
  %162 = fptrunc double %161 to float
  store float %162, float* %158, align 4
  %163 = load float*, float** %5, align 8
  %164 = load float, float* %163, align 4
  %165 = fcmp ole float %164, 0.000000e+00
  br i1 %165, label %166, label %168

166:                                              ; preds = %151
  %167 = load float*, float** %5, align 8
  store float 0x3F847AE140000000, float* %167, align 4
  br label %168

168:                                              ; preds = %166, %151
  %169 = load i32, i32* %2, align 4
  %170 = call i32 @menu_opt3_preview(i32 %169)
  %171 = load i32, i32* @dispmenu_loop_options.menu_sel, align 4
  %172 = call i32 @draw_dispmenu_options(i32 %171)
  br label %144

173:                                              ; preds = %144
  br label %174

174:                                              ; preds = %173, %140
  br label %175

175:                                              ; preds = %174, %78
  %176 = load i64, i64* %3, align 8
  %177 = load i64, i64* @PBTN_CIRCLE, align 8
  %178 = and i64 %176, %177
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %201

180:                                              ; preds = %175
  %181 = load i32, i32* @opt3_entries, align 4
  %182 = load i32, i32* @OPT3_ENTRY_COUNT, align 4
  %183 = load i32, i32* %4, align 4
  %184 = call i32 @me_process(i32 %181, i32 %182, i32 %183, i32 1)
  %185 = load i32, i32* %4, align 4
  switch i32 %185, label %199 [
    i32 137, label %186
    i32 131, label %187
    i32 130, label %190
    i32 132, label %193
    i32 136, label %196
  ]

186:                                              ; preds = %180
  br label %208

187:                                              ; preds = %180
  store float 1.000000e+00, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 2), align 4
  store float 1.000000e+00, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 1), align 4
  store float 1.000000e+00, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 4
  %188 = load i32, i32* %2, align 4
  %189 = call i32 @menu_opt3_preview(i32 %188)
  br label %200

190:                                              ; preds = %180
  store float 0x3FF3333340000000, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 4
  store float 1.000000e+00, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 1), align 4
  store float 1.250000e+00, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 2), align 4
  %191 = load i32, i32* %2, align 4
  %192 = call i32 @menu_opt3_preview(i32 %191)
  br label %200

193:                                              ; preds = %180
  store float 0x3FF3333340000000, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 4
  store float 1.250000e+00, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 1), align 4
  store float 0x3FF8F5C280000000, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 2), align 4
  %194 = load i32, i32* %2, align 4
  %195 = call i32 @menu_opt3_preview(i32 %194)
  br label %200

196:                                              ; preds = %180
  %197 = load i32, i32* %2, align 4
  %198 = call i32 @menu_opt3_preview(i32 %197)
  br label %200

199:                                              ; preds = %180
  br label %200

200:                                              ; preds = %199, %196, %193, %190, %187
  br label %201

201:                                              ; preds = %200, %175
  %202 = load i64, i64* %3, align 8
  %203 = load i64, i64* @PBTN_X, align 8
  %204 = and i64 %202, %203
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %208

207:                                              ; preds = %201
  br label %16

208:                                              ; preds = %206, %186
  ret void
}

declare dso_local i32 @me_count_enabled(i32, i32) #1

declare dso_local i32 @draw_dispmenu_options(i32) #1

declare dso_local i64 @in_menu_wait(i64, i32) #1

declare dso_local i32 @me_index2id(i32, i32, i32) #1

declare dso_local i32 @menu_opt3_preview(i32) #1

declare dso_local i32 @me_process(i32, i32, i32, i32) #1

declare dso_local i64 @psp_pad_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
