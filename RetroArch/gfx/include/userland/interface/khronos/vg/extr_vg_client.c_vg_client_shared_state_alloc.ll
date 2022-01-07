; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_client.c_vg_client_shared_state_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_client.c_vg_client_shared_state_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"VG_CLIENT_SHARED_STATE_T\00", align 1
@KHR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @vg_client_shared_state_alloc() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = call i64 @khrn_platform_malloc(i32 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %5 = inttoptr i64 %4 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  br label %36

9:                                                ; preds = %0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = call i64 @platform_mutex_create(i32* %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @KHR_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = call i32 @khrn_platform_free(%struct.TYPE_4__* %17)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  br label %36

19:                                               ; preds = %9
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = call i32 @khrn_pointer_map_init(i32* %21, i32 128)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = call i32 @platform_mutex_destroy(i32* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = call i32 @khrn_platform_free(%struct.TYPE_4__* %28)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  br label %36

30:                                               ; preds = %19
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %1, align 8
  br label %36

36:                                               ; preds = %30, %24, %16, %8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %37
}

declare dso_local i64 @khrn_platform_malloc(i32, i8*) #1

declare dso_local i64 @platform_mutex_create(i32*) #1

declare dso_local i32 @khrn_platform_free(%struct.TYPE_4__*) #1

declare dso_local i32 @khrn_pointer_map_init(i32*, i32) #1

declare dso_local i32 @platform_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
