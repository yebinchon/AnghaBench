; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_indeo3.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_indeo3.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32*, i32* }

@BS_NONREF = common dso_local global i32 0, align 4
@AVDISCARD_NONREF = common dso_local global i64 0, align 8
@BS_KEYFRAME = common dso_local global i32 0, align 4
@AVDISCARD_NONKEY = common dso_local global i64 0, align 8
@BS_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_14__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_16__* %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %10, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %13, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @decode_frame_headers(%struct.TYPE_13__* %26, %struct.TYPE_16__* %27, i32* %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %5, align 4
  br label %204

35:                                               ; preds = %4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32*, i32** %8, align 8
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %204

41:                                               ; preds = %35
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @BS_NONREF, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AVDISCARD_NONREF, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %204

55:                                               ; preds = %48, %41
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BS_KEYFRAME, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AVDISCARD_NONKEY, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %204

69:                                               ; preds = %62, %55
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @BS_BUFFER, align 4
  %74 = ashr i32 %72, %73
  %75 = and i32 %74, 1
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %80 = call i32 @ff_get_buffer(%struct.TYPE_16__* %78, %struct.TYPE_15__* %79, i32 0)
  store i32 %80, i32* %14, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %5, align 4
  br label %204

84:                                               ; preds = %69
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @decode_plane(%struct.TYPE_13__* %85, %struct.TYPE_16__* %86, i32* %89, i32 %92, i32 %95, i32 40)
  store i32 %96, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %84
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %5, align 4
  br label %204

100:                                              ; preds = %84
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @decode_plane(%struct.TYPE_13__* %101, %struct.TYPE_16__* %102, i32* %106, i32 %109, i32 %112, i32 10)
  store i32 %113, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %100
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %5, align 4
  br label %204

117:                                              ; preds = %100
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @decode_plane(%struct.TYPE_13__* %118, %struct.TYPE_16__* %119, i32* %123, i32 %126, i32 %129, i32 10)
  store i32 %130, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %117
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %5, align 4
  br label %204

134:                                              ; preds = %117
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @output_plane(i32* %138, i32 %141, i32 %146, i32 %151, i32 %154)
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 3
  %177 = ashr i32 %176, 2
  %178 = call i32 @output_plane(i32* %159, i32 %162, i32 %167, i32 %172, i32 %177)
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, 3
  %200 = ashr i32 %199, 2
  %201 = call i32 @output_plane(i32* %182, i32 %185, i32 %190, i32 %195, i32 %200)
  %202 = load i32*, i32** %8, align 8
  store i32 1, i32* %202, align 4
  %203 = load i32, i32* %12, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %134, %132, %115, %98, %82, %68, %54, %38, %33
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32 @decode_frame_headers(%struct.TYPE_13__*, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @decode_plane(%struct.TYPE_13__*, %struct.TYPE_16__*, i32*, i32, i32, i32) #1

declare dso_local i32 @output_plane(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
