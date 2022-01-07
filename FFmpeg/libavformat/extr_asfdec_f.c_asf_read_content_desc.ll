; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_f.c_asf_read_content_desc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_f.c_asf_read_content_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"author\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @asf_read_content_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_content_desc(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @avio_rl16(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @avio_rl16(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @avio_rl16(i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @avio_rl16(i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @avio_rl16(i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @get_tag(%struct.TYPE_4__* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 %25, i32 32)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @get_tag(%struct.TYPE_4__* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %28, i32 32)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @get_tag(%struct.TYPE_4__* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %31, i32 32)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @get_tag(%struct.TYPE_4__* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %34, i32 32)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @avio_skip(i32* %36, i32 %37)
  ret i32 0
}

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local i32 @get_tag(%struct.TYPE_4__*, i8*, i32, i32, i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
