; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_copy_bits.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_copy_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32, i32*, i32)* @copy_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_bits(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = call i32 @get_bits_left(i32* %13)
  store i32 %14, i32* %11, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %62

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = call i32 @put_bits_count(%struct.TYPE_6__* %24)
  %26 = sub nsw i32 %23, %25
  %27 = icmp sgt i32 %20, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %62

29:                                               ; preds = %19
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %30, 7
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = ashr i32 %32, 3
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @FFMIN(i32 %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @get_bits(i32* %41, i32 %42)
  %44 = call i32 @put_bits(%struct.TYPE_6__* %39, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %38, %29
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 0, %52
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load i32, i32* %11, align 4
  %59 = shl i32 %58, 3
  %60 = call i32 @FFMIN(i32 %57, i32 %59)
  %61 = call i32 @avpriv_copy_bits(%struct.TYPE_6__* %46, i32* %54, i32 %60)
  br label %62

62:                                               ; preds = %45, %28, %18
  ret void
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @put_bits_count(%struct.TYPE_6__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @put_bits(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @avpriv_copy_bits(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
