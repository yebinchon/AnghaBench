; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenccenc.c_ff_mov_cenc_avc_parse_nal_units.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenccenc.c_ff_mov_cenc_avc_parse_nal_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mov_cenc_avc_parse_nal_units(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32*, i32** %8, align 8
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @mov_cenc_start_packet(i32* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %5, align 4
  br label %110

26:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32* @ff_avc_find_startcode(i32* %27, i32* %28)
  store i32* %29, i32** %12, align 8
  br label %30

30:                                               ; preds = %49, %26
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32*, i32** %12, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %12, align 8
  %38 = load i32, i32* %36, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi i1 [ false, %31 ], [ %40, %35 ]
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  br label %31

44:                                               ; preds = %41
  %45 = load i32*, i32** %12, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = icmp eq i32* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %101

49:                                               ; preds = %44
  %50 = load i32*, i32** %12, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32* @ff_avc_find_startcode(i32* %50, i32* %51)
  store i32* %52, i32** %13, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = ptrtoint i32* %54 to i64
  %57 = ptrtoint i32* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i32 @avio_wb32(i32* %53, i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @avio_w8(i32* %62, i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32*, i32** %13, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = ptrtoint i32* %70 to i64
  %73 = ptrtoint i32* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 4
  %76 = sub nsw i64 %75, 1
  %77 = trunc i64 %76 to i32
  %78 = call i32 @mov_cenc_write_encrypted(i32* %66, i32* %67, i32* %69, i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = ptrtoint i32* %80 to i64
  %83 = ptrtoint i32* %81 to i64
  %84 = sub i64 %82, %83
  %85 = sdiv exact i64 %84, 4
  %86 = sub nsw i64 %85, 1
  %87 = trunc i64 %86 to i32
  %88 = call i32 @auxiliary_info_add_subsample(i32* %79, i32 5, i32 %87)
  %89 = load i32*, i32** %13, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32*, i32** %12, align 8
  %92 = ptrtoint i32* %90 to i64
  %93 = ptrtoint i32* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 4
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %9, align 4
  %100 = load i32*, i32** %13, align 8
  store i32* %100, i32** %12, align 8
  br label %30

101:                                              ; preds = %48
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @mov_cenc_end_packet(i32* %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %5, align 4
  br label %110

108:                                              ; preds = %101
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %108, %106, %24
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @mov_cenc_start_packet(i32*) #1

declare dso_local i32* @ff_avc_find_startcode(i32*, i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @mov_cenc_write_encrypted(i32*, i32*, i32*, i32) #1

declare dso_local i32 @auxiliary_info_add_subsample(i32*, i32, i32) #1

declare dso_local i32 @mov_cenc_end_packet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
