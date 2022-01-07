; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_cache.c_add_entry.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_cache.c_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i64, i32 }
%struct.AVTreeNode = type { i64, i32, i64 }

@SEEK_END = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"seek in cache failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"write in cache failed\0A\00", align 1
@cmp = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"av_tree_insert failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32)* @add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_entry(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.AVTreeNode*, align 8
  %12 = alloca [2 x %struct.AVTreeNode*], align 16
  %13 = alloca %struct.AVTreeNode*, align 8
  %14 = alloca %struct.AVTreeNode*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %8, align 8
  store i64 -1, i64* %9, align 8
  store %struct.AVTreeNode* null, %struct.AVTreeNode** %11, align 8
  %18 = bitcast [2 x %struct.AVTreeNode*]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 16, i1 false)
  store %struct.AVTreeNode* null, %struct.AVTreeNode** %14, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SEEK_END, align 4
  %23 = call i64 @lseek(i32 %21, i32 0, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @AVERROR(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = load i32, i32* @AV_LOG_ERROR, align 4
  %31 = call i32 @av_log(%struct.TYPE_5__* %29, i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %144

32:                                               ; preds = %3
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @write(i32 %38, i8* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = call i32 @av_log(%struct.TYPE_5__* %47, i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %144

50:                                               ; preds = %32
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* @cmp, align 4
  %63 = getelementptr inbounds [2 x %struct.AVTreeNode*], [2 x %struct.AVTreeNode*]* %12, i64 0, i64 0
  %64 = bitcast %struct.AVTreeNode** %63 to i8**
  %65 = call %struct.AVTreeNode* @av_tree_find(i32 %59, i64* %61, i32 %62, i8** %64)
  store %struct.AVTreeNode* %65, %struct.AVTreeNode** %11, align 8
  %66 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %67 = icmp ne %struct.AVTreeNode* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %50
  %69 = getelementptr inbounds [2 x %struct.AVTreeNode*], [2 x %struct.AVTreeNode*]* %12, i64 0, i64 0
  %70 = load %struct.AVTreeNode*, %struct.AVTreeNode** %69, align 16
  store %struct.AVTreeNode* %70, %struct.AVTreeNode** %11, align 8
  br label %71

71:                                               ; preds = %68, %50
  %72 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %73 = icmp ne %struct.AVTreeNode* %72, null
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  %75 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %76 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %79 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %77, %81
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %98, label %87

87:                                               ; preds = %74
  %88 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %89 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %92 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %90, %94
  %96 = load i64, i64* %9, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %137

98:                                               ; preds = %87, %74, %71
  %99 = call %struct.AVTreeNode* @av_malloc(i32 24)
  store %struct.AVTreeNode* %99, %struct.AVTreeNode** %11, align 8
  %100 = call %struct.AVTreeNode* (...) @av_tree_node_alloc()
  store %struct.AVTreeNode* %100, %struct.AVTreeNode** %14, align 8
  %101 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %102 = icmp ne %struct.AVTreeNode* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.AVTreeNode*, %struct.AVTreeNode** %14, align 8
  %105 = icmp ne %struct.AVTreeNode* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %103, %98
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = call i32 @AVERROR(i32 %107)
  store i32 %108, i32* %10, align 4
  br label %144

109:                                              ; preds = %103
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %114 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %117 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %120 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %124 = load i32, i32* @cmp, align 4
  %125 = call %struct.AVTreeNode* @av_tree_insert(i32* %122, %struct.AVTreeNode* %123, i32 %124, %struct.AVTreeNode** %14)
  store %struct.AVTreeNode* %125, %struct.AVTreeNode** %13, align 8
  %126 = load %struct.AVTreeNode*, %struct.AVTreeNode** %13, align 8
  %127 = icmp ne %struct.AVTreeNode* %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %109
  %129 = load %struct.AVTreeNode*, %struct.AVTreeNode** %13, align 8
  %130 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %131 = icmp ne %struct.AVTreeNode* %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  store i32 -1, i32* %10, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = load i32, i32* @AV_LOG_ERROR, align 4
  %135 = call i32 @av_log(%struct.TYPE_5__* %133, i32 %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %144

136:                                              ; preds = %128, %109
  br label %143

137:                                              ; preds = %87
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %140 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %137, %136
  store i32 0, i32* %4, align 4
  br label %150

144:                                              ; preds = %132, %106, %44, %26
  %145 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %146 = call i32 @av_free(%struct.AVTreeNode* %145)
  %147 = load %struct.AVTreeNode*, %struct.AVTreeNode** %14, align 8
  %148 = call i32 @av_free(%struct.AVTreeNode* %147)
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %144, %143
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local %struct.AVTreeNode* @av_tree_find(i32, i64*, i32, i8**) #2

declare dso_local %struct.AVTreeNode* @av_malloc(i32) #2

declare dso_local %struct.AVTreeNode* @av_tree_node_alloc(...) #2

declare dso_local %struct.AVTreeNode* @av_tree_insert(i32*, %struct.AVTreeNode*, i32, %struct.AVTreeNode**) #2

declare dso_local i32 @av_free(%struct.AVTreeNode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
