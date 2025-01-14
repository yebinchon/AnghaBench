; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcenc.c_sbc_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcenc.c_sbc_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_11__, %struct.sbc_frame }
%struct.TYPE_11__ = type { i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)*, i32, i32, i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)* }
%struct.sbc_frame = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32* }

@SBC_MODE_JOINT_STEREO = common dso_local global i64 0, align 8
@SBC_MODE_DUAL_CHANNEL = common dso_local global i64 0, align 8
@JOINT_STEREO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_9__*, i32*)* @sbc_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbc_encode_frame(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_9__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.sbc_frame*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %10, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  store %struct.sbc_frame* %21, %struct.sbc_frame** %11, align 8
  %22 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %23 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SBC_MODE_JOINT_STEREO, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %29 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SBC_MODE_DUAL_CHANNEL, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %34 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %35 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 4, %36
  %38 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %39 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = sdiv i32 %41, 8
  %43 = add nsw i32 4, %42
  %44 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %45 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %48 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 1, %51
  %53 = mul nsw i32 %50, %52
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %56 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %54, %57
  %59 = add nsw i32 %53, %58
  %60 = add nsw i32 %59, 7
  %61 = sdiv i32 %60, 8
  %62 = add nsw i32 %43, %61
  store i32 %62, i32* %16, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %67 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = mul nsw i32 %69, 2
  %71 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %72 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %213

76:                                               ; preds = %4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @ff_alloc_packet2(%struct.TYPE_10__* %77, i32* %78, i32 %79, i32 0)
  store i32 %80, i32* %14, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %5, align 4
  br label %213

84:                                               ; preds = %76
  %85 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %86 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %121

89:                                               ; preds = %84
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 5
  %93 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %108 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %111 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %109, %112
  %114 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %115 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 %93(i32 %97, i32 %102, i32 %106, i32 %113, i32 %116)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  store i32 %117, i32* %120, align 4
  br label %153

121:                                              ; preds = %84
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 4
  %125 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %124, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %140 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %143 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 %141, %144
  %146 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %147 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 %125(i32 %129, i32 %134, i32 %138, i32 %145, i32 %148)
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 3
  store i32 %149, i32* %152, align 4
  br label %153

153:                                              ; preds = %121, %89
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = call i32 @sbc_analyze_audio(%struct.TYPE_11__* %155, %struct.sbc_frame* %157)
  %159 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %160 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @JOINT_STEREO, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %182

164:                                              ; preds = %153
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %167, align 8
  %169 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %170 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %173 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %176 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %179 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i32 %168(i32 %171, i32 %174, i32 %177, i32 %180)
  store i32 %181, i32* %15, align 4
  br label %203

182:                                              ; preds = %153
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %185, align 8
  %187 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %188 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %191 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %194 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %197 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %200 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call i32 %186(i32 %189, i32 %192, i32 %195, i32 %198, i32 %201)
  br label %203

203:                                              ; preds = %182, %164
  %204 = call i32 (...) @emms_c()
  %205 = load i32*, i32** %7, align 8
  %206 = load %struct.sbc_frame*, %struct.sbc_frame** %11, align 8
  %207 = load i32, i32* %15, align 4
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @sbc_pack_frame(i32* %205, %struct.sbc_frame* %206, i32 %207, i32 %210)
  %212 = load i32*, i32** %9, align 8
  store i32 1, i32* %212, align 4
  store i32 0, i32* %5, align 4
  br label %213

213:                                              ; preds = %203, %82, %75
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @sbc_analyze_audio(%struct.TYPE_11__*, %struct.sbc_frame*) #1

declare dso_local i32 @emms_c(...) #1

declare dso_local i32 @sbc_pack_frame(i32*, %struct.sbc_frame*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
