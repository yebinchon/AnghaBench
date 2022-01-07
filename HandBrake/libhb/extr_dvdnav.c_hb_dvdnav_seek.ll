; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_dvdnav.c_hb_dvdnav_seek.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_dvdnav.c_hb_dvdnav_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float, i32, i64, i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i32 }

@HB_DVD_READ_BUFFER_SIZE = common dso_local global i32 0, align 4
@DVDNAV_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"dvdnav cur pgcn err: %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"dvdnav prog play err: %s\00", align 1
@DVDNAV_STATUS_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"dvdnav: Read Error, %s\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"dvdnav: stop encountered during seek\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"dvd: dvdnav_sector_search failed - %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, float)* @hb_dvdnav_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_dvdnav_seek(%struct.TYPE_7__* %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store float %1, float* %5, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %6, align 8
  %26 = load float, float* %5, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load float, float* %28, align 8
  %30 = fmul float %26, %29
  %31 = fptosi float %30 to i64
  store i64 %31, i64* %7, align 8
  %32 = load i32, i32* @HB_DVD_READ_BUFFER_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %11, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %224

41:                                               ; preds = %2
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_8__* @hb_list_item(i32 %44, i32 0)
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %18, align 8
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %154, %41
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @hb_list_count(i32 %50)
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %157

53:                                               ; preds = %46
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call %struct.TYPE_8__* @hb_list_item(i32 %56, i32 %57)
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %19, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %20, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %53
  %75 = load i64, i64* %17, align 8
  store i64 %75, i64* %16, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %18, align 8
  br label %77

77:                                               ; preds = %74, %53
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp sle i64 %78, %79
  br i1 %80, label %81, label %150

81:                                               ; preds = %77
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* %20, align 8
  %85 = add nsw i64 %83, %84
  %86 = icmp slt i64 %82, %85
  br i1 %86, label %87, label %150

87:                                               ; preds = %81
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @dvdnav_current_title_program(i32 %90, i64* %21, i64* %22, i64* %23)
  %92 = load i64, i64* @DVDNAV_STATUS_OK, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dvdnav_err_to_string(i32 %97)
  %99 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %94, %87
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %21, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dvdnav_reset(i32 %109)
  br label %111

111:                                              ; preds = %106, %100
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %21, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %22, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %146

123:                                              ; preds = %117, %111
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @dvdnav_program_play(i32 %126, i64 %129, i64 %132, i32 %135)
  %137 = load i64, i64* @DVDNAV_STATUS_OK, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %123
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @dvdnav_err_to_string(i32 %142)
  %144 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %139, %123
  br label %146

146:                                              ; preds = %145, %117
  %147 = load i64, i64* %16, align 8
  %148 = load i64, i64* %7, align 8
  %149 = sub nsw i64 %148, %147
  store i64 %149, i64* %7, align 8
  br label %157

150:                                              ; preds = %81, %77
  %151 = load i64, i64* %20, align 8
  %152 = load i64, i64* %17, align 8
  %153 = add nsw i64 %152, %151
  store i64 %153, i64* %17, align 8
  br label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %46

157:                                              ; preds = %146, %46
  store i32 0, i32* %14, align 4
  br label %158

158:                                              ; preds = %201, %157
  %159 = load i32, i32* %14, align 4
  %160 = icmp slt i32 %159, 100
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  br label %165

165:                                              ; preds = %161, %158
  %166 = phi i1 [ false, %158 ], [ %164, %161 ]
  br i1 %166, label %167, label %204

167:                                              ; preds = %165
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @dvdnav_get_next_block(i32 %170, i32* %35, i32* %9, i32* %10)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @DVDNAV_STATUS_ERR, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %167
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @dvdnav_err_to_string(i32 %178)
  %180 = call i32 @hb_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %224

181:                                              ; preds = %167
  %182 = load i32, i32* %9, align 4
  switch i32 %182, label %199 [
    i32 139, label %183
    i32 138, label %183
    i32 131, label %184
    i32 128, label %189
    i32 130, label %194
    i32 136, label %198
    i32 135, label %198
    i32 129, label %198
    i32 137, label %198
    i32 140, label %198
    i32 132, label %198
    i32 133, label %198
    i32 134, label %198
  ]

183:                                              ; preds = %181, %181
  store i32 1, i32* %13, align 4
  br label %200

184:                                              ; preds = %181
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @dvdnav_still_skip(i32 %187)
  br label %200

189:                                              ; preds = %181
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @dvdnav_wait_skip(i32 %192)
  br label %200

194:                                              ; preds = %181
  %195 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  store i32 1, i32* %197, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %224

198:                                              ; preds = %181, %181, %181, %181, %181, %181, %181, %181
  br label %199

199:                                              ; preds = %181, %198
  br label %200

200:                                              ; preds = %199, %189, %184, %183
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %14, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %14, align 4
  br label %158

204:                                              ; preds = %165
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = load i64, i64* %7, align 8
  %209 = load i32, i32* @SEEK_SET, align 4
  %210 = call i64 @dvdnav_sector_search(i32 %207, i64 %208, i32 %209)
  %211 = load i64, i64* @DVDNAV_STATUS_OK, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %204
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @dvdnav_err_to_string(i32 %216)
  %218 = call i32 @hb_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %217)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %224

219:                                              ; preds = %204
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 4
  store i64 0, i64* %221, align 8
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 3
  store i64 0, i64* %223, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %224

224:                                              ; preds = %219, %213, %194, %175, %40
  %225 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %225)
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_8__* @hb_list_item(i32, i32) #2

declare dso_local i32 @hb_list_count(i32) #2

declare dso_local i64 @dvdnav_current_title_program(i32, i64*, i64*, i64*) #2

declare dso_local i32 @hb_log(i8*, ...) #2

declare dso_local i32 @dvdnav_err_to_string(i32) #2

declare dso_local i32 @dvdnav_reset(i32) #2

declare dso_local i64 @dvdnav_program_play(i32, i64, i64, i32) #2

declare dso_local i32 @dvdnav_get_next_block(i32, i32*, i32*, i32*) #2

declare dso_local i32 @hb_error(i8*, i32) #2

declare dso_local i32 @dvdnav_still_skip(i32) #2

declare dso_local i32 @dvdnav_wait_skip(i32) #2

declare dso_local i64 @dvdnav_sector_search(i32, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
