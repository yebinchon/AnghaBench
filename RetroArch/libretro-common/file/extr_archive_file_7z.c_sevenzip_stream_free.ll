; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file_7z.c_sevenzip_stream_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file_7z.c_sevenzip_stream_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sevenzip_context_t = type { %struct.TYPE_3__, i32, i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sevenzip_stream_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sevenzip_stream_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sevenzip_context_t*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sevenzip_context_t*
  store %struct.sevenzip_context_t* %5, %struct.sevenzip_context_t** %3, align 8
  %6 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %3, align 8
  %7 = icmp ne %struct.sevenzip_context_t* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %37

9:                                                ; preds = %1
  %10 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %3, align 8
  %11 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %3, align 8
  %16 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %15, i32 0, i32 1
  %17 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %3, align 8
  %18 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @IAlloc_Free(i32* %16, i32* %19)
  %21 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %3, align 8
  %22 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %3, align 8
  %24 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %14, %9
  %28 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %3, align 8
  %29 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %28, i32 0, i32 2
  %30 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %3, align 8
  %31 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %30, i32 0, i32 1
  %32 = call i32 @SzArEx_Free(i32* %29, i32* %31)
  %33 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %3, align 8
  %34 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @File_Close(i32* %35)
  br label %37

37:                                               ; preds = %27, %8
  ret void
}

declare dso_local i32 @IAlloc_Free(i32*, i32*) #1

declare dso_local i32 @SzArEx_Free(i32*, i32*) #1

declare dso_local i32 @File_Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
