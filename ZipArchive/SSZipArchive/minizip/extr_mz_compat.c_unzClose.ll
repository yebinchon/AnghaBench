; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzClose.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@MZ_OK = common dso_local global i32 0, align 4
@UNZ_PARAMERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzClose(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %4, align 8
  %8 = load i32, i32* @MZ_OK, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @UNZ_PARAMERROR, align 4
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @unzClose_MZ(i64 %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @mz_stream_close(i32* %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @mz_stream_delete(i32** %32)
  br label %34

34:                                               ; preds = %26, %21
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = call i32 @MZ_FREE(%struct.TYPE_3__* %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @unzClose_MZ(i64) #1

declare dso_local i32 @mz_stream_close(i32*) #1

declare dso_local i32 @mz_stream_delete(i32**) #1

declare dso_local i32 @MZ_FREE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
