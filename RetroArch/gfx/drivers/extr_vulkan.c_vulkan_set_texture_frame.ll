; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_set_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_set_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { float, i32, i32*, %struct.vk_texture*, %struct.vk_texture* }
%struct.vk_texture = type { i64, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@VK_COMPONENT_SWIZZLE_B = common dso_local global i32 0, align 4
@VK_COMPONENT_SWIZZLE_G = common dso_local global i32 0, align 4
@VK_COMPONENT_SWIZZLE_R = common dso_local global i32 0, align 4
@VK_COMPONENT_SWIZZLE_A = common dso_local global i32 0, align 4
@VK_FORMAT_B8G8R8A8_UNORM = common dso_local global i32 0, align 4
@VK_FORMAT_B4G4R4A4_UNORM_PACK16 = common dso_local global i32 0, align 4
@VULKAN_TEXTURE_STAGING = common dso_local global i64 0, align 8
@VULKAN_TEXTURE_STREAMED = common dso_local global i64 0, align 8
@VULKAN_TEXTURE_DYNAMIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @vulkan_set_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulkan_set_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.vk_texture*, align 8
  %21 = alloca %struct.vk_texture*, align 8
  %22 = alloca %struct.TYPE_11__, align 4
  %23 = alloca %struct.vk_texture, align 8
  %24 = alloca %struct.vk_texture, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %18, align 8
  store i32 0, i32* %19, align 4
  store %struct.vk_texture* null, %struct.vk_texture** %20, align 8
  store %struct.vk_texture* null, %struct.vk_texture** %21, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %28 = load i32, i32* @VK_COMPONENT_SWIZZLE_B, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %30 = load i32, i32* @VK_COMPONENT_SWIZZLE_G, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %32 = load i32, i32* @VK_COMPONENT_SWIZZLE_R, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 3
  %34 = load i32, i32* @VK_COMPONENT_SWIZZLE_A, align 4
  store i32 %34, i32* %33, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %36 = icmp ne %struct.TYPE_10__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %6
  br label %212

38:                                               ; preds = %6
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %19, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  %47 = load %struct.vk_texture*, %struct.vk_texture** %46, align 8
  %48 = load i32, i32* %19, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %47, i64 %49
  store %struct.vk_texture* %50, %struct.vk_texture** %20, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load %struct.vk_texture*, %struct.vk_texture** %53, align 8
  %55 = load i32, i32* %19, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %54, i64 %56
  store %struct.vk_texture* %57, %struct.vk_texture** %21, align 8
  %58 = load %struct.vk_texture*, %struct.vk_texture** %20, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %60 = load %struct.vk_texture*, %struct.vk_texture** %20, align 8
  %61 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %38
  %65 = load %struct.vk_texture*, %struct.vk_texture** %20, align 8
  br label %67

66:                                               ; preds = %38
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi %struct.vk_texture* [ %65, %64 ], [ null, %66 ]
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @VK_FORMAT_B8G8R8A8_UNORM, align 4
  br label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @VK_FORMAT_B4G4R4A4_UNORM_PACK16, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %83

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %81
  %84 = phi %struct.TYPE_11__* [ null, %81 ], [ %22, %82 ]
  %85 = load %struct.vk_texture*, %struct.vk_texture** %21, align 8
  %86 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i64, i64* @VULKAN_TEXTURE_STAGING, align 8
  br label %93

91:                                               ; preds = %83
  %92 = load i64, i64* @VULKAN_TEXTURE_STREAMED, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i64 [ %90, %89 ], [ %92, %91 ]
  call void @vulkan_create_texture(%struct.vk_texture* sret %23, %struct.TYPE_10__* %59, %struct.vk_texture* %68, i32 %69, i32 %70, i32 %78, i32* null, %struct.TYPE_11__* %84, i64 %94)
  %95 = bitcast %struct.vk_texture* %58 to i8*
  %96 = bitcast %struct.vk_texture* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 32, i1 false)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.vk_texture*, %struct.vk_texture** %20, align 8
  %103 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.vk_texture*, %struct.vk_texture** %20, align 8
  %106 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.vk_texture*, %struct.vk_texture** %20, align 8
  %109 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = bitcast i32** %15 to i8**
  %112 = call i32 @vkMapMemory(i32 %101, i64 %104, i32 %107, i32 %110, i32 0, i8** %111)
  %113 = load i32*, i32** %15, align 8
  store i32* %113, i32** %16, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = bitcast i8* %114 to i32*
  store i32* %115, i32** %17, align 8
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i64 4, i64 4
  %120 = load i32, i32* %10, align 4
  %121 = zext i32 %120 to i64
  %122 = mul i64 %119, %121
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %133, %93
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load i32*, i32** %16, align 8
  %130 = load i32*, i32** %17, align 8
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @memcpy(i32* %129, i32* %130, i32 %131)
  br label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %13, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %13, align 4
  %136 = load %struct.vk_texture*, %struct.vk_texture** %20, align 8
  %137 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32*, i32** %16, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %16, align 8
  %142 = load i32, i32* %14, align 4
  %143 = load i32*, i32** %17, align 8
  %144 = zext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %17, align 8
  br label %124

146:                                              ; preds = %124
  %147 = load float, float* %12, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  store float %147, float* %150, align 8
  %151 = load i32, i32* %19, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 4
  %155 = load %struct.vk_texture*, %struct.vk_texture** %20, align 8
  %156 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @VULKAN_TEXTURE_STAGING, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %191

160:                                              ; preds = %146
  %161 = load %struct.vk_texture*, %struct.vk_texture** %21, align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %163 = load %struct.vk_texture*, %struct.vk_texture** %21, align 8
  %164 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = load %struct.vk_texture*, %struct.vk_texture** %21, align 8
  br label %170

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %169, %167
  %171 = phi %struct.vk_texture* [ %168, %167 ], [ null, %169 ]
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = load i32, i32* @VK_FORMAT_B8G8R8A8_UNORM, align 4
  br label %180

178:                                              ; preds = %170
  %179 = load i32, i32* @VK_FORMAT_B4G4R4A4_UNORM_PACK16, align 4
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i32 [ %177, %176 ], [ %179, %178 ]
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  br label %186

185:                                              ; preds = %180
  br label %186

186:                                              ; preds = %185, %184
  %187 = phi %struct.TYPE_11__* [ null, %184 ], [ %22, %185 ]
  %188 = load i64, i64* @VULKAN_TEXTURE_DYNAMIC, align 8
  call void @vulkan_create_texture(%struct.vk_texture* sret %24, %struct.TYPE_10__* %162, %struct.vk_texture* %171, i32 %172, i32 %173, i32 %181, i32* null, %struct.TYPE_11__* %187, i64 %188)
  %189 = bitcast %struct.vk_texture* %161 to i8*
  %190 = bitcast %struct.vk_texture* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %189, i8* align 8 %190, i64 32, i1 false)
  br label %195

191:                                              ; preds = %146
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %193 = load %struct.vk_texture*, %struct.vk_texture** %20, align 8
  %194 = call i32 @vulkan_sync_texture_to_gpu(%struct.TYPE_10__* %192, %struct.vk_texture* %193)
  br label %195

195:                                              ; preds = %191, %186
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.vk_texture*, %struct.vk_texture** %20, align 8
  %202 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @vkUnmapMemory(i32 %200, i64 %203)
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %19, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 1, i32* %211, align 4
  br label %212

212:                                              ; preds = %195, %37
  ret void
}

declare dso_local void @vulkan_create_texture(%struct.vk_texture* sret, %struct.TYPE_10__*, %struct.vk_texture*, i32, i32, i32, i32*, %struct.TYPE_11__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vkMapMemory(i32, i64, i32, i32, i32, i8**) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @vulkan_sync_texture_to_gpu(%struct.TYPE_10__*, %struct.vk_texture*) #1

declare dso_local i32 @vkUnmapMemory(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
