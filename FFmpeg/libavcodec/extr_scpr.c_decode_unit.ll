; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr.c_decode_unit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr.c_decode_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32*, i32, i32*)*, i32 (i32*, i32*, i32, i32, i32)*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@BOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32*)* @decode_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_unit(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  store i32* %26, i32** %10, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  store i32* %28, i32** %11, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %33, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 %34(i32* %35, i32 %36, i32* %13)
  store i32 %37, i32* %19, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %4
  %40 = load i32, i32* %19, align 4
  store i32 %40, i32* %5, align 4
  br label %213

41:                                               ; preds = %4
  br label %42

42:                                               ; preds = %63, %41
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 16
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %16, align 4
  %56 = add nsw i32 %54, %55
  %57 = icmp sge i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %15, align 4
  br label %63

62:                                               ; preds = %45
  br label %66

63:                                               ; preds = %58
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %42

66:                                               ; preds = %62, %42
  %67 = load i32, i32* %14, align 4
  %68 = mul nsw i32 %67, 16
  store i32 %68, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %69

69:                                               ; preds = %90, %66
  %70 = load i32, i32* %20, align 4
  %71 = icmp slt i32 %70, 256
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %20, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %21, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %21, align 4
  %83 = add nsw i32 %81, %82
  %84 = icmp sge i32 %80, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %72
  %86 = load i32, i32* %21, align 4
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %15, align 4
  br label %90

89:                                               ; preds = %72
  br label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %20, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %20, align 4
  br label %69

93:                                               ; preds = %89, %69
  %94 = load i32, i32* %14, align 4
  %95 = icmp sge i32 %94, 16
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %20, align 4
  %98 = icmp sge i32 %97, 256
  br i1 %98, label %99, label %101

99:                                               ; preds = %96, %93
  %100 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %100, i32* %5, align 4
  br label %213

101:                                              ; preds = %96
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32)** %103, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 %104(i32* %105, i32* %106, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %19, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %101
  %113 = load i32, i32* %19, align 4
  store i32 %113, i32* %5, align 4
  br label %213

114:                                              ; preds = %101
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %115, %116
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %20, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %117, i32* %123, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %124, %125
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %126, i32* %132, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @BOT, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %203

139:                                              ; preds = %114
  store i32 0, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %140

140:                                              ; preds = %163, %139
  %141 = load i32, i32* %17, align 4
  %142 = icmp slt i32 %141, 256
  br i1 %142, label %143, label %166

143:                                              ; preds = %140
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %150, 1
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %22, align 4
  %153 = load i32, i32* %22, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %153, i32* %159, align 4
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %143
  %164 = load i32, i32* %17, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %17, align 4
  br label %140

166:                                              ; preds = %140
  store i32 0, i32* %17, align 4
  br label %167

167:                                              ; preds = %199, %166
  %168 = load i32, i32* %17, align 4
  %169 = icmp slt i32 %168, 16
  br i1 %169, label %170, label %202

170:                                              ; preds = %167
  store i32 0, i32* %23, align 4
  %171 = load i32, i32* %17, align 4
  %172 = shl i32 %171, 4
  store i32 %172, i32* %24, align 4
  store i32 0, i32* %18, align 4
  br label %173

173:                                              ; preds = %188, %170
  %174 = load i32, i32* %18, align 4
  %175 = icmp slt i32 %174, 16
  br i1 %175, label %176, label %191

176:                                              ; preds = %173
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %24, align 4
  %181 = load i32, i32* %18, align 4
  %182 = add nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %179, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %23, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %23, align 4
  br label %188

188:                                              ; preds = %176
  %189 = load i32, i32* %18, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %18, align 4
  br label %173

191:                                              ; preds = %173
  %192 = load i32, i32* %23, align 4
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %17, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %192, i32* %198, align 4
  br label %199

199:                                              ; preds = %191
  %200 = load i32, i32* %17, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %17, align 4
  br label %167

202:                                              ; preds = %167
  br label %203

203:                                              ; preds = %202, %114
  %204 = load i32, i32* %12, align 4
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load i32, i32* %20, align 4
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = and i32 %207, %210
  %212 = load i32*, i32** %9, align 8
  store i32 %211, i32* %212, align 4
  store i32 0, i32* %5, align 4
  br label %213

213:                                              ; preds = %203, %112, %99, %39
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
