; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_tree.c_av_tree_enumerate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_tree.c_av_tree_enumerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, %struct.TYPE_3__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_tree_enumerate(%struct.TYPE_3__* %0, i8* %1, i32 (i8*, i8*)* %2, i32 (i8*, i8*)* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, i8*)*, align 8
  %8 = alloca i32 (i8*, i8*)*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i8*, i8*)* %2, i32 (i8*, i8*)** %7, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %8, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %59

12:                                               ; preds = %4
  %13 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %7, align 8
  %14 = icmp ne i32 (i8*, i8*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 %16(i8* %17, i8* %20)
  br label %23

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %15
  %24 = phi i32 [ %21, %15 ], [ 0, %22 ]
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %30, i64 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %7, align 8
  %35 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  call void @av_tree_enumerate(%struct.TYPE_3__* %32, i8* %33, i32 (i8*, i8*)* %34, i32 (i8*, i8*)* %35)
  br label %36

36:                                               ; preds = %27, %23
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 %40(i8* %41, i8* %44)
  br label %46

46:                                               ; preds = %39, %36
  %47 = load i32, i32* %9, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %52, i64 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %7, align 8
  %57 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  call void @av_tree_enumerate(%struct.TYPE_3__* %54, i8* %55, i32 (i8*, i8*)* %56, i32 (i8*, i8*)* %57)
  br label %58

58:                                               ; preds = %49, %46
  br label %59

59:                                               ; preds = %58, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
