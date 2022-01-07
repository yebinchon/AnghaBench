; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsespeex.c_speex_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsespeex.c_speex_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ogg* }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32, i64, i64, i64, i64, i64, i64, %struct.speex_params* }
%struct.speex_params = type { i32, i64 }

@OGG_FLAG_EOS = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @speex_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speex_packet(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ogg*, align 8
  %6 = alloca %struct.ogg_stream*, align 8
  %7 = alloca %struct.speex_params*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.ogg*, %struct.ogg** %10, align 8
  store %struct.ogg* %11, %struct.ogg** %5, align 8
  %12 = load %struct.ogg*, %struct.ogg** %5, align 8
  %13 = getelementptr inbounds %struct.ogg, %struct.ogg* %12, i32 0, i32 0
  %14 = load %struct.ogg_stream*, %struct.ogg_stream** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %14, i64 %16
  store %struct.ogg_stream* %17, %struct.ogg_stream** %6, align 8
  %18 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %19 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %18, i32 0, i32 7
  %20 = load %struct.speex_params*, %struct.speex_params** %19, align 8
  store %struct.speex_params* %20, %struct.speex_params** %7, align 8
  %21 = load %struct.speex_params*, %struct.speex_params** %7, align 8
  %22 = getelementptr inbounds %struct.speex_params, %struct.speex_params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %25 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @OGG_FLAG_EOS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %2
  %31 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %32 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %30
  %37 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %38 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %43 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %46 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %51 = call i32 @ogg_page_packets(%struct.ogg_stream* %50)
  %52 = sub nsw i32 %51, 1
  %53 = mul nsw i32 %49, %52
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %48, %54
  %56 = load %struct.speex_params*, %struct.speex_params** %7, align 8
  %57 = getelementptr inbounds %struct.speex_params, %struct.speex_params* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %41, %36, %30, %2
  %59 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %60 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %82, label %63

63:                                               ; preds = %58
  %64 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %65 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %70 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %74 = call i32 @ogg_page_packets(%struct.ogg_stream* %73)
  %75 = mul nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %71, %76
  %78 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %79 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %81 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %80, i32 0, i32 1
  store i64 %77, i64* %81, align 8
  br label %82

82:                                               ; preds = %68, %63, %58
  %83 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %84 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @OGG_FLAG_EOS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %82
  %90 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %91 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %94 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %89
  %98 = load %struct.speex_params*, %struct.speex_params** %7, align 8
  %99 = getelementptr inbounds %struct.speex_params, %struct.speex_params* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.speex_params*, %struct.speex_params** %7, align 8
  %104 = getelementptr inbounds %struct.speex_params, %struct.speex_params* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %107 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %106, i32 0, i32 6
  store i64 %105, i64* %107, align 8
  br label %113

108:                                              ; preds = %97, %89, %82
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %112 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %111, i32 0, i32 6
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %108, %102
  ret i32 0
}

declare dso_local i32 @ogg_page_packets(%struct.ogg_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
