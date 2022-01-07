; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_do_turbo.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_do_turbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@do_turbo.turbo_pad = internal global i32 0, align 4
@do_turbo.turbo_cnt = internal global [3 x i8] zeroinitializer, align 1
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @do_turbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_turbo(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %7 = mul nsw i32 %6, 2
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 4096
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @do_turbo.turbo_cnt, i64 0, i64 0), align 1
  %14 = zext i8 %13 to i32
  %15 = add nsw i32 %14, %12
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @do_turbo.turbo_cnt, i64 0, i64 0), align 1
  %17 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @do_turbo.turbo_cnt, i64 0, i64 0), align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sge i32 %18, 60
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load i32, i32* @do_turbo.turbo_pad, align 4
  %22 = xor i32 %21, 16
  store i32 %22, i32* @do_turbo.turbo_pad, align 4
  store i8 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @do_turbo.turbo_cnt, i64 0, i64 0), align 1
  br label %23

23:                                               ; preds = %20, %11
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 8192
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @do_turbo.turbo_cnt, i64 0, i64 1), align 1
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %31, %29
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @do_turbo.turbo_cnt, i64 0, i64 1), align 1
  %34 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @do_turbo.turbo_cnt, i64 0, i64 1), align 1
  %35 = zext i8 %34 to i32
  %36 = icmp sge i32 %35, 60
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @do_turbo.turbo_pad, align 4
  %39 = xor i32 %38, 32
  store i32 %39, i32* @do_turbo.turbo_pad, align 4
  store i8 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @do_turbo.turbo_cnt, i64 0, i64 1), align 1
  br label %40

40:                                               ; preds = %37, %28
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 16384
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @do_turbo.turbo_cnt, i64 0, i64 2), align 1
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %48, %46
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @do_turbo.turbo_cnt, i64 0, i64 2), align 1
  %51 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @do_turbo.turbo_cnt, i64 0, i64 2), align 1
  %52 = zext i8 %51 to i32
  %53 = icmp sge i32 %52, 60
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @do_turbo.turbo_pad, align 4
  %56 = xor i32 %55, 64
  store i32 %56, i32* @do_turbo.turbo_pad, align 4
  store i8 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @do_turbo.turbo_cnt, i64 0, i64 2), align 1
  br label %57

57:                                               ; preds = %54, %45
  br label %58

58:                                               ; preds = %57, %41
  %59 = load i32, i32* @do_turbo.turbo_pad, align 4
  %60 = load i32, i32* %4, align 4
  %61 = ashr i32 %60, 8
  %62 = and i32 %59, %61
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
