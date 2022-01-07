; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dsfdec.c_read_id3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dsfdec.c_read_id3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@ID3v2_DEFAULT_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @read_id3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_id3(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SEEK_SET, align 4
  %11 = call i64 @avio_seek(i32 %8, i32 %9, i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = load i32, i32* @ID3v2_DEFAULT_MAGIC, align 4
  %17 = call i32 @ff_id3v2_read(%struct.TYPE_6__* %15, i32 %16, i32** %5, i32 0)
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = call i32 @ff_id3v2_parse_apic(%struct.TYPE_6__* %21, i32** %5)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = call i32 @ff_id3v2_parse_chapters(%struct.TYPE_6__* %23, i32** %5)
  br label %25

25:                                               ; preds = %20, %14
  %26 = call i32 @ff_id3v2_free_extra_meta(i32** %5)
  br label %27

27:                                               ; preds = %25, %13
  ret void
}

declare dso_local i64 @avio_seek(i32, i32, i32) #1

declare dso_local i32 @ff_id3v2_read(%struct.TYPE_6__*, i32, i32**, i32) #1

declare dso_local i32 @ff_id3v2_parse_apic(%struct.TYPE_6__*, i32**) #1

declare dso_local i32 @ff_id3v2_parse_chapters(%struct.TYPE_6__*, i32**) #1

declare dso_local i32 @ff_id3v2_free_extra_meta(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
