; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_surface.c_ff_mediacodec_surface_ref.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_surface.c_ff_mediacodec_surface_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* (%struct.TYPE_4__**, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ff_mediacodec_surface_ref(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_4__** null, %struct.TYPE_4__*** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call %struct.TYPE_4__** @ff_jni_get_env(i8* %7)
  store %struct.TYPE_4__** %8, %struct.TYPE_4__*** %6, align 8
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %10 = icmp ne %struct.TYPE_4__** %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32* (%struct.TYPE_4__**, i8*)*, i32* (%struct.TYPE_4__**, i8*)** %15, align 8
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32* %16(%struct.TYPE_4__** %17, i8* %18)
  store i32* %19, i32** %3, align 8
  br label %20

20:                                               ; preds = %12, %11
  %21 = load i32*, i32** %3, align 8
  ret i32* %21
}

declare dso_local %struct.TYPE_4__** @ff_jni_get_env(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
