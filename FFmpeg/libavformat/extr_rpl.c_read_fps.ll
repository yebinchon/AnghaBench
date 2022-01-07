; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rpl.c_read_fps.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rpl.c_read_fps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@INT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*)* @read_fps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_fps(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @read_int(i8* %8, i8** %4, i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 46
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %4, align 8
  br label %18

18:                                               ; preds = %15, %2
  br label %19

19:                                               ; preds = %53, %18
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sge i32 %22, 48
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sle i32 %27, 57
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %56

31:                                               ; preds = %29
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @INT64_MAX, align 4
  %34 = sub nsw i32 %33, 9
  %35 = sdiv i32 %34, 10
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @INT64_MAX, align 4
  %40 = sdiv i32 %39, 10
  %41 = icmp sgt i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %31
  br label %56

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 10, %44
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = add nsw i32 %45, %48
  %50 = sub nsw i32 %49, 48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %51, 10
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %43
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %4, align 8
  br label %19

56:                                               ; preds = %42, %29
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** %5, align 8
  store i32 -1, i32* %60, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @av_reduce(i32* %62, i32* %63, i32 %64, i32 %65, i32 2147483647)
  %67 = bitcast %struct.TYPE_3__* %3 to i64*
  %68 = load i64, i64* %67, align 4
  ret i64 %68
}

declare dso_local i32 @read_int(i8*, i8**, i32*) #1

declare dso_local i32 @av_reduce(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
