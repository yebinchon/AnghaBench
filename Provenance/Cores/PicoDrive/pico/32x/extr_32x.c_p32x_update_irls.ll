; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_p32x_update_irls.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_p32x_update_irls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@Pico32x = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@msh2 = common dso_local global i32 0, align 4
@SH2_IDLE_STATES = common dso_local global i32 0, align 4
@ssh2 = common dso_local global i32 0, align 4
@EL_32X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"update_irls: m %d/%d, s %d/%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p32x_update_irls(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @sh2_cycles_done_m68k(i32* %13)
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 1), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %25, %15
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %21

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 1), align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %31, %34
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %40, %28
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %36

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %44, 2
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = icmp eq i32* %47, @msh2
  %49 = zext i1 %48 to i32
  %50 = call i32 @sh2_irl_irq(i32* @msh2, i32 %46, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %43
  %54 = load i32, i32* @SH2_IDLE_STATES, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @p32x_sh2_poll_event(i32* @msh2, i32 %54, i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = icmp eq i32* %57, @msh2
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @sh2_end_run(i32* %60, i32 1)
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %7, align 4
  %65 = load i32*, i32** %3, align 8
  %66 = icmp eq i32* %65, @ssh2
  %67 = zext i1 %66 to i32
  %68 = call i32 @sh2_irl_irq(i32* @ssh2, i32 %64, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %63
  %72 = load i32, i32* @SH2_IDLE_STATES, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @p32x_sh2_poll_event(i32* @ssh2, i32 %72, i32 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = icmp eq i32* %75, @ssh2
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @sh2_end_run(i32* %78, i32 1)
  br label %80

80:                                               ; preds = %77, %71
  br label %81

81:                                               ; preds = %80, %63
  %82 = load i32, i32* @EL_32X, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @elprintf(i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84, i32 %85, i32 %86)
  ret void
}

declare dso_local i32 @sh2_cycles_done_m68k(i32*) #1

declare dso_local i32 @sh2_irl_irq(i32*, i32, i32) #1

declare dso_local i32 @p32x_sh2_poll_event(i32*, i32, i32) #1

declare dso_local i32 @sh2_end_run(i32*, i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
