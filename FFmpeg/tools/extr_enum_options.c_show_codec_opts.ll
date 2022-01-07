; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_enum_options.c_show_codec_opts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_enum_options.c_show_codec_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [34 x i8] c"@section Generic codec AVOptions\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"@section Codec-specific AVOptions\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"@subsection %s AVOptions\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_codec_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_codec_opts() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %3 = call %struct.TYPE_7__* (...) @avcodec_get_class()
  %4 = call i32 @show_opts(%struct.TYPE_7__* %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %6

6:                                                ; preds = %16, %15, %0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %8 = call %struct.TYPE_6__* @av_codec_next(%struct.TYPE_6__* %7)
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %1, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %6

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = call i32 @show_opts(%struct.TYPE_7__* %25)
  br label %6

27:                                               ; preds = %6
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @show_opts(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @avcodec_get_class(...) #1

declare dso_local %struct.TYPE_6__* @av_codec_next(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
