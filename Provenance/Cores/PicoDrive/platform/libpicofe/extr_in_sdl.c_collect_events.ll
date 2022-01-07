; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_in_sdl.c_collect_events.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_in_sdl.c_collect_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_sdl_state = type { i64 }

@JOY_EVENTS = common dso_local global i32 0, align 4
@SDL_ALLEVENTS = common dso_local global i32 0, align 4
@SDL_PEEKEVENT = common dso_local global i32 0, align 4
@SDL_GETEVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_sdl_state*, i32*, i32*)* @collect_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_events(%struct.in_sdl_state* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.in_sdl_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.in_sdl_state* %0, %struct.in_sdl_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.in_sdl_state*, %struct.in_sdl_state** %4, align 8
  %18 = getelementptr inbounds %struct.in_sdl_state, %struct.in_sdl_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @JOY_EVENTS, align 4
  br label %28

23:                                               ; preds = %3
  %24 = load i32, i32* @SDL_ALLEVENTS, align 4
  %25 = load i32, i32* @JOY_EVENTS, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  br label %28

28:                                               ; preds = %23, %21
  %29 = phi i32 [ %22, %21 ], [ %27, %23 ]
  store i32 %29, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i64 1, i64 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = call i32 (...) @SDL_PumpEvents()
  %36 = load i32, i32* @SDL_PEEKEVENT, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @SDL_PeepEvents(i32* null, i32 0, i32 %36, i32 %37)
  store i32 %38, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %119, %28
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %123

43:                                               ; preds = %39
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @SDL_GETEVENT, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @SDL_PeepEvents(i32* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %123

52:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %115, %52
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %118

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %59
  store i32* %60, i32** %16, align 8
  %61 = load %struct.in_sdl_state*, %struct.in_sdl_state** %4, align 8
  %62 = getelementptr inbounds %struct.in_sdl_state, %struct.in_sdl_state* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.in_sdl_state*, %struct.in_sdl_state** %4, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @handle_joy_event(%struct.in_sdl_state* %66, i32* %67, i32* %68, i32* %69)
  store i32 %70, i32* %12, align 4
  br label %77

71:                                               ; preds = %57
  %72 = load %struct.in_sdl_state*, %struct.in_sdl_state** %4, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @handle_event(%struct.in_sdl_state* %72, i32* %73, i32* %74, i32* %75)
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %71, %65
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  switch i32 %81, label %85 [
    i32 -2, label %82
  ]

82:                                               ; preds = %80
  %83 = load i32*, i32** %16, align 8
  %84 = call i32 @SDL_PushEvent(i32* %83)
  br label %88

85:                                               ; preds = %80
  %86 = load i32*, i32** %16, align 8
  %87 = call i32 @ext_event_handler(i32* %86)
  br label %88

88:                                               ; preds = %85, %82
  br label %115

89:                                               ; preds = %77
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %13, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %114

95:                                               ; preds = %89
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %110, %98
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %107
  %109 = call i32 @SDL_PushEvent(i32* %108)
  br label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %101

113:                                              ; preds = %101
  br label %124

114:                                              ; preds = %95, %89
  br label %115

115:                                              ; preds = %114, %88
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %53

118:                                              ; preds = %53
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %15, align 4
  br label %39

123:                                              ; preds = %51, %39
  br label %124

124:                                              ; preds = %123, %113
  %125 = load i32, i32* %13, align 4
  ret i32 %125
}

declare dso_local i32 @SDL_PumpEvents(...) #1

declare dso_local i32 @SDL_PeepEvents(i32*, i32, i32, i32) #1

declare dso_local i32 @handle_joy_event(%struct.in_sdl_state*, i32*, i32*, i32*) #1

declare dso_local i32 @handle_event(%struct.in_sdl_state*, i32*, i32*, i32*) #1

declare dso_local i32 @SDL_PushEvent(i32*) #1

declare dso_local i32 @ext_event_handler(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
