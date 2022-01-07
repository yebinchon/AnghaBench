; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphparser.c_parse_inputs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphparser.c_parse_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WHITESPACES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.TYPE_9__**, %struct.TYPE_9__**, i8*)* @parse_inputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_inputs(i8** %0, %struct.TYPE_9__** %1, %struct.TYPE_9__** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store i8** %0, i8*** %6, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %53, %4
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 91
  br i1 %19, label %20, label %65

20:                                               ; preds = %14
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i8* @parse_link_name(i8** %21, i8* %22)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = call i32 @AVERROR(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %71

29:                                               ; preds = %20
  %30 = load i8*, i8** %12, align 8
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %32 = call %struct.TYPE_9__* @extract_inout(i8* %30, %struct.TYPE_9__** %31)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %13, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @av_free(i8* %36)
  br label %53

38:                                               ; preds = %29
  %39 = call %struct.TYPE_9__* @av_mallocz(i32 16)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %13, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @av_free(i8* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = call i32 @AVERROR(i32 %44)
  store i32 %45, i32* %5, align 4
  br label %71

46:                                               ; preds = %38
  %47 = load i8*, i8** %12, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %46, %35
  %54 = call i32 @append_inout(%struct.TYPE_9__** %10, %struct.TYPE_9__** %13)
  %55 = load i8**, i8*** %6, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* @WHITESPACES, align 4
  %58 = call i32 @strspn(i8* %56, i32 %57)
  %59 = load i8**, i8*** %6, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = sext i32 %58 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %59, align 8
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %14

65:                                               ; preds = %14
  %66 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %67 = call i32 @append_inout(%struct.TYPE_9__** %10, %struct.TYPE_9__** %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %69 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %69, align 8
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %65, %41, %26
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i8* @parse_link_name(i8**, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_9__* @extract_inout(i8*, %struct.TYPE_9__**) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local %struct.TYPE_9__* @av_mallocz(i32) #1

declare dso_local i32 @append_inout(%struct.TYPE_9__**, %struct.TYPE_9__**) #1

declare dso_local i32 @strspn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
