; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_build_partial_attrib_entry.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_build_partial_attrib_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDP_MAX_ATTR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"sdpu_build_partial_attrib_entry cannot get a buffer!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sdpu_build_partial_attrib_entry(i32* %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i32, i32* @SDP_MAX_ATTR_LEN, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = call i64 @osi_malloc(i32 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = call i32 @SDP_TRACE_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %62

23:                                               ; preds = %4
  %24 = load i32*, i32** %10, align 8
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @sdpu_build_attrib_entry(i32* %25, i32* %26)
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @sdpu_get_attrib_entry_len(i32* %28)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64*, i64** %9, align 8
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %30, %32
  %34 = load i64, i64* %8, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = load i64, i64* %13, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %37, %39
  br label %43

41:                                               ; preds = %23
  %42 = load i64, i64* %8, align 8
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi i64 [ %40, %36 ], [ %42, %41 ]
  store i64 %44, i64* %12, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @memcpy(i32* %45, i32* %49, i64 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %6, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64*, i64** %9, align 8
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, %55
  store i64 %58, i64* %56, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @osi_free(i32* %59)
  %61 = load i32*, i32** %6, align 8
  store i32* %61, i32** %5, align 8
  br label %62

62:                                               ; preds = %43, %21
  %63 = load i32*, i32** %5, align 8
  ret i32* %63
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @SDP_TRACE_ERROR(i8*) #1

declare dso_local i32 @sdpu_build_attrib_entry(i32*, i32*) #1

declare dso_local i64 @sdpu_get_attrib_entry_len(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @osi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
