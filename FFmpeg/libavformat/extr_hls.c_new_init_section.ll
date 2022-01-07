; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_new_init_section.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_new_init_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.segment = type { i32, i8*, i32 }
%struct.playlist = type { i32, i32 }
%struct.init_section_info = type { i8*, i32* }

@MAX_URL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.segment* (%struct.playlist*, %struct.init_section_info*, i8*)* @new_init_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.segment* @new_init_section(%struct.playlist* %0, %struct.init_section_info* %1, i8* %2) #0 {
  %4 = alloca %struct.segment*, align 8
  %5 = alloca %struct.playlist*, align 8
  %6 = alloca %struct.init_section_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.segment*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.playlist* %0, %struct.playlist** %5, align 8
  store %struct.init_section_info* %1, %struct.init_section_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @MAX_URL_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.init_section_info*, %struct.init_section_info** %6, align 8
  %18 = getelementptr inbounds %struct.init_section_info, %struct.init_section_info* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store %struct.segment* null, %struct.segment** %4, align 8
  store i32 1, i32* %12, align 4
  br label %85

24:                                               ; preds = %3
  %25 = call %struct.segment* @av_mallocz(i32 24)
  store %struct.segment* %25, %struct.segment** %8, align 8
  %26 = load %struct.segment*, %struct.segment** %8, align 8
  %27 = icmp ne %struct.segment* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store %struct.segment* null, %struct.segment** %4, align 8
  store i32 1, i32* %12, align 4
  br label %85

29:                                               ; preds = %24
  %30 = trunc i64 %14 to i32
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.init_section_info*, %struct.init_section_info** %6, align 8
  %33 = getelementptr inbounds %struct.init_section_info, %struct.init_section_info* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ff_make_absolute_url(i8* %16, i32 %30, i8* %31, i32* %34)
  %36 = call i32 @av_strdup(i8* %16)
  %37 = load %struct.segment*, %struct.segment** %8, align 8
  %38 = getelementptr inbounds %struct.segment, %struct.segment* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.segment*, %struct.segment** %8, align 8
  %40 = getelementptr inbounds %struct.segment, %struct.segment* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %29
  %44 = load %struct.segment*, %struct.segment** %8, align 8
  %45 = call i32 @av_free(%struct.segment* %44)
  store %struct.segment* null, %struct.segment** %4, align 8
  store i32 1, i32* %12, align 4
  br label %85

46:                                               ; preds = %29
  %47 = load %struct.init_section_info*, %struct.init_section_info** %6, align 8
  %48 = getelementptr inbounds %struct.init_section_info, %struct.init_section_info* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %46
  %54 = load %struct.init_section_info*, %struct.init_section_info** %6, align 8
  %55 = getelementptr inbounds %struct.init_section_info, %struct.init_section_info* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @strtoll(i8* %56, i32* null, i32 10)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.segment*, %struct.segment** %8, align 8
  %60 = getelementptr inbounds %struct.segment, %struct.segment* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.init_section_info*, %struct.init_section_info** %6, align 8
  %62 = getelementptr inbounds %struct.init_section_info, %struct.init_section_info* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @strchr(i8* %63, i8 signext 64)
  store i8* %64, i8** %9, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = call i8* @strtoll(i8* %69, i32* null, i32 10)
  %71 = load %struct.segment*, %struct.segment** %8, align 8
  %72 = getelementptr inbounds %struct.segment, %struct.segment* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %67, %53
  br label %77

74:                                               ; preds = %46
  %75 = load %struct.segment*, %struct.segment** %8, align 8
  %76 = getelementptr inbounds %struct.segment, %struct.segment* %75, i32 0, i32 0
  store i32 -1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %73
  %78 = load %struct.playlist*, %struct.playlist** %5, align 8
  %79 = getelementptr inbounds %struct.playlist, %struct.playlist* %78, i32 0, i32 1
  %80 = load %struct.playlist*, %struct.playlist** %5, align 8
  %81 = getelementptr inbounds %struct.playlist, %struct.playlist* %80, i32 0, i32 0
  %82 = load %struct.segment*, %struct.segment** %8, align 8
  %83 = call i32 @dynarray_add(i32* %79, i32* %81, %struct.segment* %82)
  %84 = load %struct.segment*, %struct.segment** %8, align 8
  store %struct.segment* %84, %struct.segment** %4, align 8
  store i32 1, i32* %12, align 4
  br label %85

85:                                               ; preds = %77, %43, %28, %23
  %86 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load %struct.segment*, %struct.segment** %4, align 8
  ret %struct.segment* %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.segment* @av_mallocz(i32) #2

declare dso_local i32 @ff_make_absolute_url(i8*, i32, i8*, i32*) #2

declare dso_local i32 @av_strdup(i8*) #2

declare dso_local i32 @av_free(%struct.segment*) #2

declare dso_local i8* @strtoll(i8*, i32*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @dynarray_add(i32*, i32*, %struct.segment*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
