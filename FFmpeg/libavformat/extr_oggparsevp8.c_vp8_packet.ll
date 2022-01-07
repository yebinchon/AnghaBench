; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsevp8.c_vp8_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsevp8.c_vp8_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__**, %struct.ogg* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32*, i32, i64, i32, i32, i64, i32, i32*, i64, i32, i32 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@OGG_FLAG_EOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @vp8_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp8_packet(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ogg*, align 8
  %6 = alloca %struct.ogg_stream*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.ogg*, %struct.ogg** %13, align 8
  store %struct.ogg* %14, %struct.ogg** %5, align 8
  %15 = load %struct.ogg*, %struct.ogg** %5, align 8
  %16 = getelementptr inbounds %struct.ogg, %struct.ogg* %15, i32 0, i32 0
  %17 = load %struct.ogg_stream*, %struct.ogg_stream** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %17, i64 %19
  store %struct.ogg_stream* %20, %struct.ogg_stream** %6, align 8
  %21 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %22 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %25 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  store i32* %28, i32** %7, align 8
  %29 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %30 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %35 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %189

39:                                               ; preds = %33, %2
  %40 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %41 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @OGG_FLAG_EOS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %189, label %46

46:                                               ; preds = %39
  %47 = load i32*, i32** %7, align 8
  store i32* %47, i32** %10, align 8
  %48 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %49 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 4
  %55 = and i32 %54, 1
  store i32 %55, i32* %9, align 4
  %56 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %57 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 %58
  store i32* %60, i32** %10, align 8
  store i32* %60, i32** %11, align 8
  br label %61

61:                                               ; preds = %105, %46
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %64 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %108

67:                                               ; preds = %61
  %68 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %69 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 255
  br i1 %75, label %76, label %94

76:                                               ; preds = %67
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 4
  %81 = and i32 %80, 1
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %9, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %86 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %85, i32 0, i32 7
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %84, i64 %92
  store i32* %93, i32** %10, align 8
  br label %94

94:                                               ; preds = %76, %67
  %95 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %96 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %95, i32 0, i32 7
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %11, align 8
  br label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %61

108:                                              ; preds = %61
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %112 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @vp8_gptopts(%struct.TYPE_6__* %109, i32 %110, i32 %113, i32* null)
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = sub nsw i64 %114, %116
  %118 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %119 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %118, i32 0, i32 8
  store i64 %117, i64* %119, align 8
  %120 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %121 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %120, i32 0, i32 2
  store i64 %117, i64* %121, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %124, i64 %126
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %188

133:                                              ; preds = %108
  %134 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %135 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %139, i64 %141
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i64 %136, i64* %144, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %147, i64 %149
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %187

155:                                              ; preds = %133
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %158, i64 %160
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %187

167:                                              ; preds = %155
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %169, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %170, i64 %172
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %179, i64 %181
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = sub nsw i64 %185, %176
  store i64 %186, i64* %184, align 8
  br label %187

187:                                              ; preds = %167, %155, %133
  br label %188

188:                                              ; preds = %187, %108
  br label %189

189:                                              ; preds = %188, %39, %33
  %190 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %191 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = icmp sgt i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %189
  %195 = load i32*, i32** %7, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = ashr i32 %197, 4
  %199 = and i32 %198, 1
  %200 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %201 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %200, i32 0, i32 9
  store i32 %199, i32* %201, align 8
  br label %202

202:                                              ; preds = %194, %189
  ret i32 0
}

declare dso_local i64 @vp8_gptopts(%struct.TYPE_6__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
