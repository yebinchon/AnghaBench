; ModuleID = '/home/carl/AnghaBench/capstone/extr_cs.c_skipdata_size.c'
source_filename = "/home/carl/AnghaBench/capstone/extr_cs.c_skipdata_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@CS_MODE_THUMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @skipdata_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skipdata_size(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %7 [
    i32 140, label %8
    i32 139, label %17
    i32 135, label %17
    i32 133, label %17
    i32 132, label %17
    i32 131, label %18
    i32 129, label %19
    i32 128, label %20
    i32 136, label %21
    i32 130, label %22
    i32 137, label %23
    i32 138, label %24
    i32 134, label %25
  ]

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %26

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CS_MODE_THUMB, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32 2, i32* %2, align 4
  br label %26

16:                                               ; preds = %8
  store i32 4, i32* %2, align 4
  br label %26

17:                                               ; preds = %1, %1, %1, %1
  store i32 4, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %26

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

20:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %26

21:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %26

22:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %26

23:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

24:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
