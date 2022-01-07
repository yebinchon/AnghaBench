; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/pico/extr_pico.c_PicoLinePico.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/pico/extr_pico.c_PicoLinePico.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i64 }

@PicoPicohw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@prev_line_cnt_irq3 = common dso_local global i32 0, align 4
@EL_PICOHW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"irq3\00", align 1
@fifo_bytes_line = common dso_local global i64 0, align 8
@PICOHW_FIFO_IRQ_THRESHOLD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"irq3, fb=%i\00", align 1
@prev_line_cnt_irq5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PicoLinePico to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PicoLinePico() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 0), align 8
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 0), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 1), align 4
  %4 = and i32 %3, 16387
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 0), align 8
  %8 = load i32, i32* @prev_line_cnt_irq3, align 4
  %9 = sub nsw i32 %7, %8
  %10 = icmp sgt i32 %9, 200
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 0), align 8
  store i32 %12, i32* @prev_line_cnt_irq3, align 4
  %13 = load i32, i32* @EL_PICOHW, align 4
  %14 = call i32 (i32, i8*, ...) @elprintf(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @SekInterrupt(i32 3)
  br label %57

16:                                               ; preds = %6, %0
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 2), align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = load i64, i64* @fifo_bytes_line, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 3), align 8
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 3), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 3), align 8
  %26 = icmp sge i32 %25, 65536
  br i1 %26, label %27, label %39

27:                                               ; preds = %19
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 3), align 8
  %29 = ashr i32 %28, 16
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 2), align 8
  %32 = sub nsw i64 %31, %30
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 2), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 3), align 8
  %34 = and i32 %33, 65535
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 3), align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 2), align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 2), align 8
  br label %38

38:                                               ; preds = %37, %27
  br label %39

39:                                               ; preds = %38, %19
  br label %41

40:                                               ; preds = %16
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 3), align 8
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 4), align 8
  %43 = load i64, i64* @PICOHW_FIFO_IRQ_THRESHOLD, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 2), align 8
  %47 = load i64, i64* @PICOHW_FIFO_IRQ_THRESHOLD, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 0), align 8
  store i32 %50, i32* @prev_line_cnt_irq3, align 4
  %51 = load i32, i32* @EL_PICOHW, align 4
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 2), align 8
  %53 = call i32 (i32, i8*, ...) @elprintf(i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = call i32 @SekInterrupt(i32 3)
  br label %55

55:                                               ; preds = %49, %45, %41
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 2), align 8
  store i64 %56, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 4), align 8
  br label %57

57:                                               ; preds = %55, %11
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, ...) #1

declare dso_local i32 @SekInterrupt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
