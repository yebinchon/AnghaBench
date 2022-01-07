; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_trans_stream_zlib.c_zlib_deflate_stream_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_trans_stream_zlib.c_zlib_deflate_stream_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlib_trans_stream = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @zlib_deflate_stream_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zlib_deflate_stream_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.zlib_trans_stream*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.zlib_trans_stream*
  store %struct.zlib_trans_stream* %5, %struct.zlib_trans_stream** %3, align 8
  %6 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %3, align 8
  %7 = icmp ne %struct.zlib_trans_stream* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %3, align 8
  %11 = getelementptr inbounds %struct.zlib_trans_stream, %struct.zlib_trans_stream* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %3, align 8
  %16 = getelementptr inbounds %struct.zlib_trans_stream, %struct.zlib_trans_stream* %15, i32 0, i32 0
  %17 = call i32 @deflateEnd(i32* %16)
  br label %18

18:                                               ; preds = %14, %9
  %19 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %3, align 8
  %20 = call i32 @free(%struct.zlib_trans_stream* %19)
  br label %21

21:                                               ; preds = %18, %8
  ret void
}

declare dso_local i32 @deflateEnd(i32*) #1

declare dso_local i32 @free(%struct.zlib_trans_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
