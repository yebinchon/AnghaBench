; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_mp3.c_mp3_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_mp3.c_mp3_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp3_handle = common dso_local global i64 0, align 8
@mp3_src_pos = common dso_local global i64 0, align 8
@mp3_src_size = common dso_local global i64 0, align 8
@PsndRate = common dso_local global i32 0, align 4
@mp3_job_started = common dso_local global i32 0, align 4
@mp3_samples_ready = common dso_local global i32 0, align 4
@thread_busy_sem = common dso_local global i32 0, align 4
@mp3_buffer_offs = common dso_local global i32 0, align 4
@mp3_mix_buffer = common dso_local global i16** null, align 8
@mp3_play_bufsel = common dso_local global i64 0, align 8
@working_buf = common dso_local global i32 0, align 4
@thread_job_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp3_update(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca void (i32*, i16*, i32)*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @mp3_handle, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* @mp3_src_pos, align 8
  %15 = load i64, i64* @mp3_src_size, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %3
  br label %150

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @PsndRate, align 4
  %21 = icmp eq i32 %20, 22050
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %32

25:                                               ; preds = %18
  %26 = load i32, i32* @PsndRate, align 4
  %27 = icmp eq i32 %26, 11025
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 2
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %22
  %33 = load i32, i32* @mp3_job_started, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32, i32* @mp3_samples_ready, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* @thread_busy_sem, align 4
  %41 = call i32 @psp_sem_lock(i32 %40)
  %42 = load i32, i32* @thread_busy_sem, align 4
  %43 = call i32 @psp_sem_unlock(i32 %42)
  store i32 0, i32* @mp3_job_started, align 4
  %44 = load i32, i32* @mp3_samples_ready, align 4
  %45 = add nsw i32 %44, 1152
  store i32 %45, i32* @mp3_samples_ready, align 4
  br label %46

46:                                               ; preds = %39, %35, %32
  %47 = load i32, i32* @mp3_samples_ready, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %137

50:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  store void (i32*, i16*, i32)* @mix_16h_to_32, void (i32*, i16*, i32)** %9, align 8
  %51 = load i32, i32* @PsndRate, align 4
  %52 = icmp eq i32 %51, 22050
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store void (i32*, i16*, i32)* @mix_16h_to_32_s1, void (i32*, i16*, i32)** %9, align 8
  store i32 1, i32* %8, align 4
  br label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @PsndRate, align 4
  %56 = icmp eq i32 %55, 11025
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store void (i32*, i16*, i32)* @mix_16h_to_32_s2, void (i32*, i16*, i32)** %9, align 8
  store i32 2, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %54
  br label %59

59:                                               ; preds = %58, %53
  %60 = load i32, i32* @mp3_buffer_offs, align 4
  %61 = sub nsw i32 1152, %60
  %62 = load i32, i32* %7, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = load void (i32*, i16*, i32)*, void (i32*, i16*, i32)** %9, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = load i16**, i16*** @mp3_mix_buffer, align 8
  %68 = load i64, i64* @mp3_play_bufsel, align 8
  %69 = getelementptr inbounds i16*, i16** %67, i64 %68
  %70 = load i16*, i16** %69, align 8
  %71 = load i32, i32* @mp3_buffer_offs, align 4
  %72 = mul nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i16, i16* %70, i64 %73
  %75 = load i32, i32* %5, align 4
  %76 = shl i32 %75, 1
  call void %65(i32* %66, i16* %74, i32 %76)
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @mp3_buffer_offs, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* @mp3_buffer_offs, align 4
  br label %133

80:                                               ; preds = %59
  %81 = load i32, i32* @mp3_buffer_offs, align 4
  %82 = sub nsw i32 1152, %81
  store i32 %82, i32* %10, align 4
  %83 = load i64, i64* @mp3_play_bufsel, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load void (i32*, i16*, i32)*, void (i32*, i16*, i32)** %9, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = load i16**, i16*** @mp3_mix_buffer, align 8
  %89 = getelementptr inbounds i16*, i16** %88, i64 0
  %90 = load i16*, i16** %89, align 8
  %91 = load i32, i32* @mp3_buffer_offs, align 4
  %92 = mul nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i16, i16* %90, i64 %93
  %95 = load i32, i32* %5, align 4
  %96 = shl i32 %95, 1
  call void %86(i32* %87, i16* %94, i32 %96)
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* @mp3_buffer_offs, align 4
  store i64 1, i64* @mp3_play_bufsel, align 8
  br label %132

100:                                              ; preds = %80
  %101 = load void (i32*, i16*, i32)*, void (i32*, i16*, i32)** %9, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = load i16**, i16*** @mp3_mix_buffer, align 8
  %104 = getelementptr inbounds i16*, i16** %103, i64 1
  %105 = load i16*, i16** %104, align 8
  %106 = load i32, i32* @mp3_buffer_offs, align 4
  %107 = mul nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i16, i16* %105, i64 %108
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %8, align 4
  %112 = ashr i32 %110, %111
  %113 = shl i32 %112, 1
  call void %101(i32* %102, i16* %109, i32 %113)
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* @mp3_buffer_offs, align 4
  %117 = load void (i32*, i16*, i32)*, void (i32*, i16*, i32)** %9, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %8, align 4
  %121 = ashr i32 %119, %120
  %122 = shl i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %118, i64 %123
  %125 = load i16**, i16*** @mp3_mix_buffer, align 8
  %126 = getelementptr inbounds i16*, i16** %125, i64 0
  %127 = load i16*, i16** %126, align 8
  %128 = load i32, i32* @mp3_buffer_offs, align 4
  %129 = load i32, i32* %8, align 4
  %130 = ashr i32 %128, %129
  %131 = shl i32 %130, 1
  call void %117(i32* %124, i16* %127, i32 %131)
  store i64 0, i64* @mp3_play_bufsel, align 8
  br label %132

132:                                              ; preds = %100, %85
  br label %133

133:                                              ; preds = %132, %64
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @mp3_samples_ready, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* @mp3_samples_ready, align 4
  br label %137

137:                                              ; preds = %133, %46
  %138 = load i32, i32* @mp3_job_started, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %137
  store i32 1, i32* @mp3_job_started, align 4
  %141 = load i32, i32* @working_buf, align 4
  %142 = xor i32 %141, 1
  store i32 %142, i32* @working_buf, align 4
  %143 = load i32, i32* @thread_busy_sem, align 4
  %144 = call i32 @psp_sem_lock(i32 %143)
  %145 = load i32, i32* @thread_busy_sem, align 4
  %146 = call i32 @psp_sem_unlock(i32 %145)
  %147 = load i32, i32* @thread_job_sem, align 4
  %148 = call i32 @psp_sem_unlock(i32 %147)
  %149 = call i32 @sceKernelDelayThread(i32 1)
  br label %150

150:                                              ; preds = %17, %140, %137
  ret void
}

declare dso_local i32 @psp_sem_lock(i32) #1

declare dso_local i32 @psp_sem_unlock(i32) #1

declare dso_local void @mix_16h_to_32(i32*, i16*, i32) #1

declare dso_local void @mix_16h_to_32_s1(i32*, i16*, i32) #1

declare dso_local void @mix_16h_to_32_s2(i32*, i16*, i32) #1

declare dso_local i32 @sceKernelDelayThread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
