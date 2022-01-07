; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_read_sbr_single_channel_element.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_read_sbr_single_channel_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, i32*)* @read_sbr_single_channel_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_sbr_single_channel_element(i32* %0, %struct.TYPE_13__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = call i64 @get_bits1(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @skip_bits(i32* %13, i32 4)
  br label %15

15:                                               ; preds = %12, %3
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i64 0
  %23 = call i64 @read_sbr_grid(i32* %16, %struct.TYPE_13__* %17, i32* %18, %struct.TYPE_14__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %88

26:                                               ; preds = %15
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i64 0
  %33 = call i32 @read_sbr_dtdf(%struct.TYPE_13__* %27, i32* %28, %struct.TYPE_14__* %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i64 0
  %40 = call i32 @read_sbr_invf(%struct.TYPE_13__* %34, i32* %35, %struct.TYPE_14__* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i64 0
  %48 = call i32 @read_sbr_envelope(i32* %41, %struct.TYPE_13__* %42, i32* %43, %struct.TYPE_14__* %47, i32 0)
  store i32 %48, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %26
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %88

52:                                               ; preds = %26
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i64 0
  %60 = call i32 @read_sbr_noise(i32* %53, %struct.TYPE_13__* %54, i32* %55, %struct.TYPE_14__* %59, i32 0)
  store i32 %60, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %88

64:                                               ; preds = %52
  %65 = load i32*, i32** %7, align 8
  %66 = call i64 @get_bits1(i32* %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  store i64 %66, i64* %71, align 8
  %72 = icmp ne i64 %66, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %64
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @get_bits1_vector(i32* %74, i32 %80, i32 %85)
  br label %87

87:                                               ; preds = %73, %64
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %62, %50, %25
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i64 @read_sbr_grid(i32*, %struct.TYPE_13__*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @read_sbr_dtdf(%struct.TYPE_13__*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @read_sbr_invf(%struct.TYPE_13__*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @read_sbr_envelope(i32*, %struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @read_sbr_noise(i32*, %struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @get_bits1_vector(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
