; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_get_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_get_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"r_w scsp : reg %.2X\0A\00", align 1
@scsp_ccr = common dso_local global i32* null, align 8
@scsp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @scsp_get_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsp_get_w(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 62
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 32
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 8
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %12, 2
  %14 = call i32 @SCSPLOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %8, %1
  %16 = load i32, i32* %3, align 4
  switch i32 %16, label %55 [
    i32 0, label %17
    i32 4, label %25
    i32 6, label %30
    i32 8, label %32
    i32 24, label %40
    i32 26, label %43
    i32 28, label %46
    i32 30, label %49
    i32 32, label %51
    i32 44, label %53
  ]

17:                                               ; preds = %15
  %18 = load i32*, i32** @scsp_ccr, align 8
  %19 = load i32, i32* %3, align 4
  %20 = xor i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 65295
  store i32 %24, i32* %22, align 4
  br label %55

25:                                               ; preds = %15
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 0), align 4
  %27 = shl i32 %26, 8
  %28 = call i32 (...) @scsp_midi_in_read()
  %29 = or i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %62

30:                                               ; preds = %15
  %31 = call i32 (...) @scsp_midi_out_read()
  store i32 %31, i32* %2, align 4
  br label %62

32:                                               ; preds = %15
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 1), align 4
  %34 = and i32 %33, 1920
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 2), align 4
  %36 = shl i32 %35, 5
  %37 = or i32 %34, %36
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 3), align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %2, align 4
  br label %62

40:                                               ; preds = %15
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 4), align 4
  %42 = shl i32 %41, 8
  store i32 %42, i32* %2, align 4
  br label %62

43:                                               ; preds = %15
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 5), align 4
  %45 = shl i32 %44, 8
  store i32 %45, i32* %2, align 4
  br label %62

46:                                               ; preds = %15
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 6), align 4
  %48 = shl i32 %47, 8
  store i32 %48, i32* %2, align 4
  br label %62

49:                                               ; preds = %15
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 7), align 4
  store i32 %50, i32* %2, align 4
  br label %62

51:                                               ; preds = %15
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 8), align 4
  store i32 %52, i32* %2, align 4
  br label %62

53:                                               ; preds = %15
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 9), align 4
  store i32 %54, i32* %2, align 4
  br label %62

55:                                               ; preds = %15, %17
  %56 = load i32*, i32** @scsp_ccr, align 8
  %57 = load i32, i32* %3, align 4
  %58 = xor i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %55, %53, %51, %49, %46, %43, %40, %32, %30, %25
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @SCSPLOG(i8*, i32) #1

declare dso_local i32 @scsp_midi_in_read(...) #1

declare dso_local i32 @scsp_midi_out_read(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
