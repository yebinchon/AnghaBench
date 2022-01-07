; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_shm.c_mmal_vc_payload_list_find_mem.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_shm.c_mmal_vc_payload_list_find_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }

@mmal_vc_payload_list = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MMAL_VC_PAYLOAD_ELEM_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*)* @mmal_vc_payload_list_find_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @mmal_vc_payload_list_find_mem(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  %5 = call i32 @vcos_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mmal_vc_payload_list, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MMAL_VC_PAYLOAD_ELEM_MAX, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mmal_vc_payload_list, i32 0, i32 1), align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  br label %34

19:                                               ; preds = %10
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mmal_vc_payload_list, i32 0, i32 1), align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = icmp ne i32* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %34

29:                                               ; preds = %19
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mmal_vc_payload_list, i32 0, i32 1), align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %3, align 8
  br label %37

34:                                               ; preds = %28, %18
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %6

37:                                               ; preds = %29, %6
  %38 = call i32 @vcos_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mmal_vc_payload_list, i32 0, i32 0))
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %39
}

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
