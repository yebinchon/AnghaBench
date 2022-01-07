; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_nal_units.c_hb_nal_bitstream_mp4_to_annexb.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_nal_units.c_hb_nal_bitstream_mp4_to_annexb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [84 x i8] c"hb_nal_bitstream_mp4_to_annexb: truncated bitstream (remaining: %lu, expected: %lu)\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"hb_nal_bitstream_mp4_to_annexb: hb_buffer_init failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @hb_nal_bitstream_mp4_to_annexb(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %11, align 8
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %10, align 8
  br label %17

17:                                               ; preds = %52, %3
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = ptrtoint i32* %18 to i64
  %21 = ptrtoint i32* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 4
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp sgt i64 %23, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %17
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @mp4_nal_unit_length(i32* %28, i32 %29, i64* %12)
  %31 = load i32*, i32** %9, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = ptrtoint i32* %34 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = load i64, i64* %12, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %27
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @hb_log(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %49, i64 %50)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %105

52:                                               ; preds = %27
  %53 = load i32*, i32** %9, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call i64 @hb_nal_unit_write_annexb(i32* null, i32* %53, i64 %54)
  %56 = load i64, i64* %11, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 %58
  store i32* %60, i32** %9, align 8
  br label %17

61:                                               ; preds = %17
  %62 = load i64, i64* %11, align 8
  %63 = call %struct.TYPE_4__* @hb_buffer_init(i64 %62)
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** %8, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %65 = icmp eq %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 @hb_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %105

68:                                               ; preds = %61
  store i64 0, i64* %11, align 8
  %69 = load i32*, i32** %5, align 8
  store i32* %69, i32** %9, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %10, align 8
  br label %73

73:                                               ; preds = %83, %68
  %74 = load i32*, i32** %10, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = ptrtoint i32* %74 to i64
  %77 = ptrtoint i32* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 4
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp sgt i64 %79, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %73
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @mp4_nal_unit_length(i32* %84, i32 %85, i64* %12)
  %87 = load i32*, i32** %9, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %9, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32*, i32** %9, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i64 @hb_nal_unit_write_annexb(i32* %94, i32* %95, i64 %96)
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 %100
  store i32* %102, i32** %9, align 8
  br label %73

103:                                              ; preds = %73
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %104, %struct.TYPE_4__** %4, align 8
  br label %105

105:                                              ; preds = %103, %66, %42
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %106
}

declare dso_local i32 @mp4_nal_unit_length(i32*, i32, i64*) #1

declare dso_local i32 @hb_log(i8*, i32, i64) #1

declare dso_local i64 @hb_nal_unit_write_annexb(i32*, i32*, i64) #1

declare dso_local %struct.TYPE_4__* @hb_buffer_init(i64) #1

declare dso_local i32 @hb_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
