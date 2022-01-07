; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_encavcodec.c_Encode.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_encavcodec.c_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_20__*, i32, %struct.TYPE_25__*, i32, i32 }
%struct.TYPE_20__ = type { i8*, i32 }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_24__, %struct.TYPE_23__*, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i64, i32, i32, i32*, i32*, i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"encavcodec: avcodec_send_frame failed\00", align 1
@HB_PASS_ENCODE_1ST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_28__*, i32*)* @Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Encode(%struct.TYPE_27__* %0, %struct.TYPE_28__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_29__, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %12, %struct.TYPE_26__** %7, align 8
  %13 = bitcast %struct.TYPE_29__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 56, i1 false)
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 7
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 6
  store i32 %22, i32* %23, align 8
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i64 2
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i64 2
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32 %74, i32* %77, align 4
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %3
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 3
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %98 = call i32 @hb_chapter_enqueue(i32 %96, %struct.TYPE_28__* %97)
  br label %99

99:                                               ; preds = %90, %83, %3
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 2
  store i32 %104, i32* %105, align 8
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %108 = call i32 @save_frame_info(%struct.TYPE_26__* %106, %struct.TYPE_28__* %107)
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %111 = call i32 @compute_dts_offset(%struct.TYPE_26__* %109, %struct.TYPE_28__* %110)
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 1
  store i64 %116, i64* %117, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = call i32 @avcodec_send_frame(%struct.TYPE_20__* %120, %struct.TYPE_29__* %8)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %99
  %125 = call i32 @hb_log(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %155

126:                                              ; preds = %99
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @HB_PASS_ENCODE_1ST, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %151

134:                                              ; preds = %126
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %151

141:                                              ; preds = %134
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @fprintf(i32 %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %141, %134, %126
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %153 = load i32*, i32** %6, align 8
  %154 = call i32 @get_packets(%struct.TYPE_27__* %152, i32* %153)
  br label %155

155:                                              ; preds = %151, %124
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hb_chapter_enqueue(i32, %struct.TYPE_28__*) #2

declare dso_local i32 @save_frame_info(%struct.TYPE_26__*, %struct.TYPE_28__*) #2

declare dso_local i32 @compute_dts_offset(%struct.TYPE_26__*, %struct.TYPE_28__*) #2

declare dso_local i32 @avcodec_send_frame(%struct.TYPE_20__*, %struct.TYPE_29__*) #2

declare dso_local i32 @hb_log(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @get_packets(%struct.TYPE_27__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
