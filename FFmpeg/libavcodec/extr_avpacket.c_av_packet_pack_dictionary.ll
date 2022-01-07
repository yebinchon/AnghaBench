; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_avpacket.c_av_packet_pack_dictionary.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_avpacket.c_av_packet_pack_dictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @av_packet_pack_dictionary(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  store i32* null, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %87

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %53, %16
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %21 = call %struct.TYPE_4__* @av_dict_get(i32* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %19, i32 %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %6, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %82

23:                                               ; preds = %17
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strlen(i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strlen(i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %34, %35
  %37 = add i64 %36, 1
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %37, %38
  %40 = add i64 %39, 1
  store i64 %40, i64* %10, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32* @av_realloc(i32* %41, i64 %42)
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %23
  br label %84

47:                                               ; preds = %23
  %48 = load i32*, i32** %11, align 8
  store i32* %48, i32** %7, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @INT_MAX, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %84

53:                                               ; preds = %47
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  %64 = call i32 @memcpy(i32* %58, i32 %61, i64 %63)
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %9, align 8
  %77 = add i64 %76, 1
  %78 = call i32 @memcpy(i32* %72, i32 %75, i64 %77)
  %79 = load i64, i64* %10, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i32*, i32** %5, align 8
  store i32 %80, i32* %81, align 4
  br label %17

82:                                               ; preds = %17
  %83 = load i32*, i32** %7, align 8
  store i32* %83, i32** %3, align 8
  br label %87

84:                                               ; preds = %52, %46
  %85 = call i32 @av_freep(i32** %7)
  %86 = load i32*, i32** %5, align 8
  store i32 0, i32* %86, align 4
  store i32* null, i32** %3, align 8
  br label %87

87:                                               ; preds = %84, %82, %15
  %88 = load i32*, i32** %3, align 8
  ret i32* %88
}

declare dso_local %struct.TYPE_4__* @av_dict_get(i32*, i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32* @av_realloc(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
