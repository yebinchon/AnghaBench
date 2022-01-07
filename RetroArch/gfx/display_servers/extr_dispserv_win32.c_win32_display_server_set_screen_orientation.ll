; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/display_servers/extr_dispserv_win32.c_win32_display_server_set_screen_orientation.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/display_servers/extr_dispserv_win32.c_win32_display_server_set_screen_orientation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@DMDO_90 = common dso_local global i32 0, align 4
@DMDO_270 = common dso_local global i32 0, align 4
@DMDO_DEFAULT = common dso_local global i32 0, align 4
@DMDO_180 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @win32_display_server_set_screen_orientation(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 16, i1 false)
  %9 = call i32 @win32_get_video_output(%struct.TYPE_4__* %3, i32 -1, i32 16)
  %10 = load i32, i32* %2, align 4
  switch i32 %10, label %12 [
    i32 129, label %11
    i32 128, label %38
    i32 131, label %64
    i32 130, label %90
  ]

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DMDO_90, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DMDO_270, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %19, %12
  %25 = load i32, i32* %4, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %24, %19
  %36 = load i32, i32* @DMDO_DEFAULT, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  br label %116

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DMDO_DEFAULT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DMDO_180, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %45, %38
  %51 = load i32, i32* %5, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %50, %45
  %62 = load i32, i32* @DMDO_270, align 4
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  br label %116

64:                                               ; preds = %1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %6, align 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DMDO_90, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DMDO_270, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %71, %64
  %77 = load i32, i32* %6, align 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %76, %71
  %88 = load i32, i32* @DMDO_180, align 4
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store i32 %88, i32* %89, align 4
  br label %116

90:                                               ; preds = %1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %7, align 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DMDO_DEFAULT, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @DMDO_180, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %97, %90
  %103 = load i32, i32* %7, align 4
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %7, align 4
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %107, %102, %97
  %114 = load i32, i32* @DMDO_90, align 4
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %87, %61, %35
  %117 = call i32 @win32_change_display_settings(i32* null, %struct.TYPE_4__* %3, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @win32_get_video_output(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @win32_change_display_settings(i32*, %struct.TYPE_4__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
