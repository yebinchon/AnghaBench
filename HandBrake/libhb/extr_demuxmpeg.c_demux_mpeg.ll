; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_demuxmpeg.c_demux_mpeg.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_demuxmpeg.c_demux_mpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i32 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AUDIO_BUF = common dso_local global i64 0, align 8
@VIDEO_BUF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*, %struct.TYPE_13__*, i32)* @demux_mpeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demux_mpeg(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_13__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %12

12:                                               ; preds = %209, %4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = icmp ne %struct.TYPE_14__* %13, null
  br i1 %14, label %15, label %219

15:                                               ; preds = %12
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = call i32 @save_chap(%struct.TYPE_13__* %16, %struct.TYPE_14__* %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %209

21:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %21
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @check_mpeg_scr(%struct.TYPE_13__* %28, i64 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %27
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %58

55:                                               ; preds = %27
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %44
  br label %59

59:                                               ; preds = %58, %21
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %59
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %68, %62, %59
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %85, 0
  br i1 %86, label %87, label %197

87:                                               ; preds = %81
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AUDIO_BUF, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @VIDEO_BUF, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %144

101:                                              ; preds = %94, %87
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp sge i64 %104, 0
  br i1 %105, label %106, label %137

106:                                              ; preds = %101
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %110, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %117, -450000
  br i1 %118, label %123, label %119

119:                                              ; preds = %106
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp sgt i64 %121, 450000
  br i1 %122, label %123, label %136

123:                                              ; preds = %119, %106
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  br label %136

136:                                              ; preds = %123, %119
  br label %137

137:                                              ; preds = %136, %101
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %137, %94
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %196

150:                                              ; preds = %144
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %154, %157
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %158, %161
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = icmp slt i64 %165, -27000000
  br i1 %166, label %171, label %167

167:                                              ; preds = %150
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = icmp sgt i64 %169, 27000000
  br i1 %170, label %171, label %184

171:                                              ; preds = %167, %150
  %172 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 4
  store i64 %172, i64* %175, align 8
  %176 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 1
  store i64 %176, i64* %179, align 8
  %180 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 3
  store i64 %180, i64* %183, align 8
  br label %195

184:                                              ; preds = %167
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = sub nsw i64 %188, %191
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  br label %195

195:                                              ; preds = %184, %171
  br label %196

196:                                              ; preds = %195, %144
  br label %197

197:                                              ; preds = %196, %81
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @VIDEO_BUF, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %197
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %207 = call i32 @restore_chap(%struct.TYPE_13__* %205, %struct.TYPE_14__* %206)
  br label %208

208:                                              ; preds = %204, %197
  br label %209

209:                                              ; preds = %208, %15
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %211, align 8
  store %struct.TYPE_14__* %212, %struct.TYPE_14__** %11, align 8
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %214, align 8
  %215 = load i32*, i32** %6, align 8
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %217 = call i32 @hb_buffer_list_append(i32* %215, %struct.TYPE_14__* %216)
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %218, %struct.TYPE_14__** %5, align 8
  br label %12

219:                                              ; preds = %12
  ret void
}

declare dso_local i32 @save_chap(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @check_mpeg_scr(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @restore_chap(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
