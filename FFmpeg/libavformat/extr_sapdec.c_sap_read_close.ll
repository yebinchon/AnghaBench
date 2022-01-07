; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sapdec.c_sap_read_close.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sapdec.c_sap_read_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.SAPState* }
%struct.SAPState = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @sap_read_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sap_read_close(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.SAPState*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load %struct.SAPState*, %struct.SAPState** %5, align 8
  store %struct.SAPState* %6, %struct.SAPState** %3, align 8
  %7 = load %struct.SAPState*, %struct.SAPState** %3, align 8
  %8 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.SAPState*, %struct.SAPState** %3, align 8
  %13 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %12, i32 0, i32 2
  %14 = call i32 @avformat_close_input(i64* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.SAPState*, %struct.SAPState** %3, align 8
  %17 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.SAPState*, %struct.SAPState** %3, align 8
  %22 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @ffurl_close(i64 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.SAPState*, %struct.SAPState** %3, align 8
  %27 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %26, i32 0, i32 0
  %28 = call i32 @av_freep(i32* %27)
  %29 = call i32 (...) @ff_network_close()
  ret i32 0
}

declare dso_local i32 @avformat_close_input(i64*) #1

declare dso_local i32 @ffurl_close(i64) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @ff_network_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
