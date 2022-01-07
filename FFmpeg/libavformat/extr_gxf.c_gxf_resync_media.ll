; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxf.c_gxf_resync_media.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxf.c_gxf_resync_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@PKT_MEDIA = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32)* @gxf_resync_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxf_resync_media(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @AV_NOPTS_VALUE, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %15, align 8
  %21 = load i32*, i32** %15, align 8
  %22 = call i32 @avio_rb32(i32* %21)
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %88, %57, %33, %4
  br label %24

24:                                               ; preds = %27, %23
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (...) @READ_ONE()
  br label %24

29:                                               ; preds = %24
  %30 = call i32 (...) @READ_ONE()
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %23

34:                                               ; preds = %29
  %35 = load i32*, i32** %15, align 8
  %36 = call i32 @avio_tell(i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* @SEEK_CUR, align 4
  %39 = call i64 @avio_seek(i32* %37, i32 -5, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %91

42:                                               ; preds = %34
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @parse_packet_header(i32* %43, i64* %16, i32* %14)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i64, i64* %16, align 8
  %48 = load i64, i64* @PKT_MEDIA, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46, %42
  %51 = load i32*, i32** %15, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @SEEK_SET, align 4
  %54 = call i64 @avio_seek(i32* %51, i32 %52, i32 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %91

57:                                               ; preds = %50
  br label %23

58:                                               ; preds = %46
  %59 = load i32*, i32** %15, align 8
  %60 = call i32 @avio_r8(i32* %59)
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @avio_r8(i32* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 @avio_rb32(i32* %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @avio_tell(i32* %65)
  %67 = sub nsw i32 %66, 16
  %68 = sub nsw i32 %67, 6
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %71, %58
  %76 = load i32, i32* %8, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %78, %71
  %83 = load i32*, i32** %15, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @SEEK_SET, align 4
  %86 = call i64 @avio_seek(i32* %83, i32 %84, i32 %85)
  %87 = icmp sge i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %23

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %78, %75
  br label %91

91:                                               ; preds = %90, %56, %41
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32*, i32** %15, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @SEEK_SET, align 4
  %98 = call i64 @avio_seek(i32* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %91
  %100 = load i32, i32* %13, align 4
  ret i32 %100
}

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @READ_ONE(...) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i64 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @parse_packet_header(i32*, i64*, i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
