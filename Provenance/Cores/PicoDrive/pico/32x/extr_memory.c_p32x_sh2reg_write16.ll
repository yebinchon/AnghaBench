; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_p32x_sh2reg_write16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_p32x_sh2reg_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32, i32*, i32 }
%struct.TYPE_12__ = type { i64, i32, i64 }

@Pico32x = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@P32XF_68KCPOLL = common dso_local global i32 0, align 4
@SH2_STATE_CPOLL = common dso_local global i32 0, align 4
@P32XS_FM = common dso_local global i32 0, align 4
@P32XI_VRES = common dso_local global i32 0, align 4
@P32XI_VINT = common dso_local global i32 0, align 4
@P32XI_HINT = common dso_local global i32 0, align 4
@P32XI_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_12__*)* @p32x_sh2reg_write16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p32x_sh2reg_write16(i32 %0, i32 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 62
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 48
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %15, label %48

15:                                               ; preds = %3
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 0), align 8
  %17 = load i32, i32* %4, align 4
  %18 = sdiv i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %137

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 0), align 8
  %28 = load i32, i32* %4, align 4
  %29 = sdiv i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32 %26, i32* %31, align 4
  %32 = load i32, i32* @P32XF_68KCPOLL, align 4
  %33 = call i32 @p32x_m68k_poll_event(i32 %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SH2_STATE_CPOLL, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = call i32 @sh2_cycles_done_m68k(%struct.TYPE_12__* %38)
  %40 = call i32 @p32x_sh2_poll_event(i32 %36, i32 %37, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 15
  %43 = sdiv i32 %42, 2
  %44 = shl i32 1, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 1), align 8
  %47 = or i32 %46, %45
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 1), align 8
  br label %137

48:                                               ; preds = %3
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 48
  %51 = icmp eq i32 %50, 48
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = call i32 @sh2_cycles_done_m68k(%struct.TYPE_12__* %56)
  %58 = call i32 @p32x_pwm_write16(i32 %53, i32 %54, %struct.TYPE_12__* %55, i32 %57)
  br label %137

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  switch i32 %61, label %128 [
    i32 0, label %62
    i32 20, label %76
    i32 22, label %81
    i32 24, label %91
    i32 26, label %101
    i32 28, label %114
  ]

62:                                               ; preds = %60
  %63 = load i32, i32* @P32XS_FM, align 4
  %64 = xor i32 %63, -1
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 0), align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @P32XS_FM, align 4
  %71 = and i32 %69, %70
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 0), align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %128

76:                                               ; preds = %60
  %77 = load i32, i32* @P32XI_VRES, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 3), align 8
  %80 = and i32 %79, %78
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 3), align 8
  br label %134

81:                                               ; preds = %60
  %82 = load i32, i32* @P32XI_VINT, align 4
  %83 = xor i32 %82, -1
  %84 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 2), align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %83
  store i32 %90, i32* %88, align 4
  br label %134

91:                                               ; preds = %60
  %92 = load i32, i32* @P32XI_HINT, align 4
  %93 = xor i32 %92, -1
  %94 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 2), align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %93
  store i32 %100, i32* %98, align 4
  br label %134

101:                                              ; preds = %60
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = shl i32 1, %105
  %107 = xor i32 %106, -1
  %108 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 0), align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %113 = call i32 @p32x_update_cmd_irq(%struct.TYPE_12__* %112, i32 0)
  br label %137

114:                                              ; preds = %60
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %116 = call i32 @p32x_pwm_sync_to_sh2(%struct.TYPE_12__* %115)
  %117 = load i32, i32* @P32XI_PWM, align 4
  %118 = xor i32 %117, -1
  %119 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 2), align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %118
  store i32 %125, i32* %123, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %127 = call i32 @p32x_pwm_schedule_sh2(%struct.TYPE_12__* %126)
  br label %134

128:                                              ; preds = %60, %62
  %129 = load i32, i32* %4, align 4
  %130 = or i32 %129, 1
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %133 = call i32 @p32x_sh2reg_write8(i32 %130, i32 %131, %struct.TYPE_12__* %132)
  br label %137

134:                                              ; preds = %114, %91, %81, %76
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %136 = call i32 @p32x_update_irls(%struct.TYPE_12__* %135, i32 0)
  br label %137

137:                                              ; preds = %134, %128, %101, %52, %25, %24
  ret void
}

declare dso_local i32 @p32x_m68k_poll_event(i32) #1

declare dso_local i32 @p32x_sh2_poll_event(i32, i32, i32) #1

declare dso_local i32 @sh2_cycles_done_m68k(%struct.TYPE_12__*) #1

declare dso_local i32 @p32x_pwm_write16(i32, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @p32x_update_cmd_irq(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @p32x_pwm_sync_to_sh2(%struct.TYPE_12__*) #1

declare dso_local i32 @p32x_pwm_schedule_sh2(%struct.TYPE_12__*) #1

declare dso_local i32 @p32x_sh2reg_write8(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @p32x_update_irls(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
