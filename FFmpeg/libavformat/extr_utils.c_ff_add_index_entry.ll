; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_add_index_entry.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_add_index_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RELATIVE_TS_BASE = common dso_local global i64 0, align 8
@AVSEEK_FLAG_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_add_index_entry(%struct.TYPE_8__** %0, i32* %1, i32* %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = load i32, i32* @UINT_MAX, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 32
  %28 = icmp uge i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %174

30:                                               ; preds = %8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %9, align 4
  br label %174

37:                                               ; preds = %30
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %15, align 4
  %42 = icmp sgt i32 %41, 1073741823
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = call i32 @AVERROR(i32 %44)
  store i32 %45, i32* %9, align 4
  br label %174

46:                                               ; preds = %40
  %47 = load i64, i64* %14, align 8
  %48 = call i64 @is_relative(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i64, i64* @RELATIVE_TS_BASE, align 8
  %52 = load i64, i64* %14, align 8
  %53 = sub nsw i64 %52, %51
  store i64 %53, i64* %14, align 8
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 32
  %63 = trunc i64 %62 to i32
  %64 = call %struct.TYPE_8__* @av_fast_realloc(%struct.TYPE_8__* %56, i32* %57, i32 %63)
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %18, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %66 = icmp ne %struct.TYPE_8__* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %54
  store i32 -1, i32* %9, align 4
  br label %174

68:                                               ; preds = %54
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %70 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %70, align 8
  %71 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %14, align 8
  %76 = load i32, i32* @AVSEEK_FLAG_ANY, align 4
  %77 = call i32 @ff_index_search_timestamp(%struct.TYPE_8__* %72, i32 %74, i64 %75, i32 %76)
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %20, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %68
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  store i32 %82, i32* %20, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %85 = load i32, i32* %20, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %86
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %19, align 8
  %88 = load i32, i32* %20, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %80
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 -1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %14, align 8
  %96 = icmp slt i64 %94, %95
  br label %97

97:                                               ; preds = %90, %80
  %98 = phi i1 [ true, %80 ], [ %96, %90 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @av_assert0(i32 %99)
  br label %157

101:                                              ; preds = %68
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %103 = load i32, i32* %20, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %104
  store %struct.TYPE_8__* %105, %struct.TYPE_8__** %19, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %14, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %139

111:                                              ; preds = %101
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %14, align 8
  %116 = icmp sle i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i32 -1, i32* %9, align 4
  br label %174

118:                                              ; preds = %111
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %120 = load i32, i32* %20, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 1
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %125 = load i32, i32* %20, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %126
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %20, align 4
  %131 = sub nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = mul i64 32, %132
  %134 = trunc i64 %133 to i32
  %135 = call i32 @memmove(%struct.TYPE_8__* %123, %struct.TYPE_8__* %127, i32 %134)
  %136 = load i32*, i32** %11, align 8
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %156

139:                                              ; preds = %101
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %13, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %139
  %146 = load i32, i32* %16, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  store i32 %154, i32* %16, align 4
  br label %155

155:                                              ; preds = %151, %145, %139
  br label %156

156:                                              ; preds = %155, %118
  br label %157

157:                                              ; preds = %156, %97
  %158 = load i64, i64* %13, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  %161 = load i64, i64* %14, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load i32, i32* %16, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* %15, align 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %17, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* %20, align 4
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %157, %117, %67, %43, %34, %29
  %175 = load i32, i32* %9, align 4
  ret i32 %175
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @is_relative(i64) #1

declare dso_local %struct.TYPE_8__* @av_fast_realloc(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @ff_index_search_timestamp(%struct.TYPE_8__*, i32, i64, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @memmove(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
