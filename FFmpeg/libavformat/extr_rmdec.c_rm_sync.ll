; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rmdec.c_rm_sync.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rmdec.c_rm_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__**, i32*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Index size %d (%d pkts) is wrong, should be %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"DATA tag in middle of chunk, file may be broken.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8**, i32*, i32*, i8**)* @rm_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm_sync(%struct.TYPE_8__* %0, i8** %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %12, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %13, align 8
  store i32 -1, i32* %15, align 4
  br label %28

28:                                               ; preds = %164, %111, %94, %5
  %29 = load i32*, i32** %13, align 8
  %30 = call i32 @avio_feof(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %174

33:                                               ; preds = %28
  %34 = load i32*, i32** %13, align 8
  %35 = call i8* @avio_tell(i32* %34)
  %36 = getelementptr i8, i8* %35, i64 -3
  %37 = load i8**, i8*** %11, align 8
  store i8* %36, i8** %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %16, align 4
  %49 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %50 = load i8**, i8*** %8, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i32*, i32** %9, align 8
  store i32 0, i32* %51, align 4
  br label %130

52:                                               ; preds = %33
  %53 = load i32, i32* %15, align 4
  %54 = shl i32 %53, 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @avio_r8(i32* %55)
  %57 = add nsw i32 %54, %56
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @MKBETAG(i8 signext 73, i8 signext 78, i8 signext 68, i8 signext 88)
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %96

61:                                               ; preds = %52
  %62 = load i32*, i32** %13, align 8
  %63 = call i8* @avio_rb32(i32* %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %16, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @avio_skip(i32* %65, i32 2)
  %67 = load i32*, i32** %13, align 8
  %68 = call i8* @avio_rb32(i32* %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %20, align 4
  %71 = mul nsw i32 %70, 14
  %72 = add nsw i32 20, %71
  store i32 %72, i32* %21, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp eq i32 %73, 20
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i32, i32* %21, align 4
  store i32 %76, i32* %16, align 4
  br label %89

77:                                               ; preds = %61
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %21, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = load i32, i32* @AV_LOG_WARNING, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %21, align 4
  %87 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %82, i32 %83, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %77
  br label %89

89:                                               ; preds = %88, %75
  %90 = load i32, i32* %16, align 4
  %91 = sub nsw i32 %90, 14
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %28

95:                                               ; preds = %89
  br label %164

96:                                               ; preds = %52
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @MKBETAG(i8 signext 68, i8 signext 65, i8 signext 84, i8 signext 65)
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = load i32, i32* @AV_LOG_WARNING, align 4
  %103 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %101, i32 %102, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %96
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %15, align 4
  %107 = icmp ugt i32 %106, 65535
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %15, align 4
  %110 = icmp sle i32 %109, 12
  br i1 %110, label %111, label %112

111:                                              ; preds = %108, %105
  br label %28

112:                                              ; preds = %108
  %113 = load i32, i32* %15, align 4
  %114 = sub nsw i32 %113, 12
  store i32 %114, i32* %16, align 4
  store i32 -1, i32* %15, align 4
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @avio_rb16(i32* %115)
  store i32 %116, i32* %17, align 4
  %117 = load i32*, i32** %13, align 8
  %118 = call i8* @avio_rb32(i32* %117)
  %119 = load i8**, i8*** %8, align 8
  store i8* %118, i8** %119, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = call i32 @avio_r8(i32* %120)
  %122 = ashr i32 %121, 1
  %123 = sub nsw i32 %122, 1
  store i32 %123, i32* %19, align 4
  %124 = load i32, i32* %19, align 4
  %125 = call i32 @FFMAX(i32 %124, i32 0)
  %126 = shl i32 %125, 16
  store i32 %126, i32* %19, align 4
  %127 = load i32*, i32** %13, align 8
  %128 = call i32 @avio_r8(i32* %127)
  %129 = load i32*, i32** %9, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %112, %42
  store i32 0, i32* %18, align 4
  br label %131

131:                                              ; preds = %154, %130
  %132 = load i32, i32* %18, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %157

137:                                              ; preds = %131
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %139, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %140, i64 %142
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  store %struct.TYPE_7__* %144, %struct.TYPE_7__** %14, align 8
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %145, %146
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %137
  br label %157

153:                                              ; preds = %137
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %18, align 4
  br label %131

157:                                              ; preds = %152, %131
  %158 = load i32, i32* %18, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %158, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %163, %95
  %165 = load i32*, i32** %13, align 8
  %166 = load i32, i32* %16, align 4
  %167 = call i32 @avio_skip(i32* %165, i32 %166)
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  store i32 0, i32* %169, align 4
  br label %28

170:                                              ; preds = %157
  %171 = load i32, i32* %18, align 4
  %172 = load i32*, i32** %10, align 8
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* %16, align 4
  store i32 %173, i32* %6, align 4
  br label %175

174:                                              ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %175

175:                                              ; preds = %174, %170
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @avio_feof(i32*) #1

declare dso_local i8* @avio_tell(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @MKBETAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i8* @avio_rb32(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, ...) #1

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
