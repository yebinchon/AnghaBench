; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_ps3.c_hidpad_ps3_get_axis.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_ps3.c_hidpad_ps3_get_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpad_ps3_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @hidpad_ps3_get_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpad_ps3_get_axis(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hidpad_ps3_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hidpad_ps3_data*
  store %struct.hidpad_ps3_data* %9, %struct.hidpad_ps3_data** %7, align 8
  %10 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %7, align 8
  %11 = icmp ne %struct.hidpad_ps3_data* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp uge i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %36

16:                                               ; preds = %12
  %17 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %7, align 8
  %18 = getelementptr inbounds %struct.hidpad_ps3_data, %struct.hidpad_ps3_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = add i32 7, %20
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 8
  %27 = sub nsw i32 %26, 32768
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @abs(i32 %28) #2
  %30 = icmp sgt i32 %29, 4096
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i32, i32* %6, align 4
  br label %34

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
