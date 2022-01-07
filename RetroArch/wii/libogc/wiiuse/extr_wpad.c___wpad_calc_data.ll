; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___wpad_calc_data.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___wpad_calc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.classic_ctrl_t, %struct.nunchuk_t }
%struct.classic_ctrl_t = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.nunchuk_t = type { i32, i32, i32, %struct.accel_t, i32, %struct.TYPE_12__ }
%struct.accel_t = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@WPAD_ERR_NONE = common dso_local global i64 0, align 8
@WPAD_DATA_ACCEL = common dso_local global i32 0, align 4
@WPAD_DATA_IR = common dso_local global i32 0, align 4
@WPAD_DATA_EXPANSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.accel_t*, i32)* @__wpad_calc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wpad_calc_data(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.accel_t* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.accel_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nunchuk_t*, align 8
  %10 = alloca %struct.classic_ctrl_t*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.accel_t* %2, %struct.accel_t** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WPAD_ERR_NONE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %267

17:                                               ; preds = %4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 12
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 12
  store i32 %26, i32* %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 11
  store i32 %33, i32* %36, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 10
  store i32 %40, i32* %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 9
  store i32 %47, i32* %50, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 8
  store i32 %54, i32* %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 7
  store i32 %61, i32* %64, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 6
  store i32 %68, i32* %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 5
  store i32 %75, i32* %78, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  store i32 %89, i32* %92, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @WPAD_DATA_ACCEL, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %17
  %121 = load %struct.accel_t*, %struct.accel_t** %7, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 7
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @calculate_orientation(%struct.accel_t* %121, i32* %123, i32* %125, i32 %126)
  %128 = load %struct.accel_t*, %struct.accel_t** %7, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 7
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 6
  %133 = call i32 @calculate_gforce(%struct.accel_t* %128, i32* %130, i32* %132)
  br label %134

134:                                              ; preds = %120, %17
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @WPAD_DATA_IR, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %134
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 5
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 4
  %146 = call i32 @interpret_ir_data(%struct.TYPE_11__* %143, i32* %145)
  br label %147

147:                                              ; preds = %141, %134
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @WPAD_DATA_EXPANSION, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %262

154:                                              ; preds = %147
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  switch i32 %158, label %260 [
    i32 128, label %159
    i32 129, label %208
  ]

159:                                              ; preds = %154
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 2
  store %struct.nunchuk_t* %162, %struct.nunchuk_t** %9, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.nunchuk_t*, %struct.nunchuk_t** %9, align 8
  %169 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 4
  %170 = load %struct.nunchuk_t*, %struct.nunchuk_t** %9, align 8
  %171 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %170, i32 0, i32 5
  %172 = load %struct.nunchuk_t*, %struct.nunchuk_t** %9, align 8
  %173 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.nunchuk_t*, %struct.nunchuk_t** %9, align 8
  %178 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @calc_joystick_state(%struct.TYPE_12__* %171, i32 %176, i32 %181)
  %183 = load %struct.nunchuk_t*, %struct.nunchuk_t** %9, align 8
  %184 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %183, i32 0, i32 3
  %185 = load %struct.nunchuk_t*, %struct.nunchuk_t** %9, align 8
  %186 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %185, i32 0, i32 2
  %187 = load %struct.nunchuk_t*, %struct.nunchuk_t** %9, align 8
  %188 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %187, i32 0, i32 4
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @calculate_orientation(%struct.accel_t* %184, i32* %186, i32* %188, i32 %189)
  %191 = load %struct.nunchuk_t*, %struct.nunchuk_t** %9, align 8
  %192 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %191, i32 0, i32 3
  %193 = load %struct.nunchuk_t*, %struct.nunchuk_t** %9, align 8
  %194 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %193, i32 0, i32 2
  %195 = load %struct.nunchuk_t*, %struct.nunchuk_t** %9, align 8
  %196 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %195, i32 0, i32 1
  %197 = call i32 @calculate_gforce(%struct.accel_t* %192, i32* %194, i32* %196)
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = shl i32 %202, 16
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %261

208:                                              ; preds = %154
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  store %struct.classic_ctrl_t* %211, %struct.classic_ctrl_t** %10, align 8
  %212 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %10, align 8
  %213 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 4
  %215 = sdiv i32 %214, 31
  %216 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %10, align 8
  %217 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 4
  %218 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %10, align 8
  %219 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = sdiv i32 %220, 31
  %222 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %10, align 8
  %223 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %10, align 8
  %225 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %224, i32 0, i32 4
  %226 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %10, align 8
  %227 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %10, align 8
  %232 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @calc_joystick_state(%struct.TYPE_12__* %225, i32 %230, i32 %235)
  %237 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %10, align 8
  %238 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %237, i32 0, i32 3
  %239 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %10, align 8
  %240 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %10, align 8
  %245 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @calc_joystick_state(%struct.TYPE_12__* %238, i32 %243, i32 %248)
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = shl i32 %254, 16
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 4
  br label %261

260:                                              ; preds = %154
  br label %261

261:                                              ; preds = %260, %208, %159
  br label %262

262:                                              ; preds = %261, %147
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %265 = bitcast %struct.TYPE_10__* %263 to i8*
  %266 = bitcast %struct.TYPE_10__* %264 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %265, i8* align 8 %266, i64 152, i1 false)
  br label %267

267:                                              ; preds = %262, %16
  ret void
}

declare dso_local i32 @calculate_orientation(%struct.accel_t*, i32*, i32*, i32) #1

declare dso_local i32 @calculate_gforce(%struct.accel_t*, i32*, i32*) #1

declare dso_local i32 @interpret_ir_data(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @calc_joystick_state(%struct.TYPE_12__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
