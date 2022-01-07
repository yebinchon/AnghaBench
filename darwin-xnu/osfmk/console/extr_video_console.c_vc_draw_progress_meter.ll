; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_draw_progress_meter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_draw_progress_meter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@vc_progress_withmeter = common dso_local global i32 0, align 4
@vinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@kProgressBarWidth = common dso_local global i32 0, align 4
@vc_uiscale = common dso_local global i32 0, align 4
@kProgressBarHeight = common dso_local global i32 0, align 4
@kDataBack = common dso_local global i32 0, align 4
@vc_progressmeter_backbuffer = common dso_local global i32 0, align 4
@kProgressBarCapWidth = common dso_local global i32 0, align 4
@progressmeter_leftcap = common dso_local global i8*** null, align 8
@progressmeter_middle = common dso_local global i8*** null, align 8
@progressmeter_rightcap = common dso_local global i8*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @vc_draw_progress_meter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc_draw_progress_meter(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @vc_progress_withmeter, align 4
  %18 = and i32 2, %17
  %19 = icmp eq i32 0, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  %22 = load i32, i32* @kProgressBarWidth, align 4
  %23 = load i32, i32* @vc_uiscale, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sub nsw i32 %21, %24
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 4
  %29 = sdiv i32 %28, 3
  %30 = sub nsw i32 %27, %29
  %31 = load i32, i32* @kProgressBarHeight, align 4
  %32 = load i32, i32* @vc_uiscale, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sdiv i32 %33, 2
  %35 = sub nsw i32 %30, %34
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* @kDataBack, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @kProgressBarHeight, align 4
  %47 = load i32, i32* @vc_uiscale, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* @kProgressBarWidth, align 4
  %50 = load i32, i32* @vc_uiscale, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* @vc_progressmeter_backbuffer, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @vc_blit_rect(i32 %42, i32 %43, i32 %44, i32 %45, i32 %48, i32 0, i32 %51, i8* null, i32 %52, i32 %53)
  br label %241

55:                                               ; preds = %4
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %237, %55
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %241

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  br label %77

73:                                               ; preds = %68, %61
  %74 = load i32, i32* @kProgressBarWidth, align 4
  %75 = load i32, i32* @vc_uiscale, align 4
  %76 = mul nsw i32 %74, %75
  br label %77

77:                                               ; preds = %73, %71
  %78 = phi i32 [ %72, %71 ], [ %76, %73 ]
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @kProgressBarCapWidth, align 4
  %81 = load i32, i32* @vc_uiscale, align 4
  %82 = mul nsw i32 %80, %81
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %135

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @kProgressBarCapWidth, align 4
  %87 = load i32, i32* @vc_uiscale, align 4
  %88 = mul nsw i32 %86, %87
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %11, align 4
  br label %100

94:                                               ; preds = %84
  %95 = load i32, i32* @kProgressBarCapWidth, align 4
  %96 = load i32, i32* @vc_uiscale, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %94, %90
  %101 = load i8***, i8**** @progressmeter_leftcap, align 8
  %102 = load i32, i32* @vc_uiscale, align 4
  %103 = icmp sge i32 %102, 2
  %104 = zext i1 %103 to i32
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8**, i8*** %101, i64 %105
  %107 = load i8**, i8*** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i8*, i8** %9, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %9, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @kProgressBarHeight, align 4
  %123 = load i32, i32* @vc_uiscale, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32, i32* @kProgressBarCapWidth, align 4
  %126 = load i32, i32* @vc_uiscale, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32, i32* @kProgressBarWidth, align 4
  %129 = load i32, i32* @vc_uiscale, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i8*, i8** %9, align 8
  %132 = load i32, i32* @vc_progressmeter_backbuffer, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @vc_blit_rect(i32 %118, i32 %119, i32 %120, i32 %121, i32 %124, i32 %127, i32 %130, i8* %131, i32 %132, i32 %133)
  br label %236

135:                                              ; preds = %77
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @kProgressBarCapWidth, align 4
  %139 = load i32, i32* @vc_uiscale, align 4
  %140 = mul nsw i32 %138, %139
  %141 = sub nsw i32 %137, %140
  %142 = icmp slt i32 %136, %141
  br i1 %142, label %143, label %191

143:                                              ; preds = %135
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* @kProgressBarCapWidth, align 4
  %147 = load i32, i32* @vc_uiscale, align 4
  %148 = mul nsw i32 %146, %147
  %149 = sub nsw i32 %145, %148
  %150 = icmp slt i32 %144, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %10, align 4
  %154 = sub nsw i32 %152, %153
  store i32 %154, i32* %11, align 4
  br label %163

155:                                              ; preds = %143
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* @kProgressBarCapWidth, align 4
  %158 = load i32, i32* @vc_uiscale, align 4
  %159 = mul nsw i32 %157, %158
  %160 = sub nsw i32 %156, %159
  %161 = load i32, i32* %10, align 4
  %162 = sub nsw i32 %160, %161
  store i32 %162, i32* %11, align 4
  br label %163

163:                                              ; preds = %155, %151
  %164 = load i8***, i8**** @progressmeter_middle, align 8
  %165 = load i32, i32* @vc_uiscale, align 4
  %166 = icmp sge i32 %165, 2
  %167 = zext i1 %166 to i32
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8**, i8*** %164, i64 %168
  %170 = load i8**, i8*** %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  %174 = load i8*, i8** %173, align 8
  store i8* %174, i8** %9, align 8
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %175, %176
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @kProgressBarHeight, align 4
  %182 = load i32, i32* @vc_uiscale, align 4
  %183 = mul nsw i32 %181, %182
  %184 = load i32, i32* @kProgressBarWidth, align 4
  %185 = load i32, i32* @vc_uiscale, align 4
  %186 = mul nsw i32 %184, %185
  %187 = load i8*, i8** %9, align 8
  %188 = load i32, i32* @vc_progressmeter_backbuffer, align 4
  %189 = load i32, i32* %5, align 4
  %190 = call i32 @vc_blit_rect(i32 %177, i32 %178, i32 %179, i32 %180, i32 %183, i32 1, i32 %186, i8* %187, i32 %188, i32 %189)
  br label %235

191:                                              ; preds = %135
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %10, align 4
  %194 = sub nsw i32 %192, %193
  store i32 %194, i32* %11, align 4
  %195 = load i8***, i8**** @progressmeter_rightcap, align 8
  %196 = load i32, i32* @vc_uiscale, align 4
  %197 = icmp sge i32 %196, 2
  %198 = zext i1 %197 to i32
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8**, i8*** %195, i64 %199
  %201 = load i8**, i8*** %200, align 8
  %202 = load i32, i32* %15, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  %205 = load i8*, i8** %204, align 8
  store i8* %205, i8** %9, align 8
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* @kProgressBarCapWidth, align 4
  %209 = load i32, i32* @vc_uiscale, align 4
  %210 = mul nsw i32 %208, %209
  %211 = sub nsw i32 %207, %210
  %212 = sub nsw i32 %206, %211
  %213 = load i8*, i8** %9, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  store i8* %215, i8** %9, align 8
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %216, %217
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @kProgressBarHeight, align 4
  %223 = load i32, i32* @vc_uiscale, align 4
  %224 = mul nsw i32 %222, %223
  %225 = load i32, i32* @kProgressBarCapWidth, align 4
  %226 = load i32, i32* @vc_uiscale, align 4
  %227 = mul nsw i32 %225, %226
  %228 = load i32, i32* @kProgressBarWidth, align 4
  %229 = load i32, i32* @vc_uiscale, align 4
  %230 = mul nsw i32 %228, %229
  %231 = load i8*, i8** %9, align 8
  %232 = load i32, i32* @vc_progressmeter_backbuffer, align 4
  %233 = load i32, i32* %5, align 4
  %234 = call i32 @vc_blit_rect(i32 %218, i32 %219, i32 %220, i32 %221, i32 %224, i32 %227, i32 %230, i8* %231, i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %191, %163
  br label %236

236:                                              ; preds = %235, %100
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %10, align 4
  br label %57

241:                                              ; preds = %39, %57
  ret void
}

declare dso_local i32 @vc_blit_rect(i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
