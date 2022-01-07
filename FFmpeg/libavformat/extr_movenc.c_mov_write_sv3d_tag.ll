; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_sv3d_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_sv3d_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AVFMT_FLAG_BITEXACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Lavf\00", align 1
@LIBAVFORMAT_IDENT = common dso_local global i8* null, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Unsupported projection %d. sv3d not written.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sv3d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"svhd\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"proj\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"prhd\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"equi\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"cbmp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, %struct.TYPE_6__*)* @mov_write_sv3d_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_sv3d_tag(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AVFMT_FLAG_BITEXACT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %21

19:                                               ; preds = %3
  %20 = load i8*, i8** @LIBAVFORMAT_IDENT, align 8
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %18 ], [ %20, %19 ]
  store i8* %22, i8** %11, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 129
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 128
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 130
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = load i32, i32* @AV_LOG_WARNING, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @av_log(%struct.TYPE_7__* %38, i32 %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 0, i32* %4, align 4
  br label %143

44:                                               ; preds = %32, %27, %21
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @avio_tell(i32* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @avio_wb32(i32* %47, i32 0)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @ffio_wfourcc(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @avio_tell(i32* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @avio_wb32(i32* %53, i32 0)
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @ffio_wfourcc(i32* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @avio_wb32(i32* %57, i32 0)
  %59 = load i32*, i32** %6, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @avio_put_str(i32* %59, i8* %60)
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @update_size(i32* %62, i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @avio_tell(i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @avio_wb32(i32* %67, i32 0)
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @ffio_wfourcc(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @avio_wb32(i32* %71, i32 24)
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @ffio_wfourcc(i32* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @avio_wb32(i32* %75, i32 0)
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @avio_wb32(i32* %77, i32 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @avio_wb32(i32* %82, i32 %85)
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @avio_wb32(i32* %87, i32 %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %136 [
    i32 129, label %95
    i32 128, label %95
    i32 130, label %122
  ]

95:                                               ; preds = %44, %44
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @avio_wb32(i32* %96, i32 28)
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @ffio_wfourcc(i32* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @avio_wb32(i32* %100, i32 0)
  %102 = load i32*, i32** %6, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @avio_wb32(i32* %102, i32 %105)
  %107 = load i32*, i32** %6, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @avio_wb32(i32* %107, i32 %110)
  %112 = load i32*, i32** %6, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @avio_wb32(i32* %112, i32 %115)
  %117 = load i32*, i32** %6, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @avio_wb32(i32* %117, i32 %120)
  br label %136

122:                                              ; preds = %44
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @avio_wb32(i32* %123, i32 20)
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @ffio_wfourcc(i32* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @avio_wb32(i32* %127, i32 0)
  %129 = load i32*, i32** %6, align 8
  %130 = call i32 @avio_wb32(i32* %129, i32 0)
  %131 = load i32*, i32** %6, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @avio_wb32(i32* %131, i32 %134)
  br label %136

136:                                              ; preds = %44, %122, %95
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @update_size(i32* %137, i32 %138)
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @update_size(i32* %140, i32 %141)
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %136, %37
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, i32) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_put_str(i32*, i8*) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
