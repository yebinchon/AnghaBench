; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_playback.c_mmalplay_play.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_playback.c_mmalplay_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i64, i32, i64, i64, %struct.TYPE_13__, i32, %struct.TYPE_15__**, i64, i32, i64, i64, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64, i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64 }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%p, %s\00", align 1
@MMAL_PARAMETER_CLOCK_ACTIVE = common dso_local global i32 0, align 4
@MMAL_TRUE = common dso_local global i32 0, align 4
@MMAL_CONNECTION_FLAG_TUNNELLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"mmal_port_send_buffer failed (%i)\00", align 1
@MMALPLAY_STILL_IMAGE_PAUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmalplay_play(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %7 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 12
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %8, i32 %11)
  %13 = call i8* (...) @vcos_getmicrosecs()
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 11
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 11
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @MMAL_PARAMETER_CLOCK_ACTIVE, align 4
  %25 = load i32, i32* @MMAL_TRUE, align 4
  %26 = call i32 @mmal_port_parameter_set_boolean(i64 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 10
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 10
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @MMAL_PARAMETER_CLOCK_ACTIVE, align 4
  %37 = load i32, i32* @MMAL_TRUE, align 4
  %38 = call i32 @mmal_port_parameter_set_boolean(i64 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %27
  br label %40

40:                                               ; preds = %39, %206
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 9
  %43 = call i32 @vcos_semaphore_wait(i32* %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %40
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MMAL_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48, %40
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %3, align 8
  br label %207

58:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %203, %58
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %206

65:                                               ; preds = %59
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 7
  %68 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %68, i64 %70
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %6, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MMAL_CONNECTION_FLAG_TUNNELLING, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %203

80:                                               ; preds = %65
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call %struct.TYPE_16__* @mmal_queue_get(i32 %83)
  store %struct.TYPE_16__* %84, %struct.TYPE_16__** %5, align 8
  br label %85

85:                                               ; preds = %153, %104, %80
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = icmp ne %struct.TYPE_16__* %86, null
  br i1 %87, label %88, label %158

88:                                               ; preds = %85
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %88
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = call i64 @mmalplay_event_handle(%struct.TYPE_15__* %94, i64 %97, %struct.TYPE_16__* %98)
  store i64 %99, i64* %3, align 8
  %100 = load i64, i64* %3, align 8
  %101 = load i64, i64* @MMAL_SUCCESS, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %208

104:                                              ; preds = %93
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call %struct.TYPE_16__* @mmal_queue_get(i32 %107)
  store %struct.TYPE_16__* %108, %struct.TYPE_16__** %5, align 8
  br label %85

109:                                              ; preds = %88
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %112, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %109
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %122, %117
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = call i32 (...) @getchar()
  br label %135

135:                                              ; preds = %133, %127
  br label %136

136:                                              ; preds = %135, %109
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %141 = call i64 @mmal_port_send_buffer(i64 %139, %struct.TYPE_16__* %140)
  store i64 %141, i64* %3, align 8
  %142 = load i64, i64* %3, align 8
  %143 = load i64, i64* @MMAL_SUCCESS, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %136
  %146 = load i64, i64* %3, align 8
  %147 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %146)
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %152 = call i32 @mmal_queue_put_back(i32 %150, %struct.TYPE_16__* %151)
  br label %208

153:                                              ; preds = %136
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call %struct.TYPE_16__* @mmal_queue_get(i32 %156)
  store %struct.TYPE_16__* %157, %struct.TYPE_16__** %5, align 8
  br label %85

158:                                              ; preds = %85
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = icmp ne %struct.TYPE_14__* %161, null
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call %struct.TYPE_16__* @mmal_queue_get(i32 %168)
  br label %171

170:                                              ; preds = %158
  br label %171

171:                                              ; preds = %170, %163
  %172 = phi %struct.TYPE_16__* [ %169, %163 ], [ null, %170 ]
  store %struct.TYPE_16__* %172, %struct.TYPE_16__** %5, align 8
  br label %173

173:                                              ; preds = %195, %171
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %175 = icmp ne %struct.TYPE_16__* %174, null
  br i1 %175, label %176, label %202

176:                                              ; preds = %173
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %181 = call i64 @mmal_port_send_buffer(i64 %179, %struct.TYPE_16__* %180)
  store i64 %181, i64* %3, align 8
  %182 = load i64, i64* %3, align 8
  %183 = load i64, i64* @MMAL_SUCCESS, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %176
  %186 = load i64, i64* %3, align 8
  %187 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %186)
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %194 = call i32 @mmal_queue_put_back(i32 %192, %struct.TYPE_16__* %193)
  br label %208

195:                                              ; preds = %176
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call %struct.TYPE_16__* @mmal_queue_get(i32 %200)
  store %struct.TYPE_16__* %201, %struct.TYPE_16__** %5, align 8
  br label %173

202:                                              ; preds = %173
  br label %203

203:                                              ; preds = %202, %79
  %204 = load i32, i32* %4, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* %4, align 4
  br label %59

206:                                              ; preds = %59
  br label %40

207:                                              ; preds = %54
  br label %208

208:                                              ; preds = %207, %185, %145, %103
  %209 = call i8* (...) @vcos_getmicrosecs()
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = ptrtoint i8* %209 to i64
  %214 = ptrtoint i8* %212 to i64
  %215 = sub i64 %213, %214
  %216 = inttoptr i64 %215 to i8*
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  store i8* %216, i8** %218, align 8
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %208
  %224 = load i64, i64* %3, align 8
  %225 = load i64, i64* @MMAL_SUCCESS, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = load i32, i32* @MMALPLAY_STILL_IMAGE_PAUSE, align 4
  %229 = call i32 @vcos_sleep(i32 %228)
  br label %230

230:                                              ; preds = %227, %223, %208
  %231 = load i64, i64* %3, align 8
  ret i64 %231
}

declare dso_local i32 @LOG_TRACE(i8*, %struct.TYPE_17__*, i32) #1

declare dso_local i8* @vcos_getmicrosecs(...) #1

declare dso_local i32 @mmal_port_parameter_set_boolean(i64, i32, i32) #1

declare dso_local i32 @vcos_semaphore_wait(i32*) #1

declare dso_local %struct.TYPE_16__* @mmal_queue_get(i32) #1

declare dso_local i64 @mmalplay_event_handle(%struct.TYPE_15__*, i64, %struct.TYPE_16__*) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i64 @mmal_port_send_buffer(i64, %struct.TYPE_16__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i64) #1

declare dso_local i32 @mmal_queue_put_back(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @vcos_sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
