; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_overlay.c_task_overlay_deferred_loading.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_overlay.c_task_overlay_deferred_loading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64, i32, i8*, %struct.overlay* }
%struct.overlay = type { i64, i64, i64, %struct.TYPE_11__, %struct.TYPE_10__, i32* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@OVERLAY_STATUS_DEFERRED_LOADING_RESOLVE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"[Overlay]: Failed to load overlay descs for overlay #%u.\0A\00", align 1
@OVERLAY_STATUS_DEFERRED_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @task_overlay_deferred_loading to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_overlay_deferred_loading(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.overlay*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 4
  %13 = load %struct.overlay*, %struct.overlay** %12, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.overlay, %struct.overlay* %13, i64 %16
  store %struct.overlay* %17, %struct.overlay** %5, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = load i8*, i8** @OVERLAY_STATUS_DEFERRED_LOADING_RESOLVE, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  br label %198

32:                                               ; preds = %1
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %198 [
    i32 128, label %36
    i32 134, label %36
    i32 130, label %39
    i32 132, label %58
    i32 131, label %101
    i32 133, label %177
    i32 129, label %192
  ]

36:                                               ; preds = %32, %32
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  store i32 130, i32* %38, align 8
  br label %39

39:                                               ; preds = %32, %36
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 4
  %42 = load %struct.overlay*, %struct.overlay** %41, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.overlay, %struct.overlay* %42, i64 %45
  %47 = call i32 @task_overlay_image_done(%struct.overlay* %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  store i32 132, i32* %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 4
  %52 = load %struct.overlay*, %struct.overlay** %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.overlay, %struct.overlay* %52, i64 %55
  %57 = getelementptr inbounds %struct.overlay, %struct.overlay* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %198

58:                                               ; preds = %32
  store i64 0, i64* %3, align 8
  br label %59

59:                                               ; preds = %97, %58
  %60 = load i64, i64* %3, align 8
  %61 = load %struct.overlay*, %struct.overlay** %5, align 8
  %62 = getelementptr inbounds %struct.overlay, %struct.overlay* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %100

65:                                               ; preds = %59
  %66 = load %struct.overlay*, %struct.overlay** %5, align 8
  %67 = getelementptr inbounds %struct.overlay, %struct.overlay* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.overlay*, %struct.overlay** %5, align 8
  %70 = getelementptr inbounds %struct.overlay, %struct.overlay* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %65
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = load %struct.overlay*, %struct.overlay** %5, align 8
  %76 = getelementptr inbounds %struct.overlay, %struct.overlay* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.overlay*, %struct.overlay** %5, align 8
  %79 = getelementptr inbounds %struct.overlay, %struct.overlay* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load %struct.overlay*, %struct.overlay** %5, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.overlay*, %struct.overlay** %5, align 8
  %87 = getelementptr inbounds %struct.overlay, %struct.overlay* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @task_overlay_load_desc_image(%struct.TYPE_13__* %74, i32* %81, %struct.overlay* %82, i64 %85, i32 %89)
  br label %96

91:                                               ; preds = %65
  %92 = load %struct.overlay*, %struct.overlay** %5, align 8
  %93 = getelementptr inbounds %struct.overlay, %struct.overlay* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  store i32 131, i32* %95, align 8
  br label %100

96:                                               ; preds = %73
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %3, align 8
  br label %59

100:                                              ; preds = %91, %59
  br label %198

101:                                              ; preds = %32
  store i64 0, i64* %3, align 8
  br label %102

102:                                              ; preds = %173, %101
  %103 = load i64, i64* %3, align 8
  %104 = load %struct.overlay*, %struct.overlay** %5, align 8
  %105 = getelementptr inbounds %struct.overlay, %struct.overlay* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ult i64 %103, %106
  br i1 %107, label %108, label %176

108:                                              ; preds = %102
  %109 = load %struct.overlay*, %struct.overlay** %5, align 8
  %110 = getelementptr inbounds %struct.overlay, %struct.overlay* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.overlay*, %struct.overlay** %5, align 8
  %113 = getelementptr inbounds %struct.overlay, %struct.overlay* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ult i64 %111, %114
  br i1 %115, label %116, label %167

116:                                              ; preds = %108
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %118 = load %struct.overlay*, %struct.overlay** %5, align 8
  %119 = getelementptr inbounds %struct.overlay, %struct.overlay* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.overlay*, %struct.overlay** %5, align 8
  %122 = getelementptr inbounds %struct.overlay, %struct.overlay* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load %struct.overlay*, %struct.overlay** %5, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.overlay*, %struct.overlay** %5, align 8
  %130 = getelementptr inbounds %struct.overlay, %struct.overlay* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = load %struct.overlay*, %struct.overlay** %5, align 8
  %134 = getelementptr inbounds %struct.overlay, %struct.overlay* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.overlay*, %struct.overlay** %5, align 8
  %138 = getelementptr inbounds %struct.overlay, %struct.overlay* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.overlay*, %struct.overlay** %5, align 8
  %142 = getelementptr inbounds %struct.overlay, %struct.overlay* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.overlay*, %struct.overlay** %5, align 8
  %146 = getelementptr inbounds %struct.overlay, %struct.overlay* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.overlay*, %struct.overlay** %5, align 8
  %150 = getelementptr inbounds %struct.overlay, %struct.overlay* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @task_overlay_load_desc(%struct.TYPE_13__* %117, i32* %124, %struct.overlay* %125, i64 %128, i32 %132, i32 %136, i32 %140, i32 %144, i32 %148, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %116
  %156 = load %struct.overlay*, %struct.overlay** %5, align 8
  %157 = getelementptr inbounds %struct.overlay, %struct.overlay* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %159)
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %162 = call i32 @task_set_cancelled(%struct.TYPE_12__* %161, i32 1)
  %163 = load i8*, i8** @OVERLAY_STATUS_DEFERRED_ERROR, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 3
  store i8* %163, i8** %165, align 8
  br label %176

166:                                              ; preds = %116
  br label %172

167:                                              ; preds = %108
  %168 = load %struct.overlay*, %struct.overlay** %5, align 8
  %169 = getelementptr inbounds %struct.overlay, %struct.overlay* %168, i32 0, i32 0
  store i64 0, i64* %169, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  store i32 133, i32* %171, align 8
  br label %176

172:                                              ; preds = %166
  br label %173

173:                                              ; preds = %172
  %174 = load i64, i64* %3, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %3, align 8
  br label %102

176:                                              ; preds = %167, %155, %102
  br label %198

177:                                              ; preds = %32
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %184 = call i32 @task_overlay_resolve_iterate(%struct.TYPE_12__* %183)
  br label %185

185:                                              ; preds = %182, %177
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %187, align 8
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 2
  store i32 128, i32* %191, align 8
  br label %198

192:                                              ; preds = %32
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %194 = call i32 @task_set_cancelled(%struct.TYPE_12__* %193, i32 1)
  %195 = load i8*, i8** @OVERLAY_STATUS_DEFERRED_ERROR, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 3
  store i8* %195, i8** %197, align 8
  br label %198

198:                                              ; preds = %28, %32, %192, %185, %176, %100, %39
  ret void
}

declare dso_local i32 @task_overlay_image_done(%struct.overlay*) #1

declare dso_local i32 @task_overlay_load_desc_image(%struct.TYPE_13__*, i32*, %struct.overlay*, i64, i32) #1

declare dso_local i32 @task_overlay_load_desc(%struct.TYPE_13__*, i32*, %struct.overlay*, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i32) #1

declare dso_local i32 @task_set_cancelled(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @task_overlay_resolve_iterate(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
