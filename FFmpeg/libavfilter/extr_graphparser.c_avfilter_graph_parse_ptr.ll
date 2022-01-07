; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphparser.c_avfilter_graph_parse_ptr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphparser.c_avfilter_graph_parse_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i64 }
%struct.TYPE_9__ = type { i32 }

@WHITESPACES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"[in]\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Invalid filterchain containing an unlabelled output pad: \22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Unable to parse graph description substring: \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"[out]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avfilter_graph_parse_ptr(%struct.TYPE_8__* %0, i8* %1, i32** %2, i32** %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8 0, i8* %13, align 1
  store i32* null, i32** %14, align 8
  %21 = load i32**, i32*** %8, align 8
  %22 = icmp ne i32** %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32**, i32*** %8, align 8
  %25 = load i32*, i32** %24, align 8
  br label %27

26:                                               ; preds = %5
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32* [ %25, %23 ], [ null, %26 ]
  store i32* %28, i32** %15, align 8
  %29 = load i32**, i32*** %9, align 8
  %30 = icmp ne i32** %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32**, i32*** %9, align 8
  %33 = load i32*, i32** %32, align 8
  br label %35

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32* [ %33, %31 ], [ null, %34 ]
  store i32* %36, i32** %16, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = call i32 @parse_sws_flags(i8** %7, %struct.TYPE_8__* %37)
  store i32 %38, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %146

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %123, %41
  %43 = load i8*, i8** %7, align 8
  store i8* %43, i8** %18, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @WHITESPACES, align 4
  %46 = call i32 @strspn(i8* %44, i32 %45)
  %47 = load i8*, i8** %7, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @parse_inputs(i8** %7, i32** %14, i32** %16, i8* %50)
  store i32 %51, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %146

54:                                               ; preds = %42
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @parse_filter(%struct.TYPE_9__** %17, i8** %7, %struct.TYPE_8__* %55, i32 %56, i8* %57)
  store i32 %58, i32* %12, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %146

61:                                               ; preds = %54
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load i32*, i32** %14, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @parse_inputs(i8** %19, i32** %14, i32** %16, i8* %73)
  store i32 %74, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %146

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %69, %66, %61
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @link_filter_inouts(%struct.TYPE_9__* %79, i32** %14, i32** %15, i8* %80)
  store i32 %81, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %146

84:                                               ; preds = %78
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @parse_outputs(i8** %7, i32** %14, i32** %15, i32** %16, i8* %85)
  store i32 %86, i32* %12, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %146

89:                                               ; preds = %84
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* @WHITESPACES, align 4
  %92 = call i32 @strspn(i8* %90, i32 %91)
  %93 = load i8*, i8** %7, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %7, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %7, align 8
  %98 = load i8, i8* %96, align 1
  store i8 %98, i8* %13, align 1
  %99 = load i8, i8* %13, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 59
  br i1 %101, label %102, label %112

102:                                              ; preds = %89
  %103 = load i32*, i32** %14, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load i8*, i8** %10, align 8
  %107 = load i32, i32* @AV_LOG_ERROR, align 4
  %108 = load i8*, i8** %18, align 8
  %109 = call i32 @av_log(i8* %106, i32 %107, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = call i32 @AVERROR(i32 %110)
  store i32 %111, i32* %12, align 4
  br label %146

112:                                              ; preds = %102, %89
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %112
  %116 = load i8, i8* %13, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 44
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i8, i8* %13, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 59
  br label %123

123:                                              ; preds = %119, %115
  %124 = phi i1 [ true, %115 ], [ %122, %119 ]
  br i1 %124, label %42, label %125

125:                                              ; preds = %123
  %126 = load i8, i8* %13, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load i8*, i8** %10, align 8
  %130 = load i32, i32* @AV_LOG_ERROR, align 4
  %131 = load i8*, i8** %7, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 -1
  %133 = call i32 @av_log(i8* %129, i32 %130, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %132)
  %134 = load i32, i32* @EINVAL, align 4
  %135 = call i32 @AVERROR(i32 %134)
  store i32 %135, i32* %12, align 4
  br label %146

136:                                              ; preds = %125
  %137 = load i32*, i32** %14, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = call i32 @parse_outputs(i8** %20, i32** %14, i32** %15, i32** %16, i8* %140)
  store i32 %141, i32* %12, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  br label %146

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %144, %136
  br label %146

146:                                              ; preds = %145, %143, %128, %105, %88, %83, %76, %60, %53, %40
  %147 = load i32**, i32*** %8, align 8
  %148 = icmp ne i32** %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32*, i32** %15, align 8
  %151 = load i32**, i32*** %8, align 8
  store i32* %150, i32** %151, align 8
  br label %154

152:                                              ; preds = %146
  %153 = call i32 @avfilter_inout_free(i32** %15)
  br label %154

154:                                              ; preds = %152, %149
  %155 = load i32**, i32*** %9, align 8
  %156 = icmp ne i32** %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32*, i32** %16, align 8
  %159 = load i32**, i32*** %9, align 8
  store i32* %158, i32** %159, align 8
  br label %162

160:                                              ; preds = %154
  %161 = call i32 @avfilter_inout_free(i32** %16)
  br label %162

162:                                              ; preds = %160, %157
  %163 = call i32 @avfilter_inout_free(i32** %14)
  %164 = load i32, i32* %12, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %183

166:                                              ; preds = %162
  br label %167

167:                                              ; preds = %172, %166
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %167
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @avfilter_free(i32 %177)
  br label %167

179:                                              ; preds = %167
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = call i32 @av_freep(i32** %181)
  br label %183

183:                                              ; preds = %179, %162
  %184 = load i32, i32* %12, align 4
  ret i32 %184
}

declare dso_local i32 @parse_sws_flags(i8**, %struct.TYPE_8__*) #1

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i32 @parse_inputs(i8**, i32**, i32**, i8*) #1

declare dso_local i32 @parse_filter(%struct.TYPE_9__**, i8**, %struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @link_filter_inouts(%struct.TYPE_9__*, i32**, i32**, i8*) #1

declare dso_local i32 @parse_outputs(i8**, i32**, i32**, i32**, i8*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avfilter_inout_free(i32**) #1

declare dso_local i32 @avfilter_free(i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
