; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_exec.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@CCV_NNC_LONG_DOT_GRAPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"node%d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"|Command: \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"|Stream: \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%d (d%d)\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c", %d (d%d)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"|Signal: %d\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c", %d\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"|Wait: \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_10__*, %struct.TYPE_9__**, i32, i32*)* @_ccv_nnc_graph_dot_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_graph_dot_exec(i32 %0, %struct.TYPE_10__* %1, %struct.TYPE_9__** %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @CCV_NNC_LONG_DOT_GRAPH, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @fputc(i8 signext 123, i32* %19)
  br label %21

21:                                               ; preds = %18, %5
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @CCV_NNC_LONG_DOT_GRAPH, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %199

28:                                               ; preds = %21
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @ccv_nnc_cmd_name(i32 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @fputs(i8* %35, i32* %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %150

43:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %44)
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %100, %43
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %48, %52
  br i1 %53, label %54, label %103

54:                                               ; preds = %46
  %55 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %56 = icmp ne %struct.TYPE_9__** %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = call i32* @SCHEDULE_STREAMS(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %60)
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %58, i64 %66
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @CCV_TENSOR_GET_DEVICE_ID(i32 %70)
  br label %73

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72, %57
  %74 = phi i32 [ %71, %57 ], [ 0, %72 ]
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load i32*, i32** %10, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = call i32* @SCHEDULE_STREAMS(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %80)
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %85, i32 %86)
  br label %99

88:                                               ; preds = %73
  %89 = load i32*, i32** %10, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = call i32* @SCHEDULE_STREAMS(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %91)
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %88, %77
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %46

103:                                              ; preds = %46
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %146, %103
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %106, %110
  br i1 %111, label %112, label %149

112:                                              ; preds = %104
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = call i32* @SCHEDULE_SIGNALS(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %114)
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %112
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %121
  store i32 1, i32* %12, align 4
  %125 = load i32*, i32** %10, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = call i32* @SCHEDULE_SIGNALS(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %127)
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %132)
  br label %144

134:                                              ; preds = %121
  %135 = load i32*, i32** %10, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = call i32* @SCHEDULE_SIGNALS(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %137)
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %134, %124
  br label %145

145:                                              ; preds = %144, %112
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %104

149:                                              ; preds = %104
  br label %150

150:                                              ; preds = %149, %28
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %196

156:                                              ; preds = %150
  %157 = load i32*, i32** %10, align 8
  %158 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %157)
  store i32 0, i32* %14, align 4
  br label %159

159:                                              ; preds = %178, %156
  %160 = load i32, i32* %14, align 4
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %164, 1
  %166 = icmp slt i32 %160, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %159
  %168 = load i32*, i32** %10, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %167
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %14, align 4
  br label %159

181:                                              ; preds = %159
  %182 = load i32*, i32** %10, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %186, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %181, %150
  %197 = load i32*, i32** %10, align 8
  %198 = call i32 @fputc(i8 signext 125, i32* %197)
  br label %199

199:                                              ; preds = %196, %21
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, ...) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i8* @ccv_nnc_cmd_name(i32) #1

declare dso_local i32 @CCV_TENSOR_GET_DEVICE_ID(i32) #1

declare dso_local i32* @SCHEDULE_STREAMS(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

declare dso_local i32* @SCHEDULE_SIGNALS(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
