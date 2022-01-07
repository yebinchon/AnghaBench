; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_get_b.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_get_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"r_b scsp : reg %.2X\0A\00", align 1
@scsp_ccr = common dso_local global i32* null, align 8
@scsp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @scsp_get_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsp_get_b(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 63
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 9
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 33
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @SCSPLOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %11, %8, %1
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %56 [
    i32 1, label %16
    i32 4, label %24
    i32 5, label %26
    i32 7, label %28
    i32 8, label %30
    i32 9, label %33
    i32 30, label %41
    i32 31, label %44
    i32 32, label %46
    i32 33, label %49
    i32 44, label %51
    i32 45, label %54
  ]

16:                                               ; preds = %14
  %17 = load i32*, i32** @scsp_ccr, align 8
  %18 = load i32, i32* %3, align 4
  %19 = xor i32 %18, 3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 15
  store i32 %23, i32* %21, align 4
  br label %56

24:                                               ; preds = %14
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 0), align 4
  store i32 %25, i32* %2, align 4
  br label %63

26:                                               ; preds = %14
  %27 = call i32 (...) @scsp_midi_in_read()
  store i32 %27, i32* %2, align 4
  br label %63

28:                                               ; preds = %14
  %29 = call i32 (...) @scsp_midi_out_read()
  store i32 %29, i32* %2, align 4
  br label %63

30:                                               ; preds = %14
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 1), align 4
  %32 = ashr i32 %31, 8
  store i32 %32, i32* %2, align 4
  br label %63

33:                                               ; preds = %14
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 1), align 4
  %35 = and i32 %34, 224
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 2), align 4
  %37 = shl i32 %36, 5
  %38 = or i32 %35, %37
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 3), align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %2, align 4
  br label %63

41:                                               ; preds = %14
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 4), align 4
  %43 = ashr i32 %42, 8
  store i32 %43, i32* %2, align 4
  br label %63

44:                                               ; preds = %14
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 4), align 4
  store i32 %45, i32* %2, align 4
  br label %63

46:                                               ; preds = %14
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 5), align 4
  %48 = ashr i32 %47, 8
  store i32 %48, i32* %2, align 4
  br label %63

49:                                               ; preds = %14
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 5), align 4
  store i32 %50, i32* %2, align 4
  br label %63

51:                                               ; preds = %14
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 6), align 4
  %53 = ashr i32 %52, 8
  store i32 %53, i32* %2, align 4
  br label %63

54:                                               ; preds = %14
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 6), align 4
  store i32 %55, i32* %2, align 4
  br label %63

56:                                               ; preds = %14, %16
  %57 = load i32*, i32** @scsp_ccr, align 8
  %58 = load i32, i32* %3, align 4
  %59 = xor i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %56, %54, %51, %49, %46, %44, %41, %33, %30, %28, %26, %24
  %64 = load i32, i32* %2, align 4
  ret i32 %64
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
