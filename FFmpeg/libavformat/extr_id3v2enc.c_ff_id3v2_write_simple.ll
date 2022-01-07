; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2enc.c_ff_id3v2_write_simple.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2enc.c_ff_id3v2_write_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVFormatContext = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_id3v2_write_simple(%struct.AVFormatContext* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.AVFormatContext*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  store %struct.AVFormatContext* %0, %struct.AVFormatContext** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.AVFormatContext*, %struct.AVFormatContext** %5, align 8
  %12 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @ff_id3v2_start(%struct.TYPE_5__* %8, i32 %13, i32 %14, i8* %15)
  %17 = load %struct.AVFormatContext*, %struct.AVFormatContext** %5, align 8
  %18 = call i32 @ff_id3v2_write_metadata(%struct.AVFormatContext* %17, %struct.TYPE_5__* %8)
  store i32 %18, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %30

22:                                               ; preds = %3
  %23 = load %struct.AVFormatContext*, %struct.AVFormatContext** %5, align 8
  %24 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.AVFormatContext*, %struct.AVFormatContext** %5, align 8
  %27 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ff_id3v2_finish(%struct.TYPE_5__* %8, i32 %25, i32 %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %22, %20
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ff_id3v2_start(%struct.TYPE_5__*, i32, i32, i8*) #2

declare dso_local i32 @ff_id3v2_write_metadata(%struct.AVFormatContext*, %struct.TYPE_5__*) #2

declare dso_local i32 @ff_id3v2_finish(%struct.TYPE_5__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
