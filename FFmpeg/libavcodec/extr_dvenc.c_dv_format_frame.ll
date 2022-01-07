; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvenc.c_dv_format_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvenc.c_dv_format_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@dv_sect_header = common dso_local global i32 0, align 4
@dv_header625 = common dso_local global i32 0, align 4
@dv_header525 = common dso_local global i32 0, align 4
@dv_sect_subcode = common dso_local global i32 0, align 4
@dv_sect_vaux = common dso_local global i32 0, align 4
@dv_video_source = common dso_local global i32 0, align 4
@dv_video_control = common dso_local global i32 0, align 4
@dv_sect_audio = common dso_local global i32 0, align 4
@dv_sect_video = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*)* @dv_format_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dv_format_frame(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 720
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %16, %2
  %25 = phi i1 [ false, %2 ], [ %23, %16 ]
  %26 = zext i1 %25 to i32
  %27 = mul nsw i32 2, %26
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %219, %24
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %36, label %222

36:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %215, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %218

45:                                               ; preds = %37
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @memset(i32* %46, i32 255, i32 480)
  %48 = load i32, i32* @dv_sect_header, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @dv_write_dif_id(i32 %48, i32 %51, i32 %52, i32 0, i32* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %4, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %45
  %65 = load i32, i32* @dv_header625, align 4
  br label %68

66:                                               ; preds = %45
  %67 = load i32, i32* @dv_header525, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @dv_write_pack(i32 %69, %struct.TYPE_8__* %70, i32* %71)
  %73 = load i32*, i32** %4, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %4, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 72
  store i32* %77, i32** %4, align 8
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %118, %68
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %81, label %121

81:                                               ; preds = %78
  %82 = load i32, i32* @dv_sect_subcode, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @dv_write_dif_id(i32 %82, i32 %85, i32 %86, i32 %87, i32* %88)
  %90 = load i32*, i32** %4, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %4, align 8
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %112, %81
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 6
  br i1 %95, label %96, label %115

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = sdiv i32 %103, 2
  %105 = icmp slt i32 %98, %104
  %106 = zext i1 %105 to i32
  %107 = load i32*, i32** %4, align 8
  %108 = call i64 @dv_write_ssyb_id(i32 %97, i32 %106, i32* %107)
  %109 = add nsw i64 %108, 5
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 %109
  store i32* %111, i32** %4, align 8
  br label %112

112:                                              ; preds = %96
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %93

115:                                              ; preds = %93
  %116 = load i32*, i32** %4, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 29
  store i32* %117, i32** %4, align 8
  br label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %78

121:                                              ; preds = %78
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %169, %121
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 3
  br i1 %124, label %125, label %172

125:                                              ; preds = %122
  %126 = load i32, i32* @dv_sect_vaux, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %127, %128
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @dv_write_dif_id(i32 %126, i32 %129, i32 %130, i32 %131, i32* %132)
  %134 = load i32*, i32** %4, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32* %136, i32** %4, align 8
  %137 = load i32, i32* @dv_video_source, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = load i32*, i32** %4, align 8
  %140 = call i32 @dv_write_pack(i32 %137, %struct.TYPE_8__* %138, i32* %139)
  %141 = load i32*, i32** %4, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %4, align 8
  %144 = load i32, i32* @dv_video_control, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %146 = load i32*, i32** %4, align 8
  %147 = call i32 @dv_write_pack(i32 %144, %struct.TYPE_8__* %145, i32* %146)
  %148 = load i32*, i32** %4, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32* %150, i32** %4, align 8
  %151 = load i32*, i32** %4, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 35
  store i32* %152, i32** %4, align 8
  %153 = load i32, i32* @dv_video_source, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @dv_write_pack(i32 %153, %struct.TYPE_8__* %154, i32* %155)
  %157 = load i32*, i32** %4, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %4, align 8
  %160 = load i32, i32* @dv_video_control, align 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @dv_write_pack(i32 %160, %struct.TYPE_8__* %161, i32* %162)
  %164 = load i32*, i32** %4, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32* %166, i32** %4, align 8
  %167 = load i32*, i32** %4, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 22
  store i32* %168, i32** %4, align 8
  br label %169

169:                                              ; preds = %125
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  br label %122

172:                                              ; preds = %122
  store i32 0, i32* %7, align 4
  br label %173

173:                                              ; preds = %211, %172
  %174 = load i32, i32* %7, align 4
  %175 = icmp slt i32 %174, 135
  br i1 %175, label %176, label %214

176:                                              ; preds = %173
  %177 = load i32, i32* %7, align 4
  %178 = srem i32 %177, 15
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %176
  %181 = load i32*, i32** %4, align 8
  %182 = call i32 @memset(i32* %181, i32 255, i32 80)
  %183 = load i32, i32* @dv_sect_audio, align 4
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %7, align 4
  %189 = sdiv i32 %188, 15
  %190 = load i32*, i32** %4, align 8
  %191 = call i32 @dv_write_dif_id(i32 %183, i32 %186, i32 %187, i32 %189, i32* %190)
  %192 = load i32*, i32** %4, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32* %194, i32** %4, align 8
  %195 = load i32*, i32** %4, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 77
  store i32* %196, i32** %4, align 8
  br label %197

197:                                              ; preds = %180, %176
  %198 = load i32, i32* @dv_sect_video, align 4
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %199, %200
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load i32*, i32** %4, align 8
  %205 = call i32 @dv_write_dif_id(i32 %198, i32 %201, i32 %202, i32 %203, i32* %204)
  %206 = load i32*, i32** %4, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32* %208, i32** %4, align 8
  %209 = load i32*, i32** %4, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 77
  store i32* %210, i32** %4, align 8
  br label %211

211:                                              ; preds = %197
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %173

214:                                              ; preds = %173
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %6, align 4
  br label %37

218:                                              ; preds = %37
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %5, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %5, align 4
  br label %28

222:                                              ; preds = %28
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dv_write_dif_id(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dv_write_pack(i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i64 @dv_write_ssyb_id(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
