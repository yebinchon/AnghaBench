; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_moof_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_moof_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64 }

@FF_MOV_FLAG_DASH = common dso_local global i32 0, align 4
@FF_MOV_FLAG_GLOBAL_SIDX = common dso_local global i32 0, align 4
@FF_MOV_FLAG_SKIP_SIDX = common dso_local global i32 0, align 4
@MOV_PRFT_NONE = common dso_local global i64 0, align 8
@MOV_PRFT_NB = common dso_local global i64 0, align 8
@FF_MOV_FLAG_SKIP_TRAILER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32, i64)* @mov_write_moof_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_moof_tag(i32* %0, %struct.TYPE_8__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = call i32 @ffio_open_null_buf(i32** %10)
  store i32 %13, i32* %11, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* %11, align 4
  store i32 %16, i32* %5, align 4
  br label %127

17:                                               ; preds = %4
  %18 = load i32*, i32** %10, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @mov_write_moof_tag_internal(i32* %18, %struct.TYPE_8__* %19, i32 %20, i32 0)
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @ffio_close_null_buf(i32* %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FF_MOV_FLAG_DASH, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %17
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @FF_MOV_FLAG_GLOBAL_SIDX, align 4
  %35 = load i32, i32* @FF_MOV_FLAG_SKIP_SIDX, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %30
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 8
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %9, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @mov_write_sidx_tags(i32* %40, %struct.TYPE_8__* %41, i32 %42, i64 %47)
  br label %49

49:                                               ; preds = %39, %30, %17
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MOV_PRFT_NONE, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MOV_PRFT_NB, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @mov_write_prft_tag(i32* %62, %struct.TYPE_8__* %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %55, %49
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @FF_MOV_FLAG_GLOBAL_SIDX, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FF_MOV_FLAG_SKIP_TRAILER, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %121

85:                                               ; preds = %80, %73, %66
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 8
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %9, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @mov_add_tfra_entries(i32* %86, %struct.TYPE_8__* %87, i32 %88, i64 %93)
  store i32 %94, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %5, align 4
  br label %127

98:                                               ; preds = %85
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @FF_MOV_FLAG_GLOBAL_SIDX, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %120, label %105

105:                                              ; preds = %98
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @FF_MOV_FLAG_SKIP_TRAILER, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %105
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  %119 = call i32 @mov_prune_frag_info(%struct.TYPE_8__* %113, i32 %114, i64 %118)
  br label %120

120:                                              ; preds = %112, %105, %98
  br label %121

121:                                              ; preds = %120, %80
  %122 = load i32*, i32** %6, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @mov_write_moof_tag_internal(i32* %122, %struct.TYPE_8__* %123, i32 %124, i32 %125)
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %121, %96, %15
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @ffio_open_null_buf(i32**) #1

declare dso_local i32 @mov_write_moof_tag_internal(i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ffio_close_null_buf(i32*) #1

declare dso_local i32 @mov_write_sidx_tags(i32*, %struct.TYPE_8__*, i32, i64) #1

declare dso_local i32 @mov_write_prft_tag(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mov_add_tfra_entries(i32*, %struct.TYPE_8__*, i32, i64) #1

declare dso_local i32 @mov_prune_frag_info(%struct.TYPE_8__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
