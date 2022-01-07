; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sapenc.c_sap_write_close.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sapenc.c_sap_write_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__**, i32, %struct.SAPState* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.SAPState = type { i32*, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @sap_write_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sap_write_close(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.SAPState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %8 = load %struct.SAPState*, %struct.SAPState** %7, align 8
  store %struct.SAPState* %8, %struct.SAPState** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %44, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %9
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %18, i64 %20
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %5, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  br label %44

28:                                               ; preds = %15
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = call i32 @av_write_trailer(%struct.TYPE_7__* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = call i32 @avio_closep(i32* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = call i32 @avformat_free_context(%struct.TYPE_7__* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 %40
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %43, align 8
  br label %44

44:                                               ; preds = %28, %27
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %9

47:                                               ; preds = %9
  %48 = load %struct.SAPState*, %struct.SAPState** %3, align 8
  %49 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %47
  %53 = load %struct.SAPState*, %struct.SAPState** %3, align 8
  %54 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %79

57:                                               ; preds = %52
  %58 = load %struct.SAPState*, %struct.SAPState** %3, align 8
  %59 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.SAPState*, %struct.SAPState** %3, align 8
  %64 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, 4
  store i32 %68, i32* %66, align 4
  %69 = load %struct.SAPState*, %struct.SAPState** %3, align 8
  %70 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.SAPState*, %struct.SAPState** %3, align 8
  %73 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.SAPState*, %struct.SAPState** %3, align 8
  %76 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ffurl_write(i64 %71, i32* %74, i32 %77)
  br label %79

79:                                               ; preds = %62, %57, %52, %47
  %80 = load %struct.SAPState*, %struct.SAPState** %3, align 8
  %81 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %80, i32 0, i32 0
  %82 = call i32 @av_freep(i32** %81)
  %83 = load %struct.SAPState*, %struct.SAPState** %3, align 8
  %84 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load %struct.SAPState*, %struct.SAPState** %3, align 8
  %89 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @ffurl_close(i64 %90)
  br label %92

92:                                               ; preds = %87, %79
  %93 = call i32 (...) @ff_network_close()
  ret i32 0
}

declare dso_local i32 @av_write_trailer(%struct.TYPE_7__*) #1

declare dso_local i32 @avio_closep(i32*) #1

declare dso_local i32 @avformat_free_context(%struct.TYPE_7__*) #1

declare dso_local i32 @ffurl_write(i64, i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @ffurl_close(i64) #1

declare dso_local i32 @ff_network_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
