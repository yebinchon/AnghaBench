; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/diskio/extr_diskio.c_get_fattime.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/diskio/extr_diskio.c_get_fattime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_fattime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tm, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @time(i32* null)
  store i32 %4, i32* %1, align 4
  %5 = call i32 @localtime_r(i32* %1, %struct.tm* %2)
  %6 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %7, 80
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %14

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 80
  br label %14

14:                                               ; preds = %10, %9
  %15 = phi i32 [ 0, %9 ], [ %13, %10 ]
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 %16, 25
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %21, 21
  %23 = or i32 %17, %22
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 16
  %28 = or i32 %23, %27
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 11
  %32 = or i32 %28, %31
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 %34, 5
  %36 = or i32 %32, %35
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 1
  %40 = or i32 %36, %39
  ret i32 %40
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
