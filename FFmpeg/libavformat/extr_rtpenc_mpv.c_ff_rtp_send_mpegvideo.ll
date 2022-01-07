; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_mpv.c_ff_rtp_send_mpegvideo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_mpv.c_ff_rtp_send_mpegvideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_rtp_send_mpegvideo(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %7, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %12, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %31

31:                                               ; preds = %130, %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %208

34:                                               ; preds = %31
  store i32 0, i32* %17, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %35, 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %8, align 4
  store i32 1, i32* %14, align 4
  br label %130

42:                                               ; preds = %34
  %43 = load i32*, i32** %5, align 8
  store i32* %43, i32** %19, align 8
  br label %44

44:                                               ; preds = %42, %128
  store i32 -1, i32* %20, align 4
  %45 = load i32*, i32** %19, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = call i32* @avpriv_find_start_code(i32* %45, i32* %46, i32* %20)
  store i32* %47, i32** %18, align 8
  %48 = load i32, i32* %20, align 4
  %49 = and i32 %48, -256
  %50 = icmp eq i32 %49, 256
  br i1 %50, label %51, label %127

51:                                               ; preds = %44
  %52 = load i32, i32* %20, align 4
  %53 = icmp eq i32 %52, 256
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load i32*, i32** %18, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 56
  %59 = ashr i32 %58, 3
  store i32 %59, i32* %15, align 4
  %60 = load i32*, i32** %18, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 2
  %64 = load i32*, i32** %18, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 6
  %68 = or i32 %63, %67
  store i32 %68, i32* %16, align 4
  br label %69

69:                                               ; preds = %54, %51
  %70 = load i32, i32* %20, align 4
  %71 = icmp eq i32 %70, 440
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 1, i32* %17, align 4
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i32*, i32** %18, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = ptrtoint i32* %74 to i64
  %77 = ptrtoint i32* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 4
  %80 = sub nsw i64 %79, 4
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp sle i64 %80, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %73
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  store i32 1, i32* %14, align 4
  %88 = load i32*, i32** %18, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = ptrtoint i32* %88 to i64
  %91 = ptrtoint i32* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 4
  %94 = sub nsw i64 %93, 4
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %8, align 4
  br label %129

96:                                               ; preds = %84
  %97 = load i32*, i32** %18, align 8
  store i32* %97, i32** %19, align 8
  br label %126

98:                                               ; preds = %73
  %99 = load i32*, i32** %19, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = ptrtoint i32* %99 to i64
  %102 = ptrtoint i32* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 4
  %105 = icmp sgt i64 %104, 4
  br i1 %105, label %106, label %125

106:                                              ; preds = %98
  %107 = load i32*, i32** %18, align 8
  %108 = load i32*, i32** %19, align 8
  %109 = ptrtoint i32* %107 to i64
  %110 = ptrtoint i32* %108 to i64
  %111 = sub i64 %109, %110
  %112 = sdiv exact i64 %111, 4
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %112, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %106
  %117 = load i32*, i32** %19, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = ptrtoint i32* %117 to i64
  %120 = ptrtoint i32* %118 to i64
  %121 = sub i64 %119, %120
  %122 = sdiv exact i64 %121, 4
  %123 = sub nsw i64 %122, 4
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %8, align 4
  store i32 1, i32* %14, align 4
  br label %125

125:                                              ; preds = %116, %106, %98
  br label %129

126:                                              ; preds = %96
  br label %128

127:                                              ; preds = %44
  br label %129

128:                                              ; preds = %126
  br label %44

129:                                              ; preds = %127, %125, %87
  br label %130

130:                                              ; preds = %129, %40
  store i32 0, i32* %9, align 4
  %131 = load i32, i32* %16, align 4
  %132 = shl i32 %131, 16
  %133 = load i32, i32* %9, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %17, align 4
  %136 = shl i32 %135, 13
  %137 = load i32, i32* %9, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %13, align 4
  %140 = shl i32 %139, 12
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %14, align 4
  %144 = shl i32 %143, 11
  %145 = load i32, i32* %9, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %15, align 4
  %148 = shl i32 %147, 8
  %149 = load i32, i32* %9, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %9, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  store i32* %153, i32** %11, align 8
  %154 = load i32, i32* %9, align 4
  %155 = ashr i32 %154, 24
  %156 = load i32*, i32** %11, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %11, align 8
  store i32 %155, i32* %156, align 4
  %158 = load i32, i32* %9, align 4
  %159 = ashr i32 %158, 16
  %160 = load i32*, i32** %11, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %11, align 8
  store i32 %159, i32* %160, align 4
  %162 = load i32, i32* %9, align 4
  %163 = ashr i32 %162, 8
  %164 = load i32*, i32** %11, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %11, align 8
  store i32 %163, i32* %164, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %11, align 8
  store i32 %166, i32* %167, align 4
  %169 = load i32*, i32** %11, align 8
  %170 = load i32*, i32** %5, align 8
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @memcpy(i32* %169, i32* %170, i32 %171)
  %173 = load i32, i32* %8, align 4
  %174 = load i32*, i32** %11, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32* %176, i32** %11, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i32*, i32** %11, align 8
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = ptrtoint i32* %186 to i64
  %191 = ptrtoint i32* %189 to i64
  %192 = sub i64 %190, %191
  %193 = sdiv exact i64 %192, 4
  %194 = trunc i64 %193 to i32
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp eq i32 %195, %196
  %198 = zext i1 %197 to i32
  %199 = call i32 @ff_rtp_send_data(%struct.TYPE_6__* %182, i32* %185, i32 %194, i32 %198)
  %200 = load i32, i32* %8, align 4
  %201 = load i32*, i32** %5, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  store i32* %203, i32** %5, align 8
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* %6, align 4
  %206 = sub nsw i32 %205, %204
  store i32 %206, i32* %6, align 4
  %207 = load i32, i32* %14, align 4
  store i32 %207, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %31

208:                                              ; preds = %31
  ret void
}

declare dso_local i32* @avpriv_find_start_code(i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ff_rtp_send_data(%struct.TYPE_6__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
