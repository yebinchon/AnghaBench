; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_signature.c_request_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_signature.c_request_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i64, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { double, double }
%struct.TYPE_23__ = type { i64, i64, i32, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@MODE_OFF = common dso_local global i64 0, align 8
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"matching of video %d at %f and %d at %f, %d frames matching\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"whole video matching\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"no matching of video %d and %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*)* @request_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_frame(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_23__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %4, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %5, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %82, %1
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %85

26:                                               ; preds = %20
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i64 %31
  store %struct.TYPE_21__* %32, %struct.TYPE_21__** %6, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ff_request_frame(i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %26
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @AVERROR_EOF, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %2, align 4
  br label %198

49:                                               ; preds = %43, %26
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @AVERROR_EOF, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %49
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @strlen(i32 %61)
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @export(%struct.TYPE_25__* %65, %struct.TYPE_21__* %66, i32 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %2, align 4
  br label %198

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %58
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %53, %49
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %20

85:                                               ; preds = %20
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %196

88:                                               ; preds = %85
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MODE_OFF, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %196

94:                                               ; preds = %88
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %192, %94
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %195

101:                                              ; preds = %95
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i64 %106
  store %struct.TYPE_21__* %107, %struct.TYPE_21__** %6, align 8
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %188, %101
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %191

116:                                              ; preds = %110
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i64 %121
  store %struct.TYPE_21__* %122, %struct.TYPE_21__** %7, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  call void @lookup_signatures(%struct.TYPE_23__* sret %13, %struct.TYPE_25__* %123, %struct.TYPE_22__* %124, %struct.TYPE_21__* %125, %struct.TYPE_21__* %126, i64 %129)
  %130 = bitcast %struct.TYPE_23__* %8 to i8*
  %131 = bitcast %struct.TYPE_23__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 %131, i64 40, i1 false)
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %181

135:                                              ; preds = %116
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %137 = load i32, i32* @AV_LOG_INFO, align 4
  %138 = load i32, i32* %9, align 4
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = sitofp i64 %142 to double
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = load double, double* %146, align 8
  %148 = fmul double %143, %147
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  %152 = load double, double* %151, align 8
  %153 = fdiv double %148, %152
  %154 = load i32, i32* %10, align 4
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 3
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = sitofp i64 %158 to double
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = load double, double* %162, align 8
  %164 = fmul double %159, %163
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  %168 = load double, double* %167, align 8
  %169 = fdiv double %164, %168
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %136, i32 %137, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %138, double %153, i32 %154, double %169, i32 %171)
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %135
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %178 = load i32, i32* @AV_LOG_INFO, align 4
  %179 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %177, i32 %178, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %180

180:                                              ; preds = %176, %135
  br label %187

181:                                              ; preds = %116
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %183 = load i32, i32* @AV_LOG_INFO, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %10, align 4
  %186 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %182, i32 %183, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %181, %180
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %110

191:                                              ; preds = %110
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %95

195:                                              ; preds = %95
  br label %196

196:                                              ; preds = %195, %88, %85
  %197 = load i32, i32* %11, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %196, %70, %47
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @ff_request_frame(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @export(%struct.TYPE_25__*, %struct.TYPE_21__*, i32) #1

declare dso_local void @lookup_signatures(%struct.TYPE_23__* sret, %struct.TYPE_25__*, %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
