; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_comb_detect.c_check_combing_mask.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_comb_detect.c_check_combing_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, i32)* @check_combing_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_combing_mask(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %31

31:                                               ; preds = %200, %4
  %32 = load i32, i32* %18, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %203

34:                                               ; preds = %31
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 7
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %18, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %19, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 7
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %17, align 4
  br label %56

56:                                               ; preds = %195, %34
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %58, %59
  %61 = add nsw i32 %60, 1
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %199

63:                                               ; preds = %56
  store i32 0, i32* %16, align 4
  br label %64

64:                                               ; preds = %190, %63
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %66, %67
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %194

70:                                               ; preds = %64
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %154, %70
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %157

75:                                               ; preds = %71
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %21, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 7
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %19, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %88, i64 %94
  store i32* %95, i32** %15, align 8
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %150, %75
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %153

100:                                              ; preds = %96
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load i32*, i32** %15, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %15, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %108, %111
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %14, align 4
  br label %147

115:                                              ; preds = %100
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* %20, align 4
  %120 = sub nsw i32 %119, 1
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %115
  %123 = load i32*, i32** %15, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 -1
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %15, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %125, %128
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %14, align 4
  br label %146

132:                                              ; preds = %115
  %133 = load i32*, i32** %15, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 -1
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %15, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %135, %138
  %140 = load i32*, i32** %15, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %139, %142
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %132, %122
  br label %147

147:                                              ; preds = %146, %105
  %148 = load i32*, i32** %15, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %15, align 8
  br label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %12, align 4
  br label %96

153:                                              ; preds = %96
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %13, align 4
  br label %71

157:                                              ; preds = %71
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %203

163:                                              ; preds = %157
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %9, align 4
  %166 = sdiv i32 %165, 2
  %167 = icmp sge i32 %164, %166
  br i1 %167, label %168, label %189

168:                                              ; preds = %163
  %169 = load i32, i32* %16, align 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* %17, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %14, align 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 6
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %175, i32* %181, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %168
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 3
  store i32 1, i32* %187, align 4
  br label %203

188:                                              ; preds = %168
  br label %189

189:                                              ; preds = %188, %163
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %191, %192
  store i32 %193, i32* %16, align 4
  br label %64

194:                                              ; preds = %64
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %196, %197
  store i32 %198, i32* %17, align 4
  br label %56

199:                                              ; preds = %56
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %18, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %18, align 4
  br label %31

203:                                              ; preds = %162, %185, %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
