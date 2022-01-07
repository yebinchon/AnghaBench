; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_htmlsubtitles.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_htmlsubtitles.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@test_cases = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s --> %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %6 = call i32 @av_bprint_init(%struct.TYPE_6__* %3, i32 0, i32 %5)
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %33, %0
  %8 = load i32, i32* %2, align 4
  %9 = load i8**, i8*** @test_cases, align 8
  %10 = call i32 @FF_ARRAY_ELEMS(i8** %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %7
  %13 = load i8**, i8*** @test_cases, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @ff_htmlmarkup_to_ass(i32* null, %struct.TYPE_6__* %3, i8* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %1, align 4
  br label %38

23:                                               ; preds = %12
  %24 = load i8**, i8*** @test_cases, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %30)
  %32 = call i32 @av_bprint_clear(%struct.TYPE_6__* %3)
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %7

36:                                               ; preds = %7
  %37 = call i32 @av_bprint_finalize(%struct.TYPE_6__* %3, i32* null)
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %36, %21
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @av_bprint_init(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i8**) #1

declare dso_local i32 @ff_htmlmarkup_to_ass(i32*, %struct.TYPE_6__*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @av_bprint_clear(%struct.TYPE_6__*) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
