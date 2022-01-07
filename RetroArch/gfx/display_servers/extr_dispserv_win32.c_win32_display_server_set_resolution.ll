; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/display_servers/extr_dispserv_win32.c_win32_display_server_set_resolution.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/display_servers/extr_dispserv_win32.c_win32_display_server_set_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@win32_orig_width = common dso_local global i64 0, align 8
@SM_CXSCREEN = common dso_local global i32 0, align 4
@win32_orig_refresh = common dso_local global i32 0, align 4
@win32_orig_height = common dso_local global i64 0, align 8
@SM_CYSCREEN = common dso_local global i32 0, align 4
@DM_PELSWIDTH = common dso_local global i32 0, align 4
@DM_PELSHEIGHT = common dso_local global i32 0, align 4
@DM_BITSPERPEL = common dso_local global i32 0, align 4
@DM_DISPLAYFREQUENCY = common dso_local global i32 0, align 4
@CDS_TEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, float, i32, i32, i32)* @win32_display_server_set_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @win32_display_server_set_resolution(i8* %0, i32 %1, i32 %2, i32 %3, float %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_4__, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store float %4, float* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %22, align 8
  %28 = load i32*, i32** %22, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %134

31:                                               ; preds = %8
  %32 = call i32 @win32_get_video_output(%struct.TYPE_4__* %18, i32 -1, i32 20)
  %33 = load i64, i64* @win32_orig_width, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @SM_CXSCREEN, align 4
  %37 = call i64 @GetSystemMetrics(i32 %36)
  store i64 %37, i64* @win32_orig_width, align 8
  br label %38

38:                                               ; preds = %35, %31
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* @win32_orig_refresh, align 4
  %41 = load i64, i64* @win32_orig_height, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @SM_CYSCREEN, align 4
  %45 = call i64 @GetSystemMetrics(i32 %44)
  store i64 %45, i64* @win32_orig_height, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %11, align 4
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %21, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %21, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %20, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %20, align 4
  br label %76

76:                                               ; preds = %73, %70
  store i32 0, i32* %19, align 4
  br label %77

77:                                               ; preds = %130, %76
  %78 = load i32, i32* %19, align 4
  %79 = call i32 @win32_get_video_output(%struct.TYPE_4__* %24, i32 %78, i32 20)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  br label %133

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %130

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %130

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %21, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %130

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %20, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %130

106:                                              ; preds = %100
  %107 = load i32, i32* @DM_PELSWIDTH, align 4
  %108 = load i32, i32* @DM_PELSHEIGHT, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @DM_BITSPERPEL, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @DM_DISPLAYFREQUENCY, align 4
  %113 = or i32 %111, %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* @CDS_TEST, align 4
  %118 = call i32 @win32_change_display_settings(i32* null, %struct.TYPE_4__* %24, i32 %117)
  store i32 %118, i32* %23, align 4
  %119 = load i32, i32* %23, align 4
  switch i32 %119, label %128 [
    i32 128, label %120
    i32 129, label %127
  ]

120:                                              ; preds = %106
  %121 = call i32 @win32_change_display_settings(i32* null, %struct.TYPE_4__* %24, i32 0)
  store i32 %121, i32* %23, align 4
  %122 = load i32, i32* %23, align 4
  switch i32 %122, label %125 [
    i32 128, label %123
    i32 130, label %124
  ]

123:                                              ; preds = %120
  store i32 1, i32* %9, align 4
  br label %134

124:                                              ; preds = %120
  store i32 1, i32* %9, align 4
  br label %134

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125
  br label %129

127:                                              ; preds = %106
  br label %129

128:                                              ; preds = %106
  br label %129

129:                                              ; preds = %128, %127, %126
  br label %130

130:                                              ; preds = %129, %105, %99, %93, %87
  %131 = load i32, i32* %19, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %19, align 4
  br label %77

133:                                              ; preds = %81
  store i32 1, i32* %9, align 4
  br label %134

134:                                              ; preds = %133, %124, %123, %30
  %135 = load i32, i32* %9, align 4
  ret i32 %135
}

declare dso_local i32 @win32_get_video_output(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @GetSystemMetrics(i32) #1

declare dso_local i32 @win32_change_display_settings(i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
