; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_WalkDirtyRegions.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_WalkDirtyRegions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__*, i64 }
%struct.TYPE_22__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_23__*)* @WalkDirtyRegions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WalkDirtyRegions(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %9 = call %struct.TYPE_23__* @RegionBelow(%struct.TYPE_23__* %8)
  store %struct.TYPE_23__* %9, %struct.TYPE_23__** %5, align 8
  br label %10

10:                                               ; preds = %206, %2
  br label %11

11:                                               ; preds = %16, %10
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %4, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %19 = call %struct.TYPE_23__* @RegionBelow(%struct.TYPE_23__* %18)
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %5, align 8
  br label %11

20:                                               ; preds = %11
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_23__* %26, %struct.TYPE_23__** %5, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = call %struct.TYPE_23__* @RegionAbove(%struct.TYPE_23__* %27)
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %4, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %30 = icmp eq %struct.TYPE_23__* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %25
  br label %207

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i64, i64* @FALSE, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  store %struct.TYPE_22__* %44, %struct.TYPE_22__** %6, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %46, align 8
  store %struct.TYPE_22__* %47, %struct.TYPE_22__** %7, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %115

55:                                               ; preds = %38
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %58 = call i64 @CheckForLeftSplice(%struct.TYPE_21__* %56, %struct.TYPE_23__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %114

60:                                               ; preds = %55
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %60
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = call i32 @DeleteRegion(%struct.TYPE_21__* %66, %struct.TYPE_23__* %67)
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %73 = call i32 @tessMeshDelete(i32 %71, %struct.TYPE_22__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %65
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @longjmp(i32 %78, i32 1)
  br label %80

80:                                               ; preds = %75, %65
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %82 = call %struct.TYPE_23__* @RegionBelow(%struct.TYPE_23__* %81)
  store %struct.TYPE_23__* %82, %struct.TYPE_23__** %5, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  store %struct.TYPE_22__* %85, %struct.TYPE_22__** %7, align 8
  br label %113

86:                                               ; preds = %60
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %86
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %94 = call i32 @DeleteRegion(%struct.TYPE_21__* %92, %struct.TYPE_23__* %93)
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %99 = call i32 @tessMeshDelete(i32 %97, %struct.TYPE_22__* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %91
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @longjmp(i32 %104, i32 1)
  br label %106

106:                                              ; preds = %101, %91
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %108 = call %struct.TYPE_23__* @RegionAbove(%struct.TYPE_23__* %107)
  store %struct.TYPE_23__* %108, %struct.TYPE_23__** %4, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %110, align 8
  store %struct.TYPE_22__* %111, %struct.TYPE_22__** %6, align 8
  br label %112

112:                                              ; preds = %106, %86
  br label %113

113:                                              ; preds = %112, %80
  br label %114

114:                                              ; preds = %113, %55
  br label %115

115:                                              ; preds = %114, %38
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %123, label %169

123:                                              ; preds = %115
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %126, %129
  br i1 %130, label %131, label %164

131:                                              ; preds = %123
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %164, label %136

136:                                              ; preds = %131
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %164, label %141

141:                                              ; preds = %136
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %144, %147
  br i1 %148, label %157, label %149

149:                                              ; preds = %141
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %152, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %149, %141
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %160 = call i64 @CheckForIntersect(%struct.TYPE_21__* %158, %struct.TYPE_23__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %207

163:                                              ; preds = %157
  br label %168

164:                                              ; preds = %149, %136, %131, %123
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %167 = call i32 @CheckForRightSplice(%struct.TYPE_21__* %165, %struct.TYPE_23__* %166)
  br label %168

168:                                              ; preds = %164, %163
  br label %169

169:                                              ; preds = %168, %115
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %172, %175
  br i1 %176, label %177, label %206

177:                                              ; preds = %169
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %180, %183
  br i1 %184, label %185, label %206

185:                                              ; preds = %177
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %188 = call i32 @AddWinding(%struct.TYPE_22__* %186, %struct.TYPE_22__* %187)
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %191 = call i32 @DeleteRegion(%struct.TYPE_21__* %189, %struct.TYPE_23__* %190)
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %196 = call i32 @tessMeshDelete(i32 %194, %struct.TYPE_22__* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %185
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @longjmp(i32 %201, i32 1)
  br label %203

203:                                              ; preds = %198, %185
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %205 = call %struct.TYPE_23__* @RegionAbove(%struct.TYPE_23__* %204)
  store %struct.TYPE_23__* %205, %struct.TYPE_23__** %4, align 8
  br label %206

206:                                              ; preds = %203, %177, %169
  br label %10

207:                                              ; preds = %162, %36
  ret void
}

declare dso_local %struct.TYPE_23__* @RegionBelow(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @RegionAbove(%struct.TYPE_23__*) #1

declare dso_local i64 @CheckForLeftSplice(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @DeleteRegion(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @tessMeshDelete(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i64 @CheckForIntersect(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @CheckForRightSplice(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @AddWinding(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
