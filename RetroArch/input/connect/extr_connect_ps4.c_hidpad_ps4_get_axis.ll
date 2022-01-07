; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_ps4.c_hidpad_ps4_get_axis.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_ps4.c_hidpad_ps4_get_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpad_ps4_data = type { i32 }
%struct.ps4 = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @hidpad_ps4_get_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpad_ps4_get_axis(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hidpad_ps4_data*, align 8
  %7 = alloca %struct.ps4*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.hidpad_ps4_data*
  store %struct.hidpad_ps4_data* %10, %struct.hidpad_ps4_data** %6, align 8
  %11 = load %struct.hidpad_ps4_data*, %struct.hidpad_ps4_data** %6, align 8
  %12 = icmp ne %struct.hidpad_ps4_data* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.hidpad_ps4_data*, %struct.hidpad_ps4_data** %6, align 8
  %15 = getelementptr inbounds %struct.hidpad_ps4_data, %struct.hidpad_ps4_data* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.ps4*
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi %struct.ps4* [ %16, %13 ], [ null, %17 ]
  store %struct.ps4* %19, %struct.ps4** %7, align 8
  %20 = load %struct.hidpad_ps4_data*, %struct.hidpad_ps4_data** %6, align 8
  %21 = icmp ne %struct.hidpad_ps4_data* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = icmp ult i32 %23, 4
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load %struct.ps4*, %struct.ps4** %7, align 8
  %27 = icmp ne %struct.ps4* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.ps4*, %struct.ps4** %7, align 8
  %30 = getelementptr inbounds %struct.ps4, %struct.ps4* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  br label %37

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %28
  %38 = phi i32 [ %35, %28 ], [ 0, %36 ]
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %39, 8
  %41 = sub nsw i32 %40, 32768
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @abs(i32 %42) #2
  %44 = icmp sgt i32 %43, 4096
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  br label %48

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %22, %18
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %48
  %52 = load i32, i32* %3, align 4
  ret i32 %52
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
