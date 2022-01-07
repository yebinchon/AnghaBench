; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_switch_joypad.c_switch_joypad_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_switch_joypad.c_switch_joypad_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }

@pad_state = common dso_local global i32* null, align 8
@analog_state = common dso_local global i64*** null, align 8
@RETRO_DEVICE_INDEX_ANALOG_LEFT = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_ANALOG_X = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_ANALOG_Y = common dso_local global i64 0, align 8
@RETRO_DEVICE_INDEX_ANALOG_RIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @switch_joypad_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_joypad_poll() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = call %struct.TYPE_8__* (...) @hid_get_shared_memory()
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 0
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 %21
  %23 = bitcast %struct.TYPE_7__* %7 to i8*
  %24 = bitcast %struct.TYPE_7__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 40, i1 false)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %34
  %36 = bitcast %struct.TYPE_7__* %8 to i8*
  %37 = bitcast %struct.TYPE_7__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 40, i1 false)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %39, %41
  %43 = load i32*, i32** @pad_state, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56, %0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %2, align 8
  br label %65

65:                                               ; preds = %60, %56
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69, %65
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %4, align 8
  br label %78

78:                                               ; preds = %73, %69
  %79 = load i64, i64* %1, align 8
  %80 = load i64***, i64**** @analog_state, align 8
  %81 = getelementptr inbounds i64**, i64*** %80, i64 0
  %82 = load i64**, i64*** %81, align 8
  %83 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_LEFT, align 8
  %84 = getelementptr inbounds i64*, i64** %82, i64 %83
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_X, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 %79, i64* %87, align 8
  %88 = load i64, i64* %2, align 8
  %89 = sub nsw i64 0, %88
  %90 = load i64***, i64**** @analog_state, align 8
  %91 = getelementptr inbounds i64**, i64*** %90, i64 0
  %92 = load i64**, i64*** %91, align 8
  %93 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_LEFT, align 8
  %94 = getelementptr inbounds i64*, i64** %92, i64 %93
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_Y, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  store i64 %89, i64* %97, align 8
  %98 = load i64, i64* %3, align 8
  %99 = load i64***, i64**** @analog_state, align 8
  %100 = getelementptr inbounds i64**, i64*** %99, i64 0
  %101 = load i64**, i64*** %100, align 8
  %102 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_RIGHT, align 8
  %103 = getelementptr inbounds i64*, i64** %101, i64 %102
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_X, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  store i64 %98, i64* %106, align 8
  %107 = load i64, i64* %4, align 8
  %108 = sub nsw i64 0, %107
  %109 = load i64***, i64**** @analog_state, align 8
  %110 = getelementptr inbounds i64**, i64*** %109, i64 0
  %111 = load i64**, i64*** %110, align 8
  %112 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_RIGHT, align 8
  %113 = getelementptr inbounds i64*, i64** %111, i64 %112
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_Y, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  store i64 %108, i64* %116, align 8
  ret void
}

declare dso_local %struct.TYPE_8__* @hid_get_shared_memory(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
