; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_csv_escape_str.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_csv_escape_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*, i8*, i8, i8*)* @csv_escape_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @csv_escape_str(%struct.TYPE_4__* %0, i8* %1, i8 signext %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca [5 x i8], align 1
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  store i8* %3, i8** %8, align 8
  %11 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %12 = load i8, i8* %7, align 1
  store i8 %12, i8* %11, align 1
  %13 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 34, i8* %13, align 1
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 10, i8* %14, align 1
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 13, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %20 = call i64 @strcspn(i8* %18, i8* %19)
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = call i32 @av_bprint_chars(%struct.TYPE_4__* %30, i8 signext 34, i32 1)
  br label %32

32:                                               ; preds = %29, %4
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 34
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = call i32 @av_bprint_chars(%struct.TYPE_4__* %43, i8 signext 34, i32 1)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @av_bprint_chars(%struct.TYPE_4__* %46, i8 signext %48, i32 1)
  br label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  br label %33

53:                                               ; preds = %33
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = call i32 @av_bprint_chars(%struct.TYPE_4__* %57, i8 signext 34, i32 1)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  ret i8* %62
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @av_bprint_chars(%struct.TYPE_4__*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
