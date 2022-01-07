; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_av1.c_ff_isom_write_av1c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_av1.c_ff_isom_write_av1c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_isom_write_av1c(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %21, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %28, i32* %4, align 4
  br label %178

29:                                               ; preds = %3
  %30 = call i32 @avio_open_dyn_buf(i32** %8)
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* %20, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %20, align 4
  store i32 %34, i32* %4, align 4
  br label %178

35:                                               ; preds = %29
  %36 = call i32 @avio_open_dyn_buf(i32** %9)
  store i32 %36, i32* %20, align 4
  %37 = load i32, i32* %20, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %160

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %90, %40
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %98

44:                                               ; preds = %41
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @parse_obu_header(i32* %45, i32 %46, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19)
  store i32 %47, i32* %24, align 4
  %48 = load i32, i32* %24, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %24, align 4
  store i32 %51, i32* %20, align 4
  br label %160

52:                                               ; preds = %44
  %53 = load i32, i32* %17, align 4
  switch i32 %53, label %89 [
    i32 128, label %54
    i32 129, label %79
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* %21, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %21, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %21, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %54
  %63 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %63, i32* %20, align 4
  br label %160

64:                                               ; preds = %59
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @parse_sequence_header(%struct.TYPE_3__* %10, i32* %68, i32 %69)
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %160

74:                                               ; preds = %64
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %24, align 4
  %78 = call i32 @avio_write(i32* %75, i32* %76, i32 %77)
  br label %90

79:                                               ; preds = %52
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %83, i32* %20, align 4
  br label %160

84:                                               ; preds = %79
  %85 = load i32*, i32** %9, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %24, align 4
  %88 = call i32 @avio_write(i32* %85, i32* %86, i32 %87)
  br label %90

89:                                               ; preds = %52
  br label %90

90:                                               ; preds = %89, %84, %74
  %91 = load i32, i32* %24, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %24, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %6, align 8
  br label %41

98:                                               ; preds = %41
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @avio_close_dyn_buf(i32* %99, i32** %13)
  store i32 %100, i32* %22, align 4
  %101 = load i32, i32* %22, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %104, i32* %20, align 4
  br label %160

105:                                              ; preds = %98
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %107 = call i32 @init_put_bits(i32* %11, i32* %106, i32 16)
  %108 = call i32 @put_bits(i32* %11, i32 1, i32 1)
  %109 = call i32 @put_bits(i32* %11, i32 7, i32 1)
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @put_bits(i32* %11, i32 3, i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @put_bits(i32* %11, i32 5, i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @put_bits(i32* %11, i32 1, i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %120, 8
  %122 = zext i1 %121 to i32
  %123 = call i32 @put_bits(i32* %11, i32 1, i32 %122)
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 12
  %127 = zext i1 %126 to i32
  %128 = call i32 @put_bits(i32* %11, i32 1, i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @put_bits(i32* %11, i32 1, i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @put_bits(i32* %11, i32 1, i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @put_bits(i32* %11, i32 1, i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @put_bits(i32* %11, i32 2, i32 %139)
  %141 = call i32 @put_bits(i32* %11, i32 8, i32 0)
  %142 = call i32 @flush_put_bits(i32* %11)
  %143 = load i32*, i32** %5, align 8
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %145 = call i32 @avio_write(i32* %143, i32* %144, i32 16)
  %146 = load i32*, i32** %5, align 8
  %147 = load i32*, i32** %13, align 8
  %148 = load i32, i32* %22, align 4
  %149 = call i32 @avio_write(i32* %146, i32* %147, i32 %148)
  %150 = load i32*, i32** %9, align 8
  %151 = call i32 @avio_close_dyn_buf(i32* %150, i32** %14)
  store i32 %151, i32* %23, align 4
  %152 = load i32, i32* %23, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %105
  %155 = load i32*, i32** %5, align 8
  %156 = load i32*, i32** %14, align 8
  %157 = load i32, i32* %23, align 4
  %158 = call i32 @avio_write(i32* %155, i32* %156, i32 %157)
  br label %159

159:                                              ; preds = %154, %105
  br label %160

160:                                              ; preds = %159, %103, %82, %73, %62, %50, %39
  %161 = load i32*, i32** %13, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = load i32*, i32** %8, align 8
  %165 = call i32 @avio_close_dyn_buf(i32* %164, i32** %13)
  br label %166

166:                                              ; preds = %163, %160
  %167 = load i32*, i32** %14, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load i32*, i32** %9, align 8
  %171 = call i32 @avio_close_dyn_buf(i32* %170, i32** %14)
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i32*, i32** %13, align 8
  %174 = call i32 @av_free(i32* %173)
  %175 = load i32*, i32** %14, align 8
  %176 = call i32 @av_free(i32* %175)
  %177 = load i32, i32* %20, align 4
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %172, %33, %27
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @parse_obu_header(i32*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @parse_sequence_header(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
