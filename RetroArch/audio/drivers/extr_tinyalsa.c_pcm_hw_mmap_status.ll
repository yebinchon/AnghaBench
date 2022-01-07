; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_pcm_hw_mmap_status.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_pcm_hw_mmap_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_mmap_status = type { i32 }
%struct.pcm = type { %struct.snd_pcm_mmap_status*, %struct.snd_pcm_sync_ptr*, %struct.snd_pcm_mmap_status*, i32 }
%struct.snd_pcm_sync_ptr = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.snd_pcm_mmap_status }
%struct.TYPE_3__ = type { %struct.snd_pcm_mmap_status }
%struct.snd_pcm_mmap_control = type { i32 }

@_SC_PAGE_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_FILE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@SNDRV_PCM_MMAP_OFFSET_STATUS = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global %struct.snd_pcm_mmap_status* null, align 8
@PROT_WRITE = common dso_local global i32 0, align 4
@SNDRV_PCM_MMAP_OFFSET_CONTROL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm*)* @pcm_hw_mmap_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_hw_mmap_status(%struct.pcm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcm*, align 8
  %4 = alloca i32, align 4
  store %struct.pcm* %0, %struct.pcm** %3, align 8
  %5 = load %struct.pcm*, %struct.pcm** %3, align 8
  %6 = getelementptr inbounds %struct.pcm, %struct.pcm* %5, i32 0, i32 1
  %7 = load %struct.snd_pcm_sync_ptr*, %struct.snd_pcm_sync_ptr** %6, align 8
  %8 = icmp ne %struct.snd_pcm_sync_ptr* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %118

10:                                               ; preds = %1
  %11 = load i32, i32* @_SC_PAGE_SIZE, align 4
  %12 = call i32 @sysconf(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = load i32, i32* @PROT_READ, align 4
  %16 = load i32, i32* @MAP_FILE, align 4
  %17 = load i32, i32* @MAP_SHARED, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.pcm*, %struct.pcm** %3, align 8
  %20 = getelementptr inbounds %struct.pcm, %struct.pcm* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SNDRV_PCM_MMAP_OFFSET_STATUS, align 4
  %23 = call i64 @mmap(i32* null, i64 %14, i32 %15, i32 %18, i32 %21, i32 %22)
  %24 = inttoptr i64 %23 to %struct.snd_pcm_mmap_status*
  %25 = load %struct.pcm*, %struct.pcm** %3, align 8
  %26 = getelementptr inbounds %struct.pcm, %struct.pcm* %25, i32 0, i32 2
  store %struct.snd_pcm_mmap_status* %24, %struct.snd_pcm_mmap_status** %26, align 8
  %27 = load %struct.pcm*, %struct.pcm** %3, align 8
  %28 = getelementptr inbounds %struct.pcm, %struct.pcm* %27, i32 0, i32 2
  %29 = load %struct.snd_pcm_mmap_status*, %struct.snd_pcm_mmap_status** %28, align 8
  %30 = load %struct.snd_pcm_mmap_status*, %struct.snd_pcm_mmap_status** @MAP_FAILED, align 8
  %31 = icmp eq %struct.snd_pcm_mmap_status* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %10
  %33 = load %struct.pcm*, %struct.pcm** %3, align 8
  %34 = getelementptr inbounds %struct.pcm, %struct.pcm* %33, i32 0, i32 2
  store %struct.snd_pcm_mmap_status* null, %struct.snd_pcm_mmap_status** %34, align 8
  br label %35

35:                                               ; preds = %32, %10
  %36 = load %struct.pcm*, %struct.pcm** %3, align 8
  %37 = getelementptr inbounds %struct.pcm, %struct.pcm* %36, i32 0, i32 2
  %38 = load %struct.snd_pcm_mmap_status*, %struct.snd_pcm_mmap_status** %37, align 8
  %39 = icmp ne %struct.snd_pcm_mmap_status* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %85

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* @PROT_READ, align 4
  %45 = load i32, i32* @PROT_WRITE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MAP_FILE, align 4
  %48 = load i32, i32* @MAP_SHARED, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.pcm*, %struct.pcm** %3, align 8
  %51 = getelementptr inbounds %struct.pcm, %struct.pcm* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SNDRV_PCM_MMAP_OFFSET_CONTROL, align 4
  %54 = call i64 @mmap(i32* null, i64 %43, i32 %46, i32 %49, i32 %52, i32 %53)
  %55 = inttoptr i64 %54 to %struct.snd_pcm_mmap_control*
  %56 = bitcast %struct.snd_pcm_mmap_control* %55 to %struct.snd_pcm_mmap_status*
  %57 = load %struct.pcm*, %struct.pcm** %3, align 8
  %58 = getelementptr inbounds %struct.pcm, %struct.pcm* %57, i32 0, i32 0
  store %struct.snd_pcm_mmap_status* %56, %struct.snd_pcm_mmap_status** %58, align 8
  %59 = load %struct.pcm*, %struct.pcm** %3, align 8
  %60 = getelementptr inbounds %struct.pcm, %struct.pcm* %59, i32 0, i32 0
  %61 = load %struct.snd_pcm_mmap_status*, %struct.snd_pcm_mmap_status** %60, align 8
  %62 = load %struct.snd_pcm_mmap_status*, %struct.snd_pcm_mmap_status** @MAP_FAILED, align 8
  %63 = icmp eq %struct.snd_pcm_mmap_status* %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %41
  %65 = load %struct.pcm*, %struct.pcm** %3, align 8
  %66 = getelementptr inbounds %struct.pcm, %struct.pcm* %65, i32 0, i32 0
  store %struct.snd_pcm_mmap_status* null, %struct.snd_pcm_mmap_status** %66, align 8
  br label %67

67:                                               ; preds = %64, %41
  %68 = load %struct.pcm*, %struct.pcm** %3, align 8
  %69 = getelementptr inbounds %struct.pcm, %struct.pcm* %68, i32 0, i32 0
  %70 = load %struct.snd_pcm_mmap_status*, %struct.snd_pcm_mmap_status** %69, align 8
  %71 = icmp ne %struct.snd_pcm_mmap_status* %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %67
  %73 = load %struct.pcm*, %struct.pcm** %3, align 8
  %74 = getelementptr inbounds %struct.pcm, %struct.pcm* %73, i32 0, i32 2
  %75 = load %struct.snd_pcm_mmap_status*, %struct.snd_pcm_mmap_status** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @munmap(%struct.snd_pcm_mmap_status* %75, i32 %76)
  %78 = load %struct.pcm*, %struct.pcm** %3, align 8
  %79 = getelementptr inbounds %struct.pcm, %struct.pcm* %78, i32 0, i32 2
  store %struct.snd_pcm_mmap_status* null, %struct.snd_pcm_mmap_status** %79, align 8
  br label %85

80:                                               ; preds = %67
  %81 = load %struct.pcm*, %struct.pcm** %3, align 8
  %82 = getelementptr inbounds %struct.pcm, %struct.pcm* %81, i32 0, i32 0
  %83 = load %struct.snd_pcm_mmap_status*, %struct.snd_pcm_mmap_status** %82, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_mmap_status, %struct.snd_pcm_mmap_status* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  store i32 0, i32* %2, align 4
  br label %118

85:                                               ; preds = %72, %40
  %86 = call i64 @calloc(i32 1, i32 8)
  %87 = inttoptr i64 %86 to %struct.snd_pcm_sync_ptr*
  %88 = load %struct.pcm*, %struct.pcm** %3, align 8
  %89 = getelementptr inbounds %struct.pcm, %struct.pcm* %88, i32 0, i32 1
  store %struct.snd_pcm_sync_ptr* %87, %struct.snd_pcm_sync_ptr** %89, align 8
  %90 = load %struct.pcm*, %struct.pcm** %3, align 8
  %91 = getelementptr inbounds %struct.pcm, %struct.pcm* %90, i32 0, i32 1
  %92 = load %struct.snd_pcm_sync_ptr*, %struct.snd_pcm_sync_ptr** %91, align 8
  %93 = icmp ne %struct.snd_pcm_sync_ptr* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %85
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %118

97:                                               ; preds = %85
  %98 = load %struct.pcm*, %struct.pcm** %3, align 8
  %99 = getelementptr inbounds %struct.pcm, %struct.pcm* %98, i32 0, i32 1
  %100 = load %struct.snd_pcm_sync_ptr*, %struct.snd_pcm_sync_ptr** %99, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_sync_ptr, %struct.snd_pcm_sync_ptr* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load %struct.pcm*, %struct.pcm** %3, align 8
  %104 = getelementptr inbounds %struct.pcm, %struct.pcm* %103, i32 0, i32 2
  store %struct.snd_pcm_mmap_status* %102, %struct.snd_pcm_mmap_status** %104, align 8
  %105 = load %struct.pcm*, %struct.pcm** %3, align 8
  %106 = getelementptr inbounds %struct.pcm, %struct.pcm* %105, i32 0, i32 1
  %107 = load %struct.snd_pcm_sync_ptr*, %struct.snd_pcm_sync_ptr** %106, align 8
  %108 = getelementptr inbounds %struct.snd_pcm_sync_ptr, %struct.snd_pcm_sync_ptr* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.pcm*, %struct.pcm** %3, align 8
  %111 = getelementptr inbounds %struct.pcm, %struct.pcm* %110, i32 0, i32 0
  store %struct.snd_pcm_mmap_status* %109, %struct.snd_pcm_mmap_status** %111, align 8
  %112 = load %struct.pcm*, %struct.pcm** %3, align 8
  %113 = getelementptr inbounds %struct.pcm, %struct.pcm* %112, i32 0, i32 0
  %114 = load %struct.snd_pcm_mmap_status*, %struct.snd_pcm_mmap_status** %113, align 8
  %115 = getelementptr inbounds %struct.snd_pcm_mmap_status, %struct.snd_pcm_mmap_status* %114, i32 0, i32 0
  store i32 1, i32* %115, align 4
  %116 = load %struct.pcm*, %struct.pcm** %3, align 8
  %117 = call i32 @pcm_sync_ptr(%struct.pcm* %116, i32 0)
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %97, %94, %80, %9
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i64 @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @munmap(%struct.snd_pcm_mmap_status*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @pcm_sync_ptr(%struct.pcm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
