; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_fifo.c_av_fifo_generic_peek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_fifo.c_av_fifo_generic_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_fifo_generic_peek(%struct.TYPE_3__* %0, i8* %1, i32 %2, void (i8*, i8*, i32)* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*, i8*, i32)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store void (i8*, i8*, i32)* %3, void (i8*, i8*, i32)** %8, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %70, %4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @FFMIN(i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %8, align 8
  %26 = icmp ne void (i8*, i8*, i32)* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  call void %28(i8* %29, i8* %30, i32 %31)
  br label %41

32:                                               ; preds = %14
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @memcpy(i8* %33, i8* %34, i32 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, i8* %37, i64 %39
  store i8* %40, i8** %6, align 8
  br label %41

41:                                               ; preds = %32, %27
  %42 = load i32, i32* %10, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr i8, i8* %43, i64 %44
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp uge i8* %46, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %41
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = sub i64 0, %58
  %60 = getelementptr i8, i8* %54, i64 %59
  %61 = load i8*, i8** %9, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = ptrtoint i8* %60 to i64
  %64 = sub i64 %62, %63
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %9, align 8
  br label %66

66:                                               ; preds = %51, %41
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %14, label %73

73:                                               ; preds = %70
  ret i32 0
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
