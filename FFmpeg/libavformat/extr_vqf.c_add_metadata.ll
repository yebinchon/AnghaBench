; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vqf.c_add_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vqf.c_add_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32)* @add_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_metadata(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [5 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @FFMIN(i32 %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = bitcast [5 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %15, i8 0, i64 5, i1 false)
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @UINT_MAX, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %47

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i8* @av_malloc(i32 %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %47

27:                                               ; preds = %20
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @avio_read(i32 %30, i8* %31, i32 %32)
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @AV_WL32(i8* %38, i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %46 = call i32 @av_dict_set(i32* %42, i8* %43, i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %27, %26, %19
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @avio_read(i32, i8*, i32) #1

declare dso_local i32 @AV_WL32(i8*, i32) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
