; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_tess.c_tessMeshTessellateMonoRegion.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_tess.c_tessMeshTessellateMonoRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tessMeshTessellateMonoRegion(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %6, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = icmp ne %struct.TYPE_9__* %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = icmp ne %struct.TYPE_9__* %24, %25
  br label %27

27:                                               ; preds = %19, %2
  %28 = phi i1 [ false, %2 ], [ %26, %19 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  br label %31

31:                                               ; preds = %41, %27
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @VertLeq(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %6, align 8
  br label %31

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %56, %45
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @VertLeq(i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %6, align 8
  br label %46

60:                                               ; preds = %46
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %7, align 8
  br label %64

64:                                               ; preds = %177, %60
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = icmp ne %struct.TYPE_9__* %67, %68
  br i1 %69, label %70, label %178

70:                                               ; preds = %64
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @VertLeq(i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %128

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %120, %79
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = icmp ne %struct.TYPE_9__* %83, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %80
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = call i64 @EdgeGoesLeft(%struct.TYPE_9__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %106, label %92

92:                                               ; preds = %86
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @EdgeSign(i32 %95, i32 %98, i32 %103)
  %105 = icmp sle i64 %104, 0
  br label %106

106:                                              ; preds = %92, %86
  %107 = phi i1 [ true, %86 ], [ %105, %92 ]
  br label %108

108:                                              ; preds = %106, %80
  %109 = phi i1 [ false, %80 ], [ %107, %106 ]
  br i1 %109, label %110, label %124

110:                                              ; preds = %108
  %111 = load i32*, i32** %4, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = call %struct.TYPE_9__* @tessMeshConnect(i32* %111, %struct.TYPE_9__* %114, %struct.TYPE_9__* %115)
  store %struct.TYPE_9__* %116, %struct.TYPE_9__** %8, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = icmp eq %struct.TYPE_9__* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %209

120:                                              ; preds = %110
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  store %struct.TYPE_9__* %123, %struct.TYPE_9__** %7, align 8
  br label %80

124:                                              ; preds = %108
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  store %struct.TYPE_9__* %127, %struct.TYPE_9__** %7, align 8
  br label %177

128:                                              ; preds = %70
  br label %129

129:                                              ; preds = %169, %128
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %134 = icmp ne %struct.TYPE_9__* %132, %133
  br i1 %134, label %135, label %157

135:                                              ; preds = %129
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = call i64 @EdgeGoesRight(%struct.TYPE_9__* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %135
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @EdgeSign(i32 %144, i32 %147, i32 %152)
  %154 = icmp sge i64 %153, 0
  br label %155

155:                                              ; preds = %141, %135
  %156 = phi i1 [ true, %135 ], [ %154, %141 ]
  br label %157

157:                                              ; preds = %155, %129
  %158 = phi i1 [ false, %129 ], [ %156, %155 ]
  br i1 %158, label %159, label %173

159:                                              ; preds = %157
  %160 = load i32*, i32** %4, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = call %struct.TYPE_9__* @tessMeshConnect(i32* %160, %struct.TYPE_9__* %161, %struct.TYPE_9__* %164)
  store %struct.TYPE_9__* %165, %struct.TYPE_9__** %9, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %167 = icmp eq %struct.TYPE_9__* %166, null
  br i1 %167, label %168, label %169

168:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %209

169:                                              ; preds = %159
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  store %struct.TYPE_9__* %172, %struct.TYPE_9__** %6, align 8
  br label %129

173:                                              ; preds = %157
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  store %struct.TYPE_9__* %176, %struct.TYPE_9__** %6, align 8
  br label %177

177:                                              ; preds = %173, %124
  br label %64

178:                                              ; preds = %64
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %183 = icmp ne %struct.TYPE_9__* %181, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert(i32 %184)
  br label %186

186:                                              ; preds = %204, %178
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %193 = icmp ne %struct.TYPE_9__* %191, %192
  br i1 %193, label %194, label %208

194:                                              ; preds = %186
  %195 = load i32*, i32** %4, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %200 = call %struct.TYPE_9__* @tessMeshConnect(i32* %195, %struct.TYPE_9__* %198, %struct.TYPE_9__* %199)
  store %struct.TYPE_9__* %200, %struct.TYPE_9__** %10, align 8
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %202 = icmp eq %struct.TYPE_9__* %201, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  store i32 0, i32* %3, align 4
  br label %209

204:                                              ; preds = %194
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  store %struct.TYPE_9__* %207, %struct.TYPE_9__** %7, align 8
  br label %186

208:                                              ; preds = %186
  store i32 1, i32* %3, align 4
  br label %209

209:                                              ; preds = %208, %203, %168, %119
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @VertLeq(i32, i32) #1

declare dso_local i64 @EdgeGoesLeft(%struct.TYPE_9__*) #1

declare dso_local i64 @EdgeSign(i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @tessMeshConnect(i32*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i64 @EdgeGoesRight(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
