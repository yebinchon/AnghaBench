; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcdsp.c_sbc_calc_scalefactors.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcdsp.c_sbc_calc_scalefactors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCALE_OUT_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([2 x [8 x i32]]*, [8 x i32]*, i32, i32, i32)* @sbc_calc_scalefactors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbc_calc_scalefactors([2 x [8 x i32]]* %0, [8 x i32]* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca [2 x [8 x i32]]*, align 8
  %7 = alloca [8 x i32]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store [2 x [8 x i32]]* %0, [2 x [8 x i32]]** %6, align 8
  store [8 x i32]* %1, [8 x i32]** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %73, %5
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %76

20:                                               ; preds = %16
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %69, %20
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %72

25:                                               ; preds = %21
  %26 = load i32, i32* @SCALE_OUT_BITS, align 4
  %27 = shl i32 1, %26
  store i32 %27, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %53, %25
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load [2 x [8 x i32]]*, [2 x [8 x i32]]** %6, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %33, i64 %35
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %36, i64 0, i64 %38
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %39, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @FFABS(i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load i32, i32* %15, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %14, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %47, %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %28

56:                                               ; preds = %28
  %57 = load i32, i32* @SCALE_OUT_BITS, align 4
  %58 = sub nsw i32 31, %57
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @ff_clz(i32 %59)
  %61 = sub nsw i32 %58, %60
  %62 = load [8 x i32]*, [8 x i32]** %7, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %62, i64 %64
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %65, i64 0, i64 %67
  store i32 %61, i32* %68, align 4
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %21

72:                                               ; preds = %21
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %16

76:                                               ; preds = %16
  ret void
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @ff_clz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
