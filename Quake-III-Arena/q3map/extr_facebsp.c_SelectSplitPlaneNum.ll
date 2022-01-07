; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_facebsp.c_SelectSplitPlaneNum.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_facebsp.c_SelectSplitPlaneNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, float* }
%struct.TYPE_9__ = type { i64, i64, i64, i32, i8*, %struct.TYPE_9__* }

@qfalse = common dso_local global i8* null, align 8
@hintsplit = common dso_local global i8* null, align 8
@BLOCK_SIZE = common dso_local global i32 0, align 4
@mapplanes = common dso_local global %struct.TYPE_7__* null, align 8
@qtrue = common dso_local global i8* null, align 8
@SIDE_CROSS = common dso_local global i32 0, align 4
@SIDE_FRONT = common dso_local global i32 0, align 4
@SIDE_BACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SelectSplitPlaneNum(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %21 = load i8*, i8** @qfalse, align 8
  store i8* %21, i8** @hintsplit, align 8
  store i32 0, i32* %17, align 4
  br label %22

22:                                               ; preds = %61, %2
  %23 = load i32, i32* %17, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %64

25:                                               ; preds = %22
  %26 = load i32, i32* @BLOCK_SIZE, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %17, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BLOCK_SIZE, align 4
  %35 = sdiv i32 %33, %34
  %36 = call i32 @floor(i32 %35)
  %37 = add nsw i32 %36, 1
  %38 = mul nsw i32 %26, %37
  %39 = sitofp i32 %38 to float
  store float %39, float* %19, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load float*, float** %41, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  %46 = load float, float* %45, align 4
  %47 = load float, float* %19, align 4
  %48 = fcmp ogt float %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %25
  %50 = load i32*, i32** %18, align 8
  %51 = call i32 @VectorClear(i32* %50)
  %52 = load i32*, i32** %18, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 1, i32* %55, align 4
  %56 = load i32*, i32** %18, align 8
  %57 = load float, float* %19, align 4
  %58 = call i32 @FindFloatPlane(i32* %56, float %57)
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %20, align 4
  store i32 %59, i32* %3, align 4
  br label %199

60:                                               ; preds = %25
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %17, align 4
  br label %22

64:                                               ; preds = %22
  store i32 -99999, i32* %16, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %8, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %6, align 8
  br label %67

67:                                               ; preds = %74, %64
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = icmp ne %struct.TYPE_9__* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i8*, i8** @qfalse, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %70
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %6, align 8
  br label %67

78:                                               ; preds = %67
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %6, align 8
  br label %80

80:                                               ; preds = %179, %78
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = icmp ne %struct.TYPE_9__* %81, null
  br i1 %82, label %83, label %183

83:                                               ; preds = %80
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %179

89:                                               ; preds = %83
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mapplanes, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %93
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %14, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %7, align 8
  br label %96

96:                                               ; preds = %147, %89
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = icmp ne %struct.TYPE_9__* %97, null
  br i1 %98, label %99, label %151

99:                                               ; preds = %96
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %102, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  %110 = load i8*, i8** @qtrue, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  br label %147

113:                                              ; preds = %99
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @WindingOnPlaneSide(i32 %116, i32 %119, i32 %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @SIDE_CROSS, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %113
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %146

130:                                              ; preds = %113
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @SIDE_FRONT, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %145

137:                                              ; preds = %130
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @SIDE_BACK, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %144

144:                                              ; preds = %141, %137
  br label %145

145:                                              ; preds = %144, %134
  br label %146

146:                                              ; preds = %145, %127
  br label %147

147:                                              ; preds = %146, %107
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  store %struct.TYPE_9__* %150, %struct.TYPE_9__** %7, align 8
  br label %96

151:                                              ; preds = %96
  %152 = load i32, i32* %10, align 4
  %153 = mul nsw i32 5, %152
  %154 = load i32, i32* %9, align 4
  %155 = mul nsw i32 5, %154
  %156 = sub nsw i32 %153, %155
  store i32 %156, i32* %15, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %159, 3
  br i1 %160, label %161, label %164

161:                                              ; preds = %151
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %162, 5
  store i32 %163, i32* %15, align 4
  br label %164

164:                                              ; preds = %161, %151
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %16, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %164
  %176 = load i32, i32* %15, align 4
  store i32 %176, i32* %16, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %177, %struct.TYPE_9__** %8, align 8
  br label %178

178:                                              ; preds = %175, %164
  br label %179

179:                                              ; preds = %178, %88
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  store %struct.TYPE_9__* %182, %struct.TYPE_9__** %6, align 8
  br label %80

183:                                              ; preds = %80
  %184 = load i32, i32* %16, align 4
  %185 = icmp eq i32 %184, -99999
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  store i32 -1, i32* %3, align 4
  br label %199

187:                                              ; preds = %183
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i8*, i8** @qtrue, align 8
  store i8* %193, i8** @hintsplit, align 8
  br label %194

194:                                              ; preds = %192, %187
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %194, %186, %49
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @floor(i32) #1

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @FindFloatPlane(i32*, float) #1

declare dso_local i32 @WindingOnPlaneSide(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
