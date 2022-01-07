; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_new_variant.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_new_variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.variant = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.variant_info = type { i32, i32, i32, i32 }
%struct.playlist = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.variant* (%struct.TYPE_4__*, %struct.variant_info*, i8*, i8*)* @new_variant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.variant* @new_variant(%struct.TYPE_4__* %0, %struct.variant_info* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.variant*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.variant_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.variant*, align 8
  %11 = alloca %struct.playlist*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store %struct.variant_info* %1, %struct.variant_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call %struct.variant* @new_playlist(%struct.TYPE_4__* %12, i8* %13, i8* %14)
  %16 = bitcast %struct.variant* %15 to %struct.playlist*
  store %struct.playlist* %16, %struct.playlist** %11, align 8
  %17 = load %struct.playlist*, %struct.playlist** %11, align 8
  %18 = icmp ne %struct.playlist* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store %struct.variant* null, %struct.variant** %5, align 8
  br label %71

20:                                               ; preds = %4
  %21 = call %struct.variant* @av_mallocz(i32 24)
  store %struct.variant* %21, %struct.variant** %10, align 8
  %22 = load %struct.variant*, %struct.variant** %10, align 8
  %23 = icmp ne %struct.variant* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store %struct.variant* null, %struct.variant** %5, align 8
  br label %71

25:                                               ; preds = %20
  %26 = load %struct.variant_info*, %struct.variant_info** %7, align 8
  %27 = icmp ne %struct.variant_info* %26, null
  br i1 %27, label %28, label %56

28:                                               ; preds = %25
  %29 = load %struct.variant_info*, %struct.variant_info** %7, align 8
  %30 = getelementptr inbounds %struct.variant_info, %struct.variant_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @atoi(i32 %31)
  %33 = load %struct.variant*, %struct.variant** %10, align 8
  %34 = getelementptr inbounds %struct.variant, %struct.variant* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.variant*, %struct.variant** %10, align 8
  %36 = getelementptr inbounds %struct.variant, %struct.variant* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.variant_info*, %struct.variant_info** %7, align 8
  %39 = getelementptr inbounds %struct.variant_info, %struct.variant_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcpy(i32 %37, i32 %40)
  %42 = load %struct.variant*, %struct.variant** %10, align 8
  %43 = getelementptr inbounds %struct.variant, %struct.variant* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.variant_info*, %struct.variant_info** %7, align 8
  %46 = getelementptr inbounds %struct.variant_info, %struct.variant_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strcpy(i32 %44, i32 %47)
  %49 = load %struct.variant*, %struct.variant** %10, align 8
  %50 = getelementptr inbounds %struct.variant, %struct.variant* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.variant_info*, %struct.variant_info** %7, align 8
  %53 = getelementptr inbounds %struct.variant_info, %struct.variant_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcpy(i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %28, %25
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.variant*, %struct.variant** %10, align 8
  %62 = call i32 @dynarray_add(i32* %58, i32* %60, %struct.variant* %61)
  %63 = load %struct.variant*, %struct.variant** %10, align 8
  %64 = getelementptr inbounds %struct.variant, %struct.variant* %63, i32 0, i32 1
  %65 = load %struct.variant*, %struct.variant** %10, align 8
  %66 = getelementptr inbounds %struct.variant, %struct.variant* %65, i32 0, i32 0
  %67 = load %struct.playlist*, %struct.playlist** %11, align 8
  %68 = bitcast %struct.playlist* %67 to %struct.variant*
  %69 = call i32 @dynarray_add(i32* %64, i32* %66, %struct.variant* %68)
  %70 = load %struct.variant*, %struct.variant** %10, align 8
  store %struct.variant* %70, %struct.variant** %5, align 8
  br label %71

71:                                               ; preds = %56, %24, %19
  %72 = load %struct.variant*, %struct.variant** %5, align 8
  ret %struct.variant* %72
}

declare dso_local %struct.variant* @new_playlist(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local %struct.variant* @av_mallocz(i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @dynarray_add(i32*, i32*, %struct.variant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
