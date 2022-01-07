; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_z_zone.c_Z_FreeMemory.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_z_zone.c_Z_FreeMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32, %struct.TYPE_3__* }

@mainzone = common dso_local global %struct.TYPE_4__* null, align 8
@PU_PURGELEVEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Z_FreeMemory() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mainzone, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %1, align 8
  br label %7

7:                                                ; preds = %32, %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mainzone, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = icmp ne %struct.TYPE_3__* %8, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %7
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PU_PURGELEVEL, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17, %12
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %17
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %1, align 8
  br label %7

36:                                               ; preds = %7
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
