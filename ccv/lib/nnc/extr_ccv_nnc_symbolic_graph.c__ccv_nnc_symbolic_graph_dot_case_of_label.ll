; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c__ccv_nnc_symbolic_graph_dot_case_of_label.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c__ccv_nnc_symbolic_graph_dot_case_of_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i64*, i32, i64*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@CCV_NNC_LONG_DOT_GRAPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"<table border=\220\22 cellborder=\221\22 cellspacing=\220\22><tr><td colspan=\223\22 border=\220\22><b>\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"<table border=\220\22 cellborder=\221\22 cellspacing=\220\22><tr><td colspan=\222\22 border=\220\22><b>\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"caseof%d\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" </b>Command: \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"</td></tr>\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"<tr><td rowspan=\22%d\22>Input</td>\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"<tr>\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"<td>\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"<td colspan=\222\22>-</td></tr>\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"<td colspan=\221\22>-</td></tr>\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"<tr><td rowspan=\22%d\22>Output</td>\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"</table>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32*, i32, i32*)* @_ccv_nnc_symbolic_graph_dot_case_of_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_symbolic_graph_dot_case_of_label(%struct.TYPE_9__* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @CCV_NNC_LONG_DOT_GRAPH, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @fputs(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32* %20)
  br label %25

22:                                               ; preds = %5
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @fputs(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @fputs(i8* %33, i32* %34)
  br label %40

36:                                               ; preds = %25
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @fprintf(i32* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %30
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @ccv_nnc_cmd_name(i32 %46)
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @fputs(i8* %47, i32* %48)
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %141

56:                                               ; preds = %40
  %57 = load i32*, i32** %10, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @fprintf(i32* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %137, %56
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %140

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %81, 0
  br i1 %82, label %83, label %125

83:                                               ; preds = %74
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %84)
  %86 = load i32*, i32** %8, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @ccv_array_get(i32* %86, i64 %93)
  %95 = inttoptr i64 %94 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %12, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %83
  %101 = load i32*, i32** %8, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %104, 1
  %106 = call i64 @ccv_array_get(i32* %101, i64 %105)
  %107 = inttoptr i64 %106 to %struct.TYPE_8__*
  br label %109

108:                                              ; preds = %83
  br label %109

109:                                              ; preds = %108, %100
  %110 = phi %struct.TYPE_8__* [ %107, %100 ], [ null, %108 ]
  store %struct.TYPE_8__* %110, %struct.TYPE_8__** %13, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32*, i32** %10, align 8
  %122 = call i32 @_ccv_nnc_symbolic_graph_dot_tensor_symbol(i64 %117, %struct.TYPE_8__* %118, %struct.TYPE_8__* %119, i32 1, i32 %120, i32* %121)
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %123)
  br label %136

125:                                              ; preds = %74
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @CCV_NNC_LONG_DOT_GRAPH, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32*, i32** %10, align 8
  %131 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32* %130)
  br label %135

132:                                              ; preds = %125
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32* %133)
  br label %135

135:                                              ; preds = %132, %129
  br label %136

136:                                              ; preds = %135, %109
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %62

140:                                              ; preds = %62
  br label %141

141:                                              ; preds = %140, %40
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %231

146:                                              ; preds = %141
  %147 = load i32*, i32** %10, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @fprintf(i32* %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %150)
  store i32 0, i32* %11, align 4
  br label %152

152:                                              ; preds = %227, %146
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %230

158:                                              ; preds = %152
  %159 = load i32, i32* %11, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32*, i32** %10, align 8
  %163 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %162)
  br label %164

164:                                              ; preds = %161, %158
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 4
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = icmp sge i64 %171, 0
  br i1 %172, label %173, label %215

173:                                              ; preds = %164
  %174 = load i32*, i32** %10, align 8
  %175 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %174)
  %176 = load i32*, i32** %8, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 4
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = call i64 @ccv_array_get(i32* %176, i64 %183)
  %185 = inttoptr i64 %184 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %185, %struct.TYPE_8__** %14, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %173
  %191 = load i32*, i32** %8, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = sub nsw i64 %194, 1
  %196 = call i64 @ccv_array_get(i32* %191, i64 %195)
  %197 = inttoptr i64 %196 to %struct.TYPE_8__*
  br label %199

198:                                              ; preds = %173
  br label %199

199:                                              ; preds = %198, %190
  %200 = phi %struct.TYPE_8__* [ %197, %190 ], [ null, %198 ]
  store %struct.TYPE_8__* %200, %struct.TYPE_8__** %15, align 8
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 4
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %210 = load i32, i32* %9, align 4
  %211 = load i32*, i32** %10, align 8
  %212 = call i32 @_ccv_nnc_symbolic_graph_dot_tensor_symbol(i64 %207, %struct.TYPE_8__* %208, %struct.TYPE_8__* %209, i32 1, i32 %210, i32* %211)
  %213 = load i32*, i32** %10, align 8
  %214 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %213)
  br label %226

215:                                              ; preds = %164
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @CCV_NNC_LONG_DOT_GRAPH, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load i32*, i32** %10, align 8
  %221 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32* %220)
  br label %225

222:                                              ; preds = %215
  %223 = load i32*, i32** %10, align 8
  %224 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32* %223)
  br label %225

225:                                              ; preds = %222, %219
  br label %226

226:                                              ; preds = %225, %199
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %11, align 4
  br label %152

230:                                              ; preds = %152
  br label %231

231:                                              ; preds = %230, %141
  %232 = load i32*, i32** %10, align 8
  %233 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32* %232)
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i8* @ccv_nnc_cmd_name(i32) #1

declare dso_local i64 @ccv_array_get(i32*, i64) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_dot_tensor_symbol(i64, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
