; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_ps2_gfx.c_ps2_gfx_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_ps2_gfx.c_ps2_gfx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_hw_ps2_insets = type { i32 }
%struct.TYPE_14__ = type { i8*, i32, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, i32, i64, i64, i32, %struct.TYPE_16__*, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.retro_hw_ps2_insets }
%struct.font_params = type { i32 }

@GS_BLACK = common dso_local global i32 0, align 4
@empty_ps2_insets = common dso_local global %struct.retro_hw_ps2_insets zeroinitializer, align 4
@RETRO_HW_FRAME_BUFFER_VALID = common dso_local global i8* null, align 8
@GS_PSM_CT32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_14__*)* @ps2_gfx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2_gfx_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_14__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.retro_hw_ps2_insets, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.font_params*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store %struct.TYPE_14__* %7, %struct.TYPE_14__** %17, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %18, align 8
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %8
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %8
  store i32 0, i32* %9, align 4
  br label %227

33:                                               ; preds = %29
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @clearVRAMIfNeeded(%struct.TYPE_15__* %34, i8* %35, i32 %36, i32 %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GS_BLACK, align 4
  %43 = call i32 @gsKit_clear(i32 %41, i32 %42)
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %136

46:                                               ; preds = %33
  store i32 0, i32* %19, align 4
  %47 = bitcast %struct.retro_hw_ps2_insets* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 bitcast (%struct.retro_hw_ps2_insets* @empty_ps2_insets to i8*), i64 4, i1 false)
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** @RETRO_HW_FRAME_BUFFER_VALID, align 8
  %50 = icmp ne i8* %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %46
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @GS_PSM_CT32, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 4, i32 2
  store i32 %58, i32* %21, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %21, align 4
  %61 = udiv i32 %59, %60
  store i32 %61, i32* %22, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 6
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i32, i32* %22, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @transfer_texture(%struct.TYPE_16__* %64, i8* %65, i32 %66, i32 %67, i32 %70, i32 %73, i32 1)
  %75 = load i32, i32* %22, align 4
  %76 = load i32, i32* %12, align 4
  %77 = sub i32 %75, %76
  %78 = getelementptr inbounds %struct.retro_hw_ps2_insets, %struct.retro_hw_ps2_insets* %20, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  br label %102

79:                                               ; preds = %46
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %19, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 7
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = bitcast %struct.retro_hw_ps2_insets* %20 to i8*
  %91 = bitcast %struct.retro_hw_ps2_insets* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 8 %91, i64 4, i1 false)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %79
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 7
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %79
  br label %102

102:                                              ; preds = %101, %51
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 6
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = call i32 @vram_alloc(i32 %110, %struct.TYPE_16__* %113)
  br label %115

115:                                              ; preds = %107, %102
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 6
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = load i32, i32* %19, align 4
  %123 = call i32 @ps2_texture_upload(i32 %118, %struct.TYPE_16__* %121, i32 %122)
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 6
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.retro_hw_ps2_insets, %struct.retro_hw_ps2_insets* %20, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @prim_texture(i32 %126, %struct.TYPE_16__* %129, i32 1, i32 %132, i32 %134)
  br label %136

136:                                              ; preds = %115, %33
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %194

141:                                              ; preds = %136
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %141
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  br label %156

156:                                              ; preds = %148, %141
  %157 = phi i1 [ true, %141 ], [ %155, %148 ]
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %23, align 4
  %159 = load i32, i32* %23, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %193, label %161

161:                                              ; preds = %156
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %161
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = call i32 @vram_alloc(i32 %169, %struct.TYPE_16__* %172)
  br label %174

174:                                              ; preds = %166, %161
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = call i32 @gsKit_texture_upload(i32 %177, %struct.TYPE_16__* %180)
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* getelementptr inbounds (%struct.retro_hw_ps2_insets, %struct.retro_hw_ps2_insets* @empty_ps2_insets, i32 0, i32 0), align 4
  %192 = call i32 @prim_texture(i32 %184, %struct.TYPE_16__* %187, i32 2, i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %174, %156
  br label %216

194:                                              ; preds = %136
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %215

199:                                              ; preds = %194
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = bitcast i32* %201 to %struct.font_params*
  store %struct.font_params* %202, %struct.font_params** %24, align 8
  %203 = load %struct.font_params*, %struct.font_params** %24, align 8
  %204 = icmp ne %struct.font_params* %203, null
  br i1 %204, label %205, label %214

205:                                              ; preds = %199
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  %212 = bitcast i32* %211 to %struct.font_params*
  %213 = call i32 @font_driver_render_msg(%struct.TYPE_14__* %206, i32* null, i8* %209, %struct.font_params* %212)
  br label %214

214:                                              ; preds = %205, %199
  br label %215

215:                                              ; preds = %214, %194
  br label %216

216:                                              ; preds = %215, %193
  %217 = load i8*, i8** %16, align 8
  %218 = call i32 @string_is_empty(i8* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %216
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %222 = load i8*, i8** %16, align 8
  %223 = call i32 @font_driver_render_msg(%struct.TYPE_14__* %221, i32* null, i8* %222, %struct.font_params* null)
  br label %224

224:                                              ; preds = %220, %216
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %226 = call i32 @refreshScreen(%struct.TYPE_15__* %225)
  store i32 1, i32* %9, align 4
  br label %227

227:                                              ; preds = %224, %32
  %228 = load i32, i32* %9, align 4
  ret i32 %228
}

declare dso_local i32 @clearVRAMIfNeeded(%struct.TYPE_15__*, i8*, i32, i32) #1

declare dso_local i32 @gsKit_clear(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @transfer_texture(%struct.TYPE_16__*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vram_alloc(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ps2_texture_upload(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @prim_texture(i32, %struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @gsKit_texture_upload(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @font_driver_render_msg(%struct.TYPE_14__*, i32*, i8*, %struct.font_params*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @refreshScreen(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
