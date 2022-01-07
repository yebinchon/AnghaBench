; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_fastcover.c_FASTCOVER_ctx_init.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_fastcover.c_FASTCOVER_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i32, i32, i32, i64, i32, i32, i64*, i32*, i32, i32* }

@FASTCOVER_MAX_SAMPLES_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Total samples size is too large (%u MB), maximum size is %u MB\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Total number of training samples is %u and is invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Total number of testing samples is %u and is invalid.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Training on %u samples of total size %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Testing on %u samples of total size %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to allocate scratch buffers \0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to allocate frequency table \0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Computing frequencies\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64*, i32, i32, double, i32, i32)* @FASTCOVER_ctx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FASTCOVER_ctx_init(%struct.TYPE_6__* %0, i8* %1, i64* %2, i32 %3, i32 %4, double %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64* %2, i64** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store double %5, double* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %18, align 8
  %27 = load i64*, i64** %12, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call i64 @COVER_sum(i64* %27, i32 %28)
  store i64 %29, i64* %19, align 8
  %30 = load double, double* %15, align 8
  %31 = fcmp olt double %30, 1.000000e+00
  br i1 %31, label %32, label %38

32:                                               ; preds = %8
  %33 = load i32, i32* %13, align 4
  %34 = uitofp i32 %33 to double
  %35 = load double, double* %15, align 8
  %36 = fmul double %34, %35
  %37 = fptoui double %36 to i32
  br label %40

38:                                               ; preds = %8
  %39 = load i32, i32* %13, align 4
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi i32 [ %37, %32 ], [ %39, %38 ]
  store i32 %41, i32* %20, align 4
  %42 = load double, double* %15, align 8
  %43 = fcmp olt double %42, 1.000000e+00
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %20, align 4
  %47 = sub i32 %45, %46
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %13, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i32 [ %47, %44 ], [ %49, %48 ]
  store i32 %51, i32* %21, align 4
  %52 = load double, double* %15, align 8
  %53 = fcmp olt double %52, 1.000000e+00
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64*, i64** %12, align 8
  %56 = load i32, i32* %20, align 4
  %57 = call i64 @COVER_sum(i64* %55, i32 %56)
  br label %60

58:                                               ; preds = %50
  %59 = load i64, i64* %19, align 8
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i64 [ %57, %54 ], [ %59, %58 ]
  store i64 %61, i64* %22, align 8
  %62 = load double, double* %15, align 8
  %63 = fcmp olt double %62, 1.000000e+00
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i64*, i64** %12, align 8
  %66 = load i32, i32* %20, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i32, i32* %21, align 4
  %70 = call i64 @COVER_sum(i64* %68, i32 %69)
  br label %73

71:                                               ; preds = %60
  %72 = load i64, i64* %19, align 8
  br label %73

73:                                               ; preds = %71, %64
  %74 = phi i64 [ %70, %64 ], [ %72, %71 ]
  store i64 %74, i64* %23, align 8
  %75 = load i64, i64* %19, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i64 @MAX(i32 %76, i32 4)
  %78 = icmp ult i64 %75, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = load i64, i64* %19, align 8
  %81 = load i32, i32* @FASTCOVER_MAX_SAMPLES_SIZE, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp uge i64 %80, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %79, %73
  %85 = load i64, i64* %19, align 8
  %86 = lshr i64 %85, 20
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* @FASTCOVER_MAX_SAMPLES_SIZE, align 4
  %89 = ashr i32 %88, 20
  %90 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %89)
  store i32 0, i32* %9, align 4
  br label %219

91:                                               ; preds = %79
  %92 = load i32, i32* %20, align 4
  %93 = icmp ult i32 %92, 5
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %20, align 4
  %96 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  store i32 0, i32* %9, align 4
  br label %219

97:                                               ; preds = %91
  %98 = load i32, i32* %21, align 4
  %99 = icmp ult i32 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %21, align 4
  %102 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  store i32 0, i32* %9, align 4
  br label %219

103:                                              ; preds = %97
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %105 = call i32 @memset(%struct.TYPE_6__* %104, i32 0, i32 72)
  %106 = load i32, i32* %20, align 4
  %107 = load i64, i64* %22, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %106, i32 %108)
  %110 = load i32, i32* %21, align 4
  %111 = load i64, i64* %23, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %112)
  %114 = load i32*, i32** %18, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 10
  store i32* %114, i32** %116, align 8
  %117 = load i64*, i64** %12, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i64* %117, i64** %119, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %20, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %21, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  %129 = load i64, i64* %22, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i64 @MAX(i32 %130, i32 4)
  %132 = sub i64 %129, %131
  %133 = add i64 %132, 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  store i64 %133, i64* %135, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %16, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 9
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %13, align 4
  %146 = add i32 %145, 1
  %147 = call i64 @calloc(i32 %146, i32 8)
  %148 = inttoptr i64 %147 to i64*
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 7
  store i64* %148, i64** %150, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 7
  %153 = load i64*, i64** %152, align 8
  %154 = icmp eq i64* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %103
  %156 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %158 = call i32 @FASTCOVER_ctx_destroy(%struct.TYPE_6__* %157)
  store i32 0, i32* %9, align 4
  br label %219

159:                                              ; preds = %103
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 7
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 0
  store i64 0, i64* %163, align 8
  %164 = load i32, i32* %13, align 4
  %165 = icmp uge i32 %164, 5
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  store i32 1, i32* %24, align 4
  br label %168

168:                                              ; preds = %194, %159
  %169 = load i32, i32* %24, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp ule i32 %169, %170
  br i1 %171, label %172, label %197

172:                                              ; preds = %168
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 7
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %24, align 4
  %177 = sub i32 %176, 1
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %175, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = load i64*, i64** %12, align 8
  %182 = load i32, i32* %24, align 4
  %183 = sub i32 %182, 1
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %181, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = add i64 %180, %186
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 7
  %190 = load i64*, i64** %189, align 8
  %191 = load i32, i32* %24, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  store i64 %187, i64* %193, align 8
  br label %194

194:                                              ; preds = %172
  %195 = load i32, i32* %24, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %24, align 4
  br label %168

197:                                              ; preds = %168
  %198 = load i32, i32* %16, align 4
  %199 = shl i32 1, %198
  %200 = call i64 @calloc(i32 %199, i32 4)
  %201 = inttoptr i64 %200 to i32*
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 8
  store i32* %201, i32** %203, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 8
  %206 = load i32*, i32** %205, align 8
  %207 = icmp eq i32* %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %197
  %209 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %211 = call i32 @FASTCOVER_ctx_destroy(%struct.TYPE_6__* %210)
  store i32 0, i32* %9, align 4
  br label %219

212:                                              ; preds = %197
  %213 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 8
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %218 = call i32 @FASTCOVER_computeFrequency(i32* %216, %struct.TYPE_6__* %217)
  store i32 1, i32* %9, align 4
  br label %219

219:                                              ; preds = %212, %208, %155, %100, %94, %84
  %220 = load i32, i32* %9, align 4
  ret i32 %220
}

declare dso_local i64 @COVER_sum(i64*, i32) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @FASTCOVER_ctx_destroy(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FASTCOVER_computeFrequency(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
