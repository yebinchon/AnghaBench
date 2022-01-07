; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_retrode.c_hidpad_retrode_get_axis.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_retrode.c_hidpad_retrode_get_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpad_retrode_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @hidpad_retrode_get_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpad_retrode_get_axis(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hidpad_retrode_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hidpad_retrode_data*
  store %struct.hidpad_retrode_data* %9, %struct.hidpad_retrode_data** %7, align 8
  %10 = load %struct.hidpad_retrode_data*, %struct.hidpad_retrode_data** %7, align 8
  %11 = icmp ne %struct.hidpad_retrode_data* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp uge i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %46

16:                                               ; preds = %12
  %17 = load %struct.hidpad_retrode_data*, %struct.hidpad_retrode_data** %7, align 8
  %18 = getelementptr inbounds %struct.hidpad_retrode_data, %struct.hidpad_retrode_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = add i32 2, %20
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 156
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %34

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 100
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 255, i32* %6, align 4
  br label %33

32:                                               ; preds = %28
  store i32 127, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, 8
  %37 = sub nsw i32 %36, 32768
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @abs(i32 %38) #2
  %40 = icmp sgt i32 %39, 4096
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  br label %44

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
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
