; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_free_encryption_index.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_free_encryption_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__**)* @mov_free_encryption_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mov_free_encryption_index(%struct.TYPE_5__** %0) #0 {
  %2 = alloca %struct.TYPE_5__**, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %2, align 8
  %4 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %5 = icmp ne %struct.TYPE_5__** %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %1
  br label %46

11:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %28, %11
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %12
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = call i32 @av_encryption_info_free(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %12

31:                                               ; preds = %12
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = call i32 @av_freep(%struct.TYPE_5__** %34)
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = call i32 @av_freep(%struct.TYPE_5__** %38)
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = call i32 @av_freep(%struct.TYPE_5__** %42)
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %45 = call i32 @av_freep(%struct.TYPE_5__** %44)
  br label %46

46:                                               ; preds = %31, %10
  ret void
}

declare dso_local i32 @av_encryption_info_free(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #1

declare dso_local i32 @av_freep(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
