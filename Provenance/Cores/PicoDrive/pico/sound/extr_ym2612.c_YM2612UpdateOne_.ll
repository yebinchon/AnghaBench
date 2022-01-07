; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_YM2612UpdateOne_.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_YM2612UpdateOne_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ym2612 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YM2612UpdateOne_(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %15, %16
  %18 = call i32 @memset32(i32* %14, i32 0, i32 %17)
  br label %19

19:                                               ; preds = %13, %4
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 3), align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = call i32 @refresh_fc_eg_chan(i32* %21)
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 3), align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = call i32 @refresh_fc_eg_chan(i32* %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 2, i32 1, i32 0), align 4
  %27 = and i32 %26, 192
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = call i32 (...) @refresh_fc_eg_chan_sl3()
  br label %35

31:                                               ; preds = %19
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 3), align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = call i32 @refresh_fc_eg_chan(i32* %33)
  br label %35

35:                                               ; preds = %31, %29
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 3), align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = call i32 @refresh_fc_eg_chan(i32* %37)
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 3), align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = call i32 @refresh_fc_eg_chan(i32* %40)
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 3), align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 5
  %44 = call i32 @refresh_fc_eg_chan(i32* %43)
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 2, i32 0), align 8
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %35
  %50 = call i32 (...) @chan_render_prep()
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %52 = and i32 %51, 15
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 3
  %60 = shl i32 %59, 4
  %61 = or i32 %57, %60
  %62 = call i32 @chan_render(i32* %55, i32 %56, i32 0, i32 %61)
  %63 = shl i32 %62, 0
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %54, %49
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %68 = and i32 %67, 240
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, 12
  %76 = shl i32 %75, 2
  %77 = or i32 %73, %76
  %78 = call i32 @chan_render(i32* %71, i32 %72, i32 1, i32 %77)
  %79 = shl i32 %78, 1
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %70, %66
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %84 = and i32 %83, 3840
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, 48
  %92 = or i32 %89, %91
  %93 = call i32 @chan_render(i32* %87, i32 %88, i32 2, i32 %92)
  %94 = shl i32 %93, 2
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %86, %82
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %99 = and i32 %98, 61440
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, 192
  %107 = ashr i32 %106, 2
  %108 = or i32 %104, %107
  %109 = call i32 @chan_render(i32* %102, i32 %103, i32 3, i32 %108)
  %110 = shl i32 %109, 3
  %111 = load i32, i32* %10, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %101, %97
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %115 = and i32 %114, 983040
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %9, align 4
  %122 = and i32 %121, 768
  %123 = ashr i32 %122, 4
  %124 = or i32 %120, %123
  %125 = call i32 @chan_render(i32* %118, i32 %119, i32 4, i32 %124)
  %126 = shl i32 %125, 4
  %127 = load i32, i32* %10, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %117, %113
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %131 = and i32 %130, 15728640
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %129
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %9, align 4
  %138 = and i32 %137, 3072
  %139 = ashr i32 %138, 6
  %140 = or i32 %136, %139
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 1), align 4
  %142 = shl i32 %141, 2
  %143 = or i32 %140, %142
  %144 = call i32 @chan_render(i32* %134, i32 %135, i32 5, i32 %143)
  %145 = shl i32 %144, 5
  %146 = load i32, i32* %10, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %133, %129
  %149 = call i32 (...) @chan_render_finish()
  %150 = load i32, i32* %10, align 4
  ret i32 %150
}

declare dso_local i32 @memset32(i32*, i32, i32) #1

declare dso_local i32 @refresh_fc_eg_chan(i32*) #1

declare dso_local i32 @refresh_fc_eg_chan_sl3(...) #1

declare dso_local i32 @chan_render_prep(...) #1

declare dso_local i32 @chan_render(i32*, i32, i32, i32) #1

declare dso_local i32 @chan_render_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
