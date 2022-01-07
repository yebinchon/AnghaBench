; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_prepare_eac_out.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_prepare_eac_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8**, i32* }

@LEFT = common dso_local global i32 0, align 4
@TOP_LEFT = common dso_local global i64 0, align 8
@FRONT = common dso_local global i32 0, align 4
@TOP_MIDDLE = common dso_local global i64 0, align 8
@RIGHT = common dso_local global i32 0, align 4
@TOP_RIGHT = common dso_local global i64 0, align 8
@DOWN = common dso_local global i32 0, align 4
@BOTTOM_LEFT = common dso_local global i64 0, align 8
@BACK = common dso_local global i32 0, align 4
@BOTTOM_MIDDLE = common dso_local global i64 0, align 8
@UP = common dso_local global i32 0, align 4
@BOTTOM_RIGHT = common dso_local global i64 0, align 8
@ROT_0 = common dso_local global i8* null, align 8
@ROT_270 = common dso_local global i8* null, align 8
@ROT_90 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @prepare_eac_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_eac_out(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load i32, i32* @LEFT, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @TOP_LEFT, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 %7, i32* %12, align 4
  %13 = load i32, i32* @FRONT, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @TOP_MIDDLE, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %13, i32* %18, align 4
  %19 = load i32, i32* @RIGHT, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @TOP_RIGHT, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %19, i32* %24, align 4
  %25 = load i32, i32* @DOWN, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @BOTTOM_LEFT, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* @BACK, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @BOTTOM_MIDDLE, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %31, i32* %36, align 4
  %37 = load i32, i32* @UP, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @BOTTOM_RIGHT, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %37, i32* %42, align 4
  %43 = load i8*, i8** @ROT_0, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* @TOP_LEFT, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  store i8* %43, i8** %48, align 8
  %49 = load i8*, i8** @ROT_0, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = load i64, i64* @TOP_MIDDLE, align 8
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  store i8* %49, i8** %54, align 8
  %55 = load i8*, i8** @ROT_0, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = load i64, i64* @TOP_RIGHT, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  store i8* %55, i8** %60, align 8
  %61 = load i8*, i8** @ROT_270, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = load i64, i64* @BOTTOM_LEFT, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  store i8* %61, i8** %66, align 8
  %67 = load i8*, i8** @ROT_90, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = load i64, i64* @BOTTOM_MIDDLE, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  store i8* %67, i8** %72, align 8
  %73 = load i8*, i8** @ROT_270, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = load i64, i64* @BOTTOM_RIGHT, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  store i8* %73, i8** %78, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
