; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_concat.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_concat.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__**, %struct.TYPE_6__**, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@TYPE_ALL = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %156, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @TYPE_ALL, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %159

22:                                               ; preds = %18
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %152, %22
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %155

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32* @ff_all_formats(i32 %36)
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %41, i64 %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = call i32 @ff_formats_ref(i32* %38, i32* %46)
  store i32 %47, i32* %14, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %2, align 4
  br label %160

51:                                               ; preds = %34
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %51
  %56 = call i32* (...) @ff_all_samplerates()
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %60, i64 %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = call i32 @ff_formats_ref(i32* %57, i32* %65)
  store i32 %66, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %2, align 4
  br label %160

70:                                               ; preds = %55
  %71 = call i32* (...) @ff_all_channel_layouts()
  store i32* %71, i32** %13, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %75, i64 %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = call i32 @ff_channel_layouts_ref(i32* %72, i32* %80)
  store i32 %81, i32* %14, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %2, align 4
  br label %160

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85, %51
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %146, %86
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %149

93:                                               ; preds = %87
  %94 = load i32*, i32** %11, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %97, i64 %99
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = call i32 @ff_formats_ref(i32* %94, i32* %102)
  store i32 %103, i32* %14, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %93
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %2, align 4
  br label %160

107:                                              ; preds = %93
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %138

111:                                              ; preds = %107
  %112 = load i32*, i32** %12, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %115, i64 %117
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = call i32 @ff_formats_ref(i32* %112, i32* %120)
  store i32 %121, i32* %14, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %111
  %124 = load i32*, i32** %13, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %127, i64 %129
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = call i32 @ff_channel_layouts_ref(i32* %124, i32* %132)
  store i32 %133, i32* %14, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %123, %111
  %136 = load i32, i32* %14, align 4
  store i32 %136, i32* %2, align 4
  br label %160

137:                                              ; preds = %123
  br label %138

138:                                              ; preds = %137, %107
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = zext i32 %142 to i64
  %144 = add nsw i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %138
  %147 = load i32, i32* %10, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %87

149:                                              ; preds = %87
  %150 = load i32, i32* %7, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %9, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %30

155:                                              ; preds = %30
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %5, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %18

159:                                              ; preds = %18
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %135, %105, %83, %68, %49
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32* @ff_all_formats(i32) #1

declare dso_local i32 @ff_formats_ref(i32*, i32*) #1

declare dso_local i32* @ff_all_samplerates(...) #1

declare dso_local i32* @ff_all_channel_layouts(...) #1

declare dso_local i32 @ff_channel_layouts_ref(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
