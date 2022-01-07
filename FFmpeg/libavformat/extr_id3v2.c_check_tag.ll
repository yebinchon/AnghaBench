; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_check_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_check_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @check_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_tag(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ugt i32 %9, 4
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SEEK_SET, align 4
  %15 = call i64 @avio_seek(i32* %12, i32 %13, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @avio_read(i32* %18, i8* %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %11, %3
  store i32 -1, i32* %4, align 4
  br label %37

25:                                               ; preds = %17
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %27 = call i32 @AV_RB32(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @is_tag(i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %25
  store i32 1, i32* %4, align 4
  br label %37

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %34, %24
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @avio_read(i32*, i8*, i32) #1

declare dso_local i32 @AV_RB32(i8*) #1

declare dso_local i64 @is_tag(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
