; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_visflow.c_BasePortalVis.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_visflow.c_BasePortalVis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32*, i32*, i64, i32, %struct.TYPE_6__, %struct.TYPE_7__*, i64 }
%struct.TYPE_6__ = type { float, i32 }
%struct.TYPE_7__ = type { i32, i32* }

@portals = common dso_local global %struct.TYPE_8__* null, align 8
@portalbytes = common dso_local global i32 0, align 4
@numportals = common dso_local global i32 0, align 4
@ON_EPSILON = common dso_local global float 0.000000e+00, align 4
@c_flood = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BasePortalVis(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @portals, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i64 %11
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %192

18:                                               ; preds = %1
  %19 = load i32, i32* @portalbytes, align 4
  %20 = call i8* @malloc(i32 %19)
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @portalbytes, align 4
  %28 = call i32 @memset(i32* %26, i32 0, i32 %27)
  %29 = load i32, i32* @portalbytes, align 4
  %30 = call i8* @malloc(i32 %29)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @portalbytes, align 4
  %38 = call i32 @memset(i32* %36, i32 0, i32 %37)
  %39 = load i32, i32* @portalbytes, align 4
  %40 = call i8* @malloc(i32 %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @portalbytes, align 4
  %48 = call i32 @memset(i32* %46, i32 0, i32 %47)
  store i32 0, i32* %3, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @portals, align 8
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %5, align 8
  br label %50

50:                                               ; preds = %166, %18
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @numportals, align 4
  %53 = mul nsw i32 %52, 2
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %171

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %2, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %166

60:                                               ; preds = %55
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %166

66:                                               ; preds = %60
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 6
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %8, align 8
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %99, %66
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %102

76:                                               ; preds = %70
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call float @DotProduct(i32 %83, i32 %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load float, float* %91, align 4
  %93 = fsub float %88, %92
  store float %93, float* %7, align 4
  %94 = load float, float* %7, align 4
  %95 = load float, float* @ON_EPSILON, align 4
  %96 = fcmp ogt float %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %76
  br label %102

98:                                               ; preds = %76
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %70

102:                                              ; preds = %97, %70
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %166

109:                                              ; preds = %102
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 6
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  store %struct.TYPE_7__* %112, %struct.TYPE_7__** %8, align 8
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %143, %109
  %114 = load i32, i32* %4, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %146

119:                                              ; preds = %113
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call float @DotProduct(i32 %126, i32 %130)
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load float, float* %134, align 4
  %136 = fsub float %131, %135
  store float %136, float* %7, align 4
  %137 = load float, float* %7, align 4
  %138 = load float, float* @ON_EPSILON, align 4
  %139 = fneg float %138
  %140 = fcmp olt float %137, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %119
  br label %146

142:                                              ; preds = %119
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %113

146:                                              ; preds = %141, %113
  %147 = load i32, i32* %4, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %166

153:                                              ; preds = %146
  %154 = load i32, i32* %3, align 4
  %155 = and i32 %154, 7
  %156 = shl i32 1, %155
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %3, align 4
  %161 = ashr i32 %160, 3
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %156
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %153, %152, %108, %65, %59
  %167 = load i32, i32* %3, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %3, align 4
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 1
  store %struct.TYPE_8__* %170, %struct.TYPE_8__** %5, align 8
  br label %50

171:                                              ; preds = %50
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @SimpleFlood(%struct.TYPE_8__* %172, i32 %175)
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* @numportals, align 4
  %181 = mul nsw i32 %180, 2
  %182 = call i64 @CountBits(i32* %179, i32 %181)
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 3
  store i64 %182, i64* %184, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* @c_flood, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* @c_flood, align 4
  br label %192

192:                                              ; preds = %171, %17
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i32 @SimpleFlood(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @CountBits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
