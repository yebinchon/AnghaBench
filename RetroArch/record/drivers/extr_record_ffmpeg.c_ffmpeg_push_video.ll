; ModuleID = '/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_push_video.c'
source_filename = "/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_push_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record_video_data = type { i32, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.record_video_data*)* @ffmpeg_push_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_push_video(i8* %0, %struct.record_video_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.record_video_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.record_video_data, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.record_video_data* %1, %struct.record_video_data** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.record_video_data*, %struct.record_video_data** %5, align 8
  %18 = icmp ne %struct.record_video_data* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %163

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = srem i32 %24, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = srem i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %163

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %93, %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @slock_lock(i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @fifo_write_avail(i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @slock_unlock(i32 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %163

62:                                               ; preds = %44
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = icmp uge i64 %64, 32
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %98

67:                                               ; preds = %62
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @slock_lock(i32 %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %67
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @scond_wait(i32 %81, i32 %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 4
  br label %93

88:                                               ; preds = %67
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @scond_signal(i32 %91)
  br label %93

93:                                               ; preds = %88, %76
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @slock_unlock(i32 %96)
  br label %44

98:                                               ; preds = %66
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @slock_lock(i32 %101)
  %103 = load %struct.record_video_data*, %struct.record_video_data** %5, align 8
  %104 = bitcast %struct.record_video_data* %8 to i8*
  %105 = bitcast %struct.record_video_data* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 32, i1 false)
  %106 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %8, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %98
  %110 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %8, i32 0, i32 2
  store i32 0, i32* %110, align 8
  %111 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %8, i32 0, i32 1
  store i32 0, i32* %111, align 4
  %112 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %8, i32 0, i32 0
  store i32 0, i32* %112, align 8
  br label %122

113:                                              ; preds = %98
  %114 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %8, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = mul i32 %115, %119
  %121 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %8, i32 0, i32 2
  store i32 %120, i32* %121, align 8
  br label %122

122:                                              ; preds = %113, %109
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @fifo_write(i32 %125, %struct.record_video_data* %8, i32 32)
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %146, %122
  %128 = load i32, i32* %6, align 4
  %129 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %8, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ult i32 %128, %130
  br i1 %131, label %132, label %154

132:                                              ; preds = %127
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.record_video_data*, %struct.record_video_data** %5, align 8
  %137 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to %struct.record_video_data*
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %139, i64 %141
  %143 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %8, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @fifo_write(i32 %135, %struct.record_video_data* %142, i32 %144)
  br label %146

146:                                              ; preds = %132
  %147 = load i32, i32* %6, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %6, align 4
  %149 = load %struct.record_video_data*, %struct.record_video_data** %5, align 8
  %150 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = add i32 %152, %151
  store i32 %153, i32* %10, align 4
  br label %127

154:                                              ; preds = %127
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @slock_unlock(i32 %157)
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @scond_signal(i32 %161)
  store i32 1, i32* %3, align 4
  br label %163

163:                                              ; preds = %154, %61, %42, %19
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @fifo_write_avail(i32) #1

declare dso_local i32 @slock_unlock(i32) #1

declare dso_local i32 @scond_wait(i32, i32) #1

declare dso_local i32 @scond_signal(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fifo_write(i32, %struct.record_video_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
