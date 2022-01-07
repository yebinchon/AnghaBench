; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_cache.c_cache_read.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_cache.c_cache_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i64, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64 }

@cmp = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to perform internal seek\0A\00", align 1
@AVERROR_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32)* @cache_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_read(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca [2 x %struct.TYPE_10__*], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %8, align 8
  %17 = bitcast [2 x %struct.TYPE_10__*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 16, i1 false)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* @cmp, align 4
  %24 = getelementptr inbounds [2 x %struct.TYPE_10__*], [2 x %struct.TYPE_10__*]* %10, i64 0, i64 0
  %25 = bitcast %struct.TYPE_10__** %24 to i8**
  %26 = call %struct.TYPE_10__* @av_tree_find(i32 %20, i64* %22, i32 %23, i8** %25)
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %9, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = getelementptr inbounds [2 x %struct.TYPE_10__*], [2 x %struct.TYPE_10__*]* %10, i64 0, i64 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 16
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %9, align 8
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = icmp ne %struct.TYPE_10__* %33, null
  br i1 %34, label %35, label %120

35:                                               ; preds = %32
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  store i64 %42, i64* %12, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @av_assert0(i32 %50)
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %119

57:                                               ; preds = %35
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = add nsw i64 %60, %61
  store i64 %62, i64* %13, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %13, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %13, align 8
  %73 = load i32, i32* @SEEK_SET, align 4
  %74 = call i64 @lseek(i32 %71, i64 %72, i32 %73)
  store i64 %74, i64* %11, align 8
  br label %79

75:                                               ; preds = %57
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %11, align 8
  br label %79

79:                                               ; preds = %75, %68
  %80 = load i64, i64* %11, align 8
  %81 = icmp sge i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = sub nsw i64 %93, %94
  %96 = call i32 @FFMIN(i32 %90, i64 %95)
  %97 = call i64 @read(i32 %88, i8* %89, i32 %96)
  store i64 %97, i64* %11, align 8
  br label %98

98:                                               ; preds = %82, %79
  %99 = load i64, i64* %11, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %98
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, %102
  store i64 %106, i64* %104, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, %107
  store i64 %111, i64* %109, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = load i64, i64* %11, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %4, align 4
  br label %210

118:                                              ; preds = %98
  br label %119

119:                                              ; preds = %118, %35
  br label %120

120:                                              ; preds = %119, %32
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %123, %126
  br i1 %127, label %128, label %149

128:                                              ; preds = %120
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* @SEEK_SET, align 4
  %136 = call i64 @ffurl_seek(i32 %131, i64 %134, i32 %135)
  store i64 %136, i64* %11, align 8
  %137 = load i64, i64* %11, align 8
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %128
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = load i32, i32* @AV_LOG_ERROR, align 4
  %142 = call i32 @av_log(%struct.TYPE_8__* %140, i32 %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %143 = load i64, i64* %11, align 8
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %4, align 4
  br label %210

145:                                              ; preds = %128
  %146 = load i64, i64* %11, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %145, %120
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %6, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i64 @ffurl_read(i32 %152, i8* %153, i32 %154)
  store i64 %155, i64* %11, align 8
  %156 = load i64, i64* %11, align 8
  %157 = load i64, i64* @AVERROR_EOF, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %174

159:                                              ; preds = %149
  %160 = load i32, i32* %7, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %159
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 3
  store i32 1, i32* %164, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp sge i64 %167, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @av_assert0(i32 %172)
  br label %174

174:                                              ; preds = %162, %159, %149
  %175 = load i64, i64* %11, align 8
  %176 = icmp sle i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i64, i64* %11, align 8
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %4, align 4
  br label %210

180:                                              ; preds = %174
  %181 = load i64, i64* %11, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, %181
  store i64 %185, i64* %183, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %191 = load i8*, i8** %6, align 8
  %192 = load i64, i64* %11, align 8
  %193 = call i32 @add_entry(%struct.TYPE_8__* %190, i8* %191, i64 %192)
  %194 = load i64, i64* %11, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, %194
  store i64 %198, i64* %196, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i64 @FFMAX(i64 %201, i64 %204)
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 4
  store i64 %205, i64* %207, align 8
  %208 = load i64, i64* %11, align 8
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %180, %177, %139, %101
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_10__* @av_tree_find(i32, i64*, i32, i8**) #2

declare dso_local i32 @av_assert0(i32) #2

declare dso_local i64 @lseek(i32, i64, i32) #2

declare dso_local i64 @read(i32, i8*, i32) #2

declare dso_local i32 @FFMIN(i32, i64) #2

declare dso_local i64 @ffurl_seek(i32, i64, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*) #2

declare dso_local i64 @ffurl_read(i32, i8*, i32) #2

declare dso_local i32 @add_entry(%struct.TYPE_8__*, i8*, i64) #2

declare dso_local i64 @FFMAX(i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
