; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_libretrodb.c_libretrodb_find_entry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_libretrodb.c_libretrodb_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.rmsgpack_dom_value = type { i32 }
%struct.TYPE_7__ = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@RETRO_VFS_SEEK_POSITION_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libretrodb_find_entry(%struct.TYPE_6__* %0, i8* %1, i8* %2, %struct.rmsgpack_dom_value* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rmsgpack_dom_value*, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.rmsgpack_dom_value* %3, %struct.rmsgpack_dom_value** %9, align 8
  store i64 0, i64* %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @libretrodb_find_index(%struct.TYPE_6__* %17, i8* %18, %struct.TYPE_7__* %10)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %90

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %14, align 8
  %26 = call i8* @malloc(i64 %25)
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %90

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %59, %32
  %34 = load i64, i64* %15, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %33
  %38 = load i8*, i8** %12, align 8
  %39 = bitcast i8* %38 to i64*
  %40 = load i64, i64* %15, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = bitcast i64* %41 to i8*
  store i8* %42, i8** %16, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %16, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %15, align 8
  %49 = sub nsw i64 %47, %48
  %50 = call i64 @filestream_read(i32 %45, i8* %46, i64 %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %37
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i32, i32* @errno, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %90

59:                                               ; preds = %37
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %15, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %15, align 8
  br label %33

64:                                               ; preds = %33
  %65 = load i8*, i8** %12, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @binsearch(i8* %65, i8* %66, i32 %69, i64 %71, i64* %13)
  store i32 %72, i32* %11, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %64
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %13, align 8
  %82 = load i32, i32* @RETRO_VFS_SEEK_POSITION_START, align 4
  %83 = call i32 @filestream_seek(i32 %80, i64 %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %64
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %9, align 8
  %89 = call i32 @rmsgpack_dom_read(i32 %87, %struct.rmsgpack_dom_value* %88)
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %84, %54, %29, %21
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i64 @libretrodb_find_index(%struct.TYPE_6__*, i8*, %struct.TYPE_7__*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @filestream_read(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @binsearch(i8*, i8*, i32, i64, i64*) #1

declare dso_local i32 @filestream_seek(i32, i64, i32) #1

declare dso_local i32 @rmsgpack_dom_read(i32, %struct.rmsgpack_dom_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
