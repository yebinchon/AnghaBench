; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_while_label.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_while_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64*, i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32*, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"label=<<b>while%d </b>Command: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c">;\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"label%d [shape=record,label=\22{\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"{Input|{\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"}}\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"{Output|{\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"}\22];\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, %struct.TYPE_10__*, i32*, i32, i32, i32*, i32*)* @_ccv_nnc_graph_dot_while_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_graph_dot_while_label(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %2, i32* %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  store i32* %7, i32** %15, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @fprintf(i32* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @ccv_nnc_cmd_name(i32 %26)
  %28 = load i32*, i32** %14, align 8
  %29 = call i32 @fputs(i8* %27, i32* %28)
  %30 = load i32*, i32** %14, align 8
  %31 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  %32 = load i32*, i32** %14, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @fprintf(i32* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %17, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %137

41:                                               ; preds = %8
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %42)
  store i32 0, i32* %16, align 4
  br label %44

44:                                               ; preds = %131, %41
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %134

50:                                               ; preds = %44
  %51 = load i32, i32* %16, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @fputc(i8 signext 124, i32* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %127

65:                                               ; preds = %56
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @CCV_IS_TENSOR_MULTIVIEW(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %65
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @_ccv_nnc_graph_dot_tensor_multiview(i32* %83, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %2, i32 %84, i32 %85, i32* %17, i32* %86)
  br label %126

88:                                               ; preds = %65
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 3
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %97
  store %struct.TYPE_9__* %98, %struct.TYPE_9__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32*, i32** %14, align 8
  %123 = call i32 @_ccv_nnc_graph_dot_tensor(i32 %105, i64 %112, i32 %119, i32 %120, i32 %121, i32* %122)
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  br label %126

126:                                              ; preds = %88, %75
  br label %130

127:                                              ; preds = %56
  %128 = load i32*, i32** %14, align 8
  %129 = call i32 @fputc(i8 signext 45, i32* %128)
  br label %130

130:                                              ; preds = %127, %126
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %44

134:                                              ; preds = %44
  %135 = load i32*, i32** %14, align 8
  %136 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %135)
  br label %137

137:                                              ; preds = %134, %8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %246

142:                                              ; preds = %137
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32*, i32** %14, align 8
  %149 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32* %148)
  br label %150

150:                                              ; preds = %147, %142
  %151 = load i32*, i32** %14, align 8
  %152 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* %151)
  store i32 0, i32* %16, align 4
  br label %153

153:                                              ; preds = %240, %150
  %154 = load i32, i32* %16, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %243

159:                                              ; preds = %153
  %160 = load i32, i32* %16, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32*, i32** %14, align 8
  %164 = call i32 @fputc(i8 signext 124, i32* %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 2
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %16, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %236

174:                                              ; preds = %165
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  %177 = load i64*, i64** %176, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = call i64 @CCV_IS_TENSOR_MULTIVIEW(i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %174
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 2
  %187 = load i64*, i64** %186, align 8
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = inttoptr i64 %191 to i32*
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %13, align 4
  %195 = load i32*, i32** %14, align 8
  %196 = call i32 @_ccv_nnc_graph_dot_tensor_multiview(i32* %192, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %2, i32 %193, i32 %194, i32* %17, i32* %195)
  br label %235

197:                                              ; preds = %174
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 3
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %17, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i64 %206
  store %struct.TYPE_9__* %207, %struct.TYPE_9__** %19, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 2
  %217 = load i64*, i64** %216, align 8
  %218 = load i32, i32* %16, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load i32*, i32** %14, align 8
  %232 = call i32 @_ccv_nnc_graph_dot_tensor(i32 %214, i64 %221, i32 %228, i32 %229, i32 %230, i32* %231)
  %233 = load i32, i32* %17, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %17, align 4
  br label %235

235:                                              ; preds = %197, %184
  br label %239

236:                                              ; preds = %165
  %237 = load i32*, i32** %14, align 8
  %238 = call i32 @fputc(i8 signext 45, i32* %237)
  br label %239

239:                                              ; preds = %236, %235
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %16, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %16, align 4
  br label %153

243:                                              ; preds = %153
  %244 = load i32*, i32** %14, align 8
  %245 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %244)
  br label %246

246:                                              ; preds = %243, %137
  %247 = load i32*, i32** %14, align 8
  %248 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %247)
  %249 = load i32, i32* %17, align 4
  %250 = load i32*, i32** %15, align 8
  store i32 %249, i32* %250, align 4
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
