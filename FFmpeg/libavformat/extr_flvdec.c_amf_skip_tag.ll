; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_amf_skip_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_amf_skip_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @amf_skip_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amf_skip_tag(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %69 [
    i32 131, label %11
    i32 134, label %14
    i32 128, label %17
    i32 135, label %22
    i32 133, label %23
    i32 130, label %26
    i32 132, label %68
    i32 129, label %68
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = call i32 @avio_skip(%struct.TYPE_7__* %12, i32 8)
  br label %71

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = call i32 @avio_skip(%struct.TYPE_7__* %15, i32 1)
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = call i32 @avio_rb16(%struct.TYPE_7__* %19)
  %21 = call i32 @avio_skip(%struct.TYPE_7__* %18, i32 %20)
  br label %71

22:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %2, %22
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call i32 @avio_rb32(%struct.TYPE_7__* %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %2, %23
  br label %27

27:                                               ; preds = %66, %26
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = icmp sgt i32 %33, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 135
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i1 [ true, %32 ], [ %38, %36 ]
  br label %41

41:                                               ; preds = %39, %27
  %42 = phi i1 [ false, %27 ], [ %40, %39 ]
  br i1 %42, label %43, label %67

43:                                               ; preds = %41
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = call i32 @avio_rb16(%struct.TYPE_7__* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = call i32 @avio_skip(%struct.TYPE_7__* %52, i32 1)
  br label %67

54:                                               ; preds = %46
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @avio_skip(%struct.TYPE_7__* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %43
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = call i32 @avio_r8(%struct.TYPE_7__* %60)
  %62 = call i32 @amf_skip_tag(%struct.TYPE_7__* %59, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %72

66:                                               ; preds = %58
  br label %27

67:                                               ; preds = %51, %41
  br label %71

68:                                               ; preds = %2, %2
  br label %71

69:                                               ; preds = %2
  %70 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %68, %67, %17, %14, %11
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %69, %64
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @avio_skip(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @avio_rb16(%struct.TYPE_7__*) #1

declare dso_local i32 @avio_rb32(%struct.TYPE_7__*) #1

declare dso_local i32 @avio_r8(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
