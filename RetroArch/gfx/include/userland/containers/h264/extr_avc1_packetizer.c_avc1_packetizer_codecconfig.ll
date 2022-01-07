; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/h264/extr_avc1_packetizer.c_avc1_packetizer_codecconfig.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/h264/extr_avc1_packetizer.c_avc1_packetizer_codecconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*)* @avc1_packetizer_codecconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @avc1_packetizer_codecconfig(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %4, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 5
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %24, i64 %30
  %32 = getelementptr inbounds i32, i32* %31, i64 -5
  store i32* %32, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %37, 5
  br i1 %38, label %48, label %39

39:                                               ; preds = %1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %39, %1
  %49 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %49, i64* %2, align 8
  br label %172

50:                                               ; preds = %39
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @vc_container_format_extradata_alloc(%struct.TYPE_11__* %53, i32 %58)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i64, i64* %5, align 8
  store i64 %64, i64* %2, align 8
  br label %172

65:                                               ; preds = %50
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %6, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 3
  %79 = add nsw i32 %78, 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %162, %65
  %83 = load i32, i32* %9, align 4
  %84 = icmp ult i32 %83, 2
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 -1
  %89 = icmp ult i32* %86, %88
  br label %90

90:                                               ; preds = %85, %82
  %91 = phi i1 [ false, %82 ], [ %89, %85 ]
  br i1 %91, label %92, label %165

92:                                               ; preds = %90
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %7, align 8
  %95 = load i32, i32* %93, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 31, i32 255
  %101 = and i32 %95, %100
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %158, %92
  %103 = load i32, i32* %10, align 4
  %104 = icmp ugt i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32*, i32** %7, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 -2
  %109 = icmp ult i32* %106, %108
  br label %110

110:                                              ; preds = %105, %102
  %111 = phi i1 [ false, %102 ], [ %109, %105 ]
  br i1 %111, label %112, label %161

112:                                              ; preds = %110
  %113 = load i32*, i32** %7, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 8
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %116, %119
  store i32 %120, i32* %11, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  store i32* %122, i32** %7, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %11, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32*, i32** %8, align 8
  %128 = icmp ugt i32* %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %112
  %130 = load i32*, i32** %8, align 8
  store i32* %130, i32** %7, align 8
  br label %161

131:                                              ; preds = %112
  %132 = load i32*, i32** %6, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  store i32 0, i32* %133, align 4
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 0, i32* %135, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 0, i32* %137, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  store i32 1, i32* %139, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @memcpy(i32* %141, i32* %142, i32 %143)
  %145 = load i32, i32* %11, align 4
  %146 = add i32 %145, 4
  %147 = load i32*, i32** %6, align 8
  %148 = zext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32* %149, i32** %6, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = zext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %7, align 8
  %154 = load i32, i32* %11, align 4
  %155 = add i32 %154, 4
  %156 = load i32, i32* %12, align 4
  %157 = add i32 %156, %155
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %131
  %159 = load i32, i32* %10, align 4
  %160 = add i32 %159, -1
  store i32 %160, i32* %10, align 4
  br label %102

161:                                              ; preds = %129, %110
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %9, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %82

165:                                              ; preds = %90
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  store i32 %166, i32* %170, align 8
  %171 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %171, i64* %2, align 8
  br label %172

172:                                              ; preds = %165, %63, %48
  %173 = load i64, i64* %2, align 8
  ret i64 %173
}

declare dso_local i64 @vc_container_format_extradata_alloc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
