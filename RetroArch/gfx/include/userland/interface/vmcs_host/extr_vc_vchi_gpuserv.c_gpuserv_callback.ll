; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_gpuserv.c_gpuserv_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_gpuserv.c_gpuserv_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.gpu_callback_s = type { i32, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_4__*, i32, i8*)* @gpuserv_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpuserv_callback(i32 %0, %struct.TYPE_4__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.gpu_callback_s*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %32 [
    i32 128, label %11
  ]

11:                                               ; preds = %4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.gpu_callback_s*
  store %struct.gpu_callback_s* %15, %struct.gpu_callback_s** %9, align 8
  %16 = load %struct.gpu_callback_s*, %struct.gpu_callback_s** %9, align 8
  %17 = getelementptr inbounds %struct.gpu_callback_s, %struct.gpu_callback_s* %16, i32 0, i32 1
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = icmp ne i32 (i32)* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %11
  %21 = load %struct.gpu_callback_s*, %struct.gpu_callback_s** %9, align 8
  %22 = getelementptr inbounds %struct.gpu_callback_s, %struct.gpu_callback_s* %21, i32 0, i32 1
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = load %struct.gpu_callback_s*, %struct.gpu_callback_s** %9, align 8
  %25 = getelementptr inbounds %struct.gpu_callback_s, %struct.gpu_callback_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %23(i32 %26)
  br label %28

28:                                               ; preds = %20, %11
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = call i32 @vchiq_release_message(i32 %29, %struct.TYPE_4__* %30)
  br label %33

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %32, %28
  ret i32 0
}

declare dso_local i32 @vchiq_release_message(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
