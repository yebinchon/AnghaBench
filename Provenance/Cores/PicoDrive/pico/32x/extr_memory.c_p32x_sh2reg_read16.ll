; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_p32x_sh2reg_read16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_p32x_sh2reg_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32*, i32*, i32, i32*, i32 }
%struct.TYPE_10__ = type { i64 }

@Pico32x = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@P32XS_FM = common dso_local global i32 0, align 4
@SH2_STATE_CPOLL = common dso_local global i32 0, align 4
@P32XS_FULL = common dso_local global i32 0, align 4
@EL_32X = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unhandled sysreg r16 [%02x] @%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_10__*)* @p32x_sh2reg_read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p32x_sh2reg_read16(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 0), align 8
  store i32* %8, i32** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 62
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %86 [
    i32 0, label %12
    i32 4, label %29
    i32 6, label %39
    i32 8, label %50
    i32 10, label %50
    i32 12, label %50
    i32 14, label %50
    i32 16, label %50
    i32 18, label %57
    i32 20, label %85
    i32 22, label %85
    i32 24, label %85
    i32 26, label %85
    i32 28, label %85
  ]

12:                                               ; preds = %2
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @P32XS_FM, align 4
  %17 = and i32 %15, %16
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 1), align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %17, %20
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 2), align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %21, %27
  store i32 %28, i32* %3, align 4
  br label %137

29:                                               ; preds = %2
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SH2_STATE_CPOLL, align 4
  %33 = call i32 @sh2_poll_detect(%struct.TYPE_10__* %30, i32 %31, i32 %32, i32 3)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = call i32 @sh2s_sync_on_read(%struct.TYPE_10__* %34)
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 1), align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %137

39:                                               ; preds = %2
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sdiv i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @P32XS_FULL, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = or i32 %48, 16384
  store i32 %49, i32* %3, align 4
  br label %137

50:                                               ; preds = %2, %2, %2, %2, %2
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sdiv i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %3, align 4
  br label %137

57:                                               ; preds = %2
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 3), align 8
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 3), align 8
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 3), align 8
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 4), align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sdiv i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 4), align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 4), align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 3), align 8
  %76 = mul nsw i32 %75, 2
  %77 = call i32 @memmove(i32* %72, i32* %74, i32 %76)
  br label %78

78:                                               ; preds = %60, %57
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sdiv i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %3, align 4
  br label %137

85:                                               ; preds = %2, %2, %2, %2, %2
  store i32 0, i32* %3, align 4
  br label %137

86:                                               ; preds = %2
  %87 = load i32, i32* %4, align 4
  %88 = and i32 %87, 48
  %89 = icmp eq i32 %88, 32
  br i1 %89, label %90, label %118

90:                                               ; preds = %86
  %91 = load i32, i32* %4, align 4
  %92 = and i32 %91, 15
  %93 = sdiv i32 %92, 2
  %94 = shl i32 1, %93
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 5), align 8
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %90
  %100 = load i32, i32* %7, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 5), align 8
  %103 = and i32 %102, %101
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico32x, i32 0, i32 5), align 8
  br label %109

104:                                              ; preds = %90
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @SH2_STATE_CPOLL, align 4
  %108 = call i32 @sh2_poll_detect(%struct.TYPE_10__* %105, i32 %106, i32 %107, i32 3)
  br label %109

109:                                              ; preds = %104, %99
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %111 = call i32 @sh2s_sync_on_read(%struct.TYPE_10__* %110)
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sdiv i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %3, align 4
  br label %137

118:                                              ; preds = %86
  %119 = load i32, i32* %4, align 4
  %120 = and i32 %119, 48
  %121 = icmp eq i32 %120, 48
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = call i32 @sh2_cycles_done_m68k(%struct.TYPE_10__* %125)
  %127 = call i32 @p32x_pwm_read16(i32 %123, %struct.TYPE_10__* %124, i32 %126)
  store i32 %127, i32* %3, align 4
  br label %137

128:                                              ; preds = %118
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %130 = load i32, i32* @EL_32X, align 4
  %131 = load i32, i32* @EL_ANOMALY, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %135 = call i32 @sh2_pc(%struct.TYPE_10__* %134)
  %136 = call i32 @elprintf_sh2(%struct.TYPE_10__* %129, i32 %132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %133, i32 %135)
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %128, %122, %109, %85, %78, %50, %39, %29, %12
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @sh2_poll_detect(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @sh2s_sync_on_read(%struct.TYPE_10__*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @p32x_pwm_read16(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @sh2_cycles_done_m68k(%struct.TYPE_10__*) #1

declare dso_local i32 @elprintf_sh2(%struct.TYPE_10__*, i32, i8*, i32, i32) #1

declare dso_local i32 @sh2_pc(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
