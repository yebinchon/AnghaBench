; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph_run.c__ccv_nnc_graph_exec_unwrap_io.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph_run.c__ccv_nnc_graph_exec_unwrap_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_9__**, %struct.TYPE_9__**, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*)* @_ccv_nnc_graph_exec_unwrap_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_graph_exec_unwrap_io(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %198

15:                                               ; preds = %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i64 @ccv_array_get(i32 %18, i64 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_11__**
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %6, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %27, align 8
  store %struct.TYPE_10__** %28, %struct.TYPE_10__*** %7, align 8
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %102, %15
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %105

35:                                               ; preds = %29
  %36 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %36, i64 %38
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %42, label %101

42:                                               ; preds = %35
  %43 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %43, i64 %45
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %53, i64 %55
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %58, align 8
  %60 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %60, i64 %62
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %59, i64 %68
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %8, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = call i32 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_9__* %71)
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %74, i64 %76
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %79, align 8
  %81 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %81, i64 %83
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %80, i64 %88
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %92, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = call i32 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_9__* %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  br label %101

101:                                              ; preds = %42, %35
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %29

105:                                              ; preds = %29
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %144, %105
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %147

112:                                              ; preds = %106
  %113 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %113, i64 %115
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = icmp ne %struct.TYPE_10__* %117, null
  br i1 %118, label %119, label %143

119:                                              ; preds = %112
  %120 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %120, i64 %122
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %125, align 8
  %127 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %127, i64 %129
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %126, i64 %134
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %139, i64 %141
  store %struct.TYPE_9__* %136, %struct.TYPE_9__** %142, align 8
  br label %143

143:                                              ; preds = %119, %112
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %106

147:                                              ; preds = %106
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %195, %147
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %198

157:                                              ; preds = %151
  %158 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %158, i64 %162
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = icmp ne %struct.TYPE_10__* %164, null
  br i1 %165, label %166, label %194

166:                                              ; preds = %157
  %167 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %167, i64 %171
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %174, align 8
  %176 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %176, i64 %180
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %175, i64 %185
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %190, i64 %192
  store %struct.TYPE_9__* %187, %struct.TYPE_9__** %193, align 8
  br label %194

194:                                              ; preds = %166, %157
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %5, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %5, align 4
  br label %151

198:                                              ; preds = %14, %151
  ret void
}

declare dso_local i64 @ccv_array_get(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
