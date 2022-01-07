; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_dvdnav.c_hb_dvdnav_read.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_dvdnav.c_hb_dvdnav_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@HB_DVD_READ_BUFFER_SIZE = common dso_local global i32 0, align 4
@DVDNAV_STATUS_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"dvdnav: Read Error, %s\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@DVDNAV_STATUS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"dvd: dvdnav_sector_search failed - %s\00", align 1
@HB_ERROR_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"dvdnav: Error, too many consecutive read errors\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"dvdnav: vts change, found next title\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"dvdnav: cell change, found next title\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"dvdnav: cell change, previous chapter\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"dvdnav: cell change, previous cell\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"dvdnav: stop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_12__*)* @hb_dvdnav_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @hb_dvdnav_read(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* @HB_DVD_READ_BUFFER_SIZE, align 4
  %22 = call %struct.TYPE_13__* @hb_buffer_init(i32 %21)
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %10, align 8
  br label %23

23:                                               ; preds = %1, %79, %190
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @hb_buffer_close(%struct.TYPE_13__** %10)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %191

30:                                               ; preds = %23
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @dvdnav_get_next_block(i32 %33, i64 %36, i32* %6, i32* %7)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @DVDNAV_STATUS_ERR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %80

41:                                               ; preds = %30
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dvdnav_err_to_string(i32 %44)
  %46 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SEEK_CUR, align 4
  %51 = call i64 @dvdnav_sector_search(i32 %49, i32 1, i32 %50)
  %52 = load i64, i64* @DVDNAV_STATUS_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %41
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dvdnav_err_to_string(i32 %57)
  %59 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = call i32 @hb_buffer_close(%struct.TYPE_13__** %10)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @HB_ERROR_READ, align 4
  %65 = call i32 @hb_set_work_error(i32 %63, i32 %64)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %191

66:                                               ; preds = %41
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp sgt i32 %69, 500
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %73 = call i32 @hb_buffer_close(%struct.TYPE_13__** %10)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @HB_ERROR_READ, align 4
  %78 = call i32 @hb_set_work_error(i32 %76, i32 %77)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %191

79:                                               ; preds = %66
  br label %23

80:                                               ; preds = %30
  %81 = load i32, i32* %6, align 4
  switch i32 %81, label %189 [
    i32 139, label %82
    i32 134, label %88
    i32 131, label %89
    i32 128, label %94
    i32 133, label %99
    i32 132, label %100
    i32 140, label %101
    i32 137, label %102
    i32 129, label %103
    i32 138, label %117
    i32 135, label %177
    i32 136, label %183
    i32 130, label %184
  ]

82:                                               ; preds = %80
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %2, align 8
  br label %191

88:                                               ; preds = %80
  br label %190

89:                                               ; preds = %80
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dvdnav_still_skip(i32 %92)
  br label %190

94:                                               ; preds = %80
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dvdnav_wait_skip(i32 %97)
  br label %190

99:                                               ; preds = %80
  br label %190

100:                                              ; preds = %80
  br label %190

101:                                              ; preds = %80
  br label %190

102:                                              ; preds = %80
  br label %190

103:                                              ; preds = %80
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dvdnav_current_title_program(i32 %106, i32* %11, i32* %12, i32* %13)
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = call i32 @hb_buffer_close(%struct.TYPE_13__** %10)
  %115 = call i32 @hb_deep_log(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %191

116:                                              ; preds = %103
  br label %190

117:                                              ; preds = %80
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %121, %struct.TYPE_14__** %14, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dvdnav_current_title_program(i32 %124, i32* %15, i32* %16, i32* %17)
  %126 = load i32, i32* %15, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %117
  %132 = call i32 @hb_buffer_close(%struct.TYPE_13__** %10)
  %133 = call i32 @hb_deep_log(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %191

134:                                              ; preds = %117
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %17, align 4
  %140 = call i32 @FindChapterIndex(i32 %137, i32 %138, i32 %139)
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %141, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %134
  %147 = load i32, i32* %18, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = call i32 @hb_buffer_close(%struct.TYPE_13__** %10)
  %154 = call i32 @hb_deep_log(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %191

155:                                              ; preds = %146
  %156 = load i32, i32* %18, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  store i32 %156, i32* %8, align 4
  br label %171

159:                                              ; preds = %134
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = icmp sle i32 %162, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %159
  %168 = call i32 @hb_buffer_close(%struct.TYPE_13__** %10)
  %169 = call i32 @hb_deep_log(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %191

170:                                              ; preds = %159
  br label %171

171:                                              ; preds = %170, %155
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  br label %190

177:                                              ; preds = %80
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %182, %struct.TYPE_13__** %2, align 8
  br label %191

183:                                              ; preds = %80
  br label %190

184:                                              ; preds = %80
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  store i32 1, i32* %186, align 4
  %187 = call i32 @hb_buffer_close(%struct.TYPE_13__** %10)
  %188 = call i32 @hb_deep_log(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %191

189:                                              ; preds = %80
  br label %190

190:                                              ; preds = %189, %183, %171, %116, %102, %101, %100, %99, %94, %89, %88
  br label %23

191:                                              ; preds = %184, %177, %167, %152, %131, %113, %82, %71, %54, %28
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  ret %struct.TYPE_13__* %192
}

declare dso_local %struct.TYPE_13__* @hb_buffer_init(i32) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_13__**) #1

declare dso_local i32 @dvdnav_get_next_block(i32, i64, i32*, i32*) #1

declare dso_local i32 @hb_error(i8*, ...) #1

declare dso_local i32 @dvdnav_err_to_string(i32) #1

declare dso_local i64 @dvdnav_sector_search(i32, i32, i32) #1

declare dso_local i32 @hb_set_work_error(i32, i32) #1

declare dso_local i32 @dvdnav_still_skip(i32) #1

declare dso_local i32 @dvdnav_wait_skip(i32) #1

declare dso_local i32 @dvdnav_current_title_program(i32, i32*, i32*, i32*) #1

declare dso_local i32 @hb_deep_log(i32, i8*) #1

declare dso_local i32 @FindChapterIndex(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
