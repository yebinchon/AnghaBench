; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_pcm_hw_munmap_status.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_pcm_hw_munmap_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm = type { i32*, i32*, i32* }

@_SC_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcm*)* @pcm_hw_munmap_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcm_hw_munmap_status(%struct.pcm* %0) #0 {
  %2 = alloca %struct.pcm*, align 8
  %3 = alloca i32, align 4
  store %struct.pcm* %0, %struct.pcm** %2, align 8
  %4 = load %struct.pcm*, %struct.pcm** %2, align 8
  %5 = getelementptr inbounds %struct.pcm, %struct.pcm* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.pcm*, %struct.pcm** %2, align 8
  %10 = getelementptr inbounds %struct.pcm, %struct.pcm* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @free(i32* %11)
  %13 = load %struct.pcm*, %struct.pcm** %2, align 8
  %14 = getelementptr inbounds %struct.pcm, %struct.pcm* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  br label %40

15:                                               ; preds = %1
  %16 = load i32, i32* @_SC_PAGE_SIZE, align 4
  %17 = call i32 @sysconf(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.pcm*, %struct.pcm** %2, align 8
  %19 = getelementptr inbounds %struct.pcm, %struct.pcm* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.pcm*, %struct.pcm** %2, align 8
  %24 = getelementptr inbounds %struct.pcm, %struct.pcm* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @munmap(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %15
  %29 = load %struct.pcm*, %struct.pcm** %2, align 8
  %30 = getelementptr inbounds %struct.pcm, %struct.pcm* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.pcm*, %struct.pcm** %2, align 8
  %35 = getelementptr inbounds %struct.pcm, %struct.pcm* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @munmap(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  br label %40

40:                                               ; preds = %39, %8
  %41 = load %struct.pcm*, %struct.pcm** %2, align 8
  %42 = getelementptr inbounds %struct.pcm, %struct.pcm* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.pcm*, %struct.pcm** %2, align 8
  %44 = getelementptr inbounds %struct.pcm, %struct.pcm* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @munmap(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
