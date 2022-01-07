; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_case_of_label.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_case_of_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64*, i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32*, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"label=<<b>caseof%d </b>Command: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c">;\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"label%d [shape=record,label=\22{\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"{Input|{\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"}}\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"{Output|{\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"}\22];\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, %struct.TYPE_10__*, i32, i32, i32*, i32*)* @_ccv_nnc_graph_dot_case_of_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_graph_dot_case_of_label(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32* %6, i32** %13, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @fprintf(i32* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @ccv_nnc_cmd_name(i32 %24)
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @fputs(i8* %25, i32* %26)
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %28)
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @fprintf(i32* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %15, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %135

39:                                               ; preds = %7
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %40)
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %129, %39
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %132

48:                                               ; preds = %42
  %49 = load i32, i32* %14, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @fputc(i8 signext 124, i32* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %125

63:                                               ; preds = %54
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @CCV_IS_TENSOR_MULTIVIEW(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %63
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @_ccv_nnc_graph_dot_tensor_multiview(i32* %81, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %2, i32 %82, i32 %83, i32* %15, i32* %84)
  br label %124

86:                                               ; preds = %63
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 3
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %95
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 3
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @_ccv_nnc_graph_dot_tensor(i32 %103, i64 %110, i32 %117, i32 %118, i32 %119, i32* %120)
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %15, align 4
  br label %124

124:                                              ; preds = %86, %73
  br label %128

125:                                              ; preds = %54
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 @fputc(i8 signext 45, i32* %126)
  br label %128

128:                                              ; preds = %125, %124
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %42

132:                                              ; preds = %42
  %133 = load i32*, i32** %12, align 8
  %134 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %133)
  br label %135

135:                                              ; preds = %132, %7
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %244

140:                                              ; preds = %135
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i32*, i32** %12, align 8
  %147 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32* %146)
  br label %148

148:                                              ; preds = %145, %140
  %149 = load i32*, i32** %12, align 8
  %150 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* %149)
  store i32 0, i32* %14, align 4
  br label %151

151:                                              ; preds = %238, %148
  %152 = load i32, i32* %14, align 4
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %241

157:                                              ; preds = %151
  %158 = load i32, i32* %14, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32*, i32** %12, align 8
  %162 = call i32 @fputc(i8 signext 124, i32* %161)
  br label %163

163:                                              ; preds = %160, %157
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %234

172:                                              ; preds = %163
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 2
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = call i64 @CCV_IS_TENSOR_MULTIVIEW(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %172
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 2
  %185 = load i64*, i64** %184, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to i32*
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i32*, i32** %12, align 8
  %194 = call i32 @_ccv_nnc_graph_dot_tensor_multiview(i32* %190, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %2, i32 %191, i32 %192, i32* %15, i32* %193)
  br label %233

195:                                              ; preds = %172
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 3
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %15, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i64 %204
  store %struct.TYPE_9__* %205, %struct.TYPE_9__** %17, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 2
  %215 = load i64*, i64** %214, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %11, align 4
  %229 = load i32*, i32** %12, align 8
  %230 = call i32 @_ccv_nnc_graph_dot_tensor(i32 %212, i64 %219, i32 %226, i32 %227, i32 %228, i32* %229)
  %231 = load i32, i32* %15, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %15, align 4
  br label %233

233:                                              ; preds = %195, %182
  br label %237

234:                                              ; preds = %163
  %235 = load i32*, i32** %12, align 8
  %236 = call i32 @fputc(i8 signext 45, i32* %235)
  br label %237

237:                                              ; preds = %234, %233
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %14, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %14, align 4
  br label %151

241:                                              ; preds = %151
  %242 = load i32*, i32** %12, align 8
  %243 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %242)
  br label %244

244:                                              ; preds = %241, %135
  %245 = load i32*, i32** %12, align 8
  %246 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %245)
  %247 = load i32, i32* %15, align 4
  %248 = load i32*, i32** %13, align 8
  store i32 %247, i32* %248, align 4
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i8* @ccv_nnc_cmd_name(i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i64 @CCV_IS_TENSOR_MULTIVIEW(i64) #1

declare dso_local i32 @_ccv_nnc_graph_dot_tensor_multiview(i32*, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8, i32, i32, i32*, i32*) #1

declare dso_local i32 @_ccv_nnc_graph_dot_tensor(i32, i64, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
