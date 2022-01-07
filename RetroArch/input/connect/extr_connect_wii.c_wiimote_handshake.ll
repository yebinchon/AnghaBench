; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wii.c_wiimote_handshake.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wii.c_wiimote_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connect_wii_wiimote_t = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@WIIMOTE_STATE_HANDSHAKE = common dso_local global i32 0, align 4
@WIIMOTE_LED_NONE = common dso_local global i32 0, align 4
@WM_RPT_CTRL_STATUS = common dso_local global i32 0, align 4
@WM_CTRL_STATUS_BYTE1_ATTACHMENT = common dso_local global i32 0, align 4
@WIIMOTE_STATE_EXP = common dso_local global i32 0, align 4
@WIIMOTE_STATE_HANDSHAKE_COMPLETE = common dso_local global i32 0, align 4
@WM_EXP_MEM_CALIBR = common dso_local global i32 0, align 4
@EXP_NONE = common dso_local global i32 0, align 4
@WM_RPT_BTN = common dso_local global i32 0, align 4
@WM_RPT_BTN_EXP = common dso_local global i32 0, align 4
@WM_RPT_READ = common dso_local global i32 0, align 4
@WIIMOTE_LED_1 = common dso_local global i32 0, align 4
@WIIMOTE_LED_2 = common dso_local global i32 0, align 4
@WIIMOTE_LED_3 = common dso_local global i32 0, align 4
@WIIMOTE_LED_4 = common dso_local global i32 0, align 4
@EXP_HANDSHAKE_LEN = common dso_local global i32 0, align 4
@WM_EXP_MEM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connect_wii_wiimote_t*, i32, i32*, i32)* @wiimote_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimote_handshake(%struct.connect_wii_wiimote_t* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connect_wii_wiimote_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.connect_wii_wiimote_t* %0, %struct.connect_wii_wiimote_t** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %15 = icmp ne %struct.connect_wii_wiimote_t* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %206

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %205, %17
  %19 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %20 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %203 [
    i32 0, label %22
    i32 1, label %33
    i32 2, label %124
    i32 3, label %130
    i32 4, label %136
    i32 5, label %158
    i32 6, label %174
  ]

22:                                               ; preds = %18
  %23 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %24 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE, align 4
  %25 = call i32 @WIIMOTE_ENABLE_STATE(%struct.connect_wii_wiimote_t* %23, i32 %24)
  %26 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %27 = load i32, i32* @WIIMOTE_LED_NONE, align 4
  %28 = call i32 @wiimote_set_leds(%struct.connect_wii_wiimote_t* %26, i32 %27)
  %29 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %30 = call i32 @wiimote_status(%struct.connect_wii_wiimote_t* %29)
  %31 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %32 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  store i32 0, i32* %5, align 4
  br label %206

33:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @WM_RPT_CTRL_STATUS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %206

38:                                               ; preds = %33
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WM_CTRL_STATUS_BYTE1_ATTACHMENT, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @WM_CTRL_STATUS_BYTE1_ATTACHMENT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 1, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %38
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %47
  %51 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %52 = load i32, i32* @WIIMOTE_STATE_EXP, align 4
  %53 = call i32 @WIIMOTE_IS_SET(%struct.connect_wii_wiimote_t* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %83, label %55

55:                                               ; preds = %50
  store i32 0, i32* %11, align 4
  %56 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %57 = load i32, i32* @WIIMOTE_STATE_EXP, align 4
  %58 = call i32 @WIIMOTE_ENABLE_STATE(%struct.connect_wii_wiimote_t* %56, i32 %57)
  %59 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %60 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE_COMPLETE, align 4
  %61 = call i32 @WIIMOTE_IS_SET(%struct.connect_wii_wiimote_t* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %65 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE_COMPLETE, align 4
  %66 = call i32 @WIIMOTE_DISABLE_STATE(%struct.connect_wii_wiimote_t* %64, i32 %65)
  %67 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %68 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE, align 4
  %69 = call i32 @WIIMOTE_ENABLE_STATE(%struct.connect_wii_wiimote_t* %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %55
  store i32 85, i32* %11, align 4
  %71 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %72 = call i32 @wiimote_write_data(%struct.connect_wii_wiimote_t* %71, i32 77857008, i32* %11, i32 1)
  %73 = call i32 @retro_sleep(i32 100)
  store i32 0, i32* %11, align 4
  %74 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %75 = call i32 @wiimote_write_data(%struct.connect_wii_wiimote_t* %74, i32 77857019, i32* %11, i32 1)
  %76 = call i32 @retro_sleep(i32 100)
  %77 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %78 = load i32, i32* @WM_EXP_MEM_CALIBR, align 4
  %79 = add nsw i32 %78, 220
  %80 = call i32 @wiimote_read_data(%struct.connect_wii_wiimote_t* %77, i32 %79, i32 4)
  %81 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %82 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %81, i32 0, i32 0
  store i32 4, i32* %82, align 4
  store i32 0, i32* %5, align 4
  br label %206

83:                                               ; preds = %50, %47
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %111, label %86

86:                                               ; preds = %83
  %87 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %88 = load i32, i32* @WIIMOTE_STATE_EXP, align 4
  %89 = call i32 @WIIMOTE_IS_SET(%struct.connect_wii_wiimote_t* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %86
  %92 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %93 = load i32, i32* @WIIMOTE_STATE_EXP, align 4
  %94 = call i32 @WIIMOTE_DISABLE_STATE(%struct.connect_wii_wiimote_t* %92, i32 %93)
  %95 = load i32, i32* @EXP_NONE, align 4
  %96 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %97 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %100 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE_COMPLETE, align 4
  %101 = call i32 @WIIMOTE_IS_SET(%struct.connect_wii_wiimote_t* %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %91
  %104 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %105 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE_COMPLETE, align 4
  %106 = call i32 @WIIMOTE_DISABLE_STATE(%struct.connect_wii_wiimote_t* %104, i32 %105)
  %107 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %108 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE, align 4
  %109 = call i32 @WIIMOTE_ENABLE_STATE(%struct.connect_wii_wiimote_t* %107, i32 %108)
  br label %110

110:                                              ; preds = %103, %91
  br label %111

111:                                              ; preds = %110, %86, %83
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %112
  %116 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %117 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE, align 4
  %118 = call i32 @WIIMOTE_IS_SET(%struct.connect_wii_wiimote_t* %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %122 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %121, i32 0, i32 0
  store i32 2, i32* %122, align 4
  br label %205

123:                                              ; preds = %115, %112
  store i32 0, i32* %5, align 4
  br label %206

124:                                              ; preds = %18
  %125 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %126 = load i32, i32* @WM_RPT_BTN, align 4
  %127 = call i32 @wiimote_data_report(%struct.connect_wii_wiimote_t* %125, i32 %126)
  %128 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %129 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %128, i32 0, i32 0
  store i32 6, i32* %129, align 4
  br label %205

130:                                              ; preds = %18
  %131 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %132 = load i32, i32* @WM_RPT_BTN_EXP, align 4
  %133 = call i32 @wiimote_data_report(%struct.connect_wii_wiimote_t* %131, i32 %132)
  %134 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %135 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %134, i32 0, i32 0
  store i32 6, i32* %135, align 4
  br label %205

136:                                              ; preds = %18
  %137 = load i32*, i32** %8, align 8
  store i32* %137, i32** %13, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @WM_RPT_READ, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 0, i32* %5, align 4
  br label %206

142:                                              ; preds = %136
  %143 = load i32*, i32** %13, align 8
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @swap_if_little32(i32 %144)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  switch i32 %146, label %154 [
    i32 128, label %147
  ]

147:                                              ; preds = %142
  %148 = call i32 @retro_sleep(i32 100)
  %149 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %150 = load i32, i32* @WM_EXP_MEM_CALIBR, align 4
  %151 = call i32 @wiimote_read_data(%struct.connect_wii_wiimote_t* %149, i32 %150, i32 16)
  %152 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %153 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %152, i32 0, i32 0
  store i32 5, i32* %153, align 4
  br label %157

154:                                              ; preds = %142
  %155 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %156 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %155, i32 0, i32 0
  store i32 2, i32* %156, align 4
  br label %205

157:                                              ; preds = %147
  store i32 0, i32* %5, align 4
  br label %206

158:                                              ; preds = %18
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @WM_RPT_READ, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i32 0, i32* %5, align 4
  br label %206

163:                                              ; preds = %158
  %164 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %165 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %166 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @wiimote_classic_ctrl_handshake(%struct.connect_wii_wiimote_t* %164, i32* %168, i32* %169, i32 %170)
  %172 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %173 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %172, i32 0, i32 0
  store i32 3, i32* %173, align 4
  br label %205

174:                                              ; preds = %18
  %175 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %176 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE, align 4
  %177 = call i32 @WIIMOTE_DISABLE_STATE(%struct.connect_wii_wiimote_t* %175, i32 %176)
  %178 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %179 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE_COMPLETE, align 4
  %180 = call i32 @WIIMOTE_ENABLE_STATE(%struct.connect_wii_wiimote_t* %178, i32 %179)
  %181 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %182 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %181, i32 0, i32 0
  store i32 1, i32* %182, align 4
  %183 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %184 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  switch i32 %185, label %202 [
    i32 0, label %186
    i32 1, label %190
    i32 2, label %194
    i32 3, label %198
  ]

186:                                              ; preds = %174
  %187 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %188 = load i32, i32* @WIIMOTE_LED_1, align 4
  %189 = call i32 @wiimote_set_leds(%struct.connect_wii_wiimote_t* %187, i32 %188)
  br label %202

190:                                              ; preds = %174
  %191 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %192 = load i32, i32* @WIIMOTE_LED_2, align 4
  %193 = call i32 @wiimote_set_leds(%struct.connect_wii_wiimote_t* %191, i32 %192)
  br label %202

194:                                              ; preds = %174
  %195 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %196 = load i32, i32* @WIIMOTE_LED_3, align 4
  %197 = call i32 @wiimote_set_leds(%struct.connect_wii_wiimote_t* %195, i32 %196)
  br label %202

198:                                              ; preds = %174
  %199 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %200 = load i32, i32* @WIIMOTE_LED_4, align 4
  %201 = call i32 @wiimote_set_leds(%struct.connect_wii_wiimote_t* %199, i32 %200)
  br label %202

202:                                              ; preds = %174, %198, %194, %190, %186
  store i32 1, i32* %5, align 4
  br label %206

203:                                              ; preds = %18
  br label %204

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204, %163, %154, %130, %124, %120
  br i1 true, label %18, label %206

206:                                              ; preds = %16, %22, %37, %70, %123, %141, %157, %162, %202, %205
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i32 @WIIMOTE_ENABLE_STATE(%struct.connect_wii_wiimote_t*, i32) #1

declare dso_local i32 @wiimote_set_leds(%struct.connect_wii_wiimote_t*, i32) #1

declare dso_local i32 @wiimote_status(%struct.connect_wii_wiimote_t*) #1

declare dso_local i32 @WIIMOTE_IS_SET(%struct.connect_wii_wiimote_t*, i32) #1

declare dso_local i32 @WIIMOTE_DISABLE_STATE(%struct.connect_wii_wiimote_t*, i32) #1

declare dso_local i32 @wiimote_write_data(%struct.connect_wii_wiimote_t*, i32, i32*, i32) #1

declare dso_local i32 @retro_sleep(i32) #1

declare dso_local i32 @wiimote_read_data(%struct.connect_wii_wiimote_t*, i32, i32) #1

declare dso_local i32 @wiimote_data_report(%struct.connect_wii_wiimote_t*, i32) #1

declare dso_local i32 @swap_if_little32(i32) #1

declare dso_local i32 @wiimote_classic_ctrl_handshake(%struct.connect_wii_wiimote_t*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
