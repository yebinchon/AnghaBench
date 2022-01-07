; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxf.c_gxf_material_tags.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxf.c_gxf_material_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gxf_stream_info = type { i8*, i8* }

@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@MAT_FIRST_FIELD = common dso_local global i64 0, align 8
@MAT_LAST_FIELD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.gxf_stream_info*)* @gxf_material_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxf_material_tags(i32* %0, i32* %1, %struct.gxf_stream_info* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gxf_stream_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.gxf_stream_info* %2, %struct.gxf_stream_info** %6, align 8
  %10 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %11 = load %struct.gxf_stream_info*, %struct.gxf_stream_info** %6, align 8
  %12 = getelementptr inbounds %struct.gxf_stream_info, %struct.gxf_stream_info* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %14 = load %struct.gxf_stream_info*, %struct.gxf_stream_info** %6, align 8
  %15 = getelementptr inbounds %struct.gxf_stream_info, %struct.gxf_stream_info* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  br label %16

16:                                               ; preds = %66, %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 2
  br i1 %19, label %20, label %67

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = call i8* @avio_r8(i32* %21)
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %7, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i8* @avio_r8(i32* %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 2
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %67

35:                                               ; preds = %20
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %62

42:                                               ; preds = %35
  %43 = load i32*, i32** %4, align 8
  %44 = call i8* @avio_rb32(i32* %43)
  store i8* %44, i8** %9, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @MAT_FIRST_FIELD, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.gxf_stream_info*, %struct.gxf_stream_info** %6, align 8
  %51 = getelementptr inbounds %struct.gxf_stream_info, %struct.gxf_stream_info* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %61

52:                                               ; preds = %42
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @MAT_LAST_FIELD, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.gxf_stream_info*, %struct.gxf_stream_info** %6, align 8
  %59 = getelementptr inbounds %struct.gxf_stream_info, %struct.gxf_stream_info* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %48
  br label %66

62:                                               ; preds = %35
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @avio_skip(i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %61
  br label %16

67:                                               ; preds = %34, %16
  ret void
}

declare dso_local i8* @avio_r8(i32*) #1

declare dso_local i8* @avio_rb32(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
