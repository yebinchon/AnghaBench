; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_timestamp_to_int64.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_timestamp_to_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mxf_timestamp_to_int64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_timestamp_to_int64(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = bitcast %struct.tm* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 28, i1 false)
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 48
  %8 = sub nsw i32 %7, 1900
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 40
  %12 = and i32 %11, 255
  %13 = sub nsw i32 %12, 1
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %2, align 4
  %16 = ashr i32 %15, 32
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %2, align 4
  %20 = ashr i32 %19, 24
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %2, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %2, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %2, align 4
  %32 = and i32 %31, 255
  %33 = mul nsw i32 %32, 4
  store i32 %33, i32* %4, align 4
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @av_clip(i32 %35, i32 0, i32 11)
  %37 = ptrtoint i8* %36 to i32
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @av_clip(i32 %40, i32 1, i32 31)
  %42 = ptrtoint i8* %41 to i32
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @av_clip(i32 %45, i32 0, i32 23)
  %47 = ptrtoint i8* %46 to i32
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @av_clip(i32 %50, i32 0, i32 59)
  %52 = ptrtoint i8* %51 to i32
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @av_clip(i32 %55, i32 0, i32 59)
  %57 = ptrtoint i8* %56 to i32
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i8* @av_clip(i32 %59, i32 0, i32 999)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %4, align 4
  %62 = call i64 @av_timegm(%struct.tm* %3)
  %63 = trunc i64 %62 to i32
  %64 = mul nsw i32 %63, 1000000
  %65 = load i32, i32* %4, align 4
  %66 = mul nsw i32 %65, 1000
  %67 = add nsw i32 %64, %66
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @av_clip(i32, i32, i32) #2

declare dso_local i64 @av_timegm(%struct.tm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
