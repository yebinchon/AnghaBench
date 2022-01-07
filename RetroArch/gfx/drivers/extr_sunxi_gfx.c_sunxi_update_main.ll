; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_update_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_update_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_video = type { i32, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sunxi_video*)* @sunxi_update_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_update_main(i8* %0, %struct.sunxi_video* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sunxi_video*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sunxi_video* %1, %struct.sunxi_video** %4, align 8
  %5 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %6 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @slock_lock(i32 %7)
  %9 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %10 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %15 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %18 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @scond_wait(i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %13, %2
  %22 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %23 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @slock_unlock(i32 %24)
  %26 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %27 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %30 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %33 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %32, i32 0, i32 5
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %38 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %43 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pixman_blit(i32 %28, i32 %31, i32 %36, i32 %39, i32* %41, i32 %44)
  %46 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %47 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %50 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %55 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %54, i32 0, i32 5
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %60 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %63 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %66 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sunxi_layer_set_rgb_input_buffer(%struct.TYPE_4__* %48, i32 %53, i32 %58, i32 %61, i32 %64, i32 %69)
  %71 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %72 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @slock_lock(i32 %73)
  %75 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %76 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.sunxi_video*, %struct.sunxi_video** %4, align 8
  %78 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @slock_unlock(i32 %79)
  ret void
}

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @scond_wait(i32, i32) #1

declare dso_local i32 @slock_unlock(i32) #1

declare dso_local i32 @pixman_blit(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sunxi_layer_set_rgb_input_buffer(%struct.TYPE_4__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
