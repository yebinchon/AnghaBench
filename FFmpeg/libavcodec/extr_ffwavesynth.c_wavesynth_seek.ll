; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffwavesynth.c_wavesynth_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffwavesynth.c_wavesynth_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wavesynth_context = type { i32, i32, i32, i64, i32, i32, i32, i64, i32, %struct.ws_interval* }
%struct.ws_interval = type { i64, i64, i32, i64, i64, i64, i64, i64, i64, i32 }

@INF_TS = common dso_local global i64 0, align 8
@PINK_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wavesynth_context*, i64)* @wavesynth_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wavesynth_seek(%struct.wavesynth_context* %0, i64 %1) #0 {
  %3 = alloca %struct.wavesynth_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ws_interval*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.wavesynth_context* %0, %struct.wavesynth_context** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %12 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %11, i32 0, i32 0
  store i32* %12, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %79, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %16 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %82

19:                                               ; preds = %13
  %20 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %21 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %20, i32 0, i32 9
  %22 = load %struct.ws_interval*, %struct.ws_interval** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %22, i64 %24
  store %struct.ws_interval* %25, %struct.ws_interval** %7, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %28 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %82

32:                                               ; preds = %19
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %35 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %79

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %43 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %42, i32 0, i32 2
  store i32* %43, i32** %5, align 8
  %44 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @phi_at(%struct.ws_interval* %44, i64 %45)
  %47 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %48 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %50 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %54 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %58 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = mul nsw i64 %56, %59
  %61 = add nsw i64 %51, %60
  %62 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %63 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %62, i32 0, i32 8
  store i64 %61, i64* %63, align 8
  %64 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %65 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %4, align 8
  %68 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %69 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %73 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = mul nsw i64 %71, %74
  %76 = add nsw i64 %66, %75
  %77 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %78 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %77, i32 0, i32 6
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %39, %38
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %13

82:                                               ; preds = %31, %13
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %85 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %88 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %82
  %92 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %93 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %92, i32 0, i32 9
  %94 = load %struct.ws_interval*, %struct.ws_interval** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %94, i64 %96
  %98 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  br label %102

100:                                              ; preds = %82
  %101 = load i64, i64* @INF_TS, align 8
  br label %102

102:                                              ; preds = %100, %91
  %103 = phi i64 [ %99, %91 ], [ %101, %100 ]
  %104 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %105 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %104, i32 0, i32 3
  store i64 %103, i64* %105, align 8
  %106 = load i32*, i32** %5, align 8
  store i32 -1, i32* %106, align 4
  %107 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %108 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %107, i32 0, i32 8
  %109 = load i64, i64* %4, align 8
  %110 = trunc i64 %109 to i32
  %111 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %112 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %110, %113
  %115 = call i32 @lcg_seek(i32* %108, i32 %114)
  %116 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %117 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %165

120:                                              ; preds = %102
  %121 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %122 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @PINK_UNIT, align 4
  %125 = add nsw i32 %123, %124
  %126 = sub nsw i32 %125, 1
  %127 = load i32, i32* @PINK_UNIT, align 4
  %128 = sub nsw i32 %127, 1
  %129 = xor i32 %128, -1
  %130 = and i32 %126, %129
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %8, align 8
  %132 = load i64, i64* %4, align 8
  %133 = load i32, i32* @PINK_UNIT, align 4
  %134 = sub nsw i32 %133, 1
  %135 = xor i32 %134, -1
  %136 = sext i32 %135 to i64
  %137 = and i64 %132, %136
  store i64 %137, i64* %9, align 8
  %138 = load i64, i64* %4, align 8
  %139 = load i32, i32* @PINK_UNIT, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = and i64 %138, %141
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %10, align 4
  %144 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %145 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %144, i32 0, i32 6
  %146 = load i64, i64* %9, align 8
  %147 = load i64, i64* %8, align 8
  %148 = sub nsw i64 %146, %147
  %149 = trunc i64 %148 to i32
  %150 = mul nsw i32 %149, 2
  %151 = call i32 @lcg_seek(i32* %145, i32 %150)
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %120
  %155 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %156 = call i32 @pink_fill(%struct.wavesynth_context* %155)
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %159 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 4
  br label %164

160:                                              ; preds = %120
  %161 = load i32, i32* @PINK_UNIT, align 4
  %162 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %163 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %160, %154
  br label %165

165:                                              ; preds = %164, %102
  %166 = load i64, i64* %4, align 8
  %167 = trunc i64 %166 to i32
  %168 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %169 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 8
  ret void
}

declare dso_local i32 @phi_at(%struct.ws_interval*, i64) #1

declare dso_local i32 @lcg_seek(i32*, i32) #1

declare dso_local i32 @pink_fill(%struct.wavesynth_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
