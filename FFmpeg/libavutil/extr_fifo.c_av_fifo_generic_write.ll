; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_fifo.c_av_fifo_generic_write.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_fifo.c_av_fifo_generic_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_fifo_generic_write(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 (i8*, i8*, i32)* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, i8*, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 (i8*, i8*, i32)* %3, i32 (i8*, i8*, i32)** %8, align 8
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %11, align 8
  br label %20

20:                                               ; preds = %73, %4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @FFMIN(i32 %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %8, align 8
  %32 = icmp ne i32 (i8*, i8*, i32)* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %20
  %34 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 %34(i8* %35, i8* %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %76

42:                                               ; preds = %33
  br label %52

43:                                               ; preds = %20
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @memcpy(i8* %44, i8* %45, i32 %46)
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr i8, i8* %48, i64 %50
  store i8* %51, i8** %6, align 8
  br label %52

52:                                               ; preds = %43, %42
  %53 = load i32, i32* %12, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr i8, i8* %54, i64 %55
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp uge i8* %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %11, align 8
  br label %66

66:                                               ; preds = %62, %52
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %7, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %20, label %76

76:                                               ; preds = %73, %41
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %83, %84
  ret i32 %85
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
