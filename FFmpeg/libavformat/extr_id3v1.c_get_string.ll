; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v1.c_get_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v1.c_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32*, i32)* @get_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_string(%struct.TYPE_3__* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [512 x i8], align 16
  %13 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %13, align 8
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  store i8* %14, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %51, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %15
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %54

28:                                               ; preds = %19
  %29 = load i8*, i8** %11, align 8
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = icmp uge i64 %33, 511
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %54

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 32
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i8*, i8** %13, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %11, align 8
  store i8* %43, i8** %13, align 8
  br label %44

44:                                               ; preds = %42, %39
  br label %46

45:                                               ; preds = %36
  store i8* null, i8** %13, align 8
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %10, align 4
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %11, align 8
  store i8 %48, i8* %49, align 1
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %15

54:                                               ; preds = %35, %27, %15
  %55 = load i8*, i8** %11, align 8
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %13, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i8*, i8** %13, align 8
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %62 = load i8, i8* %61, align 16
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %69 = call i32 @av_dict_set(i32* %66, i8* %67, i8* %68, i32 0)
  br label %70

70:                                               ; preds = %64, %60
  ret void
}

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
