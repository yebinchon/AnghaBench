; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/truetype/extr_ttdriver.c_tt_size_request.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/truetype/extr_ttdriver.c_tt_size_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, i32, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64 }

@FT_Err_Ok = common dso_local global i64 0, align 8
@FT_SIZE_REQUEST_TYPE_SCALES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, %struct.TYPE_20__*)* @tt_size_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tt_size_request(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %8 = bitcast %struct.TYPE_21__* %7 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %8, %struct.TYPE_17__** %5, align 8
  %9 = load i64, i64* @FT_Err_Ok, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = call i32 @FT_Request_Metrics(i32 %12, %struct.TYPE_20__* %13)
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @FT_IS_SCALABLE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = call i64 @tt_size_reset(%struct.TYPE_17__* %21, i32 0)
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i64, i64* %6, align 8
  ret i64 %24
}

declare dso_local i32 @FT_Request_Metrics(i32, %struct.TYPE_20__*) #1

declare dso_local i64 @FT_IS_SCALABLE(i32) #1

declare dso_local i64 @tt_size_reset(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
