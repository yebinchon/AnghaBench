; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_get_number.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_get_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_5__**, double*, i32*, i32*, i32)* @get_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_number(i8* %0, i8* %1, %struct.TYPE_5__** %2, double* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__**, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %11, align 8
  store double* %3, double** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* %15, align 4
  %22 = call %struct.TYPE_5__* @av_opt_find2(i8* %19, i8* %20, i32* null, i32 0, i32 %21, i8** %17)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %18, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load i8*, i8** %17, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %7
  br label %50

29:                                               ; preds = %25
  %30 = load i8*, i8** %17, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = bitcast i32* %36 to i8*
  store i8* %37, i8** %16, align 8
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %39 = icmp ne %struct.TYPE_5__** %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %42, align 8
  br label %43

43:                                               ; preds = %40, %29
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = load double*, double** %12, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = call i32 @read_number(%struct.TYPE_5__* %44, i8* %45, double* %46, i32* %47, i32* %48)
  store i32 %49, i32* %8, align 4
  br label %53

50:                                               ; preds = %28
  %51 = load i32*, i32** %14, align 8
  store i32 0, i32* %51, align 4
  %52 = load i32*, i32** %13, align 8
  store i32 0, i32* %52, align 4
  store i32 -1, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %43
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_5__* @av_opt_find2(i8*, i8*, i32*, i32, i32, i8**) #1

declare dso_local i32 @read_number(%struct.TYPE_5__*, i8*, double*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
