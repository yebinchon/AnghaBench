; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_pwm.c_p32x_pwm_write16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_pwm.c_p32x_pwm_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32 }
%struct.TYPE_3__ = type { i16** }

@EL_PWM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"pwm: %u: w16 %02x %04x (p %d %d)\00", align 1
@Pico32x = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@Pico32xMem = common dso_local global %struct.TYPE_3__* null, align 8
@pwm_irq_reload = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p32x_pwm_write16(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @EL_PWM, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 14
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @elprintf(i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14, i32 %15, i32 %18, i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @consume_fifo(i32* %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 14
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %4
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 1), align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 24
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 15
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Pico32xMem, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i16**, i16*** %38, align 8
  %40 = getelementptr inbounds i16*, i16** %39, i64 1
  %41 = load i16*, i16** %40, align 8
  %42 = getelementptr inbounds i16, i16* %41, i64 0
  store i16 0, i16* %42, align 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Pico32xMem, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i16**, i16*** %44, align 8
  %46 = getelementptr inbounds i16*, i16** %45, i64 0
  %47 = load i16*, i16** %46, align 8
  %48 = getelementptr inbounds i16, i16* %47, i64 0
  store i16 0, i16* %48, align 2
  br label %49

49:                                               ; preds = %36, %30
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 1), align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 24
  store i32 %50, i32* %52, align 4
  %53 = call i32 (...) @p32x_pwm_ctl_changed()
  %54 = load i32, i32* @pwm_irq_reload, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 2), align 8
  br label %155

55:                                               ; preds = %4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 4095
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 1), align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 25
  store i32 %60, i32* %62, align 4
  %63 = call i32 (...) @p32x_pwm_ctl_changed()
  br label %154

64:                                               ; preds = %55
  %65 = load i32, i32* %5, align 4
  %66 = icmp ule i32 %65, 8
  br i1 %66, label %67, label %153

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = sub i32 %68, 1
  %70 = and i32 %69, 4095
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 8
  br i1 %75, label %76, label %111

76:                                               ; preds = %73, %67
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Pico32xMem, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i16**, i16*** %78, align 8
  %80 = getelementptr inbounds i16*, i16** %79, i64 0
  %81 = load i16*, i16** %80, align 8
  store i16* %81, i16** %9, align 8
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 3
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %102

91:                                               ; preds = %76
  %92 = load i16*, i16** %9, align 8
  %93 = getelementptr inbounds i16, i16* %92, i64 2
  %94 = load i16, i16* %93, align 2
  %95 = load i16*, i16** %9, align 8
  %96 = getelementptr inbounds i16, i16* %95, i64 1
  store i16 %94, i16* %96, align 2
  %97 = load i16*, i16** %9, align 8
  %98 = getelementptr inbounds i16, i16* %97, i64 3
  %99 = load i16, i16* %98, align 2
  %100 = load i16*, i16** %9, align 8
  %101 = getelementptr inbounds i16, i16* %100, i64 2
  store i16 %99, i16* %101, align 2
  br label %102

102:                                              ; preds = %91, %86
  %103 = load i32, i32* %6, align 4
  %104 = trunc i32 %103 to i16
  %105 = load i16*, i16** %9, align 8
  %106 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i16, i16* %105, i64 %109
  store i16 %104, i16* %110, align 2
  br label %111

111:                                              ; preds = %102, %73
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %112, 6
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, 8
  br i1 %116, label %117, label %152

117:                                              ; preds = %114, %111
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Pico32xMem, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i16**, i16*** %119, align 8
  %121 = getelementptr inbounds i16*, i16** %120, i64 1
  %122 = load i16*, i16** %121, align 8
  store i16* %122, i16** %10, align 8
  %123 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %125, 3
  br i1 %126, label %127, label %132

127:                                              ; preds = %117
  %128 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %143

132:                                              ; preds = %117
  %133 = load i16*, i16** %10, align 8
  %134 = getelementptr inbounds i16, i16* %133, i64 2
  %135 = load i16, i16* %134, align 2
  %136 = load i16*, i16** %10, align 8
  %137 = getelementptr inbounds i16, i16* %136, i64 1
  store i16 %135, i16* %137, align 2
  %138 = load i16*, i16** %10, align 8
  %139 = getelementptr inbounds i16, i16* %138, i64 3
  %140 = load i16, i16* %139, align 2
  %141 = load i16*, i16** %10, align 8
  %142 = getelementptr inbounds i16, i16* %141, i64 2
  store i16 %140, i16* %142, align 2
  br label %143

143:                                              ; preds = %132, %127
  %144 = load i32, i32* %6, align 4
  %145 = trunc i32 %144 to i16
  %146 = load i16*, i16** %10, align 8
  %147 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i16, i16* %146, i64 %150
  store i16 %145, i16* %151, align 2
  br label %152

152:                                              ; preds = %143, %114
  br label %153

153:                                              ; preds = %152, %64
  br label %154

154:                                              ; preds = %153, %58
  br label %155

155:                                              ; preds = %154, %49
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @consume_fifo(i32*, i32) #1

declare dso_local i32 @p32x_pwm_ctl_changed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
