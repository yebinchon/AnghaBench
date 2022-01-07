; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_pwm.c_consume_fifo_do.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_pwm.c_consume_fifo_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pico32xMem = type { i16**, i8**, i8** }
%struct.TYPE_2__ = type { i64*, i64, i32 }

@Pico32xMem = common dso_local global %struct.Pico32xMem* null, align 8
@pwm_cycles = common dso_local global i32 0, align 4
@pwm_doing_fifo = common dso_local global i32 0, align 4
@EL_PWM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"pwm: %u: consume %d/%d, %d,%d ptr %d\00", align 1
@Pico32x = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pwm_ptr = common dso_local global i32 0, align 4
@PWM_BUFF_LEN = common dso_local global i32 0, align 4
@pwm_irq_reload = common dso_local global i64 0, align 8
@pwm_silent = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @consume_fifo_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @consume_fifo_do(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Pico32xMem*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.Pico32xMem*, %struct.Pico32xMem** @Pico32xMem, align 8
  store %struct.Pico32xMem* %11, %struct.Pico32xMem** %7, align 8
  %12 = load %struct.Pico32xMem*, %struct.Pico32xMem** %7, align 8
  %13 = getelementptr inbounds %struct.Pico32xMem, %struct.Pico32xMem* %12, i32 0, i32 0
  %14 = load i16**, i16*** %13, align 8
  %15 = getelementptr inbounds i16*, i16** %14, i64 0
  %16 = load i16*, i16** %15, align 8
  store i16* %16, i16** %8, align 8
  %17 = load %struct.Pico32xMem*, %struct.Pico32xMem** %7, align 8
  %18 = getelementptr inbounds %struct.Pico32xMem, %struct.Pico32xMem* %17, i32 0, i32 0
  %19 = load i16**, i16*** %18, align 8
  %20 = getelementptr inbounds i16*, i16** %19, i64 1
  %21 = load i16*, i16** %20, align 8
  store i16* %21, i16** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* @pwm_cycles, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @pwm_doing_fifo, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %3
  br label %183

28:                                               ; preds = %24
  %29 = load i32, i32* @EL_PWM, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @pwm_cycles, align 4
  %34 = sdiv i32 %32, %33
  %35 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @pwm_ptr, align 4
  %42 = call i32 @elprintf(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %34, i64 %37, i64 %40, i32 %41)
  store i32 1, i32* @pwm_doing_fifo, align 4
  br label %43

43:                                               ; preds = %171, %28
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @pwm_cycles, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %175

47:                                               ; preds = %43
  %48 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %89

52:                                               ; preds = %47
  %53 = load i16*, i16** %8, align 8
  %54 = getelementptr inbounds i16, i16* %53, i64 1
  %55 = load i16, i16* %54, align 2
  %56 = load i16*, i16** %8, align 8
  %57 = getelementptr inbounds i16, i16* %56, i64 0
  store i16 %55, i16* %57, align 2
  %58 = load i16*, i16** %8, align 8
  %59 = getelementptr inbounds i16, i16* %58, i64 2
  %60 = load i16, i16* %59, align 2
  %61 = load i16*, i16** %8, align 8
  %62 = getelementptr inbounds i16, i16* %61, i64 1
  store i16 %60, i16* %62, align 2
  %63 = load i16*, i16** %8, align 8
  %64 = getelementptr inbounds i16, i16* %63, i64 3
  %65 = load i16, i16* %64, align 2
  %66 = load i16*, i16** %8, align 8
  %67 = getelementptr inbounds i16, i16* %66, i64 2
  store i16 %65, i16* %67, align 2
  %68 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* %69, align 8
  %72 = load i16*, i16** %8, align 8
  %73 = getelementptr inbounds i16, i16* %72, i64 0
  %74 = load i16, i16* %73, align 2
  %75 = call i8* @convert_sample(i16 zeroext %74)
  %76 = load %struct.Pico32xMem*, %struct.Pico32xMem** %7, align 8
  %77 = getelementptr inbounds %struct.Pico32xMem, %struct.Pico32xMem* %76, i32 0, i32 1
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  store i8* %75, i8** %79, align 8
  %80 = load %struct.Pico32xMem*, %struct.Pico32xMem** %7, align 8
  %81 = getelementptr inbounds %struct.Pico32xMem, %struct.Pico32xMem* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr i8, i8* %84, i64 %86
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %52, %47
  %90 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %131

94:                                               ; preds = %89
  %95 = load i16*, i16** %9, align 8
  %96 = getelementptr inbounds i16, i16* %95, i64 1
  %97 = load i16, i16* %96, align 2
  %98 = load i16*, i16** %9, align 8
  %99 = getelementptr inbounds i16, i16* %98, i64 0
  store i16 %97, i16* %99, align 2
  %100 = load i16*, i16** %9, align 8
  %101 = getelementptr inbounds i16, i16* %100, i64 2
  %102 = load i16, i16* %101, align 2
  %103 = load i16*, i16** %9, align 8
  %104 = getelementptr inbounds i16, i16* %103, i64 1
  store i16 %102, i16* %104, align 2
  %105 = load i16*, i16** %9, align 8
  %106 = getelementptr inbounds i16, i16* %105, i64 3
  %107 = load i16, i16* %106, align 2
  %108 = load i16*, i16** %9, align 8
  %109 = getelementptr inbounds i16, i16* %108, i64 2
  store i16 %107, i16* %109, align 2
  %110 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, -1
  store i64 %113, i64* %111, align 8
  %114 = load i16*, i16** %9, align 8
  %115 = getelementptr inbounds i16, i16* %114, i64 0
  %116 = load i16, i16* %115, align 2
  %117 = call i8* @convert_sample(i16 zeroext %116)
  %118 = load %struct.Pico32xMem*, %struct.Pico32xMem** %7, align 8
  %119 = getelementptr inbounds %struct.Pico32xMem, %struct.Pico32xMem* %118, i32 0, i32 1
  %120 = load i8**, i8*** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 1
  store i8* %117, i8** %121, align 8
  %122 = load %struct.Pico32xMem*, %struct.Pico32xMem** %7, align 8
  %123 = getelementptr inbounds %struct.Pico32xMem, %struct.Pico32xMem* %122, i32 0, i32 1
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 1
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr i8, i8* %126, i64 %128
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %94, %89
  %132 = load %struct.Pico32xMem*, %struct.Pico32xMem** %7, align 8
  %133 = getelementptr inbounds %struct.Pico32xMem, %struct.Pico32xMem* %132, i32 0, i32 1
  %134 = load i8**, i8*** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 0
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.Pico32xMem*, %struct.Pico32xMem** %7, align 8
  %138 = getelementptr inbounds %struct.Pico32xMem, %struct.Pico32xMem* %137, i32 0, i32 2
  %139 = load i8**, i8*** %138, align 8
  %140 = load i32, i32* @pwm_ptr, align 4
  %141 = mul nsw i32 %140, 2
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %139, i64 %142
  store i8* %136, i8** %143, align 8
  %144 = load %struct.Pico32xMem*, %struct.Pico32xMem** %7, align 8
  %145 = getelementptr inbounds %struct.Pico32xMem, %struct.Pico32xMem* %144, i32 0, i32 1
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 1
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.Pico32xMem*, %struct.Pico32xMem** %7, align 8
  %150 = getelementptr inbounds %struct.Pico32xMem, %struct.Pico32xMem* %149, i32 0, i32 2
  %151 = load i8**, i8*** %150, align 8
  %152 = load i32, i32* @pwm_ptr, align 4
  %153 = mul nsw i32 %152, 2
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %151, i64 %155
  store i8* %148, i8** %156, align 8
  %157 = load i32, i32* @pwm_ptr, align 4
  %158 = add nsw i32 %157, 1
  %159 = load i32, i32* @PWM_BUFF_LEN, align 4
  %160 = sub nsw i32 %159, 1
  %161 = and i32 %158, %160
  store i32 %161, i32* @pwm_ptr, align 4
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 1), align 8
  %163 = add nsw i64 %162, -1
  store i64 %163, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 1), align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %131
  %166 = load i64, i64* @pwm_irq_reload, align 8
  store i64 %166, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 1), align 8
  %167 = load i32*, i32** %4, align 8
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @do_pwm_irq(i32* %167, i32 %168)
  br label %170

170:                                              ; preds = %165, %131
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* @pwm_cycles, align 4
  %173 = load i32, i32* %6, align 4
  %174 = sub nsw i32 %173, %172
  store i32 %174, i32* %6, align 4
  br label %43

175:                                              ; preds = %43
  %176 = load i32, i32* %5, align 4
  %177 = mul i32 %176, 3
  %178 = load i32, i32* %6, align 4
  %179 = sub i32 %177, %178
  store i32 %179, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 2), align 8
  store i32 0, i32* @pwm_doing_fifo, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  store i64 0, i64* @pwm_silent, align 8
  br label %183

183:                                              ; preds = %27, %182, %175
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32, i64, i64, i32) #1

declare dso_local i8* @convert_sample(i16 zeroext) #1

declare dso_local i32 @do_pwm_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
