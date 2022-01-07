; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rmdec.c_rm_read_multi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rmdec.c_rm_read_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"MLTI with multiple (%d) MDPR\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, %struct.TYPE_12__*, i8*)* @rm_read_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm_read_multi(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_12__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @avio_rb16(i32* %16)
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %25, %4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @avio_rb16(i32* %23)
  br label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %12, align 4
  br label %18

28:                                               ; preds = %18
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @avio_rb16(i32* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @avpriv_request_sample(%struct.TYPE_13__* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %28
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %119, %37
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %122

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %99

45:                                               ; preds = %42
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = call %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__* %46, i32* null)
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %15, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %49 = icmp ne %struct.TYPE_12__* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %5, align 4
  br label %123

54:                                               ; preds = %45
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = shl i32 %58, 16
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %57, %60
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @AVMEDIA_TYPE_DATA, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 4
  %88 = call i32 (...) @ff_rm_alloc_rmstream()
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %54
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = call i32 @AVERROR(i32 %96)
  store i32 %97, i32* %5, align 4
  br label %123

98:                                               ; preds = %54
  br label %101

99:                                               ; preds = %42
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %15, align 8
  br label %101

101:                                              ; preds = %99, %98
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @avio_rb32(i32* %102)
  store i32 %103, i32* %14, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @ff_rm_read_mdpr_codecdata(%struct.TYPE_13__* %104, i32 %107, %struct.TYPE_12__* %108, i32 %111, i32 %112, i32* null)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %101
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %5, align 4
  br label %123

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %38

122:                                              ; preds = %38
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %116, %95, %50
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_rm_alloc_rmstream(...) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @ff_rm_read_mdpr_codecdata(%struct.TYPE_13__*, i32, %struct.TYPE_12__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
