; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_in_sdl.c_handle_joy_event.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_in_sdl.c_handle_joy_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_sdl_state = type { i32*, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@SDLK_UP = common dso_local global i32 0, align 4
@SDLK_LEFT = common dso_local global i32 0, align 4
@SDLK_DOWN = common dso_local global i32 0, align 4
@SDLK_RIGHT = common dso_local global i32 0, align 4
@SDLK_WORLD_0 = common dso_local global i32 0, align 4
@SDL_PRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_sdl_state*, %struct.TYPE_7__*, i32*, i32*)* @handle_joy_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_joy_event(%struct.in_sdl_state* %0, %struct.TYPE_7__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.in_sdl_state*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.in_sdl_state* %0, %struct.in_sdl_state** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %187 [
    i32 130, label %16
    i32 129, label %162
    i32 128, label %162
  ]

16:                                               ; preds = %4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.in_sdl_state*, %struct.in_sdl_state** %6, align 8
  %22 = getelementptr inbounds %struct.in_sdl_state, %struct.in_sdl_state* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 -2, i32* %5, align 4
  br label %212

26:                                               ; preds = %16
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %188

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 -16384, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %33
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sle i32 %43, 16384
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load %struct.in_sdl_state*, %struct.in_sdl_state** %6, align 8
  %47 = getelementptr inbounds %struct.in_sdl_state, %struct.in_sdl_state* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load %struct.in_sdl_state*, %struct.in_sdl_state** %6, align 8
  %57 = getelementptr inbounds %struct.in_sdl_state, %struct.in_sdl_state* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  store i32 0, i32* %64, align 4
  store i32 1, i32* %12, align 4
  br label %161

65:                                               ; preds = %39, %33
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %69, -16384
  br i1 %70, label %71, label %112

71:                                               ; preds = %65
  %72 = load %struct.in_sdl_state*, %struct.in_sdl_state** %6, align 8
  %73 = getelementptr inbounds %struct.in_sdl_state, %struct.in_sdl_state* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %71
  %85 = load %struct.in_sdl_state*, %struct.in_sdl_state** %6, align 8
  %86 = getelementptr inbounds %struct.in_sdl_state, %struct.in_sdl_state* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @update_keystate(i32 %87, i32 %88, i32 0)
  br label %90

90:                                               ; preds = %84, %71
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @SDLK_UP, align 4
  br label %100

98:                                               ; preds = %90
  %99 = load i32, i32* @SDLK_LEFT, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.in_sdl_state*, %struct.in_sdl_state** %6, align 8
  %104 = getelementptr inbounds %struct.in_sdl_state, %struct.in_sdl_state* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %105, i64 %110
  store i32 %102, i32* %111, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %160

112:                                              ; preds = %65
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %116, 16384
  br i1 %117, label %118, label %159

118:                                              ; preds = %112
  %119 = load %struct.in_sdl_state*, %struct.in_sdl_state** %6, align 8
  %120 = getelementptr inbounds %struct.in_sdl_state, %struct.in_sdl_state* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %118
  %132 = load %struct.in_sdl_state*, %struct.in_sdl_state** %6, align 8
  %133 = getelementptr inbounds %struct.in_sdl_state, %struct.in_sdl_state* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @update_keystate(i32 %134, i32 %135, i32 0)
  br label %137

137:                                              ; preds = %131, %118
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* @SDLK_DOWN, align 4
  br label %147

145:                                              ; preds = %137
  %146 = load i32, i32* @SDLK_RIGHT, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.in_sdl_state*, %struct.in_sdl_state** %6, align 8
  %151 = getelementptr inbounds %struct.in_sdl_state, %struct.in_sdl_state* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %152, i64 %157
  store i32 %149, i32* %158, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %159

159:                                              ; preds = %147, %112
  br label %160

160:                                              ; preds = %159, %100
  br label %161

161:                                              ; preds = %160, %45
  br label %188

162:                                              ; preds = %4, %4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.in_sdl_state*, %struct.in_sdl_state** %6, align 8
  %168 = getelementptr inbounds %struct.in_sdl_state, %struct.in_sdl_state* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %166, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  store i32 -2, i32* %5, align 4
  br label %212

172:                                              ; preds = %162
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  %178 = load i32, i32* @SDLK_WORLD_0, align 4
  %179 = add nsw i32 %177, %178
  store i32 %179, i32* %10, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @SDL_PRESSED, align 4
  %185 = icmp eq i32 %183, %184
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %188

187:                                              ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %212

188:                                              ; preds = %172, %161, %32
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load %struct.in_sdl_state*, %struct.in_sdl_state** %6, align 8
  %193 = getelementptr inbounds %struct.in_sdl_state, %struct.in_sdl_state* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @update_keystate(i32 %194, i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %191, %188
  %199 = load i32*, i32** %8, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* %10, align 4
  %203 = load i32*, i32** %8, align 8
  store i32 %202, i32* %203, align 4
  br label %204

204:                                              ; preds = %201, %198
  %205 = load i32*, i32** %9, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32, i32* %11, align 4
  %209 = load i32*, i32** %9, align 8
  store i32 %208, i32* %209, align 4
  br label %210

210:                                              ; preds = %207, %204
  %211 = load i32, i32* %12, align 4
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %210, %187, %171, %25
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local i32 @update_keystate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
