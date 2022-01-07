; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphdump.c_print_link_prop.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphdump.c_print_link_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"[%dx%d %d:%d %s]\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"[%dHz %s:%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @print_link_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_link_prop(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca %struct.TYPE_9__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %3, align 8
  br label %12

12:                                               ; preds = %11, %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %61 [
    i32 128, label %16
    i32 129, label %39
  ]

16:                                               ; preds = %12
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @av_get_pix_fmt_name(i32 %19)
  %21 = call i8* @av_x_if_null(i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %5, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 (%struct.TYPE_9__*, i8*, ...) @av_bprintf(%struct.TYPE_9__* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28, i32 %32, i32 %36, i8* %37)
  br label %64

39:                                               ; preds = %12
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @av_get_channel_layout_string(i8* %40, i32 64, i32 %43, i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @av_get_sample_fmt_name(i32 %50)
  %52 = call i8* @av_x_if_null(i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %52, i8** %5, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %60 = call i32 (%struct.TYPE_9__*, i8*, ...) @av_bprintf(%struct.TYPE_9__* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %57, i8* %58, i8* %59)
  br label %64

61:                                               ; preds = %12
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = call i32 (%struct.TYPE_9__*, i8*, ...) @av_bprintf(%struct.TYPE_9__* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %39, %16
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @av_x_if_null(i32, i8*) #2

declare dso_local i32 @av_get_pix_fmt_name(i32) #2

declare dso_local i32 @av_bprintf(%struct.TYPE_9__*, i8*, ...) #2

declare dso_local i32 @av_get_channel_layout_string(i8*, i32, i32, i32) #2

declare dso_local i32 @av_get_sample_fmt_name(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
