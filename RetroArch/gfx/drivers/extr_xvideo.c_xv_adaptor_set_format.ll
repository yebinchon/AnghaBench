; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_xvideo.c_xv_adaptor_set_format.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_xvideo.c_xv_adaptor_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64*, i32, i32, i32*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32, i64, i64*, i32 }

@g_x11_dpy = common dso_local global i32 0, align 4
@formats = common dso_local global %struct.TYPE_13__* null, align 8
@XvYUV = common dso_local global i64 0, align 8
@XvPacked = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32, %struct.TYPE_11__*)* @xv_adaptor_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xv_adaptor_set_format(%struct.TYPE_10__* %0, i32* %1, i32 %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %14 = load i32, i32* @g_x11_dpy, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.TYPE_12__* @XvListImageFormats(i32 %14, i32 %15, i32* %12)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %13, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %214

20:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %208, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %211

25:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %204, %25
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** @formats, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %28)
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %207

31:                                               ; preds = %26
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XvYUV, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %203

40:                                               ; preds = %31
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 16
  br i1 %47, label %48, label %203

48:                                               ; preds = %40
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @XvPacked, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %203

57:                                               ; preds = %48
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** @formats, align 8
  %67 = load i32, i32* %11, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %65, %73
  br i1 %74, label %75, label %202

75:                                               ; preds = %57
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 3
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** @formats, align 8
  %85 = load i32, i32* %11, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %83, %91
  br i1 %92, label %93, label %202

93:                                               ; preds = %75
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 3
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** @formats, align 8
  %103 = load i32, i32* %11, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %101, %109
  br i1 %110, label %111, label %202

111:                                              ; preds = %93
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 3
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** @formats, align 8
  %121 = load i32, i32* %11, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %119, %127
  br i1 %128, label %129, label %202

129:                                              ; preds = %111
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %129
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** @formats, align 8
  %144 = load i32, i32* %11, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  br label %156

149:                                              ; preds = %129
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** @formats, align 8
  %151 = load i32, i32* %11, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  br label %156

156:                                              ; preds = %149, %142
  %157 = phi i32 [ %148, %142 ], [ %155, %149 ]
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** @formats, align 8
  %161 = load i32, i32* %11, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  store i32 %167, i32* %171, align 4
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** @formats, align 8
  %173 = load i32, i32* %11, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  store i32 %179, i32* %183, align 4
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** @formats, align 8
  %185 = load i32, i32* %11, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** @formats, align 8
  %193 = load i32, i32* %11, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %201 = call i32 @XFree(%struct.TYPE_12__* %200)
  store i32 1, i32* %5, align 4
  br label %214

202:                                              ; preds = %111, %93, %75, %57
  br label %203

203:                                              ; preds = %202, %48, %40, %31
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %11, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %11, align 4
  br label %26

207:                                              ; preds = %26
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %10, align 4
  br label %21

211:                                              ; preds = %21
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %213 = call i32 @XFree(%struct.TYPE_12__* %212)
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %211, %156, %19
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local %struct.TYPE_12__* @XvListImageFormats(i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @XFree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
