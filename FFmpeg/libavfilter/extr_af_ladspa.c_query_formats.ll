; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_ladspa.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_ladspa.c_query_formats.c"
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
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %4, align 8
  %16 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.sample_fmts, i64 0, i64 0))
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %198

22:                                               ; preds = %1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @ff_set_common_formats(%struct.TYPE_10__* %23, i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %198

30:                                               ; preds = %22
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = call i32* (...) @ff_all_samplerates()
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = call i32 @AVERROR(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %198

42:                                               ; preds = %35
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @ff_set_common_samplerates(%struct.TYPE_10__* %43, i32* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %198

50:                                               ; preds = %42
  br label %66

51:                                               ; preds = %30
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %52, align 4
  %56 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 -1, i32* %56, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %59 = call i32* @ff_make_format_list(i32* %58)
  %60 = call i32 @ff_set_common_samplerates(%struct.TYPE_10__* %57, i32* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %198

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %50
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %92

71:                                               ; preds = %66
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = call i32* (...) @ff_all_channel_counts()
  store i32* %77, i32** %6, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = call i32 @AVERROR(i32 %81)
  store i32 %82, i32* %2, align 4
  br label %198

83:                                               ; preds = %76
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @ff_set_common_channel_layouts(%struct.TYPE_10__* %84, i32* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %198

91:                                               ; preds = %83
  br label %197

92:                                               ; preds = %71, %66
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %118

97:                                               ; preds = %92
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %118

102:                                              ; preds = %97
  store i32* null, i32** %6, align 8
  %103 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %104 = call i32 @ff_add_channel_layout(i32** %6, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %198

109:                                              ; preds = %102
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @ff_set_common_channel_layouts(%struct.TYPE_10__* %110, i32* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %2, align 4
  br label %198

117:                                              ; preds = %109
  br label %196

118:                                              ; preds = %97, %92
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %121, i64 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  store %struct.TYPE_9__* %123, %struct.TYPE_9__** %9, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp sge i32 %126, 1
  br i1 %127, label %128, label %169

128:                                              ; preds = %118
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %131, i64 0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  store %struct.TYPE_9__* %133, %struct.TYPE_9__** %10, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @FF_COUNT2LAYOUT(i32 %136)
  store i32 %137, i32* %11, align 4
  store i32* null, i32** %6, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @ff_add_channel_layout(i32** %6, i32 %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %128
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %2, align 4
  br label %198

144:                                              ; preds = %128
  %145 = load i32*, i32** %6, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = call i32 @ff_channel_layouts_ref(i32* %145, i32* %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %2, align 4
  br label %198

153:                                              ; preds = %144
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %168, label %158

158:                                              ; preds = %153
  %159 = load i32*, i32** %6, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = call i32 @ff_channel_layouts_ref(i32* %159, i32* %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %158
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %2, align 4
  br label %198

167:                                              ; preds = %158
  br label %168

168:                                              ; preds = %167, %153
  br label %169

169:                                              ; preds = %168, %118
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = icmp sge i32 %172, 1
  br i1 %173, label %174, label %195

174:                                              ; preds = %169
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @FF_COUNT2LAYOUT(i32 %177)
  store i32 %178, i32* %12, align 4
  store i32* null, i32** %6, align 8
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @ff_add_channel_layout(i32** %6, i32 %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %174
  %184 = load i32, i32* %7, align 4
  store i32 %184, i32* %2, align 4
  br label %198

185:                                              ; preds = %174
  %186 = load i32*, i32** %6, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = call i32 @ff_channel_layouts_ref(i32* %186, i32* %188)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %2, align 4
  br label %198

194:                                              ; preds = %185
  br label %195

195:                                              ; preds = %194, %169
  br label %196

196:                                              ; preds = %195, %117
  br label %197

197:                                              ; preds = %196, %91
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %197, %192, %183, %165, %151, %142, %115, %107, %89, %80, %63, %48, %39, %28, %19
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32* @ff_make_format_list(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_set_common_formats(%struct.TYPE_10__*, i32*) #1

declare dso_local i32* @ff_all_samplerates(...) #1

declare dso_local i32 @ff_set_common_samplerates(%struct.TYPE_10__*, i32*) #1

declare dso_local i32* @ff_all_channel_counts(...) #1

declare dso_local i32 @ff_set_common_channel_layouts(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ff_add_channel_layout(i32**, i32) #1

declare dso_local i32 @FF_COUNT2LAYOUT(i32) #1

declare dso_local i32 @ff_channel_layouts_ref(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
