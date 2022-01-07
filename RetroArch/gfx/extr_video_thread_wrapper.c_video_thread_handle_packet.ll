; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_thread_wrapper.c_video_thread_handle_packet.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_thread_wrapper.c_video_thread_handle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, float*, i32*, %struct.TYPE_33__*, %struct.TYPE_30__*, %struct.TYPE_23__*, %struct.TYPE_26__, i32, i32, %struct.video_viewport, i32, i32, i32 }
%struct.TYPE_33__ = type { i32 (i32*, i32*, i32, i32*, i32*)*, i32 (i32*, i32)*, i32 (i32*, i32, i32)*, i32 (i32*, i32, i32, i32)* }
%struct.TYPE_30__ = type { i32 (i32*, i32, i32)*, i32 (i32*, i32)*, i32 (i32*, i32, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32, i32)*, i32 (i32*, i32)* }
%struct.TYPE_23__ = type { i32 (i32*, i32*, i32)*, i32 (i32*, i32, i32)*, i32 (i32*)*, i32 (i32*, %struct.video_viewport*)*, i32 (i32*, i32)*, i32 (i32*)*, i32* (i32*, i32, i32)* }
%struct.TYPE_26__ = type { i32 }
%struct.video_viewport = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_34__, i32, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, i64 }
%struct.TYPE_21__ = type { i32, i32 (i32)*, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32, i32 (i32, i32, i32, i32, i32, i32, i32)*, i32 }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)* @video_thread_handle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_thread_handle_packet(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.video_viewport, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %11 = bitcast %struct.TYPE_25__* %6 to i8*
  %12 = bitcast %struct.TYPE_25__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 168, i1 false)
  store i32 0, i32* %7, align 4
  %13 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %437 [
    i32 141, label %15
    i32 142, label %52
    i32 130, label %85
    i32 131, label %113
    i32 129, label %173
    i32 145, label %209
    i32 132, label %237
    i32 134, label %274
    i32 135, label %307
    i32 133, label %335
    i32 143, label %368
    i32 144, label %414
    i32 128, label %436
  ]

15:                                               ; preds = %2
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 6
  %20 = load i32* (i32*, i32, i32)*, i32* (i32*, i32, i32)** %19, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 12
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 4
  %29 = call i32* %20(i32* %22, i32 %25, i32 %28)
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 3
  %43 = load i32 (i32*, %struct.video_viewport*)*, i32 (i32*, %struct.video_viewport*)** %42, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 9
  %49 = call i32 %43(i32* %46, %struct.video_viewport* %48)
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %51 = call i32 @video_thread_reply(%struct.TYPE_24__* %50, %struct.TYPE_25__* %6)
  br label %440

52:                                               ; preds = %2
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %80

57:                                               ; preds = %52
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %59, align 8
  %61 = icmp ne %struct.TYPE_23__* %60, null
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 5
  %67 = load i32 (i32*)*, i32 (i32*)** %66, align 8
  %68 = icmp ne i32 (i32*)* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 5
  %74 = load i32 (i32*)*, i32 (i32*)** %73, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 %74(i32* %77)
  br label %79

79:                                               ; preds = %69, %62, %57
  br label %80

80:                                               ; preds = %79, %52
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 2
  store i32* null, i32** %82, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %84 = call i32 @video_thread_reply(%struct.TYPE_24__* %83, %struct.TYPE_25__* %6)
  store i32 1, i32* %3, align 4
  br label %441

85:                                               ; preds = %2
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %87, align 8
  %89 = icmp ne %struct.TYPE_23__* %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %85
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 4
  %95 = load i32 (i32*, i32)*, i32 (i32*, i32)** %94, align 8
  %96 = icmp ne i32 (i32*, i32)* %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %90
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 5
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 4
  %102 = load i32 (i32*, i32)*, i32 (i32*, i32)** %101, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 %102(i32* %105, i32 %108)
  br label %110

110:                                              ; preds = %97, %90, %85
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %112 = call i32 @video_thread_reply(%struct.TYPE_24__* %111, %struct.TYPE_25__* %6)
  br label %440

113:                                              ; preds = %2
  %114 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 5
  store i32 0, i32* %114, align 4
  %115 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 4
  store i32 0, i32* %115, align 4
  %116 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 3
  store i32 0, i32* %116, align 4
  %117 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 2
  store i32 0, i32* %117, align 4
  %118 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 1
  store i32 0, i32* %118, align 4
  %119 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 0
  store i32 0, i32* %119, align 4
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 5
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 3
  %124 = load i32 (i32*, %struct.video_viewport*)*, i32 (i32*, %struct.video_viewport*)** %123, align 8
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 %124(i32* %127, %struct.video_viewport* %8)
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 8
  %131 = call i32 @string_is_equal_fast(%struct.video_viewport* %8, i32* %130, i32 24)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %167

133:                                              ; preds = %113
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 0
  %141 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %140, align 8
  %142 = icmp ne i32 (i32*, i32*, i32)* %141, null
  br i1 %142, label %143, label %160

143:                                              ; preds = %133
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %147, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 10
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i32*
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 4
  %159 = call i32 %148(i32* %151, i32* %155, i32 %158)
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %143, %133
  %161 = load i32, i32* %7, align 4
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  br label %170

167:                                              ; preds = %113
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  store i32 0, i32* %169, align 8
  br label %170

170:                                              ; preds = %167, %160
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %172 = call i32 @video_thread_reply(%struct.TYPE_24__* %171, %struct.TYPE_25__* %6)
  br label %440

173:                                              ; preds = %2
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 5
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %175, align 8
  %177 = icmp ne %struct.TYPE_23__* %176, null
  br i1 %177, label %178, label %203

178:                                              ; preds = %173
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 5
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 1
  %183 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %182, align 8
  %184 = icmp ne i32 (i32*, i32, i32)* %183, null
  br i1 %184, label %185, label %203

185:                                              ; preds = %178
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 5
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 1
  %190 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %189, align 8
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 9
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 9
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 %190(i32* %193, i32 %197, i32 %201)
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %185, %178, %173
  %204 = load i32, i32* %7, align 4
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %208 = call i32 @video_thread_reply(%struct.TYPE_24__* %207, %struct.TYPE_25__* %6)
  br label %440

209:                                              ; preds = %2
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 5
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %211, align 8
  %213 = icmp ne %struct.TYPE_23__* %212, null
  br i1 %213, label %214, label %231

214:                                              ; preds = %209
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 5
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 2
  %219 = load i32 (i32*)*, i32 (i32*)** %218, align 8
  %220 = icmp ne i32 (i32*)* %219, null
  br i1 %220, label %221, label %231

221:                                              ; preds = %214
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 5
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 2
  %226 = load i32 (i32*)*, i32 (i32*)** %225, align 8
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 %226(i32* %229)
  store i32 %230, i32* %7, align 4
  br label %231

231:                                              ; preds = %221, %214, %209
  %232 = load i32, i32* %7, align 4
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %236 = call i32 @video_thread_reply(%struct.TYPE_24__* %235, %struct.TYPE_25__* %6)
  br label %440

237:                                              ; preds = %2
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_33__*, %struct.TYPE_33__** %239, align 8
  %241 = icmp ne %struct.TYPE_33__* %240, null
  br i1 %241, label %242, label %271

242:                                              ; preds = %237
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 3
  %245 = load %struct.TYPE_33__*, %struct.TYPE_33__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %245, i32 0, i32 3
  %247 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %246, align 8
  %248 = icmp ne i32 (i32*, i32, i32, i32)* %247, null
  br i1 %248, label %249, label %271

249:                                              ; preds = %242
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 3
  %252 = load %struct.TYPE_33__*, %struct.TYPE_33__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %252, i32 0, i32 3
  %254 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %253, align 8
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 6
  %260 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 6
  %264 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 6
  %268 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 %254(i32* %257, i32 %261, i32 %265, i32 %269)
  br label %271

271:                                              ; preds = %249, %242, %237
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %273 = call i32 @video_thread_reply(%struct.TYPE_24__* %272, %struct.TYPE_25__* %6)
  br label %440

274:                                              ; preds = %2
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 3
  %277 = load %struct.TYPE_33__*, %struct.TYPE_33__** %276, align 8
  %278 = icmp ne %struct.TYPE_33__* %277, null
  br i1 %278, label %279, label %304

279:                                              ; preds = %274
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 3
  %282 = load %struct.TYPE_33__*, %struct.TYPE_33__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %282, i32 0, i32 2
  %284 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %283, align 8
  %285 = icmp ne i32 (i32*, i32, i32)* %284, null
  br i1 %285, label %286, label %304

286:                                              ; preds = %279
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i32 0, i32 3
  %289 = load %struct.TYPE_33__*, %struct.TYPE_33__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %289, i32 0, i32 2
  %291 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %290, align 8
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %292, i32 0, i32 2
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 5
  %297 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 5
  %301 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 %291(i32* %294, i32 %298, i32 %302)
  br label %304

304:                                              ; preds = %286, %279, %274
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %306 = call i32 @video_thread_reply(%struct.TYPE_24__* %305, %struct.TYPE_25__* %6)
  br label %440

307:                                              ; preds = %2
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 3
  %310 = load %struct.TYPE_33__*, %struct.TYPE_33__** %309, align 8
  %311 = icmp ne %struct.TYPE_33__* %310, null
  br i1 %311, label %312, label %332

312:                                              ; preds = %307
  %313 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %313, i32 0, i32 3
  %315 = load %struct.TYPE_33__*, %struct.TYPE_33__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %315, i32 0, i32 1
  %317 = load i32 (i32*, i32)*, i32 (i32*, i32)** %316, align 8
  %318 = icmp ne i32 (i32*, i32)* %317, null
  br i1 %318, label %319, label %332

319:                                              ; preds = %312
  %320 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %320, i32 0, i32 3
  %322 = load %struct.TYPE_33__*, %struct.TYPE_33__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %322, i32 0, i32 1
  %324 = load i32 (i32*, i32)*, i32 (i32*, i32)** %323, align 8
  %325 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %325, i32 0, i32 2
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = call i32 %324(i32* %327, i32 %330)
  br label %332

332:                                              ; preds = %319, %312, %307
  %333 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %334 = call i32 @video_thread_reply(%struct.TYPE_24__* %333, %struct.TYPE_25__* %6)
  br label %440

335:                                              ; preds = %2
  %336 = call i32 @video_driver_build_info(i32* %9)
  %337 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %337, i32 0, i32 3
  %339 = load %struct.TYPE_33__*, %struct.TYPE_33__** %338, align 8
  %340 = icmp ne %struct.TYPE_33__* %339, null
  br i1 %340, label %341, label %365

341:                                              ; preds = %335
  %342 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 3
  %344 = load %struct.TYPE_33__*, %struct.TYPE_33__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %344, i32 0, i32 0
  %346 = load i32 (i32*, i32*, i32, i32*, i32*)*, i32 (i32*, i32*, i32, i32*, i32*)** %345, align 8
  %347 = icmp ne i32 (i32*, i32*, i32, i32*, i32*)* %346, null
  br i1 %347, label %348, label %365

348:                                              ; preds = %341
  %349 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %349, i32 0, i32 3
  %351 = load %struct.TYPE_33__*, %struct.TYPE_33__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %351, i32 0, i32 0
  %353 = load i32 (i32*, i32*, i32, i32*, i32*)*, i32 (i32*, i32*, i32, i32*, i32*)** %352, align 8
  %354 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %354, i32 0, i32 2
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %357, i32 0, i32 3
  %359 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %361, i32 0, i32 3
  %363 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %362, i32 0, i32 0
  %364 = call i32 %353(i32* %356, i32* %9, i32 %360, i32* %363, i32* null)
  br label %365

365:                                              ; preds = %348, %341, %335
  %366 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %367 = call i32 @video_thread_reply(%struct.TYPE_24__* %366, %struct.TYPE_25__* %6)
  br label %440

368:                                              ; preds = %2
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %370, i32 0, i32 7
  %372 = load i32 (i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32)** %371, align 8
  %373 = icmp ne i32 (i32, i32, i32, i32, i32, i32, i32)* %372, null
  br i1 %373, label %374, label %411

374:                                              ; preds = %368
  %375 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %375, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %376, i32 0, i32 7
  %378 = load i32 (i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32)** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %379, i32 0, i32 2
  %381 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %380, i32 0, i32 6
  %382 = load i32, i32* %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %384, i32 0, i32 5
  %386 = load i32, i32* %385, align 4
  %387 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %391, i32 0, i32 2
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %392, i32 0, i32 3
  %394 = load i32, i32* %393, align 4
  %395 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %399, i32 0, i32 2
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = call i32 %378(i32 %382, i32 %386, i32 %390, i32 %394, i32 %398, i32 %402, i32 %406)
  %408 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %409, i32 0, i32 8
  store i32 %407, i32* %410, align 8
  br label %411

411:                                              ; preds = %374, %368
  %412 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %413 = call i32 @video_thread_reply(%struct.TYPE_24__* %412, %struct.TYPE_25__* %6)
  br label %440

414:                                              ; preds = %2
  %415 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %416, i32 0, i32 1
  %418 = load i32 (i32)*, i32 (i32)** %417, align 8
  %419 = icmp ne i32 (i32)* %418, null
  br i1 %419, label %420, label %433

420:                                              ; preds = %414
  %421 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %422, i32 0, i32 1
  %424 = load i32 (i32)*, i32 (i32)** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = call i32 %424(i32 %428)
  %430 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %431, i32 0, i32 2
  store i32 %429, i32* %432, align 8
  br label %433

433:                                              ; preds = %420, %414
  %434 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %435 = call i32 @video_thread_reply(%struct.TYPE_24__* %434, %struct.TYPE_25__* %6)
  br label %440

436:                                              ; preds = %2
  br label %440

437:                                              ; preds = %2
  %438 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %439 = call i32 @video_thread_reply(%struct.TYPE_24__* %438, %struct.TYPE_25__* %6)
  br label %440

440:                                              ; preds = %437, %436, %433, %411, %365, %332, %304, %271, %231, %203, %170, %110, %15
  store i32 0, i32* %3, align 4
  br label %441

441:                                              ; preds = %440, %80
  %442 = load i32, i32* %3, align 4
  ret i32 %442
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @video_thread_reply(%struct.TYPE_24__*, %struct.TYPE_25__*) #2

declare dso_local i32 @string_is_equal_fast(%struct.video_viewport*, i32*, i32) #2

declare dso_local i32 @video_driver_build_info(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
