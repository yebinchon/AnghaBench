; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_f.c_asf_read_language_list.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_f.c_asf_read_language_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @asf_read_language_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_language_list(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x i8], align 1
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @avio_rl16(i32* %18)
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %53, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @avio_r8(i32* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %30 = call i32 @avio_get_str16le(i32* %27, i32 %28, i8* %29, i32 6)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub i32 %35, %36
  %38 = call i32 @avio_skip(i32* %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %24
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 128
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %51 = call i32 @av_strlcpy(i32 %49, i8* %50, i32 4)
  br label %52

52:                                               ; preds = %42, %39
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %20

56:                                               ; preds = %20
  ret i32 0
}

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_get_str16le(i32*, i32, i8*, i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @av_strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
