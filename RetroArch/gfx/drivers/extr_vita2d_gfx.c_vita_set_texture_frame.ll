; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vita2d_gfx.c_vita_set_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vita2d_gfx.c_vita_set_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [44 x i8] c"Creating Frame RGBA8 texture: w: %i  h: %i\0A\00", align 1
@SCE_GXM_TEXTURE_FORMAT_U4U4U4U4_RGBA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Creating Frame R5G6B5 texture: w: %i  h: %i\0A\00", align 1
@SCE_GXM_TEXTURE_FILTER_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @vita_set_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vita_set_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %17, align 8
  %24 = load float, float* %12, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %25, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %6
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %32, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @vita2d_free_texture(i32* %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %44, %38, %31, %6
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %92, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32* @vita2d_create_empty_texture(i32 %63, i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i32* %65, i32** %68, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  br label %83

72:                                               ; preds = %59
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @SCE_GXM_TEXTURE_FORMAT_U4U4U4U4_RGBA, align 4
  %76 = call i32* @vita2d_create_empty_texture_format(i32 %73, i32 %74, i32 %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i32* %76, i32** %79, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %72, %62
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %83, %53
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* @SCE_GXM_TEXTURE_FILTER_LINEAR, align 4
  %98 = load i32, i32* @SCE_GXM_TEXTURE_FILTER_LINEAR, align 4
  %99 = call i32 @vita2d_texture_set_filters(i32* %96, i32 %97, i32 %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i8* @vita2d_texture_get_datap(i32* %103)
  store i8* %104, i8** %15, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @vita2d_texture_get_stride(i32* %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %154

112:                                              ; preds = %92
  %113 = load i8*, i8** %15, align 8
  %114 = bitcast i8* %113 to i32*
  store i32* %114, i32** %18, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = bitcast i8* %115 to i32*
  store i32* %116, i32** %19, align 8
  %117 = load i32, i32* %16, align 4
  %118 = udiv i32 %117, 4
  store i32 %118, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %150, %112
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %153

123:                                              ; preds = %119
  store i32 0, i32* %14, align 4
  br label %124

124:                                              ; preds = %146, %123
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %149

128:                                              ; preds = %124
  %129 = load i32*, i32** %19, align 8
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %10, align 4
  %133 = mul i32 %131, %132
  %134 = add i32 %130, %133
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %129, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %18, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %16, align 4
  %142 = mul i32 %140, %141
  %143 = add i32 %139, %142
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %138, i64 %144
  store i32 %137, i32* %145, align 4
  br label %146

146:                                              ; preds = %128
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %124

149:                                              ; preds = %124
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %119

153:                                              ; preds = %119
  br label %196

154:                                              ; preds = %92
  %155 = load i8*, i8** %15, align 8
  %156 = bitcast i8* %155 to i32*
  store i32* %156, i32** %20, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = bitcast i8* %157 to i32*
  store i32* %158, i32** %21, align 8
  %159 = load i32, i32* %16, align 4
  %160 = udiv i32 %159, 2
  store i32 %160, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %161

161:                                              ; preds = %192, %154
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %165, label %195

165:                                              ; preds = %161
  store i32 0, i32* %14, align 4
  br label %166

166:                                              ; preds = %188, %165
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp ult i32 %167, %168
  br i1 %169, label %170, label %191

170:                                              ; preds = %166
  %171 = load i32*, i32** %21, align 8
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %10, align 4
  %175 = mul i32 %173, %174
  %176 = add i32 %172, %175
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %171, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %20, align 8
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %16, align 4
  %184 = mul i32 %182, %183
  %185 = add i32 %181, %184
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %180, i64 %186
  store i32 %179, i32* %187, align 4
  br label %188

188:                                              ; preds = %170
  %189 = load i32, i32* %14, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %14, align 4
  br label %166

191:                                              ; preds = %166
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %13, align 4
  br label %161

195:                                              ; preds = %161
  br label %196

196:                                              ; preds = %195, %153
  ret void
}

declare dso_local i32 @vita2d_free_texture(i32*) #1

declare dso_local i32* @vita2d_create_empty_texture(i32, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32) #1

declare dso_local i32* @vita2d_create_empty_texture_format(i32, i32, i32) #1

declare dso_local i32 @vita2d_texture_set_filters(i32*, i32, i32) #1

declare dso_local i8* @vita2d_texture_get_datap(i32*) #1

declare dso_local i32 @vita2d_texture_get_stride(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
