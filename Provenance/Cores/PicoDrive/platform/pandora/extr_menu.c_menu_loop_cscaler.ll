; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/pandora/extr_menu.c_menu_loop_cscaler.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/pandora/extr_menu.c_menu_loop_cscaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SCALE_CUSTOM = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@g_layer_cx = common dso_local global i32 0, align 4
@g_layer_cy = common dso_local global i32 0, align 4
@g_layer_cw = common dso_local global i32 0, align 4
@g_layer_ch = common dso_local global i32 0, align 4
@g_menuscreen_ptr = common dso_local global i32 0, align 4
@g_menuscreen_w = common dso_local global i32 0, align 4
@g_menuscreen_h = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%dx%d | d-pad to resize, R+d-pad to move\00", align 1
@PBTN_UP = common dso_local global i32 0, align 4
@PBTN_DOWN = common dso_local global i32 0, align 4
@PBTN_LEFT = common dso_local global i32 0, align 4
@PBTN_RIGHT = common dso_local global i32 0, align 4
@PBTN_R = common dso_local global i32 0, align 4
@PBTN_MOK = common dso_local global i32 0, align 4
@PBTN_MBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @menu_loop_cscaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_loop_cscaler(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SCALE_CUSTOM, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %7 = load i32, i32* @g_layer_cx, align 4
  %8 = load i32, i32* @g_layer_cy, align 4
  %9 = load i32, i32* @g_layer_cw, align 4
  %10 = load i32, i32* @g_layer_ch, align 4
  %11 = call i32 @pnd_setup_layer(i32 1, i32 %7, i32 %8, i32 %9, i32 %10)
  %12 = call i32 (...) @pnd_restore_layer_data()
  br label %13

13:                                               ; preds = %173, %2
  %14 = call i32 @menu_draw_begin(i32 0, i32 1)
  %15 = load i32, i32* @g_menuscreen_ptr, align 4
  %16 = load i32, i32* @g_menuscreen_w, align 4
  %17 = load i32, i32* @g_menuscreen_h, align 4
  %18 = mul nsw i32 %16, %17
  %19 = mul nsw i32 %18, 2
  %20 = call i32 @memset(i32 %15, i32 0, i32 %19)
  %21 = load i32, i32* @g_layer_cw, align 4
  %22 = load i32, i32* @g_layer_ch, align 4
  %23 = call i32 @text_out16(i32 2, i32 462, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = call i32 (...) @menu_draw_end()
  %25 = load i32, i32* @PBTN_UP, align 4
  %26 = load i32, i32* @PBTN_DOWN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PBTN_LEFT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PBTN_RIGHT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PBTN_R, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @PBTN_MOK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @PBTN_MBACK, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @in_menu_wait(i32 %37, i32* null, i32 40)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @PBTN_UP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %13
  %44 = load i32, i32* @g_layer_cy, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* @g_layer_cy, align 4
  br label %46

46:                                               ; preds = %43, %13
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @PBTN_DOWN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @g_layer_cy, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @g_layer_cy, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @PBTN_LEFT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @g_layer_cx, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* @g_layer_cx, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @PBTN_RIGHT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @g_layer_cx, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @g_layer_cx, align 4
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @PBTN_R, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %108, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @PBTN_UP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @g_layer_ch, align 4
  %82 = add nsw i32 %81, 2
  store i32 %82, i32* @g_layer_ch, align 4
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @PBTN_DOWN, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @g_layer_ch, align 4
  %90 = sub nsw i32 %89, 2
  store i32 %90, i32* @g_layer_ch, align 4
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @PBTN_LEFT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @g_layer_cw, align 4
  %98 = add nsw i32 %97, 2
  store i32 %98, i32* @g_layer_cw, align 4
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @PBTN_RIGHT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @g_layer_cw, align 4
  %106 = sub nsw i32 %105, 2
  store i32 %106, i32* @g_layer_cw, align 4
  br label %107

107:                                              ; preds = %104, %99
  br label %108

108:                                              ; preds = %107, %70
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @PBTN_MOK, align 4
  %111 = load i32, i32* @PBTN_MBACK, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %174

116:                                              ; preds = %108
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @PBTN_UP, align 4
  %119 = load i32, i32* @PBTN_DOWN, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @PBTN_LEFT, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @PBTN_RIGHT, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %117, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %173

127:                                              ; preds = %116
  %128 = load i32, i32* @g_layer_cx, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 0, i32* @g_layer_cx, align 4
  br label %131

131:                                              ; preds = %130, %127
  %132 = load i32, i32* @g_layer_cx, align 4
  %133 = icmp sgt i32 %132, 640
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 640, i32* @g_layer_cx, align 4
  br label %135

135:                                              ; preds = %134, %131
  %136 = load i32, i32* @g_layer_cy, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 0, i32* @g_layer_cy, align 4
  br label %139

139:                                              ; preds = %138, %135
  %140 = load i32, i32* @g_layer_cy, align 4
  %141 = icmp sgt i32 %140, 420
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 420, i32* @g_layer_cy, align 4
  br label %143

143:                                              ; preds = %142, %139
  %144 = load i32, i32* @g_layer_cw, align 4
  %145 = icmp slt i32 %144, 160
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 160, i32* @g_layer_cw, align 4
  br label %147

147:                                              ; preds = %146, %143
  %148 = load i32, i32* @g_layer_ch, align 4
  %149 = icmp slt i32 %148, 60
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 60, i32* @g_layer_ch, align 4
  br label %151

151:                                              ; preds = %150, %147
  %152 = load i32, i32* @g_layer_cx, align 4
  %153 = load i32, i32* @g_layer_cw, align 4
  %154 = add nsw i32 %152, %153
  %155 = icmp sgt i32 %154, 800
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* @g_layer_cx, align 4
  %158 = sub nsw i32 800, %157
  store i32 %158, i32* @g_layer_cw, align 4
  br label %159

159:                                              ; preds = %156, %151
  %160 = load i32, i32* @g_layer_cy, align 4
  %161 = load i32, i32* @g_layer_ch, align 4
  %162 = add nsw i32 %160, %161
  %163 = icmp sgt i32 %162, 480
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* @g_layer_cy, align 4
  %166 = sub nsw i32 480, %165
  store i32 %166, i32* @g_layer_ch, align 4
  br label %167

167:                                              ; preds = %164, %159
  %168 = load i32, i32* @g_layer_cx, align 4
  %169 = load i32, i32* @g_layer_cy, align 4
  %170 = load i32, i32* @g_layer_cw, align 4
  %171 = load i32, i32* @g_layer_ch, align 4
  %172 = call i32 @pnd_setup_layer(i32 1, i32 %168, i32 %169, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %167, %116
  br label %13

174:                                              ; preds = %115
  %175 = load i32, i32* @g_layer_cx, align 4
  %176 = load i32, i32* @g_layer_cy, align 4
  %177 = load i32, i32* @g_layer_cw, align 4
  %178 = load i32, i32* @g_layer_ch, align 4
  %179 = call i32 @pnd_setup_layer(i32 0, i32 %175, i32 %176, i32 %177, i32 %178)
  ret i32 0
}

declare dso_local i32 @pnd_setup_layer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pnd_restore_layer_data(...) #1

declare dso_local i32 @menu_draw_begin(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @text_out16(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @menu_draw_end(...) #1

declare dso_local i32 @in_menu_wait(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
