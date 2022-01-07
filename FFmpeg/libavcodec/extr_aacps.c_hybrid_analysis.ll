; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacps.c_hybrid_analysis.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacps.c_hybrid_analysis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32***, i32***, i32, i32)* }

@f34_0_12 = common dso_local global i32 0, align 4
@f34_1_8 = common dso_local global i32 0, align 4
@f34_2_4 = common dso_local global i32 0, align 4
@f20_0_8 = common dso_local global i32 0, align 4
@g1_Q2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, [32 x [2 x i32]]*, [44 x [2 x i32]]*, [38 x [64 x i32]]*, i32, i32)* @hybrid_analysis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hybrid_analysis(%struct.TYPE_5__* %0, [32 x [2 x i32]]* %1, [44 x [2 x i32]]* %2, [38 x [64 x i32]]* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca [32 x [2 x i32]]*, align 8
  %9 = alloca [44 x [2 x i32]]*, align 8
  %10 = alloca [38 x [64 x i32]]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store [32 x [2 x i32]]* %1, [32 x [2 x i32]]** %8, align 8
  store [44 x [2 x i32]]* %2, [44 x [2 x i32]]** %9, align 8
  store [38 x [64 x i32]]* %3, [38 x [64 x i32]]** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %63, %6
  %16 = load i32, i32* %13, align 4
  %17 = icmp slt i32 %16, 5
  br i1 %17, label %18, label %66

18:                                               ; preds = %15
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %59, %18
  %20 = load i32, i32* %14, align 4
  %21 = icmp slt i32 %20, 38
  br i1 %21, label %22, label %62

22:                                               ; preds = %19
  %23 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %10, align 8
  %24 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %23, i64 0
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %24, i64 0, i64 %26
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [64 x i32], [64 x i32]* %27, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load [44 x [2 x i32]]*, [44 x [2 x i32]]** %9, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %32, i64 %34
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %36, 6
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %35, i64 0, i64 %38
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %39, i64 0, i64 0
  store i32 %31, i32* %40, align 4
  %41 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %10, align 8
  %42 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %41, i64 1
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %42, i64 0, i64 %44
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [64 x i32], [64 x i32]* %45, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load [44 x [2 x i32]]*, [44 x [2 x i32]]** %9, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %50, i64 %52
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 6
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %53, i64 0, i64 %56
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %57, i64 0, i64 1
  store i32 %49, i32* %58, align 4
  br label %59

59:                                               ; preds = %22
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %19

62:                                               ; preds = %19
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %15

66:                                               ; preds = %15
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %134

69:                                               ; preds = %66
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = load [44 x [2 x i32]]*, [44 x [2 x i32]]** %9, align 8
  %72 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %71, i64 0
  %73 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %72, i64 0, i64 0
  %74 = bitcast [2 x i32]* %73 to i32**
  %75 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %8, align 8
  %76 = bitcast [32 x [2 x i32]]* %75 to i32***
  %77 = load i32, i32* @f34_0_12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @hybrid4_8_12_cx(%struct.TYPE_5__* %70, i32** %74, i32*** %76, i32 %77, i32 12, i32 %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %81 = load [44 x [2 x i32]]*, [44 x [2 x i32]]** %9, align 8
  %82 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %81, i64 1
  %83 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %82, i64 0, i64 0
  %84 = bitcast [2 x i32]* %83 to i32**
  %85 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %8, align 8
  %86 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %85, i64 12
  %87 = bitcast [32 x [2 x i32]]* %86 to i32***
  %88 = load i32, i32* @f34_1_8, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @hybrid4_8_12_cx(%struct.TYPE_5__* %80, i32** %84, i32*** %87, i32 %88, i32 8, i32 %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = load [44 x [2 x i32]]*, [44 x [2 x i32]]** %9, align 8
  %93 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %92, i64 2
  %94 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %93, i64 0, i64 0
  %95 = bitcast [2 x i32]* %94 to i32**
  %96 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %8, align 8
  %97 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %96, i64 20
  %98 = bitcast [32 x [2 x i32]]* %97 to i32***
  %99 = load i32, i32* @f34_2_4, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @hybrid4_8_12_cx(%struct.TYPE_5__* %91, i32** %95, i32*** %98, i32 %99, i32 4, i32 %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %103 = load [44 x [2 x i32]]*, [44 x [2 x i32]]** %9, align 8
  %104 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %103, i64 3
  %105 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %104, i64 0, i64 0
  %106 = bitcast [2 x i32]* %105 to i32**
  %107 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %8, align 8
  %108 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %107, i64 24
  %109 = bitcast [32 x [2 x i32]]* %108 to i32***
  %110 = load i32, i32* @f34_2_4, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @hybrid4_8_12_cx(%struct.TYPE_5__* %102, i32** %106, i32*** %109, i32 %110, i32 4, i32 %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %114 = load [44 x [2 x i32]]*, [44 x [2 x i32]]** %9, align 8
  %115 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %114, i64 4
  %116 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %115, i64 0, i64 0
  %117 = bitcast [2 x i32]* %116 to i32**
  %118 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %8, align 8
  %119 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %118, i64 28
  %120 = bitcast [32 x [2 x i32]]* %119 to i32***
  %121 = load i32, i32* @f34_2_4, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @hybrid4_8_12_cx(%struct.TYPE_5__* %113, i32** %117, i32*** %120, i32 %121, i32 4, i32 %122)
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32 (i32***, i32***, i32, i32)*, i32 (i32***, i32***, i32, i32)** %125, align 8
  %127 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %8, align 8
  %128 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %127, i64 27
  %129 = bitcast [32 x [2 x i32]]* %128 to i32***
  %130 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %10, align 8
  %131 = bitcast [38 x [64 x i32]]* %130 to i32***
  %132 = load i32, i32* %12, align 4
  %133 = call i32 %126(i32*** %129, i32*** %131, i32 5, i32 %132)
  br label %175

134:                                              ; preds = %66
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %136 = load [44 x [2 x i32]]*, [44 x [2 x i32]]** %9, align 8
  %137 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %136, i64 0
  %138 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %137, i64 0, i64 0
  %139 = bitcast [2 x i32]* %138 to i32**
  %140 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %8, align 8
  %141 = bitcast [32 x [2 x i32]]* %140 to i32***
  %142 = load i32, i32* @f20_0_8, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @hybrid6_cx(%struct.TYPE_5__* %135, i32** %139, i32*** %141, i32 %142, i32 %143)
  %145 = load [44 x [2 x i32]]*, [44 x [2 x i32]]** %9, align 8
  %146 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %145, i64 1
  %147 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %146, i64 0, i64 0
  %148 = bitcast [2 x i32]* %147 to i32**
  %149 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %8, align 8
  %150 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %149, i64 6
  %151 = bitcast [32 x [2 x i32]]* %150 to i32***
  %152 = load i32, i32* @g1_Q2, align 4
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @hybrid2_re(i32** %148, i32*** %151, i32 %152, i32 %153, i32 1)
  %155 = load [44 x [2 x i32]]*, [44 x [2 x i32]]** %9, align 8
  %156 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %155, i64 2
  %157 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %156, i64 0, i64 0
  %158 = bitcast [2 x i32]* %157 to i32**
  %159 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %8, align 8
  %160 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %159, i64 8
  %161 = bitcast [32 x [2 x i32]]* %160 to i32***
  %162 = load i32, i32* @g1_Q2, align 4
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @hybrid2_re(i32** %158, i32*** %161, i32 %162, i32 %163, i32 0)
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32 (i32***, i32***, i32, i32)*, i32 (i32***, i32***, i32, i32)** %166, align 8
  %168 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %8, align 8
  %169 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %168, i64 7
  %170 = bitcast [32 x [2 x i32]]* %169 to i32***
  %171 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %10, align 8
  %172 = bitcast [38 x [64 x i32]]* %171 to i32***
  %173 = load i32, i32* %12, align 4
  %174 = call i32 %167(i32*** %170, i32*** %172, i32 3, i32 %173)
  br label %175

175:                                              ; preds = %134, %69
  store i32 0, i32* %13, align 4
  br label %176

176:                                              ; preds = %194, %175
  %177 = load i32, i32* %13, align 4
  %178 = icmp slt i32 %177, 5
  br i1 %178, label %179, label %197

179:                                              ; preds = %176
  %180 = load [44 x [2 x i32]]*, [44 x [2 x i32]]** %9, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %180, i64 %182
  %184 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %183, i64 0, i64 0
  %185 = bitcast [2 x i32]* %184 to i32**
  %186 = load [44 x [2 x i32]]*, [44 x [2 x i32]]** %9, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %186, i64 %188
  %190 = getelementptr inbounds [44 x [2 x i32]], [44 x [2 x i32]]* %189, i64 0, i64 0
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %190, i64 32
  %192 = bitcast [2 x i32]* %191 to i32**
  %193 = call i32 @memcpy(i32** %185, i32** %192, i32 48)
  br label %194

194:                                              ; preds = %179
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %13, align 4
  br label %176

197:                                              ; preds = %176
  ret void
}

declare dso_local i32 @hybrid4_8_12_cx(%struct.TYPE_5__*, i32**, i32***, i32, i32, i32) #1

declare dso_local i32 @hybrid6_cx(%struct.TYPE_5__*, i32**, i32***, i32, i32) #1

declare dso_local i32 @hybrid2_re(i32**, i32***, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32**, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
