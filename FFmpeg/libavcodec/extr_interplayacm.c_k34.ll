; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayacm.c_k34.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayacm.c_k34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@map_1bit = common dso_local global i32* null, align 8
@map_2bit_far = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32)* @k34 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k34(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32* %11, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %57, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %12
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @get_bits1(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @set_pos(%struct.TYPE_4__* %24, i32 %25, i32 %26, i32 0)
  br label %57

28:                                               ; preds = %18
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @get_bits1(i32* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @get_bits1(i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** @map_1bit, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @set_pos(%struct.TYPE_4__* %36, i32 %37, i32 %38, i32 %43)
  br label %57

45:                                               ; preds = %28
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @get_bits(i32* %46, i32 2)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** @map_2bit_far, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @set_pos(%struct.TYPE_4__* %48, i32 %49, i32 %50, i32 %55)
  br label %57

57:                                               ; preds = %45, %33, %23
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %12

60:                                               ; preds = %12
  ret i32 0
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @set_pos(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
