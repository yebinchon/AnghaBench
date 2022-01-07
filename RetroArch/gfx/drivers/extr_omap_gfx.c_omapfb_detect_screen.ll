; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_omap_gfx.c_omapfb_detect_screen.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_omap_gfx.c_omapfb_detect_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"[video_omap]: can't stat %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"/sys/class/graphics/fb%d/overlays\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"[video_omap]: can't open %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"[video_omap]: can't parse %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"/sys/devices/platform/omapdss/overlay%d/manager\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"[video_omap]: can't read manager name.\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"/sys/devices/platform/omapdss/manager%d/name\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"/sys/devices/platform/omapdss/manager%d/display\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"[video_omap]: can't read display name.\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"[video_omap]: couldn't find manager.\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"/sys/devices/platform/omapdss/display%d/name\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"[video_omap]: couldn't find display.\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"/sys/devices/platform/omapdss/display%d/timings\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"%*d,%d/%*d/%*d/%*d,%d/%*d/%*d/%*d\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"[video_omap]: can't parse %s (%d).\0A\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"[video_omap]: unsane dimensions detected (%dx%d).\0A\00", align 1
@.str.18 = private unnamed_addr constant [82 x i8] c"[video_omap]: detected %dx%d '%s' (%d) display attached to fb %d and overlay %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @omapfb_detect_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_detect_screen(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca [64 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %16, align 16
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %17, align 16
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %18, align 16
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @stat(i32 %21, %struct.stat* %4)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 -1, i32* %2, align 4
  br label %175

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @minor(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @snprintf(i8* %34, i32 64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %38 = call i32* @fopen(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %43 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  store i32 -1, i32* %2, align 4
  br label %175

44:                                               ; preds = %30
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 (i32*, i8*, i32*, ...) @fscanf(i32* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %14)
  store i32 %46, i32* %6, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %53 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %52)
  store i32 -1, i32* %2, align 4
  br label %175

54:                                               ; preds = %44
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @snprintf(i8* %55, i32 64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %60 = call i32 @omapfb_read_sysfs(i8* %58, i8* %59, i32 64)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %175

65:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %94, %65
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @snprintf(i8* %67, i32 64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %72 = call i32 @omapfb_read_sysfs(i8* %70, i8* %71, i32 64)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %97

76:                                               ; preds = %66
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %79 = call i64 @string_is_equal(i8* %77, i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @snprintf(i8* %82, i32 64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %83)
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %87 = call i32 @omapfb_read_sysfs(i8* %85, i8* %86, i32 64)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %175

92:                                               ; preds = %81
  br label %97

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %66

97:                                               ; preds = %92, %75
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %175

102:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %121, %102
  %104 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @snprintf(i8* %104, i32 64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %105)
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %109 = call i32 @omapfb_read_sysfs(i8* %107, i8* %108, i32 64)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %124

113:                                              ; preds = %103
  %114 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %116 = call i64 @string_is_equal(i8* %114, i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %15, align 4
  br label %124

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %103

124:                                              ; preds = %118, %112
  %125 = load i32, i32* %15, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %175

129:                                              ; preds = %124
  %130 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @snprintf(i8* %130, i32 64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0), i32 %131)
  %133 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %134 = call i32* @fopen(i8* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %134, i32** %9, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %129
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %139 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %138)
  store i32 -1, i32* %2, align 4
  br label %175

140:                                              ; preds = %129
  %141 = load i32*, i32** %9, align 8
  %142 = call i32 (i32*, i8*, i32*, ...) @fscanf(i32* %141, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i32* %7, i32* %8)
  store i32 %142, i32* %6, align 4
  %143 = load i32*, i32** %9, align 8
  %144 = call i32 @fclose(i32* %143)
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 2
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %149 = load i32, i32* %6, align 4
  %150 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i8* %148, i32 %149)
  store i32 -1, i32* %2, align 4
  br label %175

151:                                              ; preds = %140
  %152 = load i32, i32* %7, align 4
  %153 = icmp sle i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %8, align 4
  %156 = icmp sle i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154, %151
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0), i32 %158, i32 %159)
  store i32 -1, i32* %2, align 4
  br label %175

161:                                              ; preds = %154
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %8, align 4
  %164 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.18, i64 0, i64 0), i32 %162, i32 %163, i8* %164, i32 %165, i32 %166, i32 %167)
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %161, %157, %147, %137, %127, %100, %90, %63, %51, %41, %25
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @stat(i32, %struct.stat*) #1

declare dso_local i32 @RARCH_ERR(i8*, ...) #1

declare dso_local i32 @minor(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @omapfb_read_sysfs(i8*, i8*, i32) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
