; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file_7z.c_sevenzip_stream_decompress_data_to_file_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file_7z.c_sevenzip_stream_decompress_data_to_file_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.sevenzip_context_t = type { %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32)* @sevenzip_stream_decompress_data_to_file_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sevenzip_stream_decompress_data_to_file_init(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sevenzip_context_t*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.sevenzip_context_t*
  store %struct.sevenzip_context_t* %14, %struct.sevenzip_context_t** %10, align 8
  %15 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %10, align 8
  %16 = icmp ne %struct.sevenzip_context_t* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %22

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %10, align 8
  %21 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %20, i32 0, i32 0
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %21, align 8
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %17
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
