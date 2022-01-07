; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bink.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bink.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8, i32, i32*, i32, i64 }
%struct.TYPE_11__ = type { i32, i32 }

@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32*, %struct.TYPE_11__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_12__* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %11, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 3
  store i32 %25, i32* %16, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 8
  %29 = sext i8 %28 to i32
  %30 = icmp sgt i32 %29, 98
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %35 = call i32 @ff_get_buffer(%struct.TYPE_12__* %32, i32* %33, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %5, align 4
  br label %189

39:                                               ; preds = %31
  br label %59

40:                                               ; preds = %4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ff_reget_buffer(%struct.TYPE_12__* %41, i32* %44, i32 0)
  store i32 %45, i32* %15, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %5, align 4
  br label %189

49:                                               ; preds = %40
  %50 = load i32*, i32** %11, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @av_frame_ref(i32* %50, i32* %53)
  store i32 %54, i32* %15, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %5, align 4
  br label %189

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %39
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @init_get_bits(i32* %12, i32 %62, i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %59
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i8, i8* %71, align 8
  %73 = sext i8 %72 to i32
  %74 = icmp sge i32 %73, 105
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = call i32 @skip_bits_long(i32* %12, i32 32)
  br label %77

77:                                               ; preds = %75, %69
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @bink_decode_plane(%struct.TYPE_10__* %78, i32* %79, i32* %12, i32 3, i32 0)
  store i32 %80, i32* %15, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %5, align 4
  br label %189

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %59
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i8, i8* %87, align 8
  %89 = sext i8 %88 to i32
  %90 = icmp sge i32 %89, 105
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 @skip_bits_long(i32* %12, i32 32)
  br label %93

93:                                               ; preds = %91, %85
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  store i32 0, i32* %13, align 4
  br label %98

98:                                               ; preds = %160, %93
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %99, 3
  br i1 %100, label %101, label %163

101:                                              ; preds = %98
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %104, %101
  %110 = load i32, i32* %13, align 4
  br label %114

111:                                              ; preds = %104
  %112 = load i32, i32* %13, align 4
  %113 = xor i32 %112, 3
  br label %114

114:                                              ; preds = %111, %109
  %115 = phi i32 [ %110, %109 ], [ %113, %111 ]
  store i32 %115, i32* %14, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i8, i8* %117, align 8
  %119 = sext i8 %118 to i32
  %120 = icmp sgt i32 %119, 98
  br i1 %120, label %121, label %135

121:                                              ; preds = %114
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @bink_decode_plane(%struct.TYPE_10__* %122, i32* %123, i32* %12, i32 %124, i32 %129)
  store i32 %130, i32* %15, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %121
  %133 = load i32, i32* %15, align 4
  store i32 %133, i32* %5, align 4
  br label %189

134:                                              ; preds = %121
  br label %154

135:                                              ; preds = %114
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %14, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = call i32 @binkb_decode_plane(%struct.TYPE_10__* %136, i32* %137, i32* %12, i32 %138, i32 %143, i32 %148)
  store i32 %149, i32* %15, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %135
  %152 = load i32, i32* %15, align 4
  store i32 %152, i32* %5, align 4
  br label %189

153:                                              ; preds = %135
  br label %154

154:                                              ; preds = %153, %134
  %155 = call i32 @get_bits_count(i32* %12)
  %156 = load i32, i32* %16, align 4
  %157 = icmp sge i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %163

159:                                              ; preds = %154
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  br label %98

163:                                              ; preds = %158, %98
  %164 = call i32 (...) @emms_c()
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i8, i8* %166, align 8
  %168 = sext i8 %167 to i32
  %169 = icmp sgt i32 %168, 98
  br i1 %169, label %170, label %184

170:                                              ; preds = %163
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @av_frame_unref(i32* %173)
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = call i32 @av_frame_ref(i32* %177, i32* %178)
  store i32 %179, i32* %15, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %170
  %182 = load i32, i32* %15, align 4
  store i32 %182, i32* %5, align 4
  br label %189

183:                                              ; preds = %170
  br label %184

184:                                              ; preds = %183, %163
  %185 = load i32*, i32** %8, align 8
  store i32 1, i32* %185, align 4
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %184, %181, %151, %132, %82, %56, %47, %37
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @av_frame_ref(i32*, i32*) #1

declare dso_local i32 @init_get_bits(i32*, i32, i32) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i32 @bink_decode_plane(%struct.TYPE_10__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @binkb_decode_plane(%struct.TYPE_10__*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @emms_c(...) #1

declare dso_local i32 @av_frame_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
