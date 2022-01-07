; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_log.c_get_category.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_log.c_get_category.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 (i8*)* }

@AV_CLASS_CATEGORY_NB = common dso_local global i64 0, align 8
@AV_CLASS_CATEGORY_NA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_category to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_category(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_2__**
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %4, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 255
  %15 = icmp slt i32 %14, 100
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 3357440
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AV_CLASS_CATEGORY_NB, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %16, %10, %1
  %28 = load i32, i32* @AV_CLASS_CATEGORY_NA, align 4
  %29 = add nsw i32 %28, 16
  store i32 %29, i32* %2, align 4
  br label %48

30:                                               ; preds = %21
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32 (i8*)*, i32 (i8*)** %32, align 8
  %34 = icmp ne i32 (i8*)* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32 (i8*)*, i32 (i8*)** %37, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 %38(i8* %39)
  %41 = add nsw i32 %40, 16
  store i32 %41, i32* %2, align 4
  br label %48

42:                                               ; preds = %30
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 16
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %42, %35, %27
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
