; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_pRNG.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_pRNG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pRNG.div_tbl = internal constant [9 x [2 x i32]] [[2 x i32] [i32 8332, i32 -2147483647], [2 x i32] [i32 4545, i32 0], [2 x i32] [i32 3124, i32 -1342177280], [2 x i32] [i32 2380, i32 -1227133501], [2 x i32] [i32 1922, i32 -495573146], [2 x i32] [i32 1612, i32 -1108378637], [2 x i32] [i32 1388, i32 -1073741800], [2 x i32] [i32 1219, i32 1676084800], [2 x i32] [i32 1086, i32 -653581951]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @pRNG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pRNG(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @MUL16(i32 %10, i32 1877)
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp uge i32 %14, 65535
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  %18 = sub i32 %17, 65535
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @MULH(i32 477218589, i32 %21)
  %23 = mul nsw i32 9, %22
  %24 = sub i32 %20, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [9 x [2 x i32]], [9 x [2 x i32]]* @pRNG.div_tbl, i64 0, i64 %27
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  %30 = load i32, i32* %29, align 8
  %31 = mul i32 %25, %30
  %32 = zext i32 %31 to i64
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [9 x [2 x i32]], [9 x [2 x i32]]* @pRNG.div_tbl, i64 0, i64 %35
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @UMULH(i32 %33, i32 %38)
  %40 = add nsw i64 %32, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 1000, %43
  %45 = urem i32 %42, %44
  ret i32 %45
}

declare dso_local i32 @MUL16(i32, i32) #1

declare dso_local i32 @MULH(i32, i32) #1

declare dso_local i64 @UMULH(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
