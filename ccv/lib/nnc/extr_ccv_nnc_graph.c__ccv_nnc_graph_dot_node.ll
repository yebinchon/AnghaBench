; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_node.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64*, i64* }
%struct.TYPE_9__ = type { i32*, i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"node%d [shape=record,label=\22\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"|{Input\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"|-\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"|{Output\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\22];\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32**, %struct.TYPE_9__*, i32, i32, i32*, i32*)* @_ccv_nnc_graph_dot_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_graph_dot_node(%struct.TYPE_10__* %0, i32 %1, i32** %2, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32** %2, i32*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  store i32* %7, i32** %15, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @fprintf(i32* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = load i32**, i32*** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32*, i32** %14, align 8
  %28 = call i32 @_ccv_nnc_graph_dot_exec(i32 %23, %struct.TYPE_10__* %24, i32** %25, i32 %26, i32* %27)
  %29 = load i32*, i32** %15, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %17, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %127

35:                                               ; preds = %8
  %36 = load i32*, i32** %14, align 8
  %37 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %36)
  store i32 0, i32* %16, align 4
  br label %38

38:                                               ; preds = %121, %35
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %124

44:                                               ; preds = %38
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %117

53:                                               ; preds = %44
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @fputc(i8 signext 124, i32* %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @CCV_IS_TENSOR_MULTIVIEW(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %53
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @_ccv_nnc_graph_dot_tensor_multiview(i32* %73, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %3, i32 %74, i32 %75, i32* %17, i32* %76)
  br label %116

78:                                               ; preds = %53
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %87
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32*, i32** %14, align 8
  %113 = call i32 @_ccv_nnc_graph_dot_tensor(i32 %95, i64 %102, i32 %109, i32 %110, i32 %111, i32* %112)
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %116

116:                                              ; preds = %78, %65
  br label %120

117:                                              ; preds = %44
  %118 = load i32*, i32** %14, align 8
  %119 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %118)
  br label %120

120:                                              ; preds = %117, %116
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %38

124:                                              ; preds = %38
  %125 = load i32*, i32** %14, align 8
  %126 = call i32 @fputc(i8 signext 125, i32* %125)
  br label %127

127:                                              ; preds = %124, %8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %224

132:                                              ; preds = %127
  %133 = load i32*, i32** %14, align 8
  %134 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %133)
  store i32 0, i32* %16, align 4
  br label %135

135:                                              ; preds = %218, %132
  %136 = load i32, i32* %16, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %221

141:                                              ; preds = %135
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %214

150:                                              ; preds = %141
  %151 = load i32*, i32** %14, align 8
  %152 = call i32 @fputc(i8 signext 124, i32* %151)
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* %16, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @CCV_IS_TENSOR_MULTIVIEW(i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %150
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i32*
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load i32*, i32** %14, align 8
  %174 = call i32 @_ccv_nnc_graph_dot_tensor_multiview(i32* %170, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %3, i32 %171, i32 %172, i32* %17, i32* %173)
  br label %213

175:                                              ; preds = %150
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %17, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i64 %184
  store %struct.TYPE_8__* %185, %struct.TYPE_8__** %19, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %13, align 4
  %209 = load i32*, i32** %14, align 8
  %210 = call i32 @_ccv_nnc_graph_dot_tensor(i32 %192, i64 %199, i32 %206, i32 %207, i32 %208, i32* %209)
  %211 = load i32, i32* %17, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %17, align 4
  br label %213

213:                                              ; preds = %175, %162
  br label %217

214:                                              ; preds = %141
  %215 = load i32*, i32** %14, align 8
  %216 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %215)
  br label %217

217:                                              ; preds = %214, %213
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %16, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %16, align 4
  br label %135

221:                                              ; preds = %135
  %222 = load i32*, i32** %14, align 8
  %223 = call i32 @fputc(i8 signext 125, i32* %222)
  br label %224

224:                                              ; preds = %221, %127
  %225 = load i32*, i32** %14, align 8
  %226 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %225)
  %227 = load i32, i32* %17, align 4
  %228 = load i32*, i32** %15, align 8
  store i32 %227, i32* %228, align 4
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @_ccv_nnc_graph_dot_exec(i32, %struct.TYPE_10__*, i32**, i32, i32*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i64 @CCV_IS_TENSOR_MULTIVIEW(i64) #1

declare dso_local i32 @_ccv_nnc_graph_dot_tensor_multiview(i32*, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32, i32, i32*, i32*) #1

declare dso_local i32 @_ccv_nnc_graph_dot_tensor(i32, i64, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
