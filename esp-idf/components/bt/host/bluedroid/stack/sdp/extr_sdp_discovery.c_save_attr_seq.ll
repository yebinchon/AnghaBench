; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_discovery.c_save_attr_seq.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_discovery.c_save_attr_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SDP - Wrong type: 0x%02x in attr_rsp\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"SDP - Bad len in attr_rsp %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"SDP - DB full add_record\0A\00", align 1
@UINT_DESC_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"SDP - Bad type: 0x%02x or len: %d in attr_rsp\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"SDP - DB full add_attr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*, i32*)* @save_attr_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @save_attr_seq(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %6, align 8
  %16 = load i32, i32* %14, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = ashr i32 %17, 3
  %19 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  %23 = call i32 (i8*, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32* null, i32** %4, align 8
  br label %94

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32* @sdpu_get_len_from_type(i32* %25, i32 %26, i32* %8)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ugt i32* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i8*, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32* null, i32** %4, align 8
  br label %94

37:                                               ; preds = %24
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @add_record(i32 %40, i32 %43)
  store i32* %44, i32** %13, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %37
  %48 = call i32 (i8*, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %94

49:                                               ; preds = %37
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32* %53, i32** %12, align 8
  br label %54

54:                                               ; preds = %91, %49
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = icmp ult i32* %55, %56
  br i1 %57, label %58, label %92

58:                                               ; preds = %54
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %6, align 8
  %61 = load i32, i32* %59, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32* @sdpu_get_len_from_type(i32* %62, i32 %63, i32* %9)
  store i32* %64, i32** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = ashr i32 %65, 3
  %67 = load i32, i32* @UINT_DESC_TYPE, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 2
  br i1 %71, label %72, label %76

72:                                               ; preds = %69, %58
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (i8*, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32 %74)
  store i32* null, i32** %4, align 8
  br label %94

76:                                               ; preds = %69
  %77 = load i32, i32* %10, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @BE_STREAM_TO_UINT16(i32 %77, i32* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32* @add_attr(i32* %80, i32 %83, i32* %84, i32 %85, i32* null, i32 0)
  store i32* %86, i32** %6, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %76
  %90 = call i32 (i8*, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %94

91:                                               ; preds = %76
  br label %54

92:                                               ; preds = %54
  %93 = load i32*, i32** %6, align 8
  store i32* %93, i32** %4, align 8
  br label %94

94:                                               ; preds = %92, %89, %72, %47, %34, %21
  %95 = load i32*, i32** %4, align 8
  ret i32* %95
}

declare dso_local i32 @SDP_TRACE_WARNING(i8*, ...) #1

declare dso_local i32* @sdpu_get_len_from_type(i32*, i32, i32*) #1

declare dso_local i32* @add_record(i32, i32) #1

declare dso_local i32 @BE_STREAM_TO_UINT16(i32, i32*) #1

declare dso_local i32* @add_attr(i32*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
