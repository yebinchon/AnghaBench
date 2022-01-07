; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btstack_hid_joypad_axis.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btstack_hid_joypad_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@AXIS_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i64)* @btstack_hid_joypad_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btstack_hid_joypad_axis(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @AXIS_NONE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %61

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @AXIS_NEG_GET(i64 %17)
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %6, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @AXIS_NEG_GET(i64 %28)
  %30 = call i64 @pad_connection_get_axis(i32* %26, i32 %27, i32 %29)
  %31 = load i64, i64* %9, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %35, %20
  br label %59

37:                                               ; preds = %16
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @AXIS_POS_GET(i64 %38)
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %6, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @AXIS_POS_GET(i64 %49)
  %51 = call i64 @pad_connection_get_axis(i32* %47, i32 %48, i32 %50)
  %52 = load i64, i64* %9, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %56, %41
  br label %58

58:                                               ; preds = %57, %37
  br label %59

59:                                               ; preds = %58, %36
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %59, %15
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i32 @AXIS_NEG_GET(i64) #1

declare dso_local i64 @pad_connection_get_axis(i32*, i32, i32) #1

declare dso_local i32 @AXIS_POS_GET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
