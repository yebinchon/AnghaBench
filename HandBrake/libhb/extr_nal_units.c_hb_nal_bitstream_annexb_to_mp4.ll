; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_nal_units.c_hb_nal_bitstream_annexb_to_mp4.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_nal_units.c_hb_nal_bitstream_annexb_to_mp4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [54 x i8] c"hb_nal_bitstream_annexb_to_mp4: hb_buffer_init failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @hb_nal_bitstream_annexb_to_mp4(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i32*, i32** %4, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32* %15, i32** %8, align 8
  br label %16

16:                                               ; preds = %20, %2
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @hb_annexb_find_next_nalu(i32* %17, i64* %10)
  store i32* %18, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i64 @hb_nal_unit_write_isomp4(i32* null, i32* %21, i64 %22)
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %9, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = ptrtoint i32* %26 to i64
  %29 = ptrtoint i32* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 4
  store i64 %31, i64* %10, align 8
  br label %16

32:                                               ; preds = %16
  %33 = load i64, i64* %9, align 8
  %34 = call %struct.TYPE_4__* @hb_buffer_init(i64 %33)
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %6, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = icmp eq %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @hb_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %68

39:                                               ; preds = %32
  store i64 0, i64* %9, align 8
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %10, align 8
  %41 = load i32*, i32** %4, align 8
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %8, align 8
  br label %45

45:                                               ; preds = %49, %39
  %46 = load i32*, i32** %7, align 8
  %47 = call i32* @hb_annexb_find_next_nalu(i32* %46, i64* %10)
  store i32* %47, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32*, i32** %7, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i64 @hb_nal_unit_write_isomp4(i32* %54, i32* %55, i64 %56)
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %9, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = ptrtoint i32* %60 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  store i64 %65, i64* %10, align 8
  br label %45

66:                                               ; preds = %45
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %3, align 8
  br label %68

68:                                               ; preds = %66, %37
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %69
}

declare dso_local i32* @hb_annexb_find_next_nalu(i32*, i64*) #1

declare dso_local i64 @hb_nal_unit_write_isomp4(i32*, i32*, i64) #1

declare dso_local %struct.TYPE_4__* @hb_buffer_init(i64) #1

declare dso_local i32 @hb_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
