; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_mdta_keys_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_mdta_keys_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mdta\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__*)* @mov_write_mdta_keys_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_mdta_keys_tag(i32* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @avio_tell(i32* %12)
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @avio_wb32(i32* %14, i32 0)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ffio_wfourcc(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @avio_wb32(i32* %18, i32 0)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @avio_tell(i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @avio_wb32(i32* %22, i32 0)
  br label %24

24:                                               ; preds = %32, %3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %30 = call %struct.TYPE_7__* @av_dict_get(i32 %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %28, i32 %29)
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %7, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %24
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strlen(i32 %36)
  %38 = add nsw i32 %37, 8
  %39 = call i32 @avio_wb32(i32* %33, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @ffio_wfourcc(i32* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strlen(i32 %48)
  %50 = call i32 @avio_write(i32* %42, i32 %45, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %24

53:                                               ; preds = %24
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @avio_tell(i32* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @SEEK_SET, align 4
  %59 = call i32 @avio_seek(i32* %56, i32 %57, i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @avio_wb32(i32* %60, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @SEEK_SET, align 4
  %66 = call i32 @avio_seek(i32* %63, i32 %64, i32 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @update_size(i32* %67, i32 %68)
  ret i32 %69
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local %struct.TYPE_7__* @av_dict_get(i32, i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @avio_write(i32*, i32, i32) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
