; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_audio/extr_audio.c_play_api_test.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_audio/extr_audio.c_play_api_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFFER_SIZE_SAMPLES = common dso_local global i32 0, align 4
@audio_dest = common dso_local global i32* null, align 8
@MIN_LATENCY_TIME = common dso_local global i32 0, align 4
@CTTW_SLEEP_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @play_api_test(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %14, align 4
  store i32 16777216, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* @BUFFER_SIZE_SAMPLES, align 4
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @OUT_CHANNELS(i32 %25)
  %27 = mul i32 %24, %26
  %28 = lshr i32 %27, 3
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 1
  br label %34

34:                                               ; preds = %31, %4
  %35 = phi i1 [ true, %4 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i64 @audioplay_create(i32** %9, i32 %38, i32 %39, i32 %40, i32 10, i32 %41)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** @audio_dest, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @audioplay_set_dest(i32* %47, i32 %52)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %144, %34
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %5, align 4
  %61 = mul nsw i32 %60, 1000
  %62 = load i32, i32* @BUFFER_SIZE_SAMPLES, align 4
  %63 = sdiv i32 %61, %62
  %64 = icmp ult i32 %59, %63
  br i1 %64, label %65, label %147

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %70, %65
  %67 = load i32*, i32** %9, align 8
  %68 = call i32* @audioplay_get_buffer(i32* %67)
  store i32* %68, i32** %18, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 @usleep(i32 10000)
  br label %66

72:                                               ; preds = %66
  %73 = load i32*, i32** %18, align 8
  store i32* %73, i32** %19, align 8
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %117, %72
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @BUFFER_SIZE_SAMPLES, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %120

78:                                               ; preds = %74
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @SIN(i32 %79)
  store i32 %80, i32* %21, align 4
  %81 = load i32, i32* %15, align 4
  %82 = ashr i32 %81, 16
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = ashr i32 %88, 16
  %90 = icmp slt i32 %89, 512
  br i1 %90, label %91, label %94

91:                                               ; preds = %78
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %16, align 4
  br label %97

94:                                               ; preds = %78
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %94, %91
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %113, %97
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @OUT_CHANNELS(i32 %100)
  %102 = icmp ult i32 %99, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %98
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 32
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32*, i32** %19, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %19, align 8
  store i32 0, i32* %107, align 4
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* %21, align 4
  %111 = load i32*, i32** %19, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %19, align 8
  store i32 %110, i32* %111, align 4
  br label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %12, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %98

116:                                              ; preds = %98
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %11, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %74

120:                                              ; preds = %74
  br label %121

121:                                              ; preds = %131, %120
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @audioplay_get_latency(i32* %122)
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @MIN_LATENCY_TIME, align 4
  %126 = load i32, i32* @CTTW_SLEEP_TIME, align 4
  %127 = add nsw i32 %125, %126
  %128 = mul nsw i32 %124, %127
  %129 = sdiv i32 %128, 1000
  %130 = icmp sgt i32 %123, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %121
  %132 = load i32, i32* @CTTW_SLEEP_TIME, align 4
  %133 = mul nsw i32 %132, 1000
  %134 = call i32 @usleep(i32 %133)
  br label %121

135:                                              ; preds = %121
  %136 = load i32*, i32** %9, align 8
  %137 = load i32*, i32** %18, align 8
  %138 = load i32, i32* %17, align 4
  %139 = call i64 @audioplay_play_buffer(i32* %136, i32* %137, i32 %138)
  store i64 %139, i64* %10, align 8
  %140 = load i64, i64* %10, align 8
  %141 = icmp eq i64 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  br label %144

144:                                              ; preds = %135
  %145 = load i32, i32* %13, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %58

147:                                              ; preds = %58
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @audioplay_delete(i32* %148)
  ret void
}

declare dso_local i32 @OUT_CHANNELS(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @audioplay_create(i32**, i32, i32, i32, i32, i32) #1

declare dso_local i64 @audioplay_set_dest(i32*, i32) #1

declare dso_local i32* @audioplay_get_buffer(i32*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @SIN(i32) #1

declare dso_local i32 @audioplay_get_latency(i32*) #1

declare dso_local i64 @audioplay_play_buffer(i32*, i32*, i32) #1

declare dso_local i32 @audioplay_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
