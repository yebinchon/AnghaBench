; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xfacedec.c_pop_integer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xfacedec.c_pop_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @pop_integer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop_integer(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @ff_big_div(i32* %7, i32 0, i64* %5)
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %27, %2
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %9
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = icmp sge i64 %16, %23
  br label %25

25:                                               ; preds = %15, %9
  %26 = phi i1 [ true, %9 ], [ %24, %15 ]
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 1
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %9

32:                                               ; preds = %25
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ff_big_mul(i32* %33, i64 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = call i32 @ff_big_add(i32* %38, i64 %43)
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @ff_big_div(i32*, i32, i64*) #1

declare dso_local i32 @ff_big_mul(i32*, i64) #1

declare dso_local i32 @ff_big_add(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
