; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_riffdec.c_ff_get_bmp_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_riffdec.c_ff_get_bmp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_get_bmp_header(i32* %0, %struct.TYPE_5__* %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i8** %2, i8*** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i8* @avio_rl32(i32* %9)
  store i8* %10, i8** %8, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %8, align 8
  %15 = load i8**, i8*** %6, align 8
  store i8* %14, i8** %15, align 8
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i32*, i32** %4, align 8
  %18 = call i8* @avio_rl32(i32* %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i8* %18, i8** %22, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @avio_rl32(i32* %23)
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i64 %25, i64* %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @avio_rl16(i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @avio_rl16(i32* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i8* @avio_rl32(i32* %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @avio_rl32(i32* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i8* @avio_rl32(i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i8* @avio_rl32(i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i8* @avio_rl32(i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i8* @avio_rl32(i32* %49)
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i8* @avio_rl32(i32*) #1

declare dso_local i32 @avio_rl16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
