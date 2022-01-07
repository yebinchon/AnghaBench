; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_tinyalsa_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_tinyalsa_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @tinyalsa_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tinyalsa_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @BYTES_TO_FRAMES(i64 %19, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i64 4, i64 4
  store i64 %29, i64* %12, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %52, %34
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @pcm_writei(i32 %41, i32* %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pcm_stop(i32 %50)
  br label %52

52:                                               ; preds = %47, %38
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %13, align 4
  %57 = shl i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %12, align 8
  %60 = mul i64 %58, %59
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 %60
  store i32* %62, i32** %9, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %35

66:                                               ; preds = %35
  br label %100

67:                                               ; preds = %3
  br label %68

68:                                               ; preds = %85, %67
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %68
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @pcm_wait(i32 %74, i32 -1)
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @pcm_writei(i32 %78, i32* %79, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %102

85:                                               ; preds = %71
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %14, align 4
  %90 = shl i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %12, align 8
  %93 = mul i64 %91, %92
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 %93
  store i32* %95, i32** %9, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %11, align 4
  br label %68

99:                                               ; preds = %68
  br label %100

100:                                              ; preds = %99, %66
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %84
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @BYTES_TO_FRAMES(i64, i32) #1

declare dso_local i32 @pcm_writei(i32, i32*, i32) #1

declare dso_local i32 @pcm_stop(i32) #1

declare dso_local i32 @pcm_wait(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
