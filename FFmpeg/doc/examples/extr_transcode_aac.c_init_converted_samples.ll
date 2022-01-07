; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_transcode_aac.c_init_converted_samples.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_transcode_aac.c_init_converted_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Could not allocate converted input sample pointers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Could not allocate converted input samples (error '%s')\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32***, %struct.TYPE_3__*, i32)* @init_converted_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_converted_samples(i32*** %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32***, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32*** %0, i32**** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32** @calloc(i32 %11, i32 8)
  %13 = load i32***, i32**** %5, align 8
  store i32** %12, i32*** %13, align 8
  %14 = icmp ne i32** %12, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = call i32 @AVERROR(i32 %18)
  store i32 %19, i32* %4, align 4
  br label %46

20:                                               ; preds = %3
  %21 = load i32***, i32**** %5, align 8
  %22 = load i32**, i32*** %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @av_samples_alloc(i32** %22, i32* null, i32 %25, i32 %26, i32 %29, i32 0)
  store i32 %30, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %20
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i8* @av_err2str(i32 %34)
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32***, i32**** %5, align 8
  %38 = load i32**, i32*** %37, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  %40 = call i32 @av_freep(i32** %39)
  %41 = load i32***, i32**** %5, align 8
  %42 = load i32**, i32*** %41, align 8
  %43 = call i32 @free(i32** %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %32, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32** @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_samples_alloc(i32**, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
