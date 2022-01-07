; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcparam.c_jpeg_default_colorspace.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcparam.c_jpeg_default_colorspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@JERR_BAD_IN_COLORSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jpeg_default_colorspace(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %24 [
    i32 132, label %6
    i32 131, label %9
    i32 128, label %12
    i32 133, label %15
    i32 129, label %18
    i32 130, label %21
  ]

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = call i32 @jpeg_set_colorspace(%struct.TYPE_5__* %7, i32 132)
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = call i32 @jpeg_set_colorspace(%struct.TYPE_5__* %10, i32 128)
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = call i32 @jpeg_set_colorspace(%struct.TYPE_5__* %13, i32 128)
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = call i32 @jpeg_set_colorspace(%struct.TYPE_5__* %16, i32 133)
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = call i32 @jpeg_set_colorspace(%struct.TYPE_5__* %19, i32 129)
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = call i32 @jpeg_set_colorspace(%struct.TYPE_5__* %22, i32 130)
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = load i32, i32* @JERR_BAD_IN_COLORSPACE, align 4
  %27 = call i32 @ERREXIT(%struct.TYPE_5__* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %21, %18, %15, %12, %9, %6
  ret void
}

declare dso_local i32 @jpeg_set_colorspace(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ERREXIT(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
