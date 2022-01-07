; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pullup.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pullup.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, i32, i32, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { %struct.TYPE_30__*, %struct.TYPE_33__** }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_32__ = type { i32, i64, i64, i32, i64 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Could not get buffer!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*, %struct.TYPE_32__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_33__* %0, %struct.TYPE_32__* %1) #0 {
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %3, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %4, align 8
  %13 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  store %struct.TYPE_34__* %15, %struct.TYPE_34__** %5, align 8
  %16 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %18, i64 0
  %20 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  store %struct.TYPE_33__* %20, %struct.TYPE_33__** %6, align 8
  %21 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %22, align 8
  store %struct.TYPE_30__* %23, %struct.TYPE_30__** %7, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %25 = call %struct.TYPE_31__* @pullup_get_buffer(%struct.TYPE_30__* %24, i32 2)
  store %struct.TYPE_31__* %25, %struct.TYPE_31__** %8, align 8
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %27 = icmp ne %struct.TYPE_31__* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %2
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %30 = load i32, i32* @AV_LOG_WARNING, align 4
  %31 = call i32 @av_log(%struct.TYPE_34__* %29, i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %33 = call %struct.TYPE_29__* @pullup_get_frame(%struct.TYPE_30__* %32)
  store %struct.TYPE_29__* %33, %struct.TYPE_29__** %9, align 8
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %35 = call i32 @pullup_release_frame(%struct.TYPE_29__* %34)
  br label %199

36:                                               ; preds = %2
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32**
  %47 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @av_image_copy(i64 %39, i32 %42, i32** %46, i32 %49, i32 %52, i32 %55, i32 %58)
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %36
  %65 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  br label %72

71:                                               ; preds = %36
  br label %72

72:                                               ; preds = %71, %64
  %73 = phi i32 [ %70, %64 ], [ 0, %71 ]
  store i32 %73, i32* %11, align 4
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @pullup_submit_field(%struct.TYPE_30__* %74, %struct.TYPE_31__* %75, i32 %76)
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %80 = load i32, i32* %11, align 4
  %81 = xor i32 %80, 1
  %82 = call i32 @pullup_submit_field(%struct.TYPE_30__* %78, %struct.TYPE_31__* %79, i32 %81)
  %83 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %72
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @pullup_submit_field(%struct.TYPE_30__* %88, %struct.TYPE_31__* %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %72
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %94 = call i32 @pullup_release_buffer(%struct.TYPE_31__* %93, i32 2)
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %96 = call %struct.TYPE_29__* @pullup_get_frame(%struct.TYPE_30__* %95)
  store %struct.TYPE_29__* %96, %struct.TYPE_29__** %9, align 8
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %98 = icmp ne %struct.TYPE_29__* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  br label %199

100:                                              ; preds = %92
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %103, 2
  br i1 %104, label %105, label %142

105:                                              ; preds = %100
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %107 = call i32 @pullup_release_frame(%struct.TYPE_29__* %106)
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %109 = call %struct.TYPE_29__* @pullup_get_frame(%struct.TYPE_30__* %108)
  store %struct.TYPE_29__* %109, %struct.TYPE_29__** %9, align 8
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %111 = icmp ne %struct.TYPE_29__* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  br label %199

113:                                              ; preds = %105
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %116, 2
  br i1 %117, label %118, label %141

118:                                              ; preds = %113
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %120 = call i32 @pullup_release_frame(%struct.TYPE_29__* %119)
  %121 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %118
  br label %199

126:                                              ; preds = %118
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %128 = call %struct.TYPE_29__* @pullup_get_frame(%struct.TYPE_30__* %127)
  store %struct.TYPE_29__* %128, %struct.TYPE_29__** %9, align 8
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %130 = icmp ne %struct.TYPE_29__* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %126
  br label %199

132:                                              ; preds = %126
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %135, 2
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %139 = call i32 @pullup_release_frame(%struct.TYPE_29__* %138)
  br label %199

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140, %113
  br label %142

142:                                              ; preds = %141, %100
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %144, align 8
  %146 = icmp ne %struct.TYPE_28__* %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %142
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %150 = call i32 @pullup_pack_frame(%struct.TYPE_30__* %148, %struct.TYPE_29__* %149)
  br label %151

151:                                              ; preds = %147, %142
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call %struct.TYPE_32__* @ff_get_video_buffer(%struct.TYPE_33__* %152, i32 %155, i32 %158)
  store %struct.TYPE_32__* %159, %struct.TYPE_32__** %10, align 8
  %160 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %161 = icmp ne %struct.TYPE_32__* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %151
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = call i32 @AVERROR(i32 %163)
  store i32 %164, i32* %12, align 4
  br label %199

165:                                              ; preds = %151
  %166 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %168 = call i32 @av_frame_copy_props(%struct.TYPE_32__* %166, %struct.TYPE_32__* %167)
  %169 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = inttoptr i64 %179 to i32**
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @av_image_copy(i64 %171, i32 %174, i32** %180, i32 %183, i32 %186, i32 %189, i32 %192)
  %194 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %196 = call i32 @ff_filter_frame(%struct.TYPE_33__* %194, %struct.TYPE_32__* %195)
  store i32 %196, i32* %12, align 4
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %198 = call i32 @pullup_release_frame(%struct.TYPE_29__* %197)
  br label %199

199:                                              ; preds = %165, %162, %137, %131, %125, %112, %99, %28
  %200 = call i32 @av_frame_free(%struct.TYPE_32__** %4)
  %201 = load i32, i32* %12, align 4
  ret i32 %201
}

declare dso_local %struct.TYPE_31__* @pullup_get_buffer(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_34__*, i32, i8*) #1

declare dso_local %struct.TYPE_29__* @pullup_get_frame(%struct.TYPE_30__*) #1

declare dso_local i32 @pullup_release_frame(%struct.TYPE_29__*) #1

declare dso_local i32 @av_image_copy(i64, i32, i32**, i32, i32, i32, i32) #1

declare dso_local i32 @pullup_submit_field(%struct.TYPE_30__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @pullup_release_buffer(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @pullup_pack_frame(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_32__* @ff_get_video_buffer(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_32__*, %struct.TYPE_32__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_33__*, %struct.TYPE_32__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_32__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
