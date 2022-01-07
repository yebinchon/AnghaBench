; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_extract_extradata_bsf.c_extract_extradata_vc1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_extract_extradata_bsf.c_extract_extradata_vc1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32* }

@UINT32_MAX = common dso_local global i64 0, align 8
@VC1_CODE_SEQHDR = common dso_local global i64 0, align 8
@VC1_CODE_ENTRYPOINT = common dso_local global i64 0, align 8
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32**, i32*)* @extract_extradata_vc1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_extradata_vc1(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %10, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %11, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  store i32* %29, i32** %12, align 8
  %30 = load i64, i64* @UINT32_MAX, align 8
  store i64 %30, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %66, %4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %31
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = call i32* @avpriv_find_start_code(i32* %36, i32* %37, i64* %13)
  store i32* %38, i32** %11, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* @VC1_CODE_SEQHDR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @VC1_CODE_ENTRYPOINT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %35
  store i32 1, i32* %14, align 4
  br label %66

47:                                               ; preds = %42
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load i64, i64* %13, align 8
  %52 = call i64 @IS_MARKER(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 -4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = ptrtoint i32* %56 to i64
  %61 = ptrtoint i32* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %15, align 4
  br label %67

65:                                               ; preds = %50, %47
  br label %66

66:                                               ; preds = %65, %46
  br label %31

67:                                               ; preds = %54, %31
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %117

70:                                               ; preds = %67
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32* @av_malloc(i64 %74)
  %76 = load i32**, i32*** %8, align 8
  store i32* %75, i32** %76, align 8
  %77 = load i32**, i32*** %8, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %70
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = call i32 @AVERROR(i32 %81)
  store i32 %82, i32* %5, align 4
  br label %118

83:                                               ; preds = %70
  %84 = load i32**, i32*** %8, align 8
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @memcpy(i32* %85, i32* %88, i32 %89)
  %91 = load i32**, i32*** %8, align 8
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %97 = call i32 @memset(i32* %95, i32 0, i64 %96)
  %98 = load i32, i32* %15, align 4
  %99 = load i32*, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %83
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = sext i32 %105 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %107, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %104, %83
  br label %117

117:                                              ; preds = %116, %67
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %80
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32* @avpriv_find_start_code(i32*, i32*, i64*) #1

declare dso_local i64 @IS_MARKER(i64) #1

declare dso_local i32* @av_malloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
