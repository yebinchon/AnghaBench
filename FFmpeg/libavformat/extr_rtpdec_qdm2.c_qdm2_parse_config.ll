; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_qdm2.c_qdm2_parse_config.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_qdm2.c_qdm2_parse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"frma\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"QDM2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"QDCA\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*, i8*, i8*)* @qdm2_parse_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdm2_parse_config(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %8, align 8
  store i8* %13, i8** %10, align 8
  br label %14

14:                                               ; preds = %173, %4
  %15 = load i8*, i8** %9, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = ptrtoint i8* %15 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  %20 = icmp sge i64 %19, 2
  br i1 %20, label %21, label %178

21:                                               ; preds = %14
  %22 = load i8*, i8** %10, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %44, label %32

32:                                               ; preds = %21
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  %43 = icmp ugt i32 %42, 4
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %32, %21
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %45, i32* %5, align 4
  br label %181

46:                                               ; preds = %41
  %47 = load i32, i32* %12, align 4
  switch i32 %47, label %173 [
    i32 0, label %48
    i32 1, label %58
    i32 2, label %59
    i32 3, label %70
    i32 4, label %81
  ]

48:                                               ; preds = %46
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = load i32, i32* %11, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %181

58:                                               ; preds = %46
  br label %173

59:                                               ; preds = %46
  %60 = load i32, i32* %11, align 4
  %61 = icmp ult i32 %60, 3
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %63, i32* %5, align 4
  br label %181

64:                                               ; preds = %59
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load i8, i8* %66, align 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i8 %67, i8* %69, align 4
  br label %173

70:                                               ; preds = %46
  %71 = load i32, i32* %11, align 4
  %72 = icmp ult i32 %71, 4
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %74, i32* %5, align 4
  br label %181

75:                                               ; preds = %70
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  %78 = call i32 @AV_RB16(i8* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  br label %173

81:                                               ; preds = %46
  %82 = load i32, i32* %11, align 4
  %83 = icmp ult i32 %82, 30
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %85, i32* %5, align 4
  br label %181

86:                                               ; preds = %81
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = call i32 @av_freep(i32* %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = add i32 26, %95
  %97 = call i32 @ff_alloc_extradata(%struct.TYPE_8__* %94, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = call i32 @AVERROR(i32 %100)
  store i32 %101, i32* %5, align 4
  br label %181

102:                                              ; preds = %86
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @AV_WB32(i32 %107, i32 12)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 4
  %115 = call i32 @memcpy(i32 %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 8
  %122 = call i32 @memcpy(i32 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 12
  %129 = load i32, i32* %11, align 4
  %130 = add i32 6, %129
  %131 = call i32 @AV_WB32(i32 %128, i32 %130)
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 16
  %138 = call i32 @memcpy(i32 %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 20
  %145 = load i8*, i8** %10, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2
  %147 = load i32, i32* %11, align 4
  %148 = sub i32 %147, 2
  %149 = call i32 @memcpy(i32 %144, i8* %146, i32 %148)
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 18
  %156 = load i32, i32* %11, align 4
  %157 = add i32 %155, %156
  %158 = call i32 @AV_WB32(i32 %157, i32 8)
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 22
  %165 = load i32, i32* %11, align 4
  %166 = add i32 %164, %165
  %167 = call i32 @AV_WB32(i32 %166, i32 0)
  %168 = load i8*, i8** %10, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 26
  %170 = call i32 @AV_RB32(i8* %169)
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %46, %102, %75, %64, %58
  %174 = load i32, i32* %11, align 4
  %175 = load i8*, i8** %10, align 8
  %176 = zext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %10, align 8
  br label %14

178:                                              ; preds = %14
  %179 = load i32, i32* @EAGAIN, align 4
  %180 = call i32 @AVERROR(i32 %179)
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %178, %99, %84, %73, %62, %48, %44
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @AV_RB16(i8*) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @ff_alloc_extradata(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_WB32(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @AV_RB32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
