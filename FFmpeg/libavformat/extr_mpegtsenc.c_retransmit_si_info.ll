; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegtsenc.c_retransmit_si_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegtsenc.c_retransmit_si_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i32, i32* }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32, i64)* @retransmit_si_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retransmit_si_info(%struct.TYPE_8__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %40, label %23

23:                                               ; preds = %17, %4
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %32, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %27, %23
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %37, %27, %17
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i8* @FFMAX(i64 %45, i64 %48)
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %44, %40
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = call i32 @mpegts_write_sdt(%struct.TYPE_8__* %54)
  br label %56

56:                                               ; preds = %53, %37
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %83, label %66

66:                                               ; preds = %60, %56
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %75, %78
  br i1 %79, label %83, label %80

80:                                               ; preds = %70, %66
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %119

83:                                               ; preds = %80, %70, %60
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i8* @FFMAX(i64 %88, i64 %91)
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %87, %83
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = call i32 @mpegts_write_pat(%struct.TYPE_8__* %97)
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %115, %96
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %99
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @mpegts_write_pmt(%struct.TYPE_8__* %106, i32 %113)
  br label %115

115:                                              ; preds = %105
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %99

118:                                              ; preds = %99
  br label %119

119:                                              ; preds = %118, %80
  ret void
}

declare dso_local i8* @FFMAX(i64, i64) #1

declare dso_local i32 @mpegts_write_sdt(%struct.TYPE_8__*) #1

declare dso_local i32 @mpegts_write_pat(%struct.TYPE_8__*) #1

declare dso_local i32 @mpegts_write_pmt(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
