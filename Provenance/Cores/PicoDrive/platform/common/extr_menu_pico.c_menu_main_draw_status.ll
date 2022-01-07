; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_menu_main_draw_status.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_menu_main_draw_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tm = type { i32 }

@menu_main_draw_status.last_bat_read = internal global i32 0, align 4
@menu_main_draw_status.last_bat_val = internal global i32 -1, align 4
@g_screen_ptr = common dso_local global i16* null, align 8
@me_mfont_h = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EOPT_SHOW_RTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@g_screen_width = common dso_local global i32 0, align 4
@me_mfont_w = common dso_local global i32 0, align 4
@menu_text_color = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @menu_main_draw_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_main_draw_status() #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [16 x i8], align 16
  %11 = load i16*, i16** @g_screen_ptr, align 8
  store i16* %11, i16** %1, align 8
  %12 = load i32, i32* @me_mfont_h, align 4
  %13 = mul nsw i32 %12, 2
  %14 = sdiv i32 %13, 3
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %16 = load i32, i32* @EOPT_SHOW_RTC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %0
  br label %184

20:                                               ; preds = %0
  %21 = call i32 @time(i32* null)
  store i32 %21, i32* %9, align 4
  %22 = call %struct.tm* @gmtime(i32* %9)
  store %struct.tm* %22, %struct.tm** %8, align 8
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %24 = load %struct.tm*, %struct.tm** %8, align 8
  %25 = call i32 @strftime(i8* %23, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.tm* %24)
  %26 = load i32, i32* @g_screen_width, align 4
  %27 = load i32, i32* @me_mfont_w, align 4
  %28 = mul nsw i32 %27, 6
  %29 = sub nsw i32 %26, %28
  %30 = load i32, i32* @me_mfont_h, align 4
  %31 = add nsw i32 %30, 2
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %33 = call i32 @text_out16(i32 %29, i32 %31, i8* %32)
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @menu_main_draw_status.last_bat_read, align 4
  %36 = sub nsw i32 %34, %35
  %37 = icmp sgt i32 %36, 10
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* @menu_main_draw_status.last_bat_read, align 4
  %40 = call i32 (...) @plat_target_bat_capacity_get()
  store i32 %40, i32* %7, align 4
  store i32 %40, i32* @menu_main_draw_status.last_bat_val, align 4
  br label %43

41:                                               ; preds = %20
  %42 = load i32, i32* @menu_main_draw_status.last_bat_val, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %47, 100
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %43
  br label %184

50:                                               ; preds = %46
  %51 = load i32, i32* @me_mfont_h, align 4
  %52 = mul nsw i32 %51, 2
  %53 = add nsw i32 %52, 2
  %54 = load i32, i32* @g_screen_width, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* @g_screen_width, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* @me_mfont_w, align 4
  %59 = mul nsw i32 %58, 3
  %60 = sub nsw i32 %57, %59
  %61 = sub nsw i32 %60, 3
  %62 = load i16*, i16** %1, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i16, i16* %62, i64 %63
  store i16* %64, i16** %1, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %76, %50
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @me_mfont_w, align 4
  %68 = mul nsw i32 %67, 2
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load i16, i16* @menu_text_color, align 2
  %72 = load i16*, i16** %1, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i16, i16* %72, i64 %74
  store i16 %71, i16* %75, align 2
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %65

79:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %95, %79
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @me_mfont_w, align 4
  %83 = mul nsw i32 %82, 2
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load i16, i16* @menu_text_color, align 2
  %87 = load i16*, i16** %1, align 8
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @g_screen_width, align 4
  %90 = load i32, i32* %2, align 4
  %91 = mul nsw i32 %89, %90
  %92 = add nsw i32 %88, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i16, i16* %87, i64 %93
  store i16 %86, i16* %94, align 2
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %80

98:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %120, %98
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %2, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %99
  %104 = load i16, i16* @menu_text_color, align 2
  %105 = load i16*, i16** %1, align 8
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @g_screen_width, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* @me_mfont_w, align 4
  %110 = mul nsw i32 %109, 2
  %111 = add nsw i32 %108, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i16, i16* %105, i64 %112
  store i16 %104, i16* %113, align 2
  %114 = load i16*, i16** %1, align 8
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @g_screen_width, align 4
  %117 = mul nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i16, i16* %114, i64 %118
  store i16 %104, i16* %119, align 2
  br label %120

120:                                              ; preds = %103
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %3, align 4
  br label %99

123:                                              ; preds = %99
  store i32 2, i32* %3, align 4
  br label %124

124:                                              ; preds = %145, %123
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* %2, align 4
  %127 = sub nsw i32 %126, 1
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %124
  %130 = load i16, i16* @menu_text_color, align 2
  %131 = load i16*, i16** %1, align 8
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @g_screen_width, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sub nsw i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i16, i16* %131, i64 %136
  store i16 %130, i16* %137, align 2
  %138 = load i16*, i16** %1, align 8
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @g_screen_width, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i16, i16* %138, i64 %143
  store i16 %130, i16* %144, align 2
  br label %145

145:                                              ; preds = %129
  %146 = load i32, i32* %3, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %3, align 4
  br label %124

148:                                              ; preds = %124
  %149 = load i32, i32* @me_mfont_w, align 4
  %150 = mul nsw i32 %149, 2
  %151 = sub nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %5, align 4
  %154 = mul nsw i32 %152, %153
  %155 = sdiv i32 %154, 100
  store i32 %155, i32* %6, align 4
  store i32 1, i32* %4, align 4
  br label %156

156:                                              ; preds = %181, %148
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* %2, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %184

160:                                              ; preds = %156
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %177, %160
  %162 = load i32, i32* %3, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %180

165:                                              ; preds = %161
  %166 = load i16, i16* @menu_text_color, align 2
  %167 = load i16*, i16** %1, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %3, align 4
  %170 = sub nsw i32 %168, %169
  %171 = load i32, i32* @g_screen_width, align 4
  %172 = load i32, i32* %4, align 4
  %173 = mul nsw i32 %171, %172
  %174 = add nsw i32 %170, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i16, i16* %167, i64 %175
  store i16 %166, i16* %176, align 2
  br label %177

177:                                              ; preds = %165
  %178 = load i32, i32* %3, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %3, align 4
  br label %161

180:                                              ; preds = %161
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %4, align 4
  br label %156

184:                                              ; preds = %19, %49, %156
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @gmtime(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @text_out16(i32, i32, i8*) #1

declare dso_local i32 @plat_target_bat_capacity_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
