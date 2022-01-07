; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_YM2612Write_.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_YM2612Write_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ym2612 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SLOT1 = common dso_local global i32 0, align 4
@SLOT2 = common dso_local global i32 0, align 4
@SLOT3 = common dso_local global i32 0, align 4
@SLOT4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YM2612Write_(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 255
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 3
  switch i32 %11, label %128 [
    i32 0, label %12
    i32 1, label %14
    i32 2, label %116
    i32 3, label %118
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 3, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  store i32 0, i32* %6, align 4
  br label %128

14:                                               ; preds = %2
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %128

18:                                               ; preds = %14
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 3, i32 0, i32 0), align 8
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 240
  switch i32 %21, label %111 [
    i32 32, label %22
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %109 [
    i32 34, label %24
    i32 39, label %37
    i32 40, label %40
    i32 42, label %102
    i32 43, label %106
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 3, i32 2), align 8
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 7
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 3, i32 1), align 4
  br label %36

35:                                               ; preds = %24
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 3, i32 1), align 4
  br label %36

36:                                               ; preds = %35, %28
  br label %110

37:                                               ; preds = %22
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @set_timers(i32 %38)
  store i32 0, i32* %6, align 4
  br label %110

40:                                               ; preds = %22
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 3
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %110

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 3
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 16
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SLOT1, align 4
  %60 = call i32 @FM_KEYON(i32 %58, i32 %59)
  br label %65

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @SLOT1, align 4
  %64 = call i32 @FM_KEYOFF(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @SLOT2, align 4
  %72 = call i32 @FM_KEYON(i32 %70, i32 %71)
  br label %77

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @SLOT2, align 4
  %76 = call i32 @FM_KEYOFF(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %4, align 4
  %79 = and i32 %78, 64
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @SLOT3, align 4
  %84 = call i32 @FM_KEYON(i32 %82, i32 %83)
  br label %89

85:                                               ; preds = %77
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @SLOT3, align 4
  %88 = call i32 @FM_KEYOFF(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, 128
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @SLOT4, align 4
  %96 = call i32 @FM_KEYON(i32 %94, i32 %95)
  br label %101

97:                                               ; preds = %89
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @SLOT4, align 4
  %100 = call i32 @FM_KEYOFF(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %93
  br label %110

102:                                              ; preds = %22
  %103 = load i32, i32* %4, align 4
  %104 = sub nsw i32 %103, 128
  %105 = shl i32 %104, 6
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 1), align 4
  store i32 0, i32* %6, align 4
  br label %110

106:                                              ; preds = %22
  %107 = load i32, i32* %4, align 4
  %108 = and i32 %107, 128
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 2), align 8
  store i32 0, i32* %6, align 4
  br label %110

109:                                              ; preds = %22
  br label %110

110:                                              ; preds = %109, %106, %102, %101, %45, %37, %36
  br label %115

111:                                              ; preds = %18
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @OPNWriteReg(i32 %112, i32 %113)
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %111, %110
  br label %128

116:                                              ; preds = %2
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 3, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  store i32 0, i32* %6, align 4
  br label %128

118:                                              ; preds = %2
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %120 = icmp ne i32 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 0, i32* %6, align 4
  br label %128

122:                                              ; preds = %118
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 3, i32 0, i32 0), align 8
  %124 = or i32 %123, 256
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @OPNWriteReg(i32 %125, i32 %126)
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %2, %122, %121, %116, %115, %17, %12
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i32 @set_timers(i32) #1

declare dso_local i32 @FM_KEYON(i32, i32) #1

declare dso_local i32 @FM_KEYOFF(i32, i32) #1

declare dso_local i32 @OPNWriteReg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
