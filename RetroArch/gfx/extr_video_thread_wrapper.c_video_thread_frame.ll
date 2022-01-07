; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_thread_wrapper.c_video_thread_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_thread_wrapper.c_video_thread_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32, %struct.TYPE_11__, i32, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i8*, i32, i32*, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 (i32, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_14__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_14__*)* @video_thread_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_thread_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_14__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store %struct.TYPE_14__* %7, %struct.TYPE_14__** %17, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %21, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %36 = call i32 @thread_update_driver_state(%struct.TYPE_15__* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 11
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = icmp ne %struct.TYPE_10__* %39, null
  br i1 %40, label %41, label %65

41:                                               ; preds = %34
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 11
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32 (i32, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_14__*)*, i32 (i32, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_14__*)** %45, align 8
  %47 = icmp ne i32 (i32, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_14__*)* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %41
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 11
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32 (i32, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_14__*)*, i32 (i32, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_14__*)** %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i8*, i8** %16, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %64 = call i32 %53(i32 %56, i8* %57, i32 %58, i32 %59, i32 %60, i32 %61, i8* %62, %struct.TYPE_14__* %63)
  store i32 %64, i32* %9, align 4
  br label %218

65:                                               ; preds = %41, %34
  store i32 0, i32* %9, align 4
  br label %218

66:                                               ; preds = %8
  %67 = load i32, i32* %12, align 4
  %68 = zext i32 %67 to i64
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 9
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i64 4, i64 4
  %76 = mul i64 %68, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %18, align 4
  %78 = load i8*, i8** %11, align 8
  %79 = bitcast i8* %78 to i32*
  store i32* %79, i32** %19, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %20, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @slock_lock(i32 %86)
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %131, label %92

92:                                               ; preds = %66
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sdiv i32 1000000, %95
  %97 = call i32 @roundf(i32 %96)
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %22, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %22, align 8
  %103 = add nsw i64 %101, %102
  store i64 %103, i64* %23, align 8
  br label %104

104:                                              ; preds = %129, %92
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %104
  %111 = call i64 (...) @cpu_features_get_time_usec()
  store i64 %111, i64* %24, align 8
  %112 = load i64, i64* %23, align 8
  %113 = load i64, i64* %24, align 8
  %114 = sub nsw i64 %112, %113
  store i64 %114, i64* %25, align 8
  %115 = load i64, i64* %25, align 8
  %116 = icmp sle i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %130

118:                                              ; preds = %110
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i64, i64* %25, align 8
  %126 = call i32 @scond_wait_timeout(i32 %121, i32 %124, i64 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %118
  br label %130

129:                                              ; preds = %118
  br label %104

130:                                              ; preds = %128, %117, %104
  br label %131

131:                                              ; preds = %130, %66
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %205, label %137

137:                                              ; preds = %131
  %138 = load i32*, i32** %19, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %162

140:                                              ; preds = %137
  store i32 0, i32* %26, align 4
  br label %141

141:                                              ; preds = %150, %140
  %142 = load i32, i32* %26, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %141
  %146 = load i32*, i32** %20, align 8
  %147 = load i32*, i32** %19, align 8
  %148 = load i32, i32* %18, align 4
  %149 = call i32 @memcpy(i32* %146, i32* %147, i32 %148)
  br label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %26, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %26, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load i32*, i32** %19, align 8
  %155 = zext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32* %156, i32** %19, align 8
  %157 = load i32, i32* %18, align 4
  %158 = load i32*, i32** %20, align 8
  %159 = zext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32* %160, i32** %20, align 8
  br label %141

161:                                              ; preds = %141
  br label %162

162:                                              ; preds = %161, %137
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  store i32 1, i32* %165, align 8
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 4
  %170 = load i32, i32* %13, align 4
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 2
  store i32 %170, i32* %173, align 8
  %174 = load i32, i32* %14, align 4
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 5
  store i32 %174, i32* %177, align 8
  %178 = load i32, i32* %18, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 3
  store i32 %178, i32* %181, align 4
  %182 = load i8*, i8** %16, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %162
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 4
  %188 = load i8*, i8** %187, align 8
  %189 = load i8*, i8** %16, align 8
  %190 = call i32 @strlcpy(i8* %188, i8* %189, i32 8)
  br label %196

191:                                              ; preds = %162
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 4
  %195 = load i8*, i8** %194, align 8
  store i8 0, i8* %195, align 1
  br label %196

196:                                              ; preds = %191, %184
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @scond_signal(i32 %199)
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 8
  br label %210

205:                                              ; preds = %131
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %205, %196
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @slock_unlock(i32 %213)
  %215 = call i64 (...) @cpu_features_get_time_usec()
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  store i64 %215, i64* %217, align 8
  store i32 1, i32* %9, align 4
  br label %218

218:                                              ; preds = %210, %65, %48
  %219 = load i32, i32* %9, align 4
  ret i32 %219
}

declare dso_local i32 @thread_update_driver_state(%struct.TYPE_15__*) #1

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @roundf(i32) #1

declare dso_local i64 @cpu_features_get_time_usec(...) #1

declare dso_local i32 @scond_wait_timeout(i32, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @scond_signal(i32) #1

declare dso_local i32 @slock_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
