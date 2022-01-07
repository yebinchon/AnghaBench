; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_meta_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_meta_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@FF_MOV_FLAG_USE_MDTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32*)* @mov_write_meta_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_meta_tag(i32* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @avio_tell(i32* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @avio_wb32(i32* %11, i32 0)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @ffio_wfourcc(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @avio_wb32(i32* %15, i32 0)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FF_MOV_FLAG_USE_MDTA, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @mov_write_mdta_hdlr_tag(i32* %24, %struct.TYPE_8__* %25, i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @mov_write_mdta_keys_tag(i32* %28, %struct.TYPE_8__* %29, i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @mov_write_mdta_ilst_tag(i32* %32, %struct.TYPE_8__* %33, i32* %34)
  br label %45

36:                                               ; preds = %3
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @mov_write_itunes_hdlr_tag(i32* %37, %struct.TYPE_8__* %38, i32* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @mov_write_ilst_tag(i32* %41, %struct.TYPE_8__* %42, i32* %43)
  br label %45

45:                                               ; preds = %36, %23
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @update_size(i32* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @mov_write_mdta_hdlr_tag(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @mov_write_mdta_keys_tag(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @mov_write_mdta_ilst_tag(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @mov_write_itunes_hdlr_tag(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @mov_write_ilst_tag(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
