; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_tree.c_print.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_tree.c_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__**, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Node %p %2d %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %14, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = mul nsw i32 %8, 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load i32, i32* @AV_LOG_ERROR, align 4
  %13 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  br label %6

17:                                               ; preds = %6
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load i32, i32* @AV_LOG_ERROR, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %22, i32 %25, i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %32, i64 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  call void @print(%struct.TYPE_3__* %34, i32 %36)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  call void @print(%struct.TYPE_3__* %41, i32 %43)
  br label %47

44:                                               ; preds = %17
  %45 = load i32, i32* @AV_LOG_ERROR, align 4
  %46 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %20
  ret void
}

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
