; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_assdec.c_read_dialogue.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_assdec.c_read_dialogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8* }

@.str = private unnamed_addr constant [48 x i8] c"Dialogue: %*[^,],%d:%d:%d%*c%d,%d:%d:%d%*c%d,%n\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%u,%d,%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32*, i32*)* @read_dialogue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_dialogue(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @sscanf(i32* %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %12)
  %25 = icmp sge i32 %24, 8
  br i1 %25, label %26, label %126

26:                                               ; preds = %5
  %27 = load i32, i32* %12, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %126

29:                                               ; preds = %26
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 10
  %32 = call i32 @atoi(i32* %31)
  store i32 %32, i32* %22, align 4
  %33 = load i32, i32* %18, align 4
  %34 = sext i32 %33 to i64
  %35 = mul nsw i64 %34, 3600
  %36 = load i32, i32* %19, align 4
  %37 = sext i32 %36 to i64
  %38 = mul nsw i64 %37, 60
  %39 = add nsw i64 %35, %38
  %40 = load i32, i32* %20, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = mul nsw i64 %42, 100
  %44 = load i32, i32* %21, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %49, 3600
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = mul nsw i64 %52, 60
  %54 = add nsw i64 %50, %53
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = mul nsw i64 %57, 100
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = trunc i64 %61 to i32
  %63 = load i32*, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %64, %66
  %68 = load i32*, i32** %11, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = call i32 @av_bprint_clear(%struct.TYPE_7__* %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %22, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = call i32 @av_bprintf(%struct.TYPE_7__* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %76, i32* %80)
  br label %82

82:                                               ; preds = %115, %29
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %82
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %90, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 13
  br i1 %99, label %113, label %100

100:                                              ; preds = %87, %82
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %103, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 10
  br label %113

113:                                              ; preds = %100, %87
  %114 = phi i1 [ true, %87 ], [ %112, %100 ]
  br i1 %114, label %115, label %125

115:                                              ; preds = %113
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %120, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %118, i64 %123
  store i8 0, i8* %124, align 1
  br label %82

125:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  br label %127

126:                                              ; preds = %26, %5
  store i32 -1, i32* %6, align 4
  br label %127

127:                                              ; preds = %126, %125
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i32 @sscanf(i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @atoi(i32*) #1

declare dso_local i32 @av_bprint_clear(%struct.TYPE_7__*) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_7__*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
