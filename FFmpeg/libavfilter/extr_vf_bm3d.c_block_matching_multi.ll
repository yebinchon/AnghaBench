; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_bm3d.c_block_matching_multi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_bm3d.c_block_matching_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32*, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*, i32, i32, i32, i32, i32, i32)* @block_matching_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @block_matching_multi(%struct.TYPE_11__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = load i32, i32* %16, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %35
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %17, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %18, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %19, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %20, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %21, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %21, align 4
  %61 = sdiv i32 %59, %60
  %62 = load i32, i32* %21, align 4
  %63 = mul nsw i32 %61, %62
  store i32 %63, i32* %22, align 4
  %64 = load i32, i32* %22, align 4
  %65 = load i32, i32* %21, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @search_boundary(i32 0, i32 %64, i32 %65, i32 0, i32 %66, i32 %67)
  store i32 %68, i32* %23, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %20, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* %22, align 4
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @search_boundary(i32 %71, i32 %72, i32 %73, i32 0, i32 %74, i32 %75)
  store i32 %76, i32* %24, align 4
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @search_boundary(i32 0, i32 %77, i32 %78, i32 1, i32 %79, i32 %80)
  store i32 %81, i32* %25, align 4
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %20, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* %21, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @search_boundary(i32 %84, i32 %85, i32 %86, i32 1, i32 %87, i32 %88)
  store i32 %89, i32* %26, align 4
  store i32 0, i32* %29, align 4
  %90 = load i32, i32* %25, align 4
  store i32 %90, i32* %27, align 4
  br label %91

91:                                               ; preds = %132, %8
  %92 = load i32, i32* %27, align 4
  %93 = load i32, i32* %26, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %136

95:                                               ; preds = %91
  %96 = load i32, i32* %23, align 4
  store i32 %96, i32* %28, align 4
  br label %97

97:                                               ; preds = %127, %95
  %98 = load i32, i32* %28, align 4
  %99 = load i32, i32* %24, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %131

101:                                              ; preds = %97
  %102 = load i32, i32* %14, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i32, i32* %27, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* %28, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %127

113:                                              ; preds = %108, %104, %101
  %114 = load i32, i32* %27, align 4
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %28, align 4
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = load i32, i32* %29, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %29, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i64 %123
  %125 = bitcast %struct.TYPE_10__* %124 to i8*
  %126 = bitcast %struct.TYPE_10__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %125, i8* align 4 %126, i64 8, i1 false)
  br label %127

127:                                              ; preds = %113, %112
  %128 = load i32, i32* %21, align 4
  %129 = load i32, i32* %28, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %28, align 4
  br label %97

131:                                              ; preds = %97
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %27, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %27, align 4
  br label %91

136:                                              ; preds = %91
  %137 = load i32, i32* %14, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %159

139:                                              ; preds = %136
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  store i64 0, i64* %144, align 8
  %145 = load i32, i32* %12, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  store i32 %145, i32* %150, align 8
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  store i32 %151, i32* %156, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  br label %159

159:                                              ; preds = %139, %136
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = load i32, i32* %29, align 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %16, align 4
  %177 = call i32 @do_block_matching_multi(%struct.TYPE_11__* %160, i32* %161, i32 %162, i32 %165, %struct.TYPE_10__* %168, i32 %169, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176)
  ret void
}

declare dso_local i32 @search_boundary(i32, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @do_block_matching_multi(%struct.TYPE_11__*, i32*, i32, i32, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
