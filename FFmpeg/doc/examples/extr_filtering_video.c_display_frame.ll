; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_filtering_video.c_display_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_filtering_video.c_display_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32*, i32** }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@last_pts = common dso_local global i64 0, align 8
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\1Bc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" .-+#\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @display_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_frame(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load i64, i64* @last_pts, align 8
  %17 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @last_pts, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %27 = call i32 @av_rescale_q(i64 %24, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %19
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 1000000
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @usleep(i32 %34)
  br label %36

36:                                               ; preds = %33, %30, %19
  br label %37

37:                                               ; preds = %36, %15
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* @last_pts, align 8
  br label %41

41:                                               ; preds = %37, %2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i32**, i32*** %43, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %7, align 8
  %47 = call i32 @puts(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %84, %41
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %48
  %55 = load i32*, i32** %7, align 8
  store i32* %55, i32** %8, align 8
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %71, %54
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %8, align 8
  %65 = load i32, i32* %63, align 4
  %66 = sdiv i32 %65, 52
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [6 x i8], [6 x i8]* @.str.1, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @putchar(i8 signext %69)
  br label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %56

74:                                               ; preds = %56
  %75 = call i32 @putchar(i8 signext 10)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %7, align 8
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %48

87:                                               ; preds = %48
  %88 = load i32, i32* @stdout, align 4
  %89 = call i32 @fflush(i32 %88)
  ret void
}

declare dso_local i32 @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
