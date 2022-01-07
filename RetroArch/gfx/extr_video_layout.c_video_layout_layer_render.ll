; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_layout.c_video_layout_layer_render.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_layout.c_video_layout_layer_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32*, %struct.TYPE_36__*, %struct.TYPE_35__*, %struct.TYPE_42__*, %struct.TYPE_43__ }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, i32, i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_41__, i32, i32, i32 }
%struct.TYPE_41__ = type { %struct.TYPE_40__, %struct.TYPE_39__, %struct.TYPE_38__, %struct.TYPE_37__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_42__ = type { i32 (%struct.TYPE_43__*, i32)*, i32 (%struct.TYPE_43__*, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32)*, i32 (%struct.TYPE_43__*, i32)*, i32 (%struct.TYPE_43__*, i32)*, i32 (%struct.TYPE_43__*, i32, i32)*, i32 (%struct.TYPE_43__*)*, i32 (%struct.TYPE_43__*)*, i32 (%struct.TYPE_43__*, i32)*, i32 (%struct.TYPE_43__*)* }
%struct.TYPE_43__ = type { i32, i32, i32, i8* }

@video_layout_state = common dso_local global %struct.TYPE_34__* null, align 8
@VIDEO_LAYOUT_LED_7 = common dso_local global i32 0, align 4
@VIDEO_LAYOUT_LED_8_GTS1 = common dso_local global i32 0, align 4
@VIDEO_LAYOUT_LED_14 = common dso_local global i32 0, align 4
@VIDEO_LAYOUT_LED_14_SC = common dso_local global i32 0, align 4
@VIDEO_LAYOUT_LED_16 = common dso_local global i32 0, align 4
@VIDEO_LAYOUT_LED_16_SC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @video_layout_layer_render(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_43__*, align 8
  %6 = alloca %struct.TYPE_42__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_34__*, %struct.TYPE_34__** @video_layout_state, align 8
  %13 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %12, i32 0, i32 4
  store %struct.TYPE_43__* %13, %struct.TYPE_43__** %5, align 8
  %14 = load %struct.TYPE_34__*, %struct.TYPE_34__** @video_layout_state, align 8
  %15 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  store %struct.TYPE_42__* %16, %struct.TYPE_42__** %6, align 8
  %17 = load %struct.TYPE_34__*, %struct.TYPE_34__** @video_layout_state, align 8
  %18 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i64 %23
  store %struct.TYPE_31__* %24, %struct.TYPE_31__** %7, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %28, i32 0, i32 9
  %30 = load i32 (%struct.TYPE_43__*)*, i32 (%struct.TYPE_43__*)** %29, align 8
  %31 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %32 = call i32 %30(%struct.TYPE_43__* %31)
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %321, %2
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %324

39:                                               ; preds = %33
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i64 %44
  store %struct.TYPE_32__* %45, %struct.TYPE_32__** %10, align 8
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %63

50:                                               ; preds = %39
  %51 = load %struct.TYPE_34__*, %struct.TYPE_34__** @video_layout_state, align 8
  %52 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_36__*, %struct.TYPE_36__** %52, align 8
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %53, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %50, %39
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %317, %63
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %320

70:                                               ; preds = %64
  %71 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %73, i64 %75
  store %struct.TYPE_33__* %76, %struct.TYPE_33__** %11, align 8
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %91

81:                                               ; preds = %70
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %317

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %70
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %316 [
    i32 128, label %110
    i32 130, label %111
    i32 132, label %122
    i32 143, label %128
    i32 139, label %134
    i32 129, label %202
    i32 144, label %213
    i32 140, label %228
    i32 142, label %237
    i32 141, label %246
    i32 134, label %255
    i32 133, label %265
    i32 138, label %275
    i32 137, label %285
    i32 136, label %295
    i32 135, label %305
    i32 131, label %315
  ]

110:                                              ; preds = %91
  br label %316

111:                                              ; preds = %91
  %112 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %112, i32 0, i32 8
  %114 = load i32 (%struct.TYPE_43__*, i32)*, i32 (%struct.TYPE_43__*, i32)** %113, align 8
  %115 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 %114(%struct.TYPE_43__* %115, i32 %120)
  br label %316

122:                                              ; preds = %91
  %123 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %123, i32 0, i32 7
  %125 = load i32 (%struct.TYPE_43__*)*, i32 (%struct.TYPE_43__*)** %124, align 8
  %126 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %127 = call i32 %125(%struct.TYPE_43__* %126)
  br label %316

128:                                              ; preds = %91
  %129 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %129, i32 0, i32 6
  %131 = load i32 (%struct.TYPE_43__*)*, i32 (%struct.TYPE_43__*)** %130, align 8
  %132 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %133 = call i32 %131(%struct.TYPE_43__* %132)
  br label %316

134:                                              ; preds = %91
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %176, label %141

141:                                              ; preds = %134
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @video_layout_load_image(i32 %146)
  %148 = ptrtoint i8* %147 to i64
  %149 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %151, i32 0, i32 1
  store i64 %148, i64* %152, align 8
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %141
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i8* @video_layout_load_image(i32 %164)
  %166 = ptrtoint i8* %165 to i64
  %167 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %169, i32 0, i32 2
  store i64 %166, i64* %170, align 8
  br label %171

171:                                              ; preds = %159, %141
  %172 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %174, i32 0, i32 0
  store i32 1, i32* %175, align 8
  br label %176

176:                                              ; preds = %171, %134
  %177 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %177, i32 0, i32 5
  %179 = load i32 (%struct.TYPE_43__*, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32)** %178, align 8
  %180 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** @video_layout_state, align 8
  %182 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds i32, i32* %183, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_34__*, %struct.TYPE_34__** @video_layout_state, align 8
  %192 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds i32, i32* %193, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 %179(%struct.TYPE_43__* %180, i32 %190, i32 %200)
  br label %316

202:                                              ; preds = %91
  %203 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %203, i32 0, i32 4
  %205 = load i32 (%struct.TYPE_43__*, i32)*, i32 (%struct.TYPE_43__*, i32)** %204, align 8
  %206 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %207 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 %205(%struct.TYPE_43__* %206, i32 %211)
  br label %316

213:                                              ; preds = %91
  %214 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %214, i32 0, i32 3
  %216 = load i32 (%struct.TYPE_43__*, i32)*, i32 (%struct.TYPE_43__*, i32)** %215, align 8
  %217 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %218 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @MIN(i32 %220, i32 %225)
  %227 = call i32 %216(%struct.TYPE_43__* %217, i32 %226)
  br label %316

228:                                              ; preds = %91
  %229 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %229, i32 0, i32 2
  %231 = load i32 (%struct.TYPE_43__*, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32)** %230, align 8
  %232 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %233 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 %231(%struct.TYPE_43__* %232, i32 1, i32 %235)
  br label %316

237:                                              ; preds = %91
  %238 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %238, i32 0, i32 2
  %240 = load i32 (%struct.TYPE_43__*, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32)** %239, align 8
  %241 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %242 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 %240(%struct.TYPE_43__* %241, i32 5, i32 %244)
  br label %316

246:                                              ; preds = %91
  %247 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %247, i32 0, i32 2
  %249 = load i32 (%struct.TYPE_43__*, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32)** %248, align 8
  %250 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %251 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 %249(%struct.TYPE_43__* %250, i32 8, i32 %253)
  br label %316

255:                                              ; preds = %91
  %256 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %256, i32 0, i32 1
  %258 = load i32 (%struct.TYPE_43__*, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32)** %257, align 8
  %259 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %260 = load i32, i32* @VIDEO_LAYOUT_LED_7, align 4
  %261 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 %258(%struct.TYPE_43__* %259, i32 %260, i32 %263)
  br label %316

265:                                              ; preds = %91
  %266 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %266, i32 0, i32 1
  %268 = load i32 (%struct.TYPE_43__*, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32)** %267, align 8
  %269 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %270 = load i32, i32* @VIDEO_LAYOUT_LED_8_GTS1, align 4
  %271 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 %268(%struct.TYPE_43__* %269, i32 %270, i32 %273)
  br label %316

275:                                              ; preds = %91
  %276 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %276, i32 0, i32 1
  %278 = load i32 (%struct.TYPE_43__*, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32)** %277, align 8
  %279 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %280 = load i32, i32* @VIDEO_LAYOUT_LED_14, align 4
  %281 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i32 %278(%struct.TYPE_43__* %279, i32 %280, i32 %283)
  br label %316

285:                                              ; preds = %91
  %286 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %286, i32 0, i32 1
  %288 = load i32 (%struct.TYPE_43__*, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32)** %287, align 8
  %289 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %290 = load i32, i32* @VIDEO_LAYOUT_LED_14_SC, align 4
  %291 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 %288(%struct.TYPE_43__* %289, i32 %290, i32 %293)
  br label %316

295:                                              ; preds = %91
  %296 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %296, i32 0, i32 1
  %298 = load i32 (%struct.TYPE_43__*, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32)** %297, align 8
  %299 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %300 = load i32, i32* @VIDEO_LAYOUT_LED_16, align 4
  %301 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = call i32 %298(%struct.TYPE_43__* %299, i32 %300, i32 %303)
  br label %316

305:                                              ; preds = %91
  %306 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %306, i32 0, i32 1
  %308 = load i32 (%struct.TYPE_43__*, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32)** %307, align 8
  %309 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %310 = load i32, i32* @VIDEO_LAYOUT_LED_16_SC, align 4
  %311 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = call i32 %308(%struct.TYPE_43__* %309, i32 %310, i32 %313)
  br label %316

315:                                              ; preds = %91
  br label %316

316:                                              ; preds = %91, %315, %305, %295, %285, %275, %265, %255, %246, %237, %228, %213, %202, %176, %128, %122, %111, %110
  br label %317

317:                                              ; preds = %316, %89
  %318 = load i32, i32* %9, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %9, align 4
  br label %64

320:                                              ; preds = %64
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %8, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %8, align 4
  br label %33

324:                                              ; preds = %33
  %325 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %325, i32 0, i32 0
  %327 = load i32 (%struct.TYPE_43__*, i32)*, i32 (%struct.TYPE_43__*, i32)** %326, align 8
  %328 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %329 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = call i32 %327(%struct.TYPE_43__* %328, i32 %331)
  ret void
}

declare dso_local i8* @video_layout_load_image(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
