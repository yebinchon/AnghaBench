; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_set_store_for_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_set_store_for_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i32, %struct.TYPE_9__*, %struct.exception_context, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.exception_context = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"read store already in use\00", align 1
@PNG_LIBPNG_VER_STRING = common dso_local global i32 0, align 4
@store_error = common dso_local global i32 0, align 4
@store_warning = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"png_create_read_struct returned NULL (unexpected)\00", align 1
@PNG_OPTION_INVALID = common dso_local global i64 0, align 8
@store_free = common dso_local global i32 0, align 4
@store_malloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i32*, i32, i8*)* @set_store_for_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_store_for_read(%struct.TYPE_10__* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.exception_context*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @safecat(i32 %13, i32 4, i32 0, i8* %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @png_error(i32* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = call i32 @store_read_reset(%struct.TYPE_10__* %26)
  %28 = load i32, i32* @PNG_LIBPNG_VER_STRING, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = load i32, i32* @store_error, align 4
  %31 = load i32, i32* @store_warning, align 4
  %32 = call i32* @png_create_read_struct(i32 %28, %struct.TYPE_10__* %29, i32 %30, i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 4
  store %struct.exception_context* %41, %struct.exception_context** %9, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = call i32 @store_log(%struct.TYPE_10__* %42, i32* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %44

44:                                               ; preds = %39, %25
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @store_read_set(%struct.TYPE_10__* %45, i32 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @png_create_info_struct(i32* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** %6, align 8
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %50, %44
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  ret i32* %61
}

declare dso_local i32 @safecat(i32, i32, i32, i8*) #1

declare dso_local i32 @png_error(i32*, i8*) #1

declare dso_local i32 @store_read_reset(%struct.TYPE_10__*) #1

declare dso_local i32* @png_create_read_struct(i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @store_log(%struct.TYPE_10__*, i32*, i8*, i32) #1

declare dso_local i32 @store_read_set(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @png_create_info_struct(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
