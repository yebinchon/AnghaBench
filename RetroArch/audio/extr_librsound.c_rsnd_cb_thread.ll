; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/extr_librsound.c_rsnd_cb_thread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/extr_librsound.c_rsnd_cb_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64 (i32*, i64, i32)*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, i32, i32, i32 (i32)*, %struct.TYPE_13__, %struct.TYPE_12__, i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"[RSound] Callback thread: Requested %d bytes, got %d.\0A\00", align 1
@RSD_CONN_PROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rsnd_cb_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_cb_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %3, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 9
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %28, %22, %1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 9
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %5, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %6, align 8
  br label %39

39:                                               ; preds = %228, %32
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 15
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %229

44:                                               ; preds = %39
  store i64 0, i64* %7, align 8
  br label %45

45:                                               ; preds = %139, %44
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %46, %50
  br i1 %51, label %52, label %140

52:                                               ; preds = %45
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 9
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub i64 %57, %58
  %60 = icmp ult i64 %53, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i64, i64* %4, align 8
  br label %70

63:                                               ; preds = %52
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 9
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = sub i64 %67, %68
  br label %70

70:                                               ; preds = %63, %61
  %71 = phi i64 [ %62, %61 ], [ %69, %63 ]
  store i64 %71, i64* %8, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %73 = call i32 @rsd_callback_lock(%struct.TYPE_15__* %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i64 (i32*, i64, i32)*, i64 (i32*, i64, i32)** %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i32, i32* %38, i64 %77
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 11
  %82 = load i32, i32* %81, align 4
  %83 = call i64 %76(i32* %78, i64 %79, i32 %82)
  store i64 %83, i64* %9, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %85 = call i32 @rsd_callback_unlock(%struct.TYPE_15__* %84)
  %86 = load i64, i64* %9, align 8
  %87 = icmp ult i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %70
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = call i32 @rsnd_reset(%struct.TYPE_15__* %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 13
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @sthread_detach(i32 %94)
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 12
  %98 = load i32 (i32)*, i32 (i32)** %97, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 11
  %101 = load i32, i32* %100, align 4
  %102 = call i32 %98(i32 %101)
  store i32 1, i32* %10, align 4
  br label %230

103:                                              ; preds = %70
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %7, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %8, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %139

110:                                              ; preds = %103
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = call i64 @rsd_delay_ms(%struct.TYPE_15__* %111)
  %113 = trunc i64 %112 to i32
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sdiv i32 %116, 2
  %118 = icmp slt i32 %113, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %110
  %120 = load i64, i64* %8, align 8
  %121 = trunc i64 %120 to i32
  %122 = load i64, i64* %9, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @RSD_DEBUG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %123)
  %125 = load i64, i64* %7, align 8
  %126 = getelementptr inbounds i32, i32* %38, i64 %125
  %127 = load i64, i64* %8, align 8
  %128 = load i64, i64* %9, align 8
  %129 = sub i64 %127, %128
  %130 = call i32 @memset(i32* %126, i32 0, i64 %129)
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* %9, align 8
  %133 = sub i64 %131, %132
  %134 = load i64, i64* %7, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %7, align 8
  br label %138

136:                                              ; preds = %110
  %137 = call i32 @retro_sleep(i32 1)
  br label %138

138:                                              ; preds = %136, %119
  br label %139

139:                                              ; preds = %138, %103
  br label %45

140:                                              ; preds = %45
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 14
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 9
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i64 @rsnd_send_chunk(i32 %144, i32* %38, i64 %148, i32 1)
  store i64 %149, i64* %11, align 8
  %150 = load i64, i64* %11, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 9
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %150, %154
  br i1 %155, label %156, label %171

156:                                              ; preds = %140
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %158 = call i32 @rsnd_reset(%struct.TYPE_15__* %157)
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 13
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @sthread_detach(i32 %162)
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 12
  %166 = load i32 (i32)*, i32 (i32)** %165, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 11
  %169 = load i32, i32* %168, align 4
  %170 = call i32 %166(i32 %169)
  store i32 1, i32* %10, align 4
  br label %230

171:                                              ; preds = %140
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %171
  %177 = call i32 (...) @rsnd_get_time_usec()
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 10
  store i32 %177, i32* %179, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 3
  store i32 1, i32* %181, align 4
  br label %182

182:                                              ; preds = %176, %171
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 9
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = add i64 %190, %186
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %188, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @RSD_CONN_PROTO, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %220

199:                                              ; preds = %182
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 %205, %208
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 8
  %212 = load i32, i32* %211, align 8
  %213 = mul nsw i32 %209, %212
  %214 = icmp sgt i32 %202, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %199
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %217 = call i32 @rsnd_send_info_query(%struct.TYPE_15__* %216)
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %219 = call i32 @rsnd_update_server_info(%struct.TYPE_15__* %218)
  br label %220

220:                                              ; preds = %215, %199, %182
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %227 = call i32 @rsd_delay_wait(%struct.TYPE_15__* %226)
  br label %228

228:                                              ; preds = %225, %220
  br label %39

229:                                              ; preds = %39
  store i32 0, i32* %10, align 4
  br label %230

230:                                              ; preds = %229, %156, %88
  %231 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %231)
  %232 = load i32, i32* %10, align 4
  switch i32 %232, label %234 [
    i32 0, label %233
    i32 1, label %233
  ]

233:                                              ; preds = %230, %230
  ret void

234:                                              ; preds = %230
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rsd_callback_lock(%struct.TYPE_15__*) #2

declare dso_local i32 @rsd_callback_unlock(%struct.TYPE_15__*) #2

declare dso_local i32 @rsnd_reset(%struct.TYPE_15__*) #2

declare dso_local i32 @sthread_detach(i32) #2

declare dso_local i64 @rsd_delay_ms(%struct.TYPE_15__*) #2

declare dso_local i32 @RSD_DEBUG(i8*, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i64) #2

declare dso_local i32 @retro_sleep(i32) #2

declare dso_local i64 @rsnd_send_chunk(i32, i32*, i64, i32) #2

declare dso_local i32 @rsnd_get_time_usec(...) #2

declare dso_local i32 @rsnd_send_info_query(%struct.TYPE_15__*) #2

declare dso_local i32 @rsnd_update_server_info(%struct.TYPE_15__*) #2

declare dso_local i32 @rsd_delay_wait(%struct.TYPE_15__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
