; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_info_update_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_info_update_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._throttle_io_info_t = type { i32, i32*, i32*, i32*, i32*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.bufattr = type { i32 }
%struct.TYPE_8__ = type { i32 }

@lowpri_throttle_enabled = common dso_local global i64 0, align 8
@THROTTLE_LEVEL_NONE = common dso_local global i32 0, align 4
@BA_IO_TIER_UPGRADE = common dso_local global i32 0, align 4
@B_PASSIVE = common dso_local global i32 0, align 4
@BA_STRATEGY_TRACKED_IO = common dso_local global i32 0, align 4
@DBG_THROTTLE = common dso_local global i32 0, align 4
@OPEN_THROTTLE_WINDOW = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_THROTTLED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._throttle_io_info_t*, %struct.TYPE_7__*, i32, i64, i64, %struct.bufattr*)* @throttle_info_update_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throttle_info_update_internal(%struct._throttle_io_info_t* %0, %struct.TYPE_7__* %1, i32 %2, i64 %3, i64 %4, %struct.bufattr* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct._throttle_io_info_t*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.bufattr*, align 8
  %14 = alloca i32, align 4
  store %struct._throttle_io_info_t* %0, %struct._throttle_io_info_t** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.bufattr* %5, %struct.bufattr** %13, align 8
  %15 = load i64, i64* @lowpri_throttle_enabled, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %6
  %18 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %8, align 8
  %19 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %6
  %23 = load i32, i32* @THROTTLE_LEVEL_NONE, align 4
  store i32 %23, i32* %7, align 4
  br label %140

24:                                               ; preds = %17
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = icmp eq %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = call i32 (...) @current_thread()
  %29 = call %struct.TYPE_7__* @get_bsdthread_info(i32 %28)
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %9, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.bufattr*, %struct.bufattr** %13, align 8
  %32 = icmp ne %struct.bufattr* %31, null
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %36
  %42 = load %struct.bufattr*, %struct.bufattr** %13, align 8
  %43 = call i32 @GET_BUFATTR_IO_TIER(%struct.bufattr* %42)
  store i32 %43, i32* %14, align 4
  %44 = load %struct.bufattr*, %struct.bufattr** %13, align 8
  %45 = getelementptr inbounds %struct.bufattr, %struct.bufattr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BA_IO_TIER_UPGRADE, align 4
  %48 = call i64 @ISSET(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %50, %41
  br label %57

54:                                               ; preds = %36, %33, %30
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %56 = call i32 @throttle_get_thread_throttle_level(%struct.TYPE_7__* %55)
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %54, %53
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @THROTTLE_LEVEL_NONE, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %125

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @B_PASSIVE, align 4
  %64 = call i64 @ISSET(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %117, label %66

66:                                               ; preds = %61
  %67 = call i32 (...) @proc_selfpid()
  %68 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %8, align 8
  %69 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  %74 = load i64, i64* %12, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %66
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %76
  %82 = load %struct.bufattr*, %struct.bufattr** %13, align 8
  %83 = icmp ne %struct.bufattr* null, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.bufattr*, %struct.bufattr** %13, align 8
  %86 = getelementptr inbounds %struct.bufattr, %struct.bufattr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @BA_STRATEGY_TRACKED_IO, align 4
  %89 = call i32 @SET(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %84, %81
  %91 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %8, align 8
  %92 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = call i32 @OSIncrementAtomic(i32* %96)
  br label %106

98:                                               ; preds = %76, %66
  %99 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %8, align 8
  %100 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @microuptime(i32* %104)
  br label %106

106:                                              ; preds = %98, %90
  %107 = load i32, i32* @DBG_THROTTLE, align 4
  %108 = load i32, i32* @OPEN_THROTTLE_WINDOW, align 4
  %109 = call i32 @FSDBG_CODE(i32 %107, i32 %108)
  %110 = load i32, i32* @DBG_FUNC_NONE, align 4
  %111 = or i32 %109, %110
  %112 = call %struct.TYPE_8__* (...) @current_proc()
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %111, i32 %114, i32 %115, i32 0, i32 0, i32 0)
  br label %117

117:                                              ; preds = %106, %61
  %118 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %8, align 8
  %119 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = call i32 @microuptime(i32* %123)
  br label %125

125:                                              ; preds = %117, %57
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @THROTTLE_LEVEL_THROTTLED, align 4
  %128 = icmp sge i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %8, align 8
  %131 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %130, i32 0, i32 0
  %132 = call i32 @OSAddAtomic(i32 1, i32* %131)
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %134 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %8, align 8
  %135 = load i32, i32* @FALSE, align 4
  %136 = load i64, i64* %11, align 8
  %137 = call i32 @throttle_info_set_initial_window(%struct.TYPE_7__* %133, %struct._throttle_io_info_t* %134, i32 %135, i64 %136)
  br label %138

138:                                              ; preds = %129, %125
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %138, %22
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local %struct.TYPE_7__* @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @GET_BUFATTR_IO_TIER(%struct.bufattr*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @throttle_get_thread_throttle_level(%struct.TYPE_7__*) #1

declare dso_local i32 @proc_selfpid(...) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @microuptime(i32*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local %struct.TYPE_8__* @current_proc(...) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @throttle_info_set_initial_window(%struct.TYPE_7__*, %struct._throttle_io_info_t*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
