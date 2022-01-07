; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_tagged_value.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_tagged_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@TaggedValue = common dso_local global i32 0, align 4
@mxf_indirect_value_utf16le = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8*)* @mxf_write_tagged_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_write_tagged_value(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @mxf_utf16_local_tag_length(i8* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @mxf_utf16_local_tag_length(i8* %20)
  %22 = add nsw i32 13, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 13
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %3
  store i32 1, i32* %4, align 4
  br label %62

29:                                               ; preds = %25
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @mxf_write_metadata_key(i32* %30, i32 81664)
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 24, %33
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i32 @klv_encode_ber_length(i32* %32, i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @mxf_write_local_tag(i32* %38, i32 16, i32 15370)
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* @TaggedValue, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mxf_write_uuid(i32* %40, i32 %41, i32 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @mxf_write_local_tag_utf16(i32* %46, i32 20481, i8* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @mxf_write_local_tag(i32* %49, i32 %50, i32 20483)
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* @mxf_indirect_value_utf16le, align 4
  %54 = call i32 @avio_write(i32* %52, i32 %53, i32 17)
  %55 = load i32*, i32** %9, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @avio_put_str16le(i32* %55, i8* %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %29, %28
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @mxf_utf16_local_tag_length(i8*) #1

declare dso_local i32 @mxf_write_metadata_key(i32*, i32) #1

declare dso_local i32 @klv_encode_ber_length(i32*, i32) #1

declare dso_local i32 @mxf_write_local_tag(i32*, i32, i32) #1

declare dso_local i32 @mxf_write_uuid(i32*, i32, i32) #1

declare dso_local i32 @mxf_write_local_tag_utf16(i32*, i32, i8*) #1

declare dso_local i32 @avio_write(i32*, i32, i32) #1

declare dso_local i32 @avio_put_str16le(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
