; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_context.c_egl_context_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_context.c_egl_context_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i8*, i32*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [14 x i8] c"EGL_CONTEXT_T\00", align 1
@EGL_NONE = common dso_local global i32 0, align 4
@eglIntCreateVG_impl = common dso_local global i32 0, align 4
@EGLINTCREATEVG_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"GLXX_CLIENT_STATE_T\00", align 1
@eglIntCreateGLES11_impl = common dso_local global i32 0, align 4
@EGLINTCREATEGLES11_ID = common dso_local global i32 0, align 4
@eglIntCreateGLES20_impl = common dso_local global i32 0, align 4
@EGLINTCREATEGLES20_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @egl_context_create(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = call i64 @khrn_platform_malloc(i32 48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = inttoptr i64 %19 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %12, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %229

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @EGL_NONE, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  store i32 0, i32* %43, align 8
  %44 = load i32, i32* %11, align 4
  switch i32 %44, label %225 [
    i32 128, label %45
    i32 130, label %119
    i32 129, label %172
  ]

45:                                               ; preds = %24
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = bitcast i32* %51 to %struct.TYPE_7__*
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %13, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @vg_client_shared_state_acquire(i32* %55)
  br label %65

57:                                               ; preds = %45
  %58 = call i32* (...) @vg_client_shared_state_alloc()
  store i32* %58, i32** %13, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %63 = call i32 @khrn_platform_free(%struct.TYPE_8__* %62)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %229

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %48
  %66 = load i32*, i32** %13, align 8
  %67 = call i32* @vg_client_state_alloc(i32* %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  store i32* %67, i32** %69, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @vg_client_shared_state_release(i32* %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %65
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %78 = call i32 @khrn_platform_free(%struct.TYPE_8__* %77)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %229

79:                                               ; preds = %65
  %80 = call i32* (...) @CLIENT_GET_THREAD_STATE()
  store i32* %80, i32** %14, align 8
  %81 = load i32, i32* @eglIntCreateVG_impl, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* @EGLINTCREATEVG_ID, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = icmp ne %struct.TYPE_8__* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  br label %91

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %86
  %92 = phi i8* [ %89, %86 ], [ null, %90 ]
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = icmp ne %struct.TYPE_8__* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  br label %100

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %95
  %101 = phi i32 [ %98, %95 ], [ 128, %99 ]
  %102 = call i32 @RPC_CALL2_RES(i32 %81, i32* %82, i32 %83, i8* %92, i32 %101)
  %103 = call i8* @RPC_UINT_RES(i32 %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %118, label %110

110:                                              ; preds = %100
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = bitcast i32* %113 to %struct.TYPE_7__*
  %115 = call i32 @vg_client_state_free(%struct.TYPE_7__* %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %117 = call i32 @khrn_platform_free(%struct.TYPE_8__* %116)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %229

118:                                              ; preds = %100
  br label %227

119:                                              ; preds = %24
  %120 = call i64 @khrn_platform_malloc(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %121 = inttoptr i64 %120 to i32*
  store i32* %121, i32** %15, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %126 = call i32 @khrn_platform_free(%struct.TYPE_8__* %125)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %229

127:                                              ; preds = %119
  %128 = load i32*, i32** %15, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  store i32* %128, i32** %130, align 8
  %131 = load i32*, i32** %15, align 8
  %132 = call i32 @gl11_client_state_init(i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %171

134:                                              ; preds = %127
  %135 = call i32* (...) @CLIENT_GET_THREAD_STATE()
  store i32* %135, i32** %16, align 8
  %136 = load i32, i32* @eglIntCreateGLES11_impl, align 4
  %137 = load i32*, i32** %16, align 8
  %138 = load i32, i32* @EGLINTCREATEGLES11_ID, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %140 = icmp ne %struct.TYPE_8__* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  br label %146

145:                                              ; preds = %134
  br label %146

146:                                              ; preds = %145, %141
  %147 = phi i8* [ %144, %141 ], [ null, %145 ]
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %149 = icmp ne %struct.TYPE_8__* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  br label %155

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %150
  %156 = phi i32 [ %153, %150 ], [ 130, %154 ]
  %157 = call i32 @RPC_CALL2_RES(i32 %136, i32* %137, i32 %138, i8* %147, i32 %156)
  %158 = call i8* @RPC_UINT_RES(i32 %157)
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 3
  store i8* %158, i8** %160, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %170, label %165

165:                                              ; preds = %155
  %166 = load i32*, i32** %15, align 8
  %167 = call i32 @glxx_client_state_free(i32* %166)
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %169 = call i32 @khrn_platform_free(%struct.TYPE_8__* %168)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %229

170:                                              ; preds = %155
  br label %171

171:                                              ; preds = %170, %127
  br label %227

172:                                              ; preds = %24
  %173 = call i64 @khrn_platform_malloc(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %174 = inttoptr i64 %173 to i32*
  store i32* %174, i32** %17, align 8
  %175 = load i32*, i32** %17, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %172
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %179 = call i32 @khrn_platform_free(%struct.TYPE_8__* %178)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %229

180:                                              ; preds = %172
  %181 = load i32*, i32** %17, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 4
  store i32* %181, i32** %183, align 8
  %184 = load i32*, i32** %17, align 8
  %185 = call i32 @gl20_client_state_init(i32* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %224

187:                                              ; preds = %180
  %188 = call i32* (...) @CLIENT_GET_THREAD_STATE()
  store i32* %188, i32** %18, align 8
  %189 = load i32, i32* @eglIntCreateGLES20_impl, align 4
  %190 = load i32*, i32** %18, align 8
  %191 = load i32, i32* @EGLINTCREATEGLES20_ID, align 4
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %193 = icmp ne %struct.TYPE_8__* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 3
  %197 = load i8*, i8** %196, align 8
  br label %199

198:                                              ; preds = %187
  br label %199

199:                                              ; preds = %198, %194
  %200 = phi i8* [ %197, %194 ], [ null, %198 ]
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %202 = icmp ne %struct.TYPE_8__* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  br label %208

207:                                              ; preds = %199
  br label %208

208:                                              ; preds = %207, %203
  %209 = phi i32 [ %206, %203 ], [ 129, %207 ]
  %210 = call i32 @RPC_CALL2_RES(i32 %189, i32* %190, i32 %191, i8* %200, i32 %209)
  %211 = call i8* @RPC_UINT_RES(i32 %210)
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 3
  store i8* %211, i8** %213, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 3
  %216 = load i8*, i8** %215, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %223, label %218

218:                                              ; preds = %208
  %219 = load i32*, i32** %17, align 8
  %220 = call i32 @glxx_client_state_free(i32* %219)
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %222 = call i32 @khrn_platform_free(%struct.TYPE_8__* %221)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %229

223:                                              ; preds = %208
  br label %224

224:                                              ; preds = %223, %180
  br label %227

225:                                              ; preds = %24
  %226 = call i32 (...) @UNREACHABLE()
  br label %227

227:                                              ; preds = %225, %224, %171, %118
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %228, %struct.TYPE_8__** %6, align 8
  br label %229

229:                                              ; preds = %227, %218, %177, %165, %124, %110, %76, %61, %23
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %230
}

declare dso_local i64 @khrn_platform_malloc(i32, i8*) #1

declare dso_local i32 @vg_client_shared_state_acquire(i32*) #1

declare dso_local i32* @vg_client_shared_state_alloc(...) #1

declare dso_local i32 @khrn_platform_free(%struct.TYPE_8__*) #1

declare dso_local i32* @vg_client_state_alloc(i32*) #1

declare dso_local i32 @vg_client_shared_state_release(i32*) #1

declare dso_local i32* @CLIENT_GET_THREAD_STATE(...) #1

declare dso_local i8* @RPC_UINT_RES(i32) #1

declare dso_local i32 @RPC_CALL2_RES(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @vg_client_state_free(%struct.TYPE_7__*) #1

declare dso_local i32 @gl11_client_state_init(i32*) #1

declare dso_local i32 @glxx_client_state_free(i32*) #1

declare dso_local i32 @gl20_client_state_init(i32*) #1

declare dso_local i32 @UNREACHABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
