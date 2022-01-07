; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_probetest.c_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_probetest.c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32*)*, i8* }

@AVFMT_NOFILE = common dso_local global i32 0, align 4
@single_format = common dso_local global i32 0, align 4
@time_array = common dso_local global i32* null, align 8
@score_array = common dso_local global i32* null, align 8
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Failure of %s probing code with score=%d type=%d p=%X size=%d\0A\00", align 1
@failures = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %10, align 8
  store i8* null, i8** %11, align 8
  br label %14

14:                                               ; preds = %88, %24, %4
  %15 = call %struct.TYPE_3__* @av_demuxer_iterate(i8** %11)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %10, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %91

17:                                               ; preds = %14
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AVFMT_NOFILE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %14

25:                                               ; preds = %17
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32 (i32*)*, i32 (i32*)** %27, align 8
  %29 = icmp ne i32 (i32*)* %28, null
  br i1 %29, label %30, label %88

30:                                               ; preds = %25
  %31 = load i32, i32* @single_format, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* @single_format, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i32 %34, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %88, label %40

40:                                               ; preds = %33, %30
  %41 = call i64 (...) @AV_READ_TIME()
  store i64 %41, i64* %13, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32 (i32*)*, i32 (i32*)** %43, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 %44(i32* %45)
  store i32 %46, i32* %12, align 4
  %47 = call i64 (...) @AV_READ_TIME()
  %48 = load i64, i64* %13, align 8
  %49 = sub nsw i64 %47, %48
  %50 = load i32*, i32** @time_array, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %49
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** @score_array, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %58, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %40
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %68 = sdiv i32 %67, 4
  %69 = icmp sgt i32 %66, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** @score_array, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* @stderr, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @fprintf(i32 %76, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* @failures, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @failures, align 4
  br label %87

87:                                               ; preds = %70, %65, %40
  br label %88

88:                                               ; preds = %87, %33, %25
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %14

91:                                               ; preds = %14
  ret void
}

declare dso_local %struct.TYPE_3__* @av_demuxer_iterate(i8**) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @AV_READ_TIME(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
