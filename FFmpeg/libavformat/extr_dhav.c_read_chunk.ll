; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dhav.c_read_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dhav.c_read_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8* }

@AVERROR_EOF = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @read_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_chunk(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @avio_feof(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %19, i32* %2, align 4
  br label %178

20:                                               ; preds = %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @avio_rl32(i32 %23)
  %25 = call i8* @MKTAG(i8 signext 68, i8 signext 72, i8 signext 65, i8 signext 86)
  %26 = icmp ne i8* %24, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 32768
  store i32 %31, i32* %29, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SEEK_SET, align 4
  %39 = call i32 @avio_seek(i32 %34, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %68, %27
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @avio_rl32(i32 %43)
  %45 = call i8* @MKTAG(i8 signext 68, i8 signext 72, i8 signext 65, i8 signext 86)
  %46 = icmp ne i8* %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %40
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @avio_feof(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %54, i32* %2, align 4
  br label %178

55:                                               ; preds = %47
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 32768
  store i32 %59, i32* %57, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @avio_skip(i32 %62, i32 32764)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %2, align 4
  br label %178

68:                                               ; preds = %55
  br label %40

69:                                               ; preds = %40
  br label %70

70:                                               ; preds = %69, %20
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @avio_tell(i32 %73)
  %75 = sub nsw i32 %74, 4
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @avio_r8(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @avio_r8(i32 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 7
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @avio_r8(i32 %94)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 6
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @avio_r8(i32 %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 5
  store i8* %101, i8** %103, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @avio_rl32(i32 %106)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @avio_rl32(i32 %112)
  %114 = ptrtoint i8* %113 to i32
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp slt i32 %115, 24
  br i1 %116, label %117, label %119

117:                                              ; preds = %70
  %118 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %118, i32* %2, align 4
  br label %178

119:                                              ; preds = %70
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 241
  br i1 %123, label %124, label %138

124:                                              ; preds = %119
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sub nsw i32 %128, 16
  %130 = call i32 @avio_skip(i32 %127, i32 %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* %9, align 4
  br label %136

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %135, %133
  %137 = phi i32 [ %134, %133 ], [ 0, %135 ]
  store i32 %137, i32* %2, align 4
  br label %178

138:                                              ; preds = %119
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i8* @avio_rl32(i32 %141)
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  store i8* %142, i8** %144, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @avio_rl16(i32 %147)
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @avio_r8(i32 %153)
  %155 = ptrtoint i8* %154 to i32
  store i32 %155, i32* %6, align 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @avio_skip(i32 %158, i32 1)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @parse_ext(%struct.TYPE_6__* %160, i32 %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %138
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %2, align 4
  br label %178

167:                                              ; preds = %138
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @avio_tell(i32 %170)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %5, align 4
  %173 = sub nsw i32 %172, 8
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %7, align 4
  %176 = sub nsw i32 %174, %175
  %177 = sub nsw i32 %173, %176
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %167, %165, %136, %117, %66, %53, %18
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i64 @avio_feof(i32) #1

declare dso_local i8* @avio_rl32(i32) #1

declare dso_local i8* @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @avio_seek(i32, i32, i32) #1

declare dso_local i32 @avio_skip(i32, i32) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i8* @avio_r8(i32) #1

declare dso_local i32 @avio_rl16(i32) #1

declare dso_local i32 @parse_ext(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
