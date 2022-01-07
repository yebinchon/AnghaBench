; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_debug.c_PDebugSpriteList.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_debug.c_PDebugSpriteList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.PicoVideo }
%struct.PicoVideo = type { i32* }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@dstr = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"#%02i x:%4i y:%4i %ix%i %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@MVP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PDebugSpriteList() #0 {
  %1 = alloca %struct.PicoVideo*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), %struct.PicoVideo** %1, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 80, i32* %5, align 4
  %13 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %14 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 12
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %0
  store i32 64, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %0
  %22 = load i8*, i8** @dstr, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** @dstr, align 8
  store i8* %24, i8** %6, align 8
  %25 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %26 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 127
  store i32 %30, i32* %2, align 4
  %31 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %32 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 12
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %21
  %39 = load i32, i32* %2, align 4
  %40 = and i32 %39, 126
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %21
  %42 = load i32, i32* %2, align 4
  %43 = shl i32 %42, 8
  store i32 %43, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %98, %41
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %101

48:                                               ; preds = %44
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 %51, 2
  %53 = add nsw i32 %50, %52
  %54 = and i32 %53, 32764
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %49, %55
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %7, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 511
  %63 = sub nsw i32 %62, 128
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %8, align 4
  %65 = ashr i32 %64, 24
  %66 = and i32 %65, 3
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = ashr i32 %71, 16
  %73 = and i32 %72, 511
  %74 = sub nsw i32 %73, 128
  store i32 %74, i32* %10, align 4
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %8, align 4
  %80 = ashr i32 %79, 26
  %81 = and i32 %80, 3
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, 32768
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %89 = call i32 @sprintf(i8* %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %78, i32 %82, i32 %83, i8* %88)
  %90 = load i32, i32* @MVP, align 4
  %91 = load i32, i32* %8, align 4
  %92 = ashr i32 %91, 16
  %93 = and i32 %92, 127
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %48
  br label %101

97:                                               ; preds = %48
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %44

101:                                              ; preds = %96, %44
  %102 = load i8*, i8** @dstr, align 8
  ret i8* %102
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
