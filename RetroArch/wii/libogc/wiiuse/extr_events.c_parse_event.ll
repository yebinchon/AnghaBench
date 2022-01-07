; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_events.c_parse_event.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_events.c_parse_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32*, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@WIIUSE_SMOOTHING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unknown event, can not handle it [Code 0x%x].\00", align 1
@WIIUSE_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_event(%struct.wiimote_t* %0) #0 {
  %2 = alloca %struct.wiimote_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %2, align 8
  %5 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %6 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %11 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32* %13, i32** %4, align 8
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %307 [
    i32 129, label %15
    i32 128, label %19
    i32 137, label %23
    i32 136, label %27
    i32 135, label %31
    i32 133, label %91
    i32 131, label %155
    i32 134, label %163
    i32 130, label %227
    i32 132, label %239
  ]

15:                                               ; preds = %1
  %16 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @event_status(%struct.wiimote_t* %16, i32* %17)
  br label %314

19:                                               ; preds = %1
  %20 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @event_data_read(%struct.wiimote_t* %20, i32* %21)
  br label %314

23:                                               ; preds = %1
  %24 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @event_ack(%struct.wiimote_t* %24, i32* %25)
  br label %314

27:                                               ; preds = %1
  %28 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @wiiuse_pressed_buttons(%struct.wiimote_t* %28, i32* %29)
  br label %310

31:                                               ; preds = %1
  %32 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @wiiuse_pressed_buttons(%struct.wiimote_t* %32, i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 2
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 5
  %43 = and i32 %42, 3
  %44 = or i32 %38, %43
  %45 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %46 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 2
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 4
  %56 = and i32 %55, 2
  %57 = or i32 %51, %56
  %58 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %59 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 2
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 5
  %69 = and i32 %68, 2
  %70 = or i32 %64, %69
  %71 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %72 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %75 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %74, i32 0, i32 4
  %76 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %77 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %76, i32 0, i32 3
  %78 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %79 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %78, i32 0, i32 5
  %80 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %81 = load i32, i32* @WIIUSE_SMOOTHING, align 4
  %82 = call i32 @WIIMOTE_IS_FLAG_SET(%struct.wiimote_t* %80, i32 %81)
  %83 = call i32 @calculate_orientation(i32* %75, %struct.TYPE_3__* %77, i32* %79, i32 %82)
  %84 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %85 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %84, i32 0, i32 4
  %86 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %87 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %86, i32 0, i32 3
  %88 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %89 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %88, i32 0, i32 2
  %90 = call i32 @calculate_gforce(i32* %85, %struct.TYPE_3__* %87, i32* %89)
  br label %310

91:                                               ; preds = %1
  %92 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @wiiuse_pressed_buttons(%struct.wiimote_t* %92, i32* %93)
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 2
  %99 = load i32*, i32** %4, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 5
  %103 = and i32 %102, 3
  %104 = or i32 %98, %103
  %105 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %106 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load i32*, i32** %4, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 2
  %112 = load i32*, i32** %4, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 4
  %116 = and i32 %115, 2
  %117 = or i32 %111, %116
  %118 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %119 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load i32*, i32** %4, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 2
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 5
  %129 = and i32 %128, 2
  %130 = or i32 %124, %129
  %131 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %132 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 8
  %134 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %135 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %134, i32 0, i32 4
  %136 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %137 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %136, i32 0, i32 3
  %138 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %139 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %138, i32 0, i32 5
  %140 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %141 = load i32, i32* @WIIUSE_SMOOTHING, align 4
  %142 = call i32 @WIIMOTE_IS_FLAG_SET(%struct.wiimote_t* %140, i32 %141)
  %143 = call i32 @calculate_orientation(i32* %135, %struct.TYPE_3__* %137, i32* %139, i32 %142)
  %144 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %145 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %144, i32 0, i32 4
  %146 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %147 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %146, i32 0, i32 3
  %148 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %149 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %148, i32 0, i32 2
  %150 = call i32 @calculate_gforce(i32* %145, %struct.TYPE_3__* %147, i32* %149)
  %151 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %152 = load i32*, i32** %4, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 5
  %154 = call i32 @calculate_extended_ir(%struct.wiimote_t* %151, i32* %153)
  br label %310

155:                                              ; preds = %1
  %156 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @wiiuse_pressed_buttons(%struct.wiimote_t* %156, i32* %157)
  %159 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %160 = load i32*, i32** %4, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = call i32 @handle_expansion(%struct.wiimote_t* %159, i32* %161)
  br label %310

163:                                              ; preds = %1
  %164 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %165 = load i32*, i32** %4, align 8
  %166 = call i32 @wiiuse_pressed_buttons(%struct.wiimote_t* %164, i32* %165)
  %167 = load i32*, i32** %4, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 2
  %171 = load i32*, i32** %4, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = ashr i32 %173, 5
  %175 = and i32 %174, 3
  %176 = or i32 %170, %175
  %177 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %178 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 8
  %180 = load i32*, i32** %4, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 3
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 2
  %184 = load i32*, i32** %4, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %186, 4
  %188 = and i32 %187, 2
  %189 = or i32 %183, %188
  %190 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %191 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 1
  store i32 %189, i32* %192, align 4
  %193 = load i32*, i32** %4, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 4
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 %195, 2
  %197 = load i32*, i32** %4, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = ashr i32 %199, 5
  %201 = and i32 %200, 2
  %202 = or i32 %196, %201
  %203 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %204 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 2
  store i32 %202, i32* %205, align 8
  %206 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %207 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %206, i32 0, i32 4
  %208 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %209 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %208, i32 0, i32 3
  %210 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %211 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %210, i32 0, i32 5
  %212 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %213 = load i32, i32* @WIIUSE_SMOOTHING, align 4
  %214 = call i32 @WIIMOTE_IS_FLAG_SET(%struct.wiimote_t* %212, i32 %213)
  %215 = call i32 @calculate_orientation(i32* %207, %struct.TYPE_3__* %209, i32* %211, i32 %214)
  %216 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %217 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %216, i32 0, i32 4
  %218 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %219 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %218, i32 0, i32 3
  %220 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %221 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %220, i32 0, i32 2
  %222 = call i32 @calculate_gforce(i32* %217, %struct.TYPE_3__* %219, i32* %221)
  %223 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %224 = load i32*, i32** %4, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 5
  %226 = call i32 @handle_expansion(%struct.wiimote_t* %223, i32* %225)
  br label %310

227:                                              ; preds = %1
  %228 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %229 = load i32*, i32** %4, align 8
  %230 = call i32 @wiiuse_pressed_buttons(%struct.wiimote_t* %228, i32* %229)
  %231 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %232 = load i32*, i32** %4, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 2
  %234 = call i32 @calculate_basic_ir(%struct.wiimote_t* %231, i32* %233)
  %235 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %236 = load i32*, i32** %4, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 12
  %238 = call i32 @handle_expansion(%struct.wiimote_t* %235, i32* %237)
  br label %310

239:                                              ; preds = %1
  %240 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %241 = load i32*, i32** %4, align 8
  %242 = call i32 @wiiuse_pressed_buttons(%struct.wiimote_t* %240, i32* %241)
  %243 = load i32*, i32** %4, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 2
  %245 = load i32, i32* %244, align 4
  %246 = shl i32 %245, 2
  %247 = load i32*, i32** %4, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = ashr i32 %249, 5
  %251 = and i32 %250, 3
  %252 = or i32 %246, %251
  %253 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %254 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 0
  store i32 %252, i32* %255, align 8
  %256 = load i32*, i32** %4, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 3
  %258 = load i32, i32* %257, align 4
  %259 = shl i32 %258, 2
  %260 = load i32*, i32** %4, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 1
  %262 = load i32, i32* %261, align 4
  %263 = ashr i32 %262, 4
  %264 = and i32 %263, 2
  %265 = or i32 %259, %264
  %266 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %267 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 1
  store i32 %265, i32* %268, align 4
  %269 = load i32*, i32** %4, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 4
  %271 = load i32, i32* %270, align 4
  %272 = shl i32 %271, 2
  %273 = load i32*, i32** %4, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  %275 = load i32, i32* %274, align 4
  %276 = ashr i32 %275, 5
  %277 = and i32 %276, 2
  %278 = or i32 %272, %277
  %279 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %280 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 2
  store i32 %278, i32* %281, align 8
  %282 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %283 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %282, i32 0, i32 4
  %284 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %285 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %284, i32 0, i32 3
  %286 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %287 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %286, i32 0, i32 5
  %288 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %289 = load i32, i32* @WIIUSE_SMOOTHING, align 4
  %290 = call i32 @WIIMOTE_IS_FLAG_SET(%struct.wiimote_t* %288, i32 %289)
  %291 = call i32 @calculate_orientation(i32* %283, %struct.TYPE_3__* %285, i32* %287, i32 %290)
  %292 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %293 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %292, i32 0, i32 4
  %294 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %295 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %294, i32 0, i32 3
  %296 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %297 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %296, i32 0, i32 2
  %298 = call i32 @calculate_gforce(i32* %293, %struct.TYPE_3__* %295, i32* %297)
  %299 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %300 = load i32*, i32** %4, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 5
  %302 = call i32 @calculate_basic_ir(%struct.wiimote_t* %299, i32* %301)
  %303 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %304 = load i32*, i32** %4, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 15
  %306 = call i32 @handle_expansion(%struct.wiimote_t* %303, i32* %305)
  br label %310

307:                                              ; preds = %1
  %308 = load i32, i32* %3, align 4
  %309 = call i32 @WIIUSE_WARNING(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %308)
  br label %314

310:                                              ; preds = %239, %227, %163, %155, %91, %31, %27
  %311 = load i32, i32* @WIIUSE_EVENT, align 4
  %312 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %313 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %312, i32 0, i32 1
  store i32 %311, i32* %313, align 8
  br label %314

314:                                              ; preds = %310, %307, %23, %19, %15
  ret void
}

declare dso_local i32 @event_status(%struct.wiimote_t*, i32*) #1

declare dso_local i32 @event_data_read(%struct.wiimote_t*, i32*) #1

declare dso_local i32 @event_ack(%struct.wiimote_t*, i32*) #1

declare dso_local i32 @wiiuse_pressed_buttons(%struct.wiimote_t*, i32*) #1

declare dso_local i32 @calculate_orientation(i32*, %struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @WIIMOTE_IS_FLAG_SET(%struct.wiimote_t*, i32) #1

declare dso_local i32 @calculate_gforce(i32*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @calculate_extended_ir(%struct.wiimote_t*, i32*) #1

declare dso_local i32 @handle_expansion(%struct.wiimote_t*, i32*) #1

declare dso_local i32 @calculate_basic_ir(%struct.wiimote_t*, i32*) #1

declare dso_local i32 @WIIUSE_WARNING(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
