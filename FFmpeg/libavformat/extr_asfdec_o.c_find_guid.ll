; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_find_guid.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_find_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@gdef = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32)* @find_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @find_guid(i32 %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @swap_guid(i32 %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gdef, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %6, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gdef, align 8
  %13 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_5__* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memcmp(i32 %16, i32 %19, i32 4)
  store i32 %20, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %2, align 8
  br label %31

24:                                               ; preds = %15
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 1
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %6, align 8
  br label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %10

30:                                               ; preds = %10
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %31

31:                                               ; preds = %30, %22
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %32
}

declare dso_local i32 @swap_guid(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_5__*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
