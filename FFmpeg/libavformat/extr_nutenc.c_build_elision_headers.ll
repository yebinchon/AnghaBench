; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_build_elision_headers.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_build_elision_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__**, %struct.TYPE_5__* }

@build_elision_headers.headers = internal constant [6 x [5 x %struct.TYPE_5__]] [[5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 3, i32 0, i32 0, i32 1, i32 0 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 4, i32 0, i32 0, i32 1, i32 182 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 2, i32 255, i32 250, i32 0, i32 0 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 2, i32 255, i32 251, i32 0, i32 0 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 2, i32 255, i32 252, i32 0, i32 0 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 2, i32 255, i32 253, i32 0, i32 0 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @build_elision_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_elision_headers(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 7, i32* %9, align 8
  store i32 1, i32* %4, align 4
  br label %10

10:                                               ; preds = %41, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [6 x [5 x %struct.TYPE_5__]], [6 x [5 x %struct.TYPE_5__]]* @build_elision_headers.headers, i64 0, i64 %25
  %27 = getelementptr inbounds [5 x %struct.TYPE_5__], [5 x %struct.TYPE_5__]* %26, i64 0, i64 0
  %28 = bitcast %struct.TYPE_5__* %22 to i8*
  %29 = bitcast %struct.TYPE_5__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 20, i1 false)
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [6 x [5 x %struct.TYPE_5__]], [6 x [5 x %struct.TYPE_5__]]* @build_elision_headers.headers, i64 0, i64 %32
  %34 = getelementptr inbounds [5 x %struct.TYPE_5__], [5 x %struct.TYPE_5__]* %33, i64 0, i64 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %37, i64 %39
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %40, align 8
  br label %41

41:                                               ; preds = %16
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %10

44:                                               ; preds = %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
