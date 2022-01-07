; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Iter.c_Slice_Cmp.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Iter.c_Slice_Cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Slice = type { i64, i32 }

@Slice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Slice*, %struct.Slice*)* @Slice_Cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Slice_Cmp(%struct.Slice* %0, %struct.Slice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Slice*, align 8
  %5 = alloca %struct.Slice*, align 8
  %6 = alloca %struct.Slice*, align 8
  %7 = alloca %struct.Slice*, align 8
  store %struct.Slice* %0, %struct.Slice** %4, align 8
  store %struct.Slice* %1, %struct.Slice** %5, align 8
  %8 = load %struct.Slice*, %struct.Slice** %4, align 8
  store %struct.Slice* %8, %struct.Slice** %6, align 8
  %9 = load %struct.Slice*, %struct.Slice** %5, align 8
  %10 = load i32, i32* @Slice, align 4
  %11 = call %struct.Slice* @cast(%struct.Slice* %9, i32 %10)
  store %struct.Slice* %11, %struct.Slice** %7, align 8
  %12 = load %struct.Slice*, %struct.Slice** %6, align 8
  %13 = getelementptr inbounds %struct.Slice, %struct.Slice* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.Slice*, %struct.Slice** %7, align 8
  %16 = getelementptr inbounds %struct.Slice, %struct.Slice* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.Slice*, %struct.Slice** %6, align 8
  %22 = getelementptr inbounds %struct.Slice, %struct.Slice* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.Slice*, %struct.Slice** %7, align 8
  %25 = getelementptr inbounds %struct.Slice, %struct.Slice* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %37

29:                                               ; preds = %20
  %30 = load %struct.Slice*, %struct.Slice** %6, align 8
  %31 = getelementptr inbounds %struct.Slice, %struct.Slice* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.Slice*, %struct.Slice** %7, align 8
  %34 = getelementptr inbounds %struct.Slice, %struct.Slice* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @cmp(i32 %32, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %29, %28, %19
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.Slice* @cast(%struct.Slice*, i32) #1

declare dso_local i32 @cmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
