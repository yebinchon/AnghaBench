; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_stream_check_for_ts.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_stream_check_for_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @hb_stream_check_for_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_stream_check_for_ts(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 16, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %61, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = mul nsw i32 %8, 188
  %10 = sub nsw i32 8192, %9
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %64

12:                                               ; preds = %6
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @have_ts_sync(i32* %16, i32 188, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 %21, 8
  %23 = or i32 188, %22
  store i32 %23, i32* %2, align 4
  br label %65

24:                                               ; preds = %12
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @have_ts_sync(i32* %28, i32 192, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 192, %34
  store i32 %35, i32* %2, align 4
  br label %65

36:                                               ; preds = %24
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @have_ts_sync(i32* %40, i32 204, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = shl i32 %45, 8
  %47 = or i32 204, %46
  store i32 %47, i32* %2, align 4
  br label %65

48:                                               ; preds = %36
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @have_ts_sync(i32* %52, i32 208, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* %4, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 208, %58
  store i32 %59, i32* %2, align 4
  br label %65

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %6

64:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %56, %44, %32, %20
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @have_ts_sync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
