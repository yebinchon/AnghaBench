; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_clock.c_clock_adjust_clocks.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_clock.c_clock_adjust_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, %struct.TYPE_15__, i64, i32, i32 }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@MMAL_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i64)* @clock_adjust_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clock_adjust_clocks(%struct.TYPE_18__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %5, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @clock_get_mt_off_avg(%struct.TYPE_18__* %19, i64 %20, %struct.TYPE_20__** %6, %struct.TYPE_20__** %7)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %230

24:                                               ; preds = %2
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 13
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @mmal_port_clock_media_time_get(i32 %39)
  %41 = load i64, i64* %4, align 8
  %42 = sub nsw i64 %40, %41
  store i64 %42, i64* %8, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 11
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %24
  %54 = load i64, i64* @MMAL_FALSE, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 11
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 10
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %59, %63
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %73 = call i32 @clock_stop_clocks(%struct.TYPE_18__* %72)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %4, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @clock_start_clocks(%struct.TYPE_18__* %74, i64 %79)
  br label %211

81:                                               ; preds = %24
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 10
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %84, %88
  store i64 %89, i64* %10, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  store i64 %96, i64* %11, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* %11, align 8
  %99 = call i64 @MIN(i64 %97, i64 %98)
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %4, align 8
  %103 = load i64, i64* %9, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %81
  %106 = load i64, i64* %4, align 8
  %107 = load i64, i64* %9, align 8
  %108 = sub nsw i64 %106, %107
  br label %110

109:                                              ; preds = %81
  br label %110

110:                                              ; preds = %109, %105
  %111 = phi i64 [ %108, %105 ], [ 0, %109 ]
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 10
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = mul nsw i64 %112, %116
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 10
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = sdiv i64 %117, %121
  store i64 %122, i64* %13, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %125, %128
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 4
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %13, align 8
  %136 = sub nsw i64 0, %135
  %137 = icmp slt i64 %134, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %110
  %139 = load i64, i64* %13, align 8
  %140 = sub nsw i64 0, %139
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 4
  store i64 %140, i64* %142, align 8
  br label %154

143:                                              ; preds = %110
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %13, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load i64, i64* %13, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 4
  store i64 %150, i64* %152, align 8
  br label %153

153:                                              ; preds = %149, %143
  br label %154

154:                                              ; preds = %153, %138
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %157, %160
  %162 = ashr i32 %161, 2
  %163 = sub nsw i32 1048576, %162
  %164 = call i32 @MAX(i32 %163, i32 0)
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = mul nsw i64 %169, %173
  %175 = ashr i64 %174, 20
  %176 = trunc i64 %175 to i32
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 7
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 7
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = shl i32 %185, 8
  %187 = mul nsw i32 %181, %186
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sdiv i32 %187, %191
  %193 = ashr i32 %192, 8
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 7
  store i32 %193, i32* %195, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, %199
  store i64 %203, i64* %201, align 8
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %4, align 8
  %209 = add nsw i64 %207, %208
  %210 = call i32 @clock_set_media_time(%struct.TYPE_18__* %204, i64 %209)
  br label %211

211:                                              ; preds = %154, %53
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 9
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %211
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 8
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @clock_set_scale(%struct.TYPE_18__* %221, i32 %228)
  br label %230

230:                                              ; preds = %23, %220, %211
  ret void
}

declare dso_local i32 @clock_get_mt_off_avg(%struct.TYPE_18__*, i64, %struct.TYPE_20__**, %struct.TYPE_20__**) #1

declare dso_local i64 @mmal_port_clock_media_time_get(i32) #1

declare dso_local i32 @clock_stop_clocks(%struct.TYPE_18__*) #1

declare dso_local i32 @clock_start_clocks(%struct.TYPE_18__*, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @clock_set_media_time(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @clock_set_scale(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
