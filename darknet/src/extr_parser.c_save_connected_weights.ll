; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_save_connected_weights.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_save_connected_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@gpu_index = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_connected_weights(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  store i32* %1, i32** %3, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @fwrite(i32 %5, i32 4, i32 %7, i32* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %13, %15
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @fwrite(i32 %11, i32 4, i32 %16, i32* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @fwrite(i32 %24, i32 4, i32 %26, i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @fwrite(i32 %30, i32 4, i32 %32, i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @fwrite(i32 %36, i32 4, i32 %38, i32* %39)
  br label %41

41:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
