; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/extr_librsound.c_rsd_simple_start.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/extr_librsound.c_rsd_simple_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSD_HOST = common dso_local global i32 0, align 4
@RSD_PORT = common dso_local global i32 0, align 4
@RSD_IDENTITY = common dso_local global i32 0, align 4
@RSD_SAMPLERATE = common dso_local global i32 0, align 4
@RSD_CHANNELS = common dso_local global i32 0, align 4
@RSD_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsd_simple_start(i32** %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32** %0, i32*** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32**, i32*** %9, align 8
  %18 = call i64 @rsd_init(i32** %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %84

21:                                               ; preds = %7
  %22 = load i32, i32* %15, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32**, i32*** %9, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @RSD_HOST, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = call i64 @rsd_set_param(i32* %27, i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %25, %21
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32**, i32*** %9, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @RSD_PORT, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = call i64 @rsd_set_param(i32* %37, i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %35, %32
  %43 = load i8*, i8** %12, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32**, i32*** %9, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @RSD_IDENTITY, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = call i64 @rsd_set_param(i32* %47, i32 %48, i32* %50)
  br label %52

52:                                               ; preds = %45, %42
  %53 = load i32**, i32*** %9, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @RSD_SAMPLERATE, align 4
  %56 = call i64 @rsd_set_param(i32* %54, i32 %55, i32* %13)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %52
  %59 = load i32**, i32*** %9, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @RSD_CHANNELS, align 4
  %62 = call i64 @rsd_set_param(i32* %60, i32 %61, i32* %14)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load i32**, i32*** %9, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @RSD_FORMAT, align 4
  %68 = call i64 @rsd_set_param(i32* %66, i32 %67, i32* %16)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64, %58, %52
  %71 = load i32**, i32*** %9, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @rsd_free(i32* %72)
  store i32 -1, i32* %8, align 4
  br label %84

74:                                               ; preds = %64
  %75 = load i32**, i32*** %9, align 8
  %76 = load i32*, i32** %75, align 8
  %77 = call i64 @rsd_start(i32* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32**, i32*** %9, align 8
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @rsd_free(i32* %81)
  store i32 -1, i32* %8, align 4
  br label %84

83:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %79, %70, %20
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i64 @rsd_init(i32**) #1

declare dso_local i64 @rsd_set_param(i32*, i32, i32*) #1

declare dso_local i32 @rsd_free(i32*) #1

declare dso_local i64 @rsd_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
