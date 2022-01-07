; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr_parser.c_sipr_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr_parser.c_sipr_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32**, i32*, i32*, i32)* @sipr_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sipr_parse(%struct.TYPE_5__* %0, i32* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %14, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32* %21, i32** %15, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @sipr_split(i32* %22, i32* %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32*, i32** %15, align 8
  %27 = load i32, i32* %16, align 4
  %28 = call i64 @ff_combine_frame(i32* %26, i32 %27, i32** %12, i32* %13)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %6
  %31 = load i32**, i32*** %10, align 8
  store i32* null, i32** %31, align 8
  %32 = load i32*, i32** %11, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %7, align 4
  br label %40

34:                                               ; preds = %6
  %35 = load i32*, i32** %12, align 8
  %36 = load i32**, i32*** %10, align 8
  store i32* %35, i32** %36, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32*, i32** %11, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %34, %30
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @sipr_split(i32*, i32*, i32) #1

declare dso_local i64 @ff_combine_frame(i32*, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
