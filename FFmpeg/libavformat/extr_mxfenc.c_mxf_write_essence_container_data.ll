; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_essence_container_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_essence_container_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@EssenceContainerData = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @mxf_write_essence_container_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_write_essence_container_data(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @mxf_write_metadata_key(i32* %7, i32 74496)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @klv_encode_ber_length(i32* %9, i32 72)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @mxf_write_local_tag(i32* %11, i32 16, i32 15370)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @EssenceContainerData, align 4
  %15 = call i32 @mxf_write_uuid(i32* %13, i32 %14, i32 0)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @mxf_write_local_tag(i32* %16, i32 32, i32 9985)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = call i32 @mxf_write_umid(%struct.TYPE_4__* %18, i32 1)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @mxf_write_local_tag(i32* %20, i32 4, i32 16135)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @avio_wb32(i32* %22, i32 1)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @mxf_write_local_tag(i32* %24, i32 4, i32 16134)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @avio_wb32(i32* %26, i32 2)
  ret i32 0
}

declare dso_local i32 @mxf_write_metadata_key(i32*, i32) #1

declare dso_local i32 @klv_encode_ber_length(i32*, i32) #1

declare dso_local i32 @mxf_write_local_tag(i32*, i32, i32) #1

declare dso_local i32 @mxf_write_uuid(i32*, i32, i32) #1

declare dso_local i32 @mxf_write_umid(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
