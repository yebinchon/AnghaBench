; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_3gp_udta_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_3gp_udta_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"yrrc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"eng\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"albm\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"track\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i8*, i8*)* @mov_write_3gp_udta_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_3gp_udta_tag(i32* %0, %struct.TYPE_5__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @avio_tell(i32* %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = call %struct.TYPE_6__* @av_dict_get(i32 %16, i8* %17, i32* null, i32 0)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %11, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @utf8len(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %4
  store i32 0, i32* %5, align 4
  br label %81

28:                                               ; preds = %21
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @avio_wb32(i32* %29, i32 0)
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @ffio_wfourcc(i32* %31, i8* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @avio_wb32(i32* %34, i32 0)
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %28
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @atoi(i32 %43)
  %45 = call i32 @avio_wb16(i32* %40, i32 %44)
  br label %77

46:                                               ; preds = %28
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @language_code(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 @avio_wb16(i32* %47, i32 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @strlen(i32 %56)
  %58 = add nsw i64 %57, 1
  %59 = call i32 @avio_write(i32* %50, i32 %53, i64 %58)
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %46
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_6__* @av_dict_get(i32 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %11, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @atoi(i32 %73)
  %75 = call i32 @avio_w8(i32* %70, i32 %74)
  br label %76

76:                                               ; preds = %69, %63, %46
  br label %77

77:                                               ; preds = %76, %39
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @update_size(i32* %78, i32 %79)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %27
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local %struct.TYPE_6__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32 @utf8len(i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @language_code(i8*) #1

declare dso_local i32 @avio_write(i32*, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
