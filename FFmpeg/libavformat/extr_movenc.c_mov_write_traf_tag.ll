; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_traf_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_traf_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_13__ = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"traf\00", align 1
@MODE_ISM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_15__*, %struct.TYPE_14__*, i8*, i32)* @mov_write_traf_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_traf_tag(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i8* @avio_tell(i32* %17)
  store i8* %18, i8** %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @avio_wb32(i32* %19, i32 0)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @ffio_wfourcc(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @mov_write_tfhd_tag(i32* %23, %struct.TYPE_15__* %24, %struct.TYPE_14__* %25, i8* %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MODE_ISM, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = call i32 @mov_write_tfdt_tag(i32* %34, %struct.TYPE_14__* %35)
  br label %37

37:                                               ; preds = %33, %5
  store i32 1, i32* %12, align 4
  br label %38

38:                                               ; preds = %83, %37
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %86

44:                                               ; preds = %38
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %61, %70
  %72 = icmp ne i64 %52, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %44
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @mov_write_trun_tag(i32* %74, %struct.TYPE_15__* %75, %struct.TYPE_14__* %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %73, %44
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %38

86:                                               ; preds = %38
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @mov_write_trun_tag(i32* %87, %struct.TYPE_15__* %88, %struct.TYPE_14__* %89, i32 %90, i32 %91, i32 %94)
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MODE_ISM, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %158

101:                                              ; preds = %86
  %102 = load i32*, i32** %6, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = call i32 @mov_write_tfxd_tag(i32* %102, %struct.TYPE_14__* %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %157

109:                                              ; preds = %101
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 16, %112
  %114 = add nsw i32 21, %113
  store i32 %114, i32* %15, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %109
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i64 %127
  store %struct.TYPE_16__* %128, %struct.TYPE_16__** %16, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %119
  %134 = load i32*, i32** %6, align 8
  %135 = call i8* @avio_tell(i32* %134)
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %133, %119
  br label %139

139:                                              ; preds = %138, %109
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 8, %141
  %143 = call i32 @avio_wb32(i32* %140, i32 %142)
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 @ffio_wfourcc(i32* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %146

146:                                              ; preds = %153, %139
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 @avio_w8(i32* %151, i32 0)
  br label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %14, align 4
  br label %146

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %156, %101
  br label %158

158:                                              ; preds = %157, %86
  %159 = load i32*, i32** %6, align 8
  %160 = load i8*, i8** %11, align 8
  %161 = call i32 @update_size(i32* %159, i8* %160)
  ret i32 %161
}

declare dso_local i8* @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @mov_write_tfhd_tag(i32*, %struct.TYPE_15__*, %struct.TYPE_14__*, i8*) #1

declare dso_local i32 @mov_write_tfdt_tag(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @mov_write_trun_tag(i32*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @mov_write_tfxd_tag(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @update_size(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
