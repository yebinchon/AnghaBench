; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_flush_wayland_fd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_flush_wayland_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_wayland_fd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pollfd, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = bitcast %struct.pollfd* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 16, i1 false)
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %4, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @wl_display_dispatch_pending(i32 %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @wl_display_flush(i32 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @POLLIN, align 4
  %21 = load i32, i32* @POLLOUT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @POLLERR, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @POLLHUP, align 4
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = call i64 @poll(%struct.pollfd* %3, i32 1, i32 0)
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @POLLERR, align 4
  %34 = load i32, i32* @POLLHUP, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @close(i32 %41)
  %43 = call i32 @frontend_driver_set_signal_handler_state(i32 1)
  br label %44

44:                                               ; preds = %38, %30
  %45 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @POLLIN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @wl_display_dispatch(i32 %53)
  br label %55

55:                                               ; preds = %50, %44
  %56 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @POLLOUT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @wl_display_flush(i32 %64)
  br label %66

66:                                               ; preds = %61, %55
  br label %67

67:                                               ; preds = %66, %1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wl_display_dispatch_pending(i32) #2

declare dso_local i32 @wl_display_flush(i32) #2

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @frontend_driver_set_signal_handler_state(i32) #2

declare dso_local i32 @wl_display_dispatch(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
