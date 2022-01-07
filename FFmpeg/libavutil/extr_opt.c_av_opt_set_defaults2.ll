; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_set_defaults2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_set_defaults2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, double, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@AV_OPT_FLAG_READONLY = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"AVOption type %d of option %s not implemented yet\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_opt_set_defaults2(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.TYPE_14__, align 4
  %11 = alloca %struct.TYPE_14__, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  br label %12

12:                                               ; preds = %141, %41, %33, %3
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %15 = call %struct.TYPE_15__* @av_opt_next(i8* %13, %struct.TYPE_15__* %14)
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %7, align 8
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %142

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = bitcast i32* %24 to i8*
  store i8* %25, i8** %8, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %12

34:                                               ; preds = %17
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AV_OPT_FLAG_READONLY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %12

42:                                               ; preds = %34
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %131 [
    i32 142, label %46
    i32 145, label %47
    i32 138, label %47
    i32 135, label %47
    i32 134, label %47
    i32 129, label %47
    i32 139, label %47
    i32 144, label %47
    i32 133, label %47
    i32 131, label %47
    i32 140, label %56
    i32 137, label %56
    i32 132, label %67
    i32 143, label %85
    i32 130, label %94
    i32 136, label %103
    i32 128, label %112
    i32 146, label %121
    i32 141, label %130
  ]

46:                                               ; preds = %42
  br label %141

47:                                               ; preds = %42, %42, %42, %42, %42, %42, %42, %42, %42
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @write_number(i8* %48, %struct.TYPE_15__* %49, i8* %50, i32 1, i32 1, i32 %54)
  br label %141

56:                                               ; preds = %42, %42
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load double, double* %59, align 8
  store double %60, double* %9, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load double, double* %9, align 8
  %65 = fptosi double %64 to i32
  %66 = call i32 @write_number(i8* %61, %struct.TYPE_15__* %62, i8* %63, i32 %65, i32 1, i32 1)
  br label %141

67:                                               ; preds = %42
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load double, double* %70, align 8
  %72 = load i32, i32* @INT_MAX, align 4
  %73 = call i64 @av_d2q(double %71, i32 %72)
  %74 = bitcast %struct.TYPE_14__* %11 to i64*
  store i64 %73, i64* %74, align 4
  %75 = bitcast %struct.TYPE_14__* %10 to i8*
  %76 = bitcast %struct.TYPE_14__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 8, i1 false)
  %77 = load i8*, i8** %4, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @write_number(i8* %77, %struct.TYPE_15__* %78, i8* %79, i32 1, i32 %81, i32 %83)
  br label %141

85:                                               ; preds = %42
  %86 = load i8*, i8** %4, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @set_string_color(i8* %86, %struct.TYPE_15__* %87, i32 %91, i8* %92)
  br label %141

94:                                               ; preds = %42
  %95 = load i8*, i8** %4, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @set_string(i8* %95, %struct.TYPE_15__* %96, i32 %100, i8* %101)
  br label %141

103:                                              ; preds = %42
  %104 = load i8*, i8** %4, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @set_string_image_size(i8* %104, %struct.TYPE_15__* %105, i32 %109, i8* %110)
  br label %141

112:                                              ; preds = %42
  %113 = load i8*, i8** %4, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @set_string_video_rate(i8* %113, %struct.TYPE_15__* %114, i32 %118, i8* %119)
  br label %141

121:                                              ; preds = %42
  %122 = load i8*, i8** %4, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @set_string_binary(i8* %122, %struct.TYPE_15__* %123, i32 %127, i8* %128)
  br label %141

130:                                              ; preds = %42
  br label %141

131:                                              ; preds = %42
  %132 = load i8*, i8** %4, align 8
  %133 = load i32, i32* @AV_LOG_DEBUG, align 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @av_log(i8* %132, i32 %133, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %136, i32 %139)
  br label %141

141:                                              ; preds = %131, %130, %121, %112, %103, %94, %85, %67, %56, %47, %46
  br label %12

142:                                              ; preds = %12
  ret void
}

declare dso_local %struct.TYPE_15__* @av_opt_next(i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @write_number(i8*, %struct.TYPE_15__*, i8*, i32, i32, i32) #1

declare dso_local i64 @av_d2q(double, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_string_color(i8*, %struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @set_string(i8*, %struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @set_string_image_size(i8*, %struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @set_string_video_rate(i8*, %struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @set_string_binary(i8*, %struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
