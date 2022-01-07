; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_lv2.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_lv2.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__**, %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@query_formats.sample_fmts = internal constant [2 x i32] [i32 129, i32 128], align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %4, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %18, i64 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %7, align 8
  %21 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.sample_fmts, i64 0, i64 0))
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = call i32 @AVERROR(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %171

27:                                               ; preds = %1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @ff_set_common_formats(%struct.TYPE_10__* %28, i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %2, align 4
  br label %171

35:                                               ; preds = %27
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = call i32* (...) @ff_all_samplerates()
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %171

47:                                               ; preds = %40
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @ff_set_common_samplerates(%struct.TYPE_10__* %48, i32* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %171

55:                                               ; preds = %47
  br label %71

56:                                               ; preds = %35
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %57, align 4
  %61 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 -1, i32* %61, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %64 = call i32* @ff_make_format_list(i32* %63)
  %65 = call i32 @ff_set_common_samplerates(%struct.TYPE_10__* %62, i32* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %2, align 4
  br label %171

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %55
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %97

76:                                               ; preds = %71
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  store i32* null, i32** %6, align 8
  %82 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %83 = call i32 @ff_add_channel_layout(i32** %6, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %2, align 4
  br label %171

88:                                               ; preds = %81
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @ff_set_common_channel_layouts(%struct.TYPE_10__* %89, i32* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %171

96:                                               ; preds = %88
  br label %170

97:                                               ; preds = %76, %71
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp sge i32 %100, 1
  br i1 %101, label %102, label %143

102:                                              ; preds = %97
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %105, i64 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  store %struct.TYPE_9__* %107, %struct.TYPE_9__** %10, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @FF_COUNT2LAYOUT(i32 %110)
  store i32 %111, i32* %11, align 4
  store i32* null, i32** %6, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @ff_add_channel_layout(i32** %6, i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %102
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %2, align 4
  br label %171

118:                                              ; preds = %102
  %119 = load i32*, i32** %6, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = call i32 @ff_channel_layouts_ref(i32* %119, i32* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %2, align 4
  br label %171

127:                                              ; preds = %118
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %127
  %133 = load i32*, i32** %6, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = call i32 @ff_channel_layouts_ref(i32* %133, i32* %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %2, align 4
  br label %171

141:                                              ; preds = %132
  br label %142

142:                                              ; preds = %141, %127
  br label %143

143:                                              ; preds = %142, %97
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp sge i32 %146, 1
  br i1 %147, label %148, label %169

148:                                              ; preds = %143
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @FF_COUNT2LAYOUT(i32 %151)
  store i32 %152, i32* %12, align 4
  store i32* null, i32** %6, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @ff_add_channel_layout(i32** %6, i32 %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %148
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %2, align 4
  br label %171

159:                                              ; preds = %148
  %160 = load i32*, i32** %6, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = call i32 @ff_channel_layouts_ref(i32* %160, i32* %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* %8, align 4
  store i32 %167, i32* %2, align 4
  br label %171

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %168, %143
  br label %170

170:                                              ; preds = %169, %96
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %166, %157, %139, %125, %116, %94, %86, %68, %53, %44, %33, %24
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32* @ff_make_format_list(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_set_common_formats(%struct.TYPE_10__*, i32*) #1

declare dso_local i32* @ff_all_samplerates(...) #1

declare dso_local i32 @ff_set_common_samplerates(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ff_add_channel_layout(i32**, i32) #1

declare dso_local i32 @ff_set_common_channel_layouts(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @FF_COUNT2LAYOUT(i32) #1

declare dso_local i32 @ff_channel_layouts_ref(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
